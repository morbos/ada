with Interfaces;                   use Interfaces;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;
with STM32.RCC;                    use STM32.RCC;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.SYSCFG;                 use STM32.SYSCFG;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;
with MINI_JOY_I2C;                 use MINI_JOY_I2C;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;
with Ada.Text_IO;                  use Ada.Text_IO;

procedure Mini_Joy_L443
is
   Joy : Mini_Joy_Port (Joy_Port'Access);
   Stance : Joy_Rec;
begin
   My_Delay (1_000);
   Initialize_Board;
   Initialize_HW;
   Turn_Off (Green_LED);
   loop
      Stance := Joy_Read (Joy);
      Put_Line
        (
           Stance.Stick (1)'Image & " " &
           Stance.Stick (2)'Image & " " &
           Stance.Stick (3)'Image & " " &
           Stance.Stick (4)'Image
           );
      Put_Line
        (
           Stance.Buttons (1)'Image & " " &
           Stance.Buttons (2)'Image & " " &
           Stance.Buttons (3)'Image & " " &
           Stance.Buttons (4)'Image & " " &
           Stance.Buttons (5)'Image
           );

--              & " " Joy
--                  " Y: " & Float'Image (Reading (Y)) &
--                  " Z: " & Float'Image (Reading (Z)));
   end loop;

end Mini_Joy_L443;
