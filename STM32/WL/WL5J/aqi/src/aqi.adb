with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
with Interfaces;                   use Interfaces;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.SYSCFG;                 use STM32.SYSCFG;
with STM32.EXTI;                   use STM32.EXTI;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;
with STM32.RCC;                    use STM32.RCC;
with STM32.USARTs;                 use STM32.USARTs;
with STM32.SubGhzPhy;              use STM32.SubGhzPhy;
with STM32.SubGhzRF;               use STM32.SubGhzRF;
with Radio_Int;                    use Radio_Int;
with App;                          use App;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;
with Adc;                          use Adc;
with Uart;                         use Uart;
with PSM7003;                      use PSM7003;
--  with Exti;                         use Exti;
with LPS;                          use LPS;
with LPS22HB_I2C;                  use LPS22HB_I2C;

with STM32.Power_Control;     --  use STM32.Power_Control;
with Rtc_Wkup_Int;                 use Rtc_Wkup_Int;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.PWR;                use STM32_SVD.PWR;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;
with STM32_SVD.RCC;                use STM32_SVD.RCC;
with STM32_SVD.DBGMCU;             use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;

with System.Machine_Code;          use System.Machine_Code;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Ada.Text_IO;                  use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;

--  with Exti;  pragma Unreferenced (Exti);

procedure Aqi
is
   On       : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off      : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;
   P_T      : Pressure_Temp_Data;
   PM_2_5   : UInt16;
   Adc      : UInt32;
   Quanta   : UInt32 := 300;
begin
   Initialize_Board;
   Initialize_HW;
   Enable (STM32.Device.RTC);
   Initialize_Uart;
   Initialize_ADC;
   if TAMP_Periph.BKP0R /= 16#facefeed# then --  Not initialized
      TAMP_Periph.BKP0R := 16#facefeed#;
      Set_Up_LPS;
   end if;
   Set_WUT_Interrupt (STM32.Device.RTC, UInt16 (Quanta));
   PM_2_5 := Get_PM_2_5;
   Get_Pressure_Temp_Reading (P_T);
   Adc := Get_ADC;
   App_Start (PM_2_5, P_T, Adc);

   --  vvvv THIS vvv seems reasonable, reset the RF
   --  after all, TxDone has happened, what else is the RF doing?
   --  Turns out... you do this vvvv and no pkts will emerge despite
   --  TxDone's assertion(!)
   --   RCC_Periph.CSR.RFRST := True;
   --   loop
   --      exit when RCC_Periph.CSR.RFRSTF;
   --   end loop;

   loop
      PWR_Periph.SCR.CWRFBUSYF := True;
      exit when not PWR_Periph.SR1.WRFBUSYF;
   end loop;

   --  Now off to sleep
   PWR_Periph.CR3.EWUP.Arr (1) := False;

   PWR_Periph.SCR.CWUF.Val := 16#7#; -- clear all wup sources

   PWR_Periph.CR4.WP.Val := 0; --  All rising edge

   PWR_Periph.PUCRA.PU.Val := 16#ffff#;
   PWR_Periph.PUCRB.PU.Val := 16#ffff#;
   PWR_Periph.PUCRC.PU.Val := 16#7f#;
   --   PWR_Periph.CR3.APC      := True;
   PWR_Periph.CR3.APC      := False;

   --  Shutdown seq
   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;

end Aqi;
