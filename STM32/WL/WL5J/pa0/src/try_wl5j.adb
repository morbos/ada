
with HAL; use HAL;
with STM32.Device;  use STM32.Device;
with STM32.GPIO;    use STM32.GPIO;
with STM32.I2C;     use STM32.I2C;
with STM32.Board;   use STM32.Board;
with STM32_SVD.RCC; use STM32_SVD.RCC;
with Ada.Text_IO;   use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure Try_wl5j is

   PA0_Pin         : GPIO_Point renames PA0;

   procedure My_Delay;

   procedure My_Delay is
   begin
      delay until Clock + Milliseconds (1000);
   end My_Delay;

   procedure Enable_GPIO;

   procedure Enable_GPIO
   is
      Config       : GPIO_Port_Configuration;
   begin
      Enable_Clock (PA0_Pin);
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Floating;
      Config.Speed       := Speed_2MHz;
      Config.Mode        := Mode_Out;
      Configure_IO (PA0_Pin, Config);
      Set (PA0_Pin);
   end Enable_GPIO;

begin
   Initialize_Board;
   Enable_GPIO;
   Clear (PA0_Pin);
   loop
      null;
   end loop;
end Try_wl5j;
