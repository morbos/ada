with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RCC;                    use STM32.RCC;
with Utils;                        use Utils;
with Hw;                           use Hw;
with Peripherals;                  use Peripherals;
with LIS3MDL_I2C;                  use LIS3MDL_I2C;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;

procedure I2c_Mag is

   Mag : LIS3MDL_Sensor (Sensor_Port'Access);

   ----------------
   -- Set_Up_MAG --
   ----------------

   procedure Set_Up_MAG;
   procedure Set_Up_MAG is
   begin
      Mag.Configure;
   end Set_Up_MAG;

   Got     : Sensor_Data;

begin
   Initialize_Board;
   Initialize_HW;
   Set_Up_MAG;

   loop
      Mag.Read_MAG (Got);
   end loop;
end I2c_Mag;
