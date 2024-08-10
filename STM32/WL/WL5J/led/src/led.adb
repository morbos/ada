with Interfaces;                   use Interfaces;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RCC;                    use STM32.RCC;
with STM32.RTC;                    use STM32.RTC;
with Utils;                        use Utils;
with Hw;                           use Hw;
with Peripherals;                  use Peripherals;
with LIS3MDL_I2C;                  use LIS3MDL_I2C;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;

procedure Led is

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
   T       : Time;
begin
   Initialize_Board;
   Initialize_HW;
   Enable (STM32.Device.RTC);
   My_Delay (1_000); -- 1s
   Set_Up_MAG;

   T := Clock;
   --  Run first cal for 5sec
   Turn_On_Led;
   Mag.Read_MAG (Got); --  Toss first reading
   loop
      --  we read in a window 1 second after the led. for 3 seconds with a quiet period 1 second at the end.
      if (Clock - T) >= Milliseconds (5_000) then
         exit;
      elsif (Clock - T) < Milliseconds (1_000) or (Clock - T) > Milliseconds (4_000) then
         null;
      else
         Mag.Read_MAG (Got);
         To_UInt32_From_Integer_16 (Result => TAMP_Periph.BKP4R, Value => Got (X_Axis));
         To_UInt32_From_Integer_16 (Result => TAMP_Periph.BKP5R, Value => Got (Y_Axis));
         To_UInt32_From_Integer_16 (Result => TAMP_Periph.BKP6R, Value => Got (Z_Axis));
      end if;
   end loop;
   Turn_Off_Led;
   loop
      Mag.Read_MAG (Got);
   end loop;
end Led;
