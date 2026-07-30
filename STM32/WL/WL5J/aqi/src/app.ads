with Interfaces;   use Interfaces;
with HAL;          use HAL;
with System;
with Radio_Int;    use Radio_Int;
with LPS;          use LPS;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package App is

   type Door_Stance is (Open_Stance, Closed_Stance);

   procedure Init_Radio;

   procedure App_Start (PM_2_5 : UInt16; P_T : Pressure_Temp_Data; Adc : UInt32);

   procedure App_Start2 (Orig : UInt32; Sensor : Integer_16);

end App;
