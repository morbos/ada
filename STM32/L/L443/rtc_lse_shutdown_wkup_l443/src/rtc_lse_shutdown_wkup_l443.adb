with HAL;                     use HAL;
with HAL.Real_Time_Clock;     use HAL.Real_Time_Clock;
with STM32.Device;            use STM32.Device;
with STM32.GPIO;              use STM32.GPIO;
with STM32.I2C;               use STM32.I2C;
with STM32.Board;             use STM32.Board;
with STM32.Power_Control;     --  use STM32.Power_Control;
with STM32_SVD.PWR;           use STM32_SVD.PWR;
with STM32.RTC;               use STM32.RTC;
with Hw;                      use Hw;
with Rtc_Wkup_Int;            use Rtc_Wkup_Int;
with STM32_SVD.RCC;           use STM32_SVD.RCC;
with STM32_SVD.RTC;           use STM32_SVD.RTC;
with STM32_SVD.DBGMCU;        use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;
with System.Machine_Code;     use System.Machine_Code;

with Ada.Text_IO;             use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure Rtc_Lse_Shutdown_Wkup_L443 is
   procedure My_Delay (Param : Integer);

   procedure My_Delay (Param : Integer) is
   begin
      delay until Clock + Milliseconds (Param);
   end My_Delay;

--   Count : Integer := 0;
--   T : RTC_Time := (Hour => 6, Min => 40, Sec => 0);
   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;
begin
   Initialize_Board;
   Enable (STM32.Device.RTC, Use_LSE);
   Disable_Write_Protection;
   --  Clear reset bits
   RCC_Periph.CSR.RMVF := True;
   My_Delay (5_000);

   --   Set_AlarmA (STM32.Device.RTC, (MSK4 => True, MSK3 => True, MSK2 => True, ST => 3, others => <>));
   Set_WUT_Interrupt (STM32.Device.RTC, 5);
   Enable_EXTI20;

   --  Shutdown seq
   PWR_Periph.CR3.EWUP.Arr (1) := False;

   PWR_Periph.SCR.WUF.Val := 16#1F#; -- clear all wup sources

   PWR_Periph.PUCRA.PU.Val := 16#ffff#;
   PWR_Periph.PUCRB.PU.Val := 16#ffff#;
   PWR_Periph.PUCRC.PU.Val := 16#3fff#; --  Look *out* pc15&14 are the 32khz xtal! Float... or ... else
   PWR_Periph.CR3.APC := True;

   RTC_Periph.BKP31R := 1; -- For info on reboot
   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
   Asm (Template => "dsb", Volatile => True);
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;
end Rtc_Lse_Shutdown_Wkup_L443;
