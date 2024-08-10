with HAL;                          use HAL;
with STM32.Device;                 use STM32.Device;
with STM32.Board;                  use STM32.Board;
with Utils;                        use Utils;

with STM32.Power_Control;     --  use STM32.Power_Control;
with STM32_SVD.IWDG;               use STM32_SVD.IWDG;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Ada.Text_IO;                  use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Wd_Handler;    pragma Unreferenced (Wd_Handler);

procedure Wd is
   procedure Initialize_IWDG;
   procedure Initialize_IWDG is
   begin
      --  IWDG setup
--      IWDG_Periph.KR.KEY := 16#5555#;  --  reg writes allowed
      IWDG_Periph.KR.KEY := 16#CCCC#;  --  Off we go...
   end Initialize_IWDG;
begin
   Initialize_Board;
   Initialize_IWDG;
   loop
      null;
   end loop;
end Wd;
