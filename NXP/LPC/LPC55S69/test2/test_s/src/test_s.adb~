--  An User controlled RGB LED is provided on the Board, located on the right hand edge.
--  The LEDs in this device are controlled by LPC55S69 ports P1_4 (Blue), P1_6 (Red), P1_7
--  (Green) with the LEDs being illuminated when the respective LED is pulled low. Note that
--  these port lines are also connected to expansion connector J18.
with HAL;          use HAL;
with NXP_SVD.GPIO; use NXP_SVD.GPIO;
with NXP.Board;    use NXP.Board;
with NXP.GPIO;     use NXP.GPIO;

with Ada.Real_Time;   use Ada.Real_Time;

procedure Test_S
is
begin
   Initialize_Board;
   loop
      for LED of LEDs loop
         Turn_On (LED);
         delay until Clock + Milliseconds (1000);
         Turn_Off (LED);
         delay until Clock + Milliseconds (1000);
      end loop;
   end loop;
end Test_S;
