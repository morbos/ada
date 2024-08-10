with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;
with STM32.RCC;                    use STM32.RCC;
with STM32.SubGhzPhy;              use STM32.SubGhzPhy;
with STM32.SubGhzRF;               use STM32.SubGhzRF;
with Radio_Int;                    use Radio_Int;
with App;                          use App;
with Utils;                        use Utils;
with Hw;                           use Hw;
with Peripherals;                  use Peripherals;

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

procedure Rtc_Lse_Lora_Shutdown is
   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;
   procedure Enable_GPIO;

   procedure Enable_GPIO
   is
      Config       : GPIO_Port_Configuration;
   begin
      Enable_Clock (Hold_Pin);
      Config.Mode        := Mode_In;
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Pull_Down;
      Config.Speed       := Speed_2MHz;
      Configure_IO (Hold_Pin, Config);
   end Enable_GPIO;

begin
   Initialize_Board;
   Enable_GPIO;
   while not Hold_Pin.Set loop
      null;
   end loop;
   Enable (STM32.Device.RTC);
   STM32.Power_Control.Disable_Backup_Domain_Protection;
   if TAMP_Periph.BKP1R = 1 then
      TAMP_Periph.BKP1R := 0;
      SubGhzPhy_Init;
      SubGhzRF_Init;
      App_Start;
      My_Delay (1_000);
      RCC_Periph.CSR.RFRST := True;
      loop
         exit when RCC_Periph.CSR.RFRSTF;
      end loop;
      RCC_Periph.APB3ENR.SUBGHZSPIEN := False;
      PWR_Periph.CR3.EIWUL := False;
      PWR_Periph.CR3.EWRFBUSY := False;
   end if;

--   Set_AlarmA (STM32.Device.RTC, (MSK4 => True, MSK3 => True, MSK2 => True, ST => 3, others => <>));

   Set_WUT_Interrupt (STM32.Device.RTC, 10);

   --  Now off to sleep
   PWR_Periph.CR3.EWUP.Arr (1) := False;

   PWR_Periph.SCR.CWUF.Val := 16#7#; -- clear all wup sources

   PWR_Periph.CR4.WP.Val := 0; --  All rising edge

--   PWR_Periph.CR3.EWUP.Arr (1) := True;

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
   TAMP_Periph.BKP1R := 1;
   loop
      PWR_Periph.SCR.CWRFBUSYF := True;
      exit when not PWR_Periph.SR1.WRFBUSYF;
   end loop;
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;
end Rtc_Lse_Lora_Shutdown;
