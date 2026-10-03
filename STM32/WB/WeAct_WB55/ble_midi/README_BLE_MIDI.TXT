1. MIDI Service UUID
Standard String: 03B80E5A-EDE8-4B33-A751-6CE34EC4C700

Little-Endian Array:

Ada
Midi_Service_Uuid_Array : constant UUidT := 
  (16#00#, 16#C7#, 16#C4#, 16#4E#, 16#E3#, 16#6C#, 16#51#, 16#A7#,
   16#33#, 16#4B#, 16#E8#, 16#ED#, 16#5A#, 16#0E#, 16#B8#, 16#03#);
Midi_Char_Uuid_Array : constant UUidT := 
  (16#F3#, 16#6B#, 16#10#, 16#9D#, 16#66#, 16#F2#, 16#A9#, 16#A1#,
   16#12#, 16#41#, 16#68#, 16#38#, 16#DB#, 16#E5#, 16#72#, 16#77#);

Status := Aci_Gatt_Add_Serv
  (Service_Uuid_Type => UUID_TYPE_128,
   Service_Uuid      => Midi_Service_Uuid_Array,
   Service_Type      => PRIMARY_SERVICE,
   Max_Attr_Records  => 6, -- Ensure room for service, char declaration, char value, and CCCD
   ServiceHandle     => Midi_Serv_Handle);
Add the Characteristic:

Ada
-- Use UUID_TYPE_128 and pass the full 16 bytes of 7772E5DB-3868-4112-A1A9-F2669D106BF3
Status := Aci_Gatt_Add_Char
  (ServiceHandle  => Midi_Serv_Handle,
   CharUuidType   => UUID_TYPE_128,
   CharUuid       => Midi_Char_Uuid_Array,
   CharValueLen   => 20, -- Baseline MIDI payload length matching standard ATT_MTU
   CharProperties => CHAR_PROP_WRITE_WITHOUT_RESP or CHAR_PROP_NOTIFY,
   SecPermissions => ATTR_PERMISSION_NONE,
   GattEvtMask    => GATT_NOTIFY_ATTRIBUTE_WRITE, -- Alerts M4 when DAW writes to you
   EncryKeySize   => MIN_ENCRY_KEY_SIZE,
   IsVariable     => True,
   CharHandle     => Midi_Char_Handle);

Seeing the actual implementation in comm-run.adb makes the division of responsibilities crystal clear.

You actually have three distinct layers intermingled here:

Physical Transport & Queue Pump (Fixed HW Layer):

Event_Task waiting on IPCC_BLE_EVENT_SO, popping from HostEvtQueuePoolPtr, returning buffers to FreeBufPoolPtr, and clearing flags with HW_IPCC_MM_RELEASE_BUFFER_CHANNEL.

Standard HCI/ACI demuxing (Hci_Uart_Pckt, Hci_Event_Pckt, Me.Subevent, Blue_Evt.Ecode).

GAP / Connection Management (Shared BLE Engine):

Advertising setup (SetConnectable), connection establishment, scanning (Scan_Task), and L2CAP connection updates (L2cap_Respond).

Application Profile Logic (The stuff that changes per project):

Hardcoded P2P/LED logic (LEDHandle, ButtonHandle, SW1_Remote_State, Blue_LED).

Discovery sequence in Post_Conn_Task looking specifically for LED/Button UUIDs (LED_UUid_Swapped, Button_UUid_Swapped).

Application-level data handlers: Attribute_Modified_CB, GATT_Notification_CB, and Send_Message.

The Clean Generic Seam
To make this completely generic for BLE-MIDI, sensors, or whatever workflow comes next without tangling tasks or passing 30 subprogram parameters, cut the seam right along that profile boundary.

Keep Scan_Task, Event_Task, and the IPCC mailbox pump inside Comm.Run. The generic formal contract only needs four key hooks:

Ada
generic
   -- 1. Identity & Role
   Node_Name : String;
   Is_Server : Boolean;
   
   -- 2. GATT Event Sinks
   with procedure On_Connected (Handle : UInt16; Peer : BDAddrT) is null;
   with procedure On_Disconnected is null;
   with procedure On_Attribute_Modified
     (Attr_Handle : UInt16;
      Data        : HAL.UInt8_Array) is null;
   with procedure On_Notification
     (Attr_Handle : UInt16;
      Data        : HAL.UInt8_Array) is null;

package Comm.Run is
   procedure SetConnectable (Enable : Boolean := True);
   procedure Send_Gatt_Data (Handle : UInt16; Data : HAL.UInt8_Array);
end Comm.Run;
How that transforms comm-run.adb
1. Decouple Attribute_Modified_CB & GATT_Notification_CB
Instead of checking for LEDHandle or toggling Blue_LED, forward the raw payload slice straight to the formal subprogram:

Ada
procedure Attribute_Modified_CB
  (Handle      : UInt16;
   Buff        : DataBuffT;
   Offset      : UInt8;
   Data_Length : UInt8)
is
   Start_Idx : constant Integer := Integer (Offset) + 1;
   End_Idx   : constant Integer := Start_Idx + Integer (Data_Length) - 1;
begin
   -- Hand the raw bytes off to the profile generic formal
   On_Attribute_Modified (Handle, Buff (Start_Idx .. End_Idx));
end Attribute_Modified_CB;
For BLE-MIDI, the instantiated callback will receive the MIDI timestamps and note bytes directly. For your existing test app, the callback just toggles the LED.

2. Re-orient Send_Message to a General GATT Tx Primitive
Replace the hardcoded Send_Message with a generic buffer transmitter:

Ada
procedure Send_Gatt_Data (Handle : UInt16; Data : HAL.UInt8_Array) is
   Buff   : DataBuffT;
   Status : BLE_Status_Code;
begin
   Buff (1 .. Data'Length) := Data;
   
   if Is_Server then
      Status := Aci_Gatt_Update_Char_Value
        (ServHandle    => ServHandle,
         CharHandle    => Handle,
         CharValOffset => 0,
         CharValueLen  => Data'Length,
         CharValue     => Buff);
   else
      Status := Aci_Gatt_Write_Without_Response
        (Conn_Handle   => Connection_Handle,
         Attr_Handle   => Handle,
         Value_Len     => Data'Length,
         Attr_Value    => Buff);
   end if;

   if Status /= BLE_STATUS_OK then
      raise Program_Error with "Send_Gatt_Data failed: " & BLE_Status_Code'Image (Status);
   end if;
end Send_Gatt_Data;
3. What about Post_Conn_Task?
Notice that Post_Conn_Task only runs when Is_Client = True to discover remote server characteristics.

For BLE-MIDI peripheral mode (Server), you don't even need Post_Conn_Task—the external central (an iPad, Mac, or PC) connects to you and discovers your attributes.

If you do need client discovery to remain generic:

Make the discovery table a formal array of desired UUIDs to search for.

Or let Post_Conn_Task simply fire an On_Primary_Service_Discovered callback for each item found, letting the application decide which attribute handles it wants to save.

Concrete Next Step
Since Comm.Run has the task body Event_Task and handles low-level IPCC queues, declaring:

Ada
generic
   Node_Name : String;
   -- callbacks ...
package Comm.Run is
makes total sense. Any generic formal you put at the top of comm-run.ads is directly in scope throughout that entire task body Event_Task and SetConnectable routine.

Does the upcoming BLE-MIDI setup act as a Peripheral/Server (advertising and waiting for a computer/tablet to connect), or as a Central/Client connecting to another MIDI device?

I made comm a generic.



Under it is comm-run.ad* which has SetConnectable. SetConnectable is called by the instantiator of Comm. How to get SetConnectable visible from sub modules?

In Ada, child packages of a generic parent must also be declared as generic child packages, or re-exported through the generic parent.

Here are the standard, clean ways to make SetConnectable visible to callers of your instantiation:

Option 1: Re-export from the Parent Specification (Cleanest API)
If callers instantiate Comm, keep the user-facing interface directly on that instantiated instance by re-exporting SetConnectable in the generic parent comm.ads:

In comm.ads:

Ada
generic
   -- your generic formals...
package Comm is

   -- Expose SetConnectable at the root instance level
   procedure SetConnectable (Enable : Boolean := True);

end Comm;
In comm.adb:

Ada
with Comm.Run;

package body Comm is

   procedure SetConnectable (Enable : Boolean := True) is
   begin
      Comm.Run.SetConnectable (Enable);
   end SetConnectable;

end Comm;
Now whoever instantiates Comm:

Ada
package BLE_Comm is new Comm (...);

-- Usage:
BLE_Comm.SetConnectable;
This hides internal layout decomposition (Comm.Run) and gives the caller a single cohesive package namespace.

Option 2: Generic Child Unit (generic package Comm.Run)
If Comm.Run needs to remain a separate child package accessible by the caller, it must be declared as a generic child:

In comm-run.ads:

Ada
generic
package Comm.Run is
   procedure SetConnectable (Enable : Boolean := True);
end Comm.Run;
When someone instantiates Comm, they also instantiate the child package off that instance:

Ada
-- 1. Instantiate parent
package BLE_Comm is new Comm (...);

-- 2. Instantiate child using the parent instance as prefix
package BLE_Run is new BLE_Comm.Run;

-- Usage:
BLE_Run.SetConnectable;
Option 3: Expression Function / Renaming in Parent Spec
If Comm.Run is already visible at the spec level of Comm, you can alias it directly in comm.ads without body overhead:

Ada
with Comm.Run;

generic
   -- formals...
package Comm is

   procedure SetConnectable (Enable : Boolean := True)
     renames Comm.Run.SetConnectable;

end Comm;
(Note: Option 3 requires Comm.Run to be a non-generic library unit. If Comm.Run depends on any generic formal types or formal subprograms from Comm, it must be a child package and follow Option 1 or Option 2.)

Which option will be best, I have decl's in Comm's generic that submodules will need (like the name of the BLE object, MAC address etc)

Option 1 paired with a generic child package (or private child package) is the cleanest and most idiomatic Ada architecture for this.

Because child packages automatically inherit the parent's generic formal declarations, you get direct visibility of the BLE name, MAC address, and other parameters without threading them through multiple parameter lists.

Here is how the pieces fit together:

1. The Generic Child: Comm.Run
Because Comm.Run is a child of generic package Comm, it must be declared generic, but it can take empty formals (generic package Comm.Run). Inside comm-run.ads and comm-run.adb, it has direct, full visibility of all the generic formals declared on Comm (the device name, MAC address, etc.):

Ada
-- comm-run.ads
generic
package Comm.Run is
   procedure SetConnectable (Enable : Boolean := True);
end Comm.Run;
Ada
-- comm-run.adb
package body Comm.Run is
   procedure SetConnectable (Enable : Boolean := True) is
   begin
      -- Direct access to Comm's generic formals:
      -- e.g., Device_Name, BD_Addr, etc.
      ...
   end SetConnectable;
end Comm.Run;
2. The Generic Parent: Comm (Re-exporting SetConnectable)
To spare the outside application from having to instantiate both Comm and Comm.Run, let Comm instantiate its own child internally and re-export SetConnectable at the top level:

Ada
-- comm.ads
generic
   Device_Name : String;
   BD_Addr     : Bluetooth_Address;
   -- other formals...
package Comm is

   procedure SetConnectable (Enable : Boolean := True);

end Comm;
Ada
-- comm.adb
package body Comm is

   -- Instantiate the generic child inside Comm's body
   package Core_Run is new Comm.Run;

   procedure SetConnectable (Enable : Boolean := True) is
   begin
      Core_Run.SetConnectable (Enable);
   end SetConnectable;

end Comm;
(Note: If Comm.Run is strictly an internal engine and the caller never needs to see it directly, you can make it private generic package Comm.Run.)

Why this is the best path
Formals are Inherited for Free: Comm.Run sees Device_Name, BD_Addr, and any types/callbacks passed into Comm without you having to re-declare them as formals on Comm.Run.

Single Caller Instantiation: The caller instantiates only one package:

Ada
package MIDI_Comm is new Comm
  (Device_Name => "BLE-MIDI",
   BD_Addr     => ...);
and simply calls:

Ada
MIDI_Comm.SetConnectable;
Separation of Concerns: comm.adb acts as the facade, while comm-run.adb houses the complex state machine and sub-modules without cluttering the main driver specification.
