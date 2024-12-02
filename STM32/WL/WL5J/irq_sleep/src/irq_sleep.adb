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
with STM32.SubGhzPhy;              use STM32.SubGhzPhy;
with STM32.SubGhzRF;               use STM32.SubGhzRF;
with Radio_Int;                    use Radio_Int;
with App;                          use App;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;
with LIS3MDL_I2C;                  use LIS3MDL_I2C;
with Exti;                         use Exti;
with Mag;                          use Mag;

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
with Exti;  pragma Unreferenced (Exti);

procedure Irq_Sleep
is
   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;

   ----------------
   -- Set_Up_MAG --
   ----------------

   procedure Init_Interrupts;
   procedure Init_Interrupts
   is
      Index : Integer;
   begin
      SYSCFG_Clock_Enable;
      Connect_External_Interrupt (LIS3MDL_Int_Pin);
      Clear_External_Interrupt (EXTI_Line_3);
      Index := GPIO_Pin'Pos (LIS3MDL_Int_Pin.Pin);
      Enable_External_Interrupt (External_Line_Number'Val (Index),
                                 Interrupt_Rising_Edge);
   end Init_Interrupts;
   Int_Src : INT_SRC_Reg;
   Got     : Sensor_Data;
begin
   Initialize_Board;
   Initialize_HW;
   Init_Interrupts;
   Set_Up_MAG;
   Setup_Mag_Interrupt;
   My_Delay (1_000);

--   loop
--      PWR_Periph.SCR.CWRFBUSYF := True;
--      exit when not PWR_Periph.SR1.WRFBUSYF;
--   end loop;

   --  Now off to sleep
   PWR_Periph.CR3.EWUP.Arr (3) := False;

   PWR_Periph.SCR.CWUF.Val := 16#7#; -- clear all wup sources

   PWR_Periph.CR4.WP.Val := 0; --  All rising edge

   PWR_Periph.CR3.EWUP.Arr (3) := True;

   PWR_Periph.PUCRA.PU.Val := 16#fffc#; --
   PWR_Periph.PUCRB.PU.Val := 16#fff7#; --  PB3 is the wakeup pin
   PWR_Periph.PUCRC.PU.Val := 16#7f#; -- 15&14 are the 32khz xtal
   PWR_Periph.PDCRA.PD.Val := 16#0003#; --  A[1:0] PD (Radio Idle)
   PWR_Periph.CR3.APC      := False;

   My_Delay (1_000);

   --  Shutdown seq
   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
   Asm (Template => "wfi", Volatile => True);

   loop
      Get_Mag_Reading (Got); --  Toss
   end loop;

end Irq_Sleep;
