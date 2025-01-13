with Interfaces;                   use Interfaces;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;
with STM32.RCC;                    use STM32.RCC;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;
with LIS3MDL_I2C;                  use LIS3MDL_I2C;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;

procedure Lis3mdl_L443
is
   Mag   : LIS3MDL_Sensor (Sensor_Port'Access);
   Got   : Sensor_Data;

   ----------------
   -- Set_Up_MAG --
   ----------------

   procedure Set_Up_MAG;
   procedure Set_Up_MAG is
   begin
      Mag.Configure;
   end Set_Up_MAG;
begin
   Initialize_Board;
   Initialize_HW;
   Set_Up_MAG;
   loop
      Mag.Read_MAG (Got); --  Toss
      My_Delay (1_000);
   end loop;

end Lis3mdl_L443;
