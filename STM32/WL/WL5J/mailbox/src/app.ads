with Interfaces;   use Interfaces;
with HAL;          use HAL;
with System;
with Radio_Int;    use Radio_Int;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package App is

   type Door_Stance is (Open_Stance, Closed_Stance);

   procedure Init_Radio;

   procedure App_Start (Stance : Door_Stance);

   procedure App_Start2 (Orig : UInt32; Sensor : Integer_16);

end App;
