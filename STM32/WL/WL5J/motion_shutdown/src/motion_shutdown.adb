
with HAL;             use HAL;
with HAL.SPI;         use HAL.SPI;
with Utils;           use Utils;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;
with STM32.SPI;       use STM32.SPI;
with STM32.SYSCFG;    use STM32.SYSCFG;
with STM32.RCC;       use STM32.RCC;
with STM32.RTC;       use STM32.RTC;
with STM32.USARTs;    use STM32.USARTs;
with STM32.SubGhzPhy; use STM32.SubGhzPhy;
with STM32.SubGhzRF;  use STM32.SubGhzRF;
with Radio_Int;       use Radio_Int;
with App;             use App;
with Hw;              use Hw;
with STM32.Power_Control;     --  use STM32.Power_Control;
with STM32_SVD.PWR;           use STM32_SVD.PWR;
with STM32_SVD.RTC;           use STM32_SVD.RTC;
with STM32_SVD.TAMP;          use STM32_SVD.TAMP;
with STM32_SVD.RCC;           use STM32_SVD.RCC;
with STM32_SVD.DBGMCU;        use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;

with Exti;  pragma Unreferenced (Exti);

with System.Machine_Code; use System.Machine_Code;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure Motion_Shutdown
is
   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;
begin
   Initialize_Board;
   Enable (STM32.Device.RTC);
   STM32.Power_Control.Disable_Backup_Domain_Protection;
   Initialize_HW;
   if TAMP_Periph.BKP1R = 1 then
      TAMP_Periph.BKP1R := 0;
      SubGhzPhy_Init;
      SubGhzRF_Init;
      App_Start;
   end if;
   --  Now off to sleep
   PWR_Periph.CR3.EWUP.Arr (1) := False;

   PWR_Periph.SCR.CWUF.Val := 16#7#; -- clear all wup sources

   PWR_Periph.CR4.WP.Val := 0; --  All rising edge

   PWR_Periph.CR3.EWUP.Arr (1) := True;

   PWR_Periph.PUCRA.PU.Val := 16#fffe#;
   PWR_Periph.PUCRB.PU.Val := 16#ffff#;
   PWR_Periph.PUCRC.PU.Val := 16#7f#;
   PWR_Periph.PDCRA.PD.Val := 16#0001#;
   PWR_Periph.CR3.APC      := True;

   --  Shutdown seq
--   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
--   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
--   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
--   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
--   TAMP_Periph.BKP1R := 1;
--   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;

end Motion_Shutdown;
