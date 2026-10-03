with BLE_Status;      use BLE_Status;
with HAL;             use HAL;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;
with STM32.Timers;    use STM32.Timers;
with Hci;             use Hci;
with Comm;
--  with Comm.Run;        use Comm.Run;
--  with Comm.Mbox;       use Comm.Mbox;
with HW;              use HW;
with Memory;          use Memory;
with Log;             use Log;
with Utils;           use Utils;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

--  Show really starts here. sensortile.adb immediately calls over to here.

with STM32L4_Interrupts;  pragma Unreferenced (STM32L4_Interrupts);

package body Main is

   Mfg : UInt8_Array (1 .. 14);
   package Ble_Midi is new Comm (Manuf_Data => Mfg);
   use Ble_Midi;


   --  Depending on server or client we will need
   --  a unique mac address
   procedure Initialize_Role
   is
   begin
      GetWaferXY (BDaddr (1), BDaddr (2));
   end Initialize_Role;

   procedure Initialize
   is
   begin
      --  vvvvvvv BT4.0 spec C.11 adv and scan rsp data format
      Mfg :=
        (13,     --  13 to follow
         16#4a#, --  TBD This should be: AD_TYPE_MANUFACTURER_SPECIFIC_DATA
         16#01#, --  SKD version
         16#00#,
         16#00#,
         16#00#,
         16#00#,
         16#00#,
         16#00#, -- BLE MAC start
         16#00#,
         16#00#,
         16#00#,
         16#00#,
         16#00# -- BLE MAC stop */
        );
      Initialize_Board;
      Initialize_Memory;
      Initialize_HW;
      Initialize_Timers;
      Initialize_Role;
      Initialize_Comm;
   end Initialize;

   procedure My_Delay is
   begin
      delay until Clock + Milliseconds (30);
   end My_Delay;

   procedure Process
   is
   begin
      loop
         Sleep;
      end loop;
   end Process;

   procedure Initialize_Timers
   is
   begin
      Enable_Clock (Timer_2);
      Reset (Timer_2);
      Configure (Timer_2, Prescaler => 39999, Period => 999);
   end Initialize_Timers;

end Main;
