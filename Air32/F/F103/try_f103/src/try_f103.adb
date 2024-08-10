
with HAL;           use HAL;
with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with STM32.GPIO;    use STM32.GPIO;
with STM32.I2C;     use STM32.I2C;
with STM32_SVD.RCC; use STM32_SVD.RCC;
with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure Try_F103 is

   procedure Enable_MCO;

   procedure Enable_MCO
   is
      GPIO_Conf       : GPIO_Port_Configuration;
   begin
      Enable_Clock (PA8);

      GPIO_Conf.Speed       := Speed_50MHz;
      GPIO_Conf.Mode        := Mode_AF;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;

      Configure_IO (PA8, GPIO_Conf);

--      Configure_Alternate_Function (PA8, GPIO_AF_MCO_0);

      RCC_Periph.CFGR.MCO := 7;
--      RCC_Periph.CFGR.MCOSEL := 1; --  SYSCLK

   end Enable_MCO;

   procedure My_Delay;

   procedure My_Delay is
   begin
      delay until Clock + Milliseconds (1000);
   end My_Delay;
   LEDs  : GPIO_Points := Red_LED & Green_LED & Blue_LED;
begin
   Initialize_Board;
--   Enable_MCO;
   loop
      for Led of LEDs loop
         Turn_On (Led);
         My_Delay;
      end loop;
      for Led of LEDs loop
         Turn_Off (Led);
         My_Delay;
      end loop;
   end loop;
end Try_F103;
