--  An User controlled RGB LED is provided on the Board, located on the right hand edge.
--  The LEDs in this device are controlled by LPC55S69 ports P1_4 (Blue), P1_6 (Red), P1_7
--  (Green) with the LEDs being illuminated when the respective LED is pulled low. Note that
--  these port lines are also connected to expansion connector J18.
with HAL;          use HAL;
with NXP_SVD.GPIO; use NXP_SVD.GPIO;
with NXP.Device;   use NXP.Device;
with NXP.Board;    use NXP.Board;
with NXP.GPIO;     use NXP.GPIO;

with Ada.Real_Time;   use Ada.Real_Time;

procedure Test_S
is
   Config : GPIO_Port_Configuration;
   User_Button   : GPIO_Point renames P1_9;
begin
   Initialize_Board;
   Enable_Clock (User_Button);
   Config.Mode        := Mode_In;
   Config.Resistors   := Floating;
   Config.Invert      := True;
   Configure_IO (User_Button, Config);
   loop
      if Set (User_Button) then
         Turn_On (Red_LED);
         delay until Clock + Milliseconds (1000);
         Turn_Off (Red_LED);
      end if;
   end loop;
end Test_S;
