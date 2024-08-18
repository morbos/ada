with HAL;          use HAL;
with Api;          use Api;
with System;
with Radio_Int;    use Radio_Int;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package App is

   procedure SendMessage (Message : DoorStateT);

end App;
