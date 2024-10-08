with HAL;               use HAL;

package Comm.TL is

   TL_BLECMD_PKT_TYPE   : constant := 16#10#;

   type TL_PacketHeader_T is record
      Next : UInt32;
      Prev : UInt32;
   end record
     with Volatile, Pack;

   type Buffer is array (1 .. 255) of UInt8;

   type TL_Cmd_T is record
      Cmdcode : UInt16;
      Plen    : UInt8;
      Payload : Buffer;
   end record
     with Volatile, Pack;

   type TL_CmdSerial_T is record
      Type_Code : UInt8;
      Cmd       : TL_Cmd_T;
   end record
     with Volatile, Pack;

   type TL_CmdPacket_T is record
      Header    : TL_PacketHeader_T;
      Cmdserial : TL_CmdSerial_T;
   end record
     with Volatile, Pack;

   type TL_Evt_T is record
      Evtcode : UInt8;
      Plen    : UInt8;
      --  Payload follows...
   end record
     with Volatile, Pack;

   type TL_EvtSerial_T is record
      Type_Code : UInt8;
      Evt       : TL_Evt_T;
   end record
     with Volatile, Pack;

   type TL_EvtPacket_T is record
      Header    : TL_PacketHeader_T;
      Evtserial : TL_EvtSerial_T;
   end record
     with Volatile, Pack;

   type TL_CsEvt_T is record
      Status  : UInt8;
      Numcmd  : UInt8;
      Cmdcode : UInt16;
   end record
     with Volatile, Pack;

   type TL_CcEvt_T is record
      Numcmd  : UInt8;
      Cmdcode : UInt16;
      --  Payload follows...
   end record
     with Volatile, Pack;

end Comm.TL;
