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
