
with HAL;           use HAL;
with MH_Lib;        use MH_Lib;
with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with STM32.GPIO;    use STM32.GPIO;
with STM32.I2C;     use STM32.I2C;
with STM32_SVD.RCC; use STM32_SVD.RCC;
with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure Prng_F103 is

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
      delay until Clock + Milliseconds (100);
   end My_Delay;
   LEDs  : GPIO_Points := Red_LED & Green_LED & Blue_LED;
   X : Integer;
   Y : UInt32;
   for X'Address use Y'Address;
begin
   Initialize_Board;
   --  Unlock crypto?
   MH_Init;

   loop
      Y := MH_PRand;
      if (Y and 4) = 4  then
         Turn_On (Red_LED);
      else
         Turn_Off (Red_LED);
      end if;
      My_Delay;
      if (Y and 2) = 2  then
         Turn_On (Green_LED);
      else
         Turn_Off (Green_LED);
      end if;
      My_Delay;
      if (Y and 1) = 1  then
         Turn_On (Blue_LED);
      else
         Turn_Off (Blue_LED);
      end if;
      My_Delay;
--      for Led of LEDs loop
--         Turn_On (Led);
--         My_Delay;
--      end loop;
--      for Led of LEDs loop
--         Turn_Off (Led);
--         My_Delay;
--      end loop;
   end loop;
end Prng_F103;
