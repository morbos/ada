--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ETH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ETH_MACCR_PRELEN_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACCR_BL_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACCR_IPG_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACCR_SARC_Field is Interfaces.Bit_Types.UInt3;

   --  Operating mode configuration register
   type ETH_MACCR_Register is record
      --  Receiver Enable
      RE           : Boolean := False;
      --  Transmitter Enable
      TE           : Boolean := False;
      --  Preamble Length for Transmit packets
      PRELEN       : ETH_MACCR_PRELEN_Field := 16#0#;
      --  Deferral Check
      DC           : Boolean := False;
      --  Back-Off Limit
      BL           : ETH_MACCR_BL_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Disable Retry
      DR           : Boolean := False;
      --  Disable Carrier Sense During Transmission
      DCRS         : Boolean := False;
      --  Disable Receive Own
      DO_k         : Boolean := False;
      --  Enable Carrier Sense Before Transmission in Full-duplex mode
      ECRSFD       : Boolean := False;
      --  Loopback Mode
      LM           : Boolean := False;
      --  Duplex Mode
      DM           : Boolean := False;
      --  MAC Speed
      FES          : Boolean := False;
      --  Port Select
      PS           : Boolean := False;
      --  Jumbo Packet Enable
      JE           : Boolean := False;
      --  Jabber Disable
      JD           : Boolean := False;
      --  Packet Burst Enable
      BE           : Boolean := False;
      --  Watchdog Disable
      WD           : Boolean := False;
      --  Automatic Pad or CRC Stripping
      ACS          : Boolean := False;
      --  CRC stripping for Type packets
      CST          : Boolean := False;
      --  IEEE 802.
      S2KP         : Boolean := False;
      --  Giant Packet Size Limit Control Enable
      GPSLCE       : Boolean := False;
      --  Inter-Packet Gap
      IPG          : ETH_MACCR_IPG_Field := 16#0#;
      --  Checksum Offload
      IPC          : Boolean := False;
      --  Source Address Insertion or Replacement Control
      SARC         : ETH_MACCR_SARC_Field := 16#0#;
      --  ARP Offload Enable
      ARPEN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACCR_Register use record
      RE           at 0 range 0 .. 0;
      TE           at 0 range 1 .. 1;
      PRELEN       at 0 range 2 .. 3;
      DC           at 0 range 4 .. 4;
      BL           at 0 range 5 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      DR           at 0 range 8 .. 8;
      DCRS         at 0 range 9 .. 9;
      DO_k         at 0 range 10 .. 10;
      ECRSFD       at 0 range 11 .. 11;
      LM           at 0 range 12 .. 12;
      DM           at 0 range 13 .. 13;
      FES          at 0 range 14 .. 14;
      PS           at 0 range 15 .. 15;
      JE           at 0 range 16 .. 16;
      JD           at 0 range 17 .. 17;
      BE           at 0 range 18 .. 18;
      WD           at 0 range 19 .. 19;
      ACS          at 0 range 20 .. 20;
      CST          at 0 range 21 .. 21;
      S2KP         at 0 range 22 .. 22;
      GPSLCE       at 0 range 23 .. 23;
      IPG          at 0 range 24 .. 26;
      IPC          at 0 range 27 .. 27;
      SARC         at 0 range 28 .. 30;
      ARPEN        at 0 range 31 .. 31;
   end record;

   subtype ETH_MACECR_GPSL_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_MACECR_EIPG_Field is Interfaces.Bit_Types.UInt5;

   --  Extended operating mode configuration register
   type ETH_MACECR_Register is record
      --  Giant Packet Size Limit
      GPSL           : ETH_MACECR_GPSL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Disable CRC Checking for Received Packets
      DCRCC          : Boolean := False;
      --  Slow Protocol Detection Enable
      SPEN           : Boolean := False;
      --  Unicast Slow Protocol Packet Detect
      USP            : Boolean := False;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Extended Inter-Packet Gap Enable
      EIPGEN         : Boolean := False;
      --  Extended Inter-Packet Gap
      EIPG           : ETH_MACECR_EIPG_Field := 16#0#;
      --  ARP Packet Drop if IP Address Mismatch
      APDIM          : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACECR_Register use record
      GPSL           at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DCRCC          at 0 range 16 .. 16;
      SPEN           at 0 range 17 .. 17;
      USP            at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      EIPGEN         at 0 range 24 .. 24;
      EIPG           at 0 range 25 .. 29;
      APDIM          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACPFR_PCF_Field is Interfaces.Bit_Types.UInt2;

   --  Packet filtering control register
   type ETH_MACPFR_Register is record
      --  Promiscuous Mode
      PR             : Boolean := False;
      --  Hash Unicast
      HUC            : Boolean := False;
      --  Hash Multicast
      HMC            : Boolean := False;
      --  DA Inverse Filtering
      DAIF           : Boolean := False;
      --  Pass All Multicast
      PM             : Boolean := False;
      --  Disable Broadcast Packets
      DBF            : Boolean := False;
      --  Pass Control Packets
      PCF            : ETH_MACPFR_PCF_Field := 16#0#;
      --  SA Inverse Filtering
      SAIF           : Boolean := False;
      --  Source Address Filter Enable
      SAF            : Boolean := False;
      --  Hash or Perfect Filter
      HPF            : Boolean := False;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  VLAN Tag Filter Enable
      VTFE           : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Layer 3 and Layer 4 Filter Enable
      IPFE           : Boolean := False;
      --  Drop Non-TCP/UDP over IP Packets
      DNTU           : Boolean := False;
      --  unspecified
      Reserved_22_30 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Receive All
      RA             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPFR_Register use record
      PR             at 0 range 0 .. 0;
      HUC            at 0 range 1 .. 1;
      HMC            at 0 range 2 .. 2;
      DAIF           at 0 range 3 .. 3;
      PM             at 0 range 4 .. 4;
      DBF            at 0 range 5 .. 5;
      PCF            at 0 range 6 .. 7;
      SAIF           at 0 range 8 .. 8;
      SAF            at 0 range 9 .. 9;
      HPF            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      VTFE           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      IPFE           at 0 range 20 .. 20;
      DNTU           at 0 range 21 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      RA             at 0 range 31 .. 31;
   end record;

   subtype ETH_MACWJBTR_WTO_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACWJBTR_JTO_Field is Interfaces.Bit_Types.UInt4;

   --  Watchdog and jabber timeout register
   type ETH_MACWJBTR_Register is record
      --  Watchdog Timeout
      WTO            : ETH_MACWJBTR_WTO_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Programmable Watchdog Enable
      PWE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Jabber Timeout
      JTO            : ETH_MACWJBTR_JTO_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Programmable Jabber Enable
      PJE            : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACWJBTR_Register use record
      WTO            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PWE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      JTO            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PJE            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ETH_MACVTCR_OFS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACVTCR_EVLS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACVTCR_EIVLS_Field is Interfaces.Bit_Types.UInt2;

   --  VLAN tag Control register
   type ETH_MACVTCR_Register is record
      --  Operation Busy
      OB             : Boolean := False;
      --  Command Type
      CT             : Boolean := False;
      --  Offset
      OFS            : ETH_MACVTCR_OFS_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Enable 12-Bit VLAN Tag Comparison
      ETV            : Boolean := False;
      --  VLAN Tag Inverse Match Enable
      VTIM           : Boolean := False;
      --  Enable S-VLAN
      ESVL           : Boolean := False;
      --  Enable Receive S-VLAN Match
      ERSVLM         : Boolean := False;
      --  Disable VLAN Type Check
      DOVLTC         : Boolean := False;
      --  Enable VLAN Tag Stripping on Receive
      EVLS           : ETH_MACVTCR_EVLS_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable VLAN Tag in Rx status
      EVLRXS         : Boolean := False;
      --  VLAN Tag Hash Table Match Enable
      VTHM           : Boolean := False;
      --  Enable Double VLAN Processing
      EDVLP          : Boolean := False;
      --  Enable Inner VLAN Tag
      ERIVLT         : Boolean := False;
      --  Enable Inner VLAN Tag Stripping on Receive
      EIVLS          : ETH_MACVTCR_EIVLS_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable Inner VLAN Tag in Rx Status
      EIVLRXS        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACVTCR_Register use record
      OB             at 0 range 0 .. 0;
      CT             at 0 range 1 .. 1;
      OFS            at 0 range 2 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      ETV            at 0 range 16 .. 16;
      VTIM           at 0 range 17 .. 17;
      ESVL           at 0 range 18 .. 18;
      ERSVLM         at 0 range 19 .. 19;
      DOVLTC         at 0 range 20 .. 20;
      EVLS           at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EVLRXS         at 0 range 24 .. 24;
      VTHM           at 0 range 25 .. 25;
      EDVLP          at 0 range 26 .. 26;
      ERIVLT         at 0 range 27 .. 27;
      EIVLS          at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      EIVLRXS        at 0 range 31 .. 31;
   end record;

   subtype ETH_MACVTDR_VID_Field is Interfaces.Bit_Types.UInt16;

   --  VLAN tag data register
   type ETH_MACVTDR_Register is record
      --  VLAN Tag ID
      VID            : ETH_MACVTDR_VID_Field := 16#0#;
      --  VLAN Tag Enable
      VEN            : Boolean := False;
      --  12-bit or 16-bit VLAN comparison
      ETV            : Boolean := False;
      --  Disable VLAN Type Comparison
      DOVLTC         : Boolean := False;
      --  Enable S-VLAN Match for received Frames
      ERSVLM         : Boolean := False;
      --  Enable Inner VLAN Tag Comparison
      ERIVLT         : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA Channel Number Enable
      DMACHEN        : Boolean := False;
      --  DMA Channel Number
      DMACHN         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACVTDR_Register use record
      VID            at 0 range 0 .. 15;
      VEN            at 0 range 16 .. 16;
      ETV            at 0 range 17 .. 17;
      DOVLTC         at 0 range 18 .. 18;
      ERSVLM         at 0 range 19 .. 19;
      ERIVLT         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      DMACHEN        at 0 range 24 .. 24;
      DMACHN         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ETH_MACVHTR_VLHT_Field is Interfaces.Bit_Types.UInt16;

   --  VLAN Hash table register
   type ETH_MACVHTR_Register is record
      --  VLAN Hash Table
      VLHT           : ETH_MACVHTR_VLHT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACVHTR_Register use record
      VLHT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_MACVIR_VLT_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACVIR_VLC_Field is Interfaces.Bit_Types.UInt2;

   --  ETH_MACVIR_ADDR array
   type ETH_MACVIR_ADDR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ETH_MACVIR_ADDR
   type ETH_MACVIR_ADDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADDR as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ADDR as an array
            Arr : ETH_MACVIR_ADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ETH_MACVIR_ADDR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  VLAN inclusion register
   type ETH_MACVIR_Register is record
      --  VLAN Tag for Transmit Packets
      VLT            : ETH_MACVIR_VLT_Field := 16#0#;
      --  VLAN Tag Control in Transmit Packets
      VLC            : ETH_MACVIR_VLC_Field := 16#0#;
      --  VLAN Priority Control
      VLP            : Boolean := False;
      --  C-VLAN or S-VLAN
      CSVL           : Boolean := False;
      --  VLAN Tag Input
      VLTI           : Boolean := False;
      --  Channel based tag insertion
      CBTI           : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address
      ADDR           : ETH_MACVIR_ADDR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read write control
      RDWR           : Boolean := False;
      --  Read-only. Busy
      BUSY           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACVIR_Register use record
      VLT            at 0 range 0 .. 15;
      VLC            at 0 range 16 .. 17;
      VLP            at 0 range 18 .. 18;
      CSVL           at 0 range 19 .. 19;
      VLTI           at 0 range 20 .. 20;
      CBTI           at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADDR           at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      RDWR           at 0 range 30 .. 30;
      BUSY           at 0 range 31 .. 31;
   end record;

   subtype ETH_MACVIR_ALTERNATE1_VLT_Field is Interfaces.Bit_Types.UInt16;

   --  VLAN inclusion register
   type ETH_MACVIR_ALTERNATE1_Register is record
      --  VLAN Tag for Transmit Packets
      VLT            : ETH_MACVIR_ALTERNATE1_VLT_Field := 16#0#;
      --  unspecified
      Reserved_16_18 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  C-VLAN or S-VLAN
      CSVL           : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACVIR_ALTERNATE1_Register use record
      VLT            at 0 range 0 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      CSVL           at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_MACIVIR_VLT_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACIVIR_VLC_Field is Interfaces.Bit_Types.UInt2;

   --  Inner VLAN inclusion register
   type ETH_MACIVIR_Register is record
      --  VLAN Tag for Transmit Packets
      VLT            : ETH_MACIVIR_VLT_Field := 16#0#;
      --  VLAN Tag Control in Transmit Packets
      VLC            : ETH_MACIVIR_VLC_Field := 16#0#;
      --  VLAN Priority Control
      VLP            : Boolean := False;
      --  C-VLAN or S-VLAN
      CSVL           : Boolean := False;
      --  VLAN Tag Input
      VLTI           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACIVIR_Register use record
      VLT            at 0 range 0 .. 15;
      VLC            at 0 range 16 .. 17;
      VLP            at 0 range 18 .. 18;
      CSVL           at 0 range 19 .. 19;
      VLTI           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_MACQ0TXFCR_PLT_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACQ0TXFCR_PT_Field is Interfaces.Bit_Types.UInt16;

   --  Tx Queue 0 flow control register
   type ETH_MACQ0TXFCR_Register is record
      --  Flow Control Busy or Backpressure Activate
      FCB_BPA       : Boolean := False;
      --  Transmit Flow Control Enable
      TFE           : Boolean := False;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pause Low Threshold
      PLT           : ETH_MACQ0TXFCR_PLT_Field := 16#0#;
      --  Disable Zero-Quanta Pause
      DZPQ          : Boolean := False;
      --  unspecified
      Reserved_8_15 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Pause Time
      PT            : ETH_MACQ0TXFCR_PT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACQ0TXFCR_Register use record
      FCB_BPA       at 0 range 0 .. 0;
      TFE           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PLT           at 0 range 4 .. 6;
      DZPQ          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      PT            at 0 range 16 .. 31;
   end record;

   --  Rx flow control register
   type ETH_MACRXFCR_Register is record
      --  Receive Flow Control Enable
      RFE           : Boolean := False;
      --  Unicast Pause Packet Detect
      UP            : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXFCR_Register use record
      RFE           at 0 range 0 .. 0;
      UP            at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Rx Queue control register
   type ETH_MACRXQCR_Register is record
      --  Unicast Address Filter Fail Packets Queuing Enable.
      UFFQE          : Boolean := False;
      --  Unicast Address Filter Fail Packets Queue.
      UFFQ           : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Multicast Address Filter Fail Packets Queuing Enable.
      MFFQE          : Boolean := False;
      --  Multicast Address Filter Fail Packets Queue.
      MFFQ           : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  VLAN Tag Filter Fail Packets Queuing Enable
      VFFQE          : Boolean := False;
      --  VLAN Tag Filter Fail Packets Queue
      VFFQ           : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXQCR_Register use record
      UFFQE          at 0 range 0 .. 0;
      UFFQ           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MFFQE          at 0 range 8 .. 8;
      MFFQ           at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      VFFQE          at 0 range 16 .. 16;
      VFFQ           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ETH_MACRXQC0R_RXQ0EN_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACRXQC0R_RXQ1EN_Field is Interfaces.Bit_Types.UInt2;

   --  Rx queue control 0 register
   type ETH_MACRXQC0R_Register is record
      --  Receive Queue 0 Enable
      RXQ0EN        : ETH_MACRXQC0R_RXQ0EN_Field := 16#0#;
      --  Receive Queue 1 Enable
      RXQ1EN        : ETH_MACRXQC0R_RXQ1EN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXQC0R_Register use record
      RXQ0EN        at 0 range 0 .. 1;
      RXQ1EN        at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  ETH_MACRXQC1R_AVCPQ array
   type ETH_MACRXQC1R_AVCPQ_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ETH_MACRXQC1R_AVCPQ
   type ETH_MACRXQC1R_AVCPQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AVCPQ as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  AVCPQ as an array
            Arr : ETH_MACRXQC1R_AVCPQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ETH_MACRXQC1R_AVCPQ_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ETH_MACRXQC1R_PTPQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACRXQC1R_UPQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACRXQC1R_MCBCQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACRXQC1R_TPQC_Field is Interfaces.Bit_Types.UInt2;

   --  ETH_MACRXQC1R_FPRQ array
   type ETH_MACRXQC1R_FPRQ_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ETH_MACRXQC1R_FPRQ
   type ETH_MACRXQC1R_FPRQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPRQ as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  FPRQ as an array
            Arr : ETH_MACRXQC1R_FPRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ETH_MACRXQC1R_FPRQ_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Rx queue control 1 register
   type ETH_MACRXQC1R_Register is record
      --  AV Untagged Control Packets Queue
      AVCPQ          : ETH_MACRXQC1R_AVCPQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  PTP Packets Queue
      PTPQ           : ETH_MACRXQC1R_PTPQ_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Untagged Packet Queue
      UPQ            : ETH_MACRXQC1R_UPQ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Multicast and Broadcast Queue
      MCBCQ          : ETH_MACRXQC1R_MCBCQ_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Multicast and Broadcast Queue Enable
      MCBCQEN        : Boolean := False;
      --  Tagged AV Control Packets Queuing Enable
      TACPQE         : Boolean := False;
      --  Tagged PTP over Ethernet Packets Queuing Control
      TPQC           : ETH_MACRXQC1R_TPQC_Field := 16#0#;
      --  Frame Preemption Residue Queue
      FPRQ           : ETH_MACRXQC1R_FPRQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Overriding MC-BC queue priority select
      OMCBCQ         : Boolean := False;
      --  Type Field Based Rx Queuing Enable
      TBRQE          : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXQC1R_Register use record
      AVCPQ          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PTPQ           at 0 range 4 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      UPQ            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MCBCQ          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MCBCQEN        at 0 range 20 .. 20;
      TACPQE         at 0 range 21 .. 21;
      TPQC           at 0 range 22 .. 23;
      FPRQ           at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      OMCBCQ         at 0 range 28 .. 28;
      TBRQE          at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ETH_MACRXQC2R_PSRQ array element
   subtype ETH_MACRXQC2R_PSRQ_Element is Interfaces.Bit_Types.Byte;

   --  ETH_MACRXQC2R_PSRQ array
   type ETH_MACRXQC2R_PSRQ_Field_Array is array (0 .. 1)
     of ETH_MACRXQC2R_PSRQ_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ETH_MACRXQC2R_PSRQ
   type ETH_MACRXQC2R_PSRQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSRQ as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PSRQ as an array
            Arr : ETH_MACRXQC2R_PSRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ETH_MACRXQC2R_PSRQ_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Rx queue control 2 register
   type ETH_MACRXQC2R_Register is record
      --  Priorities Selected in the Receive Queue 0
      PSRQ           : ETH_MACRXQC2R_PSRQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXQC2R_Register use record
      PSRQ           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt status register
   type ETH_MACISR_Register is record
      --  Read-only. RGMII Interrupt Status
      RGSMIIIS       : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. PHY Interrupt
      PHYIS          : Boolean := False;
      --  Read-only. PMT Interrupt Status
      PMTIS          : Boolean := False;
      --  Read-only. LPI Interrupt Status
      LPIIS          : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. MMC Interrupt Status
      MMCIS          : Boolean := False;
      --  Read-only. MMC Receive Interrupt Status
      MMCRXIS        : Boolean := False;
      --  Read-only. MMC Transmit Interrupt Status
      MMCTXIS        : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Timestamp Interrupt Status
      TSIS           : Boolean := False;
      --  Transmit Status Interrupt
      TXSTSIS        : Boolean := False;
      --  Receive Status Interrupt
      RXSTSIS        : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. Frame Preemption Interrupt Status
      FPEIS          : Boolean := False;
      --  MDIO Interrupt Status
      MDIOIS         : Boolean := False;
      --  Read-only. MMC FPE Transmit Interrupt Status
      MFTIS          : Boolean := False;
      --  Read-only. MMC FPE Receive Interrupt Status
      MFRIS          : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACISR_Register use record
      RGSMIIIS       at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      PHYIS          at 0 range 3 .. 3;
      PMTIS          at 0 range 4 .. 4;
      LPIIS          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MMCIS          at 0 range 8 .. 8;
      MMCRXIS        at 0 range 9 .. 9;
      MMCTXIS        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TSIS           at 0 range 12 .. 12;
      TXSTSIS        at 0 range 13 .. 13;
      RXSTSIS        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      FPEIS          at 0 range 17 .. 17;
      MDIOIS         at 0 range 18 .. 18;
      MFTIS          at 0 range 19 .. 19;
      MFRIS          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Interrupt enable register
   type ETH_MACIER_Register is record
      --  RGMII Interrupt Enable
      RGSMIIIE       : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PHY Interrupt Enable
      PHYIE          : Boolean := False;
      --  PMT Interrupt Enable
      PMTIE          : Boolean := False;
      --  LPI Interrupt Enable
      LPIIE          : Boolean := False;
      --  unspecified
      Reserved_6_11  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Timestamp Interrupt Enable
      TSIE           : Boolean := False;
      --  Transmit Status Interrupt Enable
      TXSTSIE        : Boolean := False;
      --  Receive Status Interrupt Enable
      RXSTSIE        : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Frame Preemption Interrupt Enable
      FPEIE          : Boolean := False;
      --  MDIO Interrupt Enable
      MDIOIE         : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACIER_Register use record
      RGSMIIIE       at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      PHYIE          at 0 range 3 .. 3;
      PMTIE          at 0 range 4 .. 4;
      LPIIE          at 0 range 5 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TSIE           at 0 range 12 .. 12;
      TXSTSIE        at 0 range 13 .. 13;
      RXSTSIE        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      FPEIE          at 0 range 17 .. 17;
      MDIOIE         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Rx Tx status register
   type ETH_MACRXTXSR_Register is record
      --  Transmit Jabber Timeout
      TJT           : Boolean := False;
      --  No Carrier
      NCARR         : Boolean := False;
      --  Loss of Carrier
      LCARR         : Boolean := False;
      --  Excessive Deferral
      EXDEF         : Boolean := False;
      --  Late Collision
      LCOL          : Boolean := False;
      --  Excessive Collisions
      EXCOL         : Boolean := False;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Receive Watchdog Timeout
      RWT           : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXTXSR_Register use record
      TJT           at 0 range 0 .. 0;
      NCARR         at 0 range 1 .. 1;
      LCARR         at 0 range 2 .. 2;
      EXDEF         at 0 range 3 .. 3;
      LCOL          at 0 range 4 .. 4;
      EXCOL         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      RWT           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ETH_MACPCSR_RWKPTR_Field is Interfaces.Bit_Types.UInt5;

   --  PMT control status register
   type ETH_MACPCSR_Register is record
      --  Power Down
      PWRDWN         : Boolean := False;
      --  Magic Packet Enable
      MGKPKTEN       : Boolean := False;
      --  Remote wake-up Packet Enable
      RWKPKTEN       : Boolean := False;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Magic Packet Received
      MGKPRCVD       : Boolean := False;
      --  Read-only. Remote wake-up Packet Received
      RWKPRCVD       : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Global Unicast
      GLBLUCAST      : Boolean := False;
      --  Remote wake-up Packet Forwarding Enable
      RWKPFE         : Boolean := False;
      --  unspecified
      Reserved_11_23 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  Read-only. Remote wake-up FIFO Pointer
      RWKPTR         : ETH_MACPCSR_RWKPTR_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Remote Wake-up Packet Filter Register Pointer Reset
      RWKFILTRST     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPCSR_Register use record
      PWRDWN         at 0 range 0 .. 0;
      MGKPKTEN       at 0 range 1 .. 1;
      RWKPKTEN       at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      MGKPRCVD       at 0 range 5 .. 5;
      RWKPRCVD       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      GLBLUCAST      at 0 range 9 .. 9;
      RWKPFE         at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      RWKPTR         at 0 range 24 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      RWKFILTRST     at 0 range 31 .. 31;
   end record;

   --  LPI control and status register
   type ETH_MACLCSR_Register is record
      --  Read-only. Transmit LPI Entry
      TLPIEN         : Boolean := False;
      --  Read-only. Transmit LPI Exit
      TLPIEX         : Boolean := False;
      --  Read-only. Receive LPI Entry
      RLPIEN         : Boolean := False;
      --  Read-only. Receive LPI Exit
      RLPIEX         : Boolean := False;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. Transmit LPI State
      TLPIST         : Boolean := False;
      --  Read-only. Receive LPI State
      RLPIST         : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  LPI Enable
      LPIEN          : Boolean := False;
      --  PHY Link Status
      PLS            : Boolean := False;
      --  PHY Link Status Enable
      PLSEN          : Boolean := False;
      --  LPI Tx Automate
      LPITXA         : Boolean := False;
      --  LPI Timer Enable
      LPITE          : Boolean := False;
      --  LPI Tx Clock Stop Enable
      LPITCSE        : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACLCSR_Register use record
      TLPIEN         at 0 range 0 .. 0;
      TLPIEX         at 0 range 1 .. 1;
      RLPIEN         at 0 range 2 .. 2;
      RLPIEX         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TLPIST         at 0 range 8 .. 8;
      RLPIST         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      LPIEN          at 0 range 16 .. 16;
      PLS            at 0 range 17 .. 17;
      PLSEN          at 0 range 18 .. 18;
      LPITXA         at 0 range 19 .. 19;
      LPITE          at 0 range 20 .. 20;
      LPITCSE        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ETH_MACLTCR_TWT_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACLTCR_LST_Field is Interfaces.Bit_Types.UInt10;

   --  LPI timers control register
   type ETH_MACLTCR_Register is record
      --  LPI TW Timer
      TWT            : ETH_MACLTCR_TWT_Field := 16#0#;
      --  LPI LS Timer
      LST            : ETH_MACLTCR_LST_Field := 16#3E8#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACLTCR_Register use record
      TWT            at 0 range 0 .. 15;
      LST            at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ETH_MACLETR_LPIET_Field is Interfaces.Bit_Types.UInt20;

   --  LPI entry timer register
   type ETH_MACLETR_Register is record
      --  LPI Entry Timer
      LPIET          : ETH_MACLETR_LPIET_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACLETR_Register use record
      LPIET          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_MAC1USTCR_TIC_1US_CNTR_Field is Interfaces.Bit_Types.UInt12;

   --  One-microsecond-tick counter register
   type ETH_MAC1USTCR_Register is record
      --  1us tick Counter
      TIC_1US_CNTR   : ETH_MAC1USTCR_TIC_1US_CNTR_Field := 16#63#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MAC1USTCR_Register use record
      TIC_1US_CNTR   at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETH_MACPHYCSR_LNKSPEED_Field is Interfaces.Bit_Types.UInt2;

   --  PHYIF control status register
   type ETH_MACPHYCSR_Register is record
      --  Transmit Configuration in RGMII
      TC             : Boolean := False;
      --  Link Up or Down
      LUD            : Boolean := False;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Read-only. Link Mode
      LNKMOD         : Boolean := False;
      --  Read-only. Link Speed
      LNKSPEED       : ETH_MACPHYCSR_LNKSPEED_Field := 16#0#;
      --  Read-only. Link Status
      LNKSTS         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPHYCSR_Register use record
      TC             at 0 range 0 .. 0;
      LUD            at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      LNKMOD         at 0 range 16 .. 16;
      LNKSPEED       at 0 range 17 .. 18;
      LNKSTS         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_MACVR_SNPSVER_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_MACVR_USERVER_Field is Interfaces.Bit_Types.Byte;

   --  Version register
   type ETH_MACVR_Register is record
      --  Read-only. IP version
      SNPSVER        : ETH_MACVR_SNPSVER_Field;
      --  Read-only. ST-defined version
      USERVER        : ETH_MACVR_USERVER_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACVR_Register use record
      SNPSVER        at 0 range 0 .. 7;
      USERVER        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_MACDR_RFCFCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACDR_TFCSTS_Field is Interfaces.Bit_Types.UInt2;

   --  Debug register
   type ETH_MACDR_Register is record
      --  Read-only. MAC GMII or MII Receive Protocol Engine Status
      RPESTS         : Boolean;
      --  Read-only. MAC Receive Packet Controller FIFO Status
      RFCFCSTS       : ETH_MACDR_RFCFCSTS_Field;
      --  unspecified
      Reserved_3_15  : Interfaces.Bit_Types.UInt13;
      --  Read-only. MAC GMII or MII Transmit Protocol Engine Status
      TPESTS         : Boolean;
      --  Read-only. MAC Transmit Packet Controller Status
      TFCSTS         : ETH_MACDR_TFCSTS_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACDR_Register use record
      RPESTS         at 0 range 0 .. 0;
      RFCFCSTS       at 0 range 1 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      TPESTS         at 0 range 16 .. 16;
      TFCSTS         at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ETH_MACHWF0R_ADDMACADRSEL_Field is Interfaces.Bit_Types.UInt5;
   subtype ETH_MACHWF0R_TSSTSSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF0R_ACTPHYSEL_Field is Interfaces.Bit_Types.UInt3;

   --  HW feature 0 register
   type ETH_MACHWF0R_Register is record
      --  Read-only. 10 or 100 Mbps Support
      MIISEL         : Boolean;
      --  Read-only. 1000 Mbps Support
      GMIISEL        : Boolean;
      --  Read-only. Half-duplex Support
      HDSEL          : Boolean;
      --  Read-only. PCS Registers (TBI, SGMII, or RTBI PHY interface)
      PCSSEL         : Boolean;
      --  Read-only. VLAN Hash Filter Selected
      VLHASH         : Boolean;
      --  Read-only. SMA (MDIO) Interface
      SMASEL         : Boolean;
      --  Read-only. PMT Remote Wake-up Packet Enable
      RWKSEL         : Boolean;
      --  Read-only. PMT Magic Packet Enable
      MGKSEL         : Boolean;
      --  Read-only. RMON Module Enable
      MMCSEL         : Boolean;
      --  Read-only. ARP Offload Enabled
      ARPOFFSEL      : Boolean;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. IEEE 1588-2008 Timestamp Enabled
      TSSEL          : Boolean;
      --  Read-only. Energy Efficient Ethernet Enabled
      EEESEL         : Boolean;
      --  Read-only. Transmit Checksum Offload Enabled
      TXCOESEL       : Boolean;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Receive Checksum Offload Enabled
      RXCOESEL       : Boolean;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit;
      --  Read-only. MAC Addresses 1-31 Selected
      ADDMACADRSEL   : ETH_MACHWF0R_ADDMACADRSEL_Field;
      --  Read-only. MAC Addresses 32-63 Selected
      MACADR32SEL    : Boolean;
      --  Read-only. MAC Addresses 64-127 Selected
      MACADR64SEL    : Boolean;
      --  Read-only. Timestamp System Time Source
      TSSTSSEL       : ETH_MACHWF0R_TSSTSSEL_Field;
      --  Read-only. Source Address or VLAN Insertion Enable
      SAVLANINS      : Boolean;
      --  Read-only. Active PHY Selected
      ACTPHYSEL      : ETH_MACHWF0R_ACTPHYSEL_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACHWF0R_Register use record
      MIISEL         at 0 range 0 .. 0;
      GMIISEL        at 0 range 1 .. 1;
      HDSEL          at 0 range 2 .. 2;
      PCSSEL         at 0 range 3 .. 3;
      VLHASH         at 0 range 4 .. 4;
      SMASEL         at 0 range 5 .. 5;
      RWKSEL         at 0 range 6 .. 6;
      MGKSEL         at 0 range 7 .. 7;
      MMCSEL         at 0 range 8 .. 8;
      ARPOFFSEL      at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TSSEL          at 0 range 12 .. 12;
      EEESEL         at 0 range 13 .. 13;
      TXCOESEL       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXCOESEL       at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      ADDMACADRSEL   at 0 range 18 .. 22;
      MACADR32SEL    at 0 range 23 .. 23;
      MACADR64SEL    at 0 range 24 .. 24;
      TSSTSSEL       at 0 range 25 .. 26;
      SAVLANINS      at 0 range 27 .. 27;
      ACTPHYSEL      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACHWF1R_RXFIFOSIZE_Field is Interfaces.Bit_Types.UInt5;
   subtype ETH_MACHWF1R_TXFIFOSIZE_Field is Interfaces.Bit_Types.UInt5;
   subtype ETH_MACHWF1R_ADDR64_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF1R_HASHTBLSZ_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF1R_L3L4FNUM_Field is Interfaces.Bit_Types.UInt4;

   --  HW feature 1 register
   type ETH_MACHWF1R_Register is record
      --  Read-only. MTL Receive FIFO Size
      RXFIFOSIZE     : ETH_MACHWF1R_RXFIFOSIZE_Field;
      --  Read-only. Single Port RAM Enable
      SPRAM          : Boolean;
      --  Read-only. MTL Transmit FIFO Size
      TXFIFOSIZE     : ETH_MACHWF1R_TXFIFOSIZE_Field;
      --  Read-only. One-Step Timestamping Enable
      OSTEN          : Boolean;
      --  Read-only. PTP Offload Enable
      PTOEN          : Boolean;
      --  Read-only. IEEE 1588 High Word Register Enable
      ADVTHWORD      : Boolean;
      --  Read-only. Address width
      ADDR64         : ETH_MACHWF1R_ADDR64_Field;
      --  Read-only. DCB Feature Enable
      DCBEN          : Boolean;
      --  Read-only. Split Header Feature Enable
      SPHEN          : Boolean;
      --  Read-only. TCP Segmentation Offload Enable
      TSOEN          : Boolean;
      --  Read-only. DMA Debug Registers Enable
      DBGMEMA        : Boolean;
      --  Read-only. AV Feature Enable
      AVSEL          : Boolean;
      --  Read-only. Rx Side Only AV Feature Enable
      RAVSEL         : Boolean;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit;
      --  Read-only. One Step for PTP over UDP/IP Feature Enable
      POUOST         : Boolean;
      --  Read-only. Hash Table Size
      HASHTBLSZ      : ETH_MACHWF1R_HASHTBLSZ_Field;
      --  unspecified
      Reserved_26_26 : Interfaces.Bit_Types.Bit;
      --  Read-only. Total number of L3 or L4 Filters
      L3L4FNUM       : ETH_MACHWF1R_L3L4FNUM_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACHWF1R_Register use record
      RXFIFOSIZE     at 0 range 0 .. 4;
      SPRAM          at 0 range 5 .. 5;
      TXFIFOSIZE     at 0 range 6 .. 10;
      OSTEN          at 0 range 11 .. 11;
      PTOEN          at 0 range 12 .. 12;
      ADVTHWORD      at 0 range 13 .. 13;
      ADDR64         at 0 range 14 .. 15;
      DCBEN          at 0 range 16 .. 16;
      SPHEN          at 0 range 17 .. 17;
      TSOEN          at 0 range 18 .. 18;
      DBGMEMA        at 0 range 19 .. 19;
      AVSEL          at 0 range 20 .. 20;
      RAVSEL         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      POUOST         at 0 range 23 .. 23;
      HASHTBLSZ      at 0 range 24 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      L3L4FNUM       at 0 range 27 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACHWF2R_RXQCNT_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACHWF2R_TXQCNT_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACHWF2R_RXCHCNT_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACHWF2R_RDCSZ_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF2R_TXCHCNT_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACHWF2R_TDCSZ_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF2R_PPSOUTNUM_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACHWF2R_AUXSNAPNUM_Field is Interfaces.Bit_Types.UInt3;

   --  HW feature 2 register
   type ETH_MACHWF2R_Register is record
      --  Read-only. Number of MTL Receive Queues
      RXQCNT         : ETH_MACHWF2R_RXQCNT_Field;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Number of MTL Transmit Queues
      TXQCNT         : ETH_MACHWF2R_TXQCNT_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Number of DMA Receive Channels
      RXCHCNT        : ETH_MACHWF2R_RXCHCNT_Field;
      --  Read-only. Rx DMA Descriptor Cache Size in terms of 16-byte
      --  descriptors
      RDCSZ          : ETH_MACHWF2R_RDCSZ_Field;
      --  Read-only. Number of DMA Transmit Channels
      TXCHCNT        : ETH_MACHWF2R_TXCHCNT_Field;
      --  Read-only. Tx DMA Descriptor Cache Size in terms of 16-byte
      --  descriptors
      TDCSZ          : ETH_MACHWF2R_TDCSZ_Field;
      --  Read-only. Number of PPS Outputs
      PPSOUTNUM      : ETH_MACHWF2R_PPSOUTNUM_Field;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of Auxiliary Snapshot Inputs
      AUXSNAPNUM     : ETH_MACHWF2R_AUXSNAPNUM_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACHWF2R_Register use record
      RXQCNT         at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      TXQCNT         at 0 range 6 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RXCHCNT        at 0 range 12 .. 15;
      RDCSZ          at 0 range 16 .. 17;
      TXCHCNT        at 0 range 18 .. 21;
      TDCSZ          at 0 range 22 .. 23;
      PPSOUTNUM      at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      AUXSNAPNUM     at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACHWF3R_NRVF_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACHWF3R_FRPBS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF3R_FRPES_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF3R_ESTDEP_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACHWF3R_ESTWID_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACHWF3R_ASP_Field is Interfaces.Bit_Types.UInt2;

   --  HW feature 3 register
   type ETH_MACHWF3R_Register is record
      --  Read-only. Number of Extended VLAN Tag Filters Enabled
      NRVF           : ETH_MACHWF3R_NRVF_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. Queue/Channel based VLAN tag insertion on Tx enable
      CBTISEL        : Boolean;
      --  Read-only. Double VLAN processing enable
      DVLAN          : Boolean;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3;
      --  Read-only. Broadcast/Multicast Packet Duplication
      PDUPSEL        : Boolean;
      --  Read-only. Flexible Receive Parser Selected
      FRPSEL         : Boolean;
      --  Read-only. Flexible Receive Parser Buffer size
      FRPBS          : ETH_MACHWF3R_FRPBS_Field;
      --  Read-only. Flexible Receive Parser Table Entries size
      FRPES          : ETH_MACHWF3R_FRPES_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Enhancements to Scheduled Traffic Enable
      ESTSEL         : Boolean;
      --  Read-only. Depth of the Gate Control List
      ESTDEP         : ETH_MACHWF3R_ESTDEP_Field;
      --  Read-only. Width of the Time Interval field in the Gate Control List
      ESTWID         : ETH_MACHWF3R_ESTWID_Field;
      --  unspecified
      Reserved_22_25 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Frame Preemption Enable
      FPESEL         : Boolean;
      --  Read-only. Time-based scheduling Enable
      TBSSEL         : Boolean;
      --  Read-only. Automotive Safety Package
      ASP            : ETH_MACHWF3R_ASP_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACHWF3R_Register use record
      NRVF           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CBTISEL        at 0 range 4 .. 4;
      DVLAN          at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      PDUPSEL        at 0 range 9 .. 9;
      FRPSEL         at 0 range 10 .. 10;
      FRPBS          at 0 range 11 .. 12;
      FRPES          at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      ESTSEL         at 0 range 16 .. 16;
      ESTDEP         at 0 range 17 .. 19;
      ESTWID         at 0 range 20 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      FPESEL         at 0 range 26 .. 26;
      TBSSEL         at 0 range 27 .. 27;
      ASP            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETH_MACMDIOAR_GOC_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MACMDIOAR_CR_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACMDIOAR_NTC_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACMDIOAR_RDA_Field is Interfaces.Bit_Types.UInt5;
   subtype ETH_MACMDIOAR_PA_Field is Interfaces.Bit_Types.UInt5;

   --  MDIO address register
   type ETH_MACMDIOAR_Register is record
      --  GMII Busy
      GB             : Boolean := False;
      --  Clause 45 PHY Enable
      C45E           : Boolean := False;
      --  GMII Operation Command
      GOC            : ETH_MACMDIOAR_GOC_Field := 16#0#;
      --  Skip Address Packet
      SKAP           : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CSR Clock Range
      CR             : ETH_MACMDIOAR_CR_Field := 16#0#;
      --  Number of Training Clocks
      NTC            : ETH_MACMDIOAR_NTC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Register/Device Address
      RDA            : ETH_MACMDIOAR_RDA_Field := 16#0#;
      --  Physical Layer Address
      PA             : ETH_MACMDIOAR_PA_Field := 16#0#;
      --  Back to Back transactions
      BTB            : Boolean := False;
      --  Preamble Suppression Enable
      PSE            : Boolean := False;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACMDIOAR_Register use record
      GB             at 0 range 0 .. 0;
      C45E           at 0 range 1 .. 1;
      GOC            at 0 range 2 .. 3;
      SKAP           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CR             at 0 range 8 .. 11;
      NTC            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RDA            at 0 range 16 .. 20;
      PA             at 0 range 21 .. 25;
      BTB            at 0 range 26 .. 26;
      PSE            at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ETH_MACMDIODR_GD_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACMDIODR_RA_Field is Interfaces.Bit_Types.UInt16;

   --  MDIO data register
   type ETH_MACMDIODR_Register is record
      --  GMII Data
      GD : ETH_MACMDIODR_GD_Field := 16#0#;
      --  Register Address
      RA : ETH_MACMDIODR_RA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACMDIODR_Register use record
      GD at 0 range 0 .. 15;
      RA at 0 range 16 .. 31;
   end record;

   --  CSR software control register
   type ETH_MACCSRSWCR_Register is record
      --  Register Clear on Write 1 Enable
      RCWE          : Boolean := False;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Slave Error Response Enable
      SEEN          : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACCSRSWCR_Register use record
      RCWE          at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      SEEN          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  FPE control and status register
   type ETH_MACFPECSR_Register is record
      --  Enable Tx Frame Preemption
      EFPE           : Boolean := False;
      --  Send Verify mPacket
      SVER           : Boolean := False;
      --  Send Respond mPacket
      SRSP           : Boolean := False;
      --  Autogenerate Respond mPacket on receiving Verify mPacket
      ARV            : Boolean := False;
      --  unspecified
      Reserved_4_15  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Received Verify Frame
      RVER           : Boolean := False;
      --  Received Respond Frame
      RRSP           : Boolean := False;
      --  Transmitted Verify Frame
      TVER           : Boolean := False;
      --  Transmitted Respond Frame
      TRSP           : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACFPECSR_Register use record
      EFPE           at 0 range 0 .. 0;
      SVER           at 0 range 1 .. 1;
      SRSP           at 0 range 2 .. 2;
      ARV            at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      RVER           at 0 range 16 .. 16;
      RRSP           at 0 range 17 .. 17;
      TVER           at 0 range 18 .. 18;
      TRSP           at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_MACA0HR_ADDRHI_Field is Interfaces.Bit_Types.UInt16;

   --  MAC Address 0 high register
   type ETH_MACA0HR_Register is record
      --  MAC Address0[47:32]
      ADDRHI         : ETH_MACA0HR_ADDRHI_Field := 16#FFFF#;
      --  DMA Channel Select
      DCS            : Boolean := False;
      --  unspecified
      Reserved_17_30 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Read-only. Address Enable
      AE             : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACA0HR_Register use record
      ADDRHI         at 0 range 0 .. 15;
      DCS            at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype ETH_MACA1HR_ADDRHI_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACA1HR_MBC_Field is Interfaces.Bit_Types.UInt6;

   --  MAC Address 1 high register
   type ETH_MACA1HR_Register is record
      --  MAC Address1 [47:32]
      ADDRHI         : ETH_MACA1HR_ADDRHI_Field := 16#FFFF#;
      --  DMA Channel Select
      DCS            : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Mask Byte Control
      MBC            : ETH_MACA1HR_MBC_Field := 16#0#;
      --  Source Address
      SA             : Boolean := False;
      --  Address Enable
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACA1HR_Register use record
      ADDRHI         at 0 range 0 .. 15;
      DCS            at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype ETH_MACA2HR_ADDRHI_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACA2HR_MBC_Field is Interfaces.Bit_Types.UInt6;

   --  MAC Address 2 high register
   type ETH_MACA2HR_Register is record
      --  MAC Address1 [47:32]
      ADDRHI         : ETH_MACA2HR_ADDRHI_Field := 16#FFFF#;
      --  DMA Channel Select
      DCS            : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Mask Byte Control
      MBC            : ETH_MACA2HR_MBC_Field := 16#0#;
      --  Source Address
      SA             : Boolean := False;
      --  Address Enable
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACA2HR_Register use record
      ADDRHI         at 0 range 0 .. 15;
      DCS            at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype ETH_MACA3HR_ADDRHI_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACA3HR_MBC_Field is Interfaces.Bit_Types.UInt6;

   --  MAC Address 3 high register
   type ETH_MACA3HR_Register is record
      --  MAC Address1 [47:32]
      ADDRHI         : ETH_MACA3HR_ADDRHI_Field := 16#FFFF#;
      --  DMA Channel Select
      DCS            : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Mask Byte Control
      MBC            : ETH_MACA3HR_MBC_Field := 16#0#;
      --  Source Address
      SA             : Boolean := False;
      --  Address Enable
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACA3HR_Register use record
      ADDRHI         at 0 range 0 .. 15;
      DCS            at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  MMC control register
   type ETH_MMC_CONTROL_Register is record
      --  Counters Reset
      CNTRST        : Boolean := False;
      --  Counter Stop Rollover
      CNTSTOPRO     : Boolean := False;
      --  Reset on Read
      RSTONRD       : Boolean := False;
      --  MMC Counter Freeze
      CNTFREEZ      : Boolean := False;
      --  Counters Preset
      CNTPRST       : Boolean := False;
      --  Full-Half Preset
      CNTPRSTLVL    : Boolean := False;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Update MMC Counters for Dropped Broadcast Packets
      UCDBC         : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_CONTROL_Register use record
      CNTRST        at 0 range 0 .. 0;
      CNTSTOPRO     at 0 range 1 .. 1;
      RSTONRD       at 0 range 2 .. 2;
      CNTFREEZ      at 0 range 3 .. 3;
      CNTPRST       at 0 range 4 .. 4;
      CNTPRSTLVL    at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      UCDBC         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  MMC Rx interrupt register
   type ETH_MMC_RX_INTERRUPT_Register is record
      --  MMC Receive Good Bad Packet Counter Interrupt Status
      RXGBPKTIS          : Boolean := False;
      --  MMC Receive Good Bad Octet Counter Interrupt Status
      RXGBOCTIS          : Boolean := False;
      --  MMC Receive Good Octet Counter Interrupt Status
      RXGOCTIS           : Boolean := False;
      --  MMC Receive Broadcast Good Packet Counter Interrupt Status
      RXBCGPIS           : Boolean := False;
      --  MMC Receive Multicast Good Packet Counter Interrupt Status
      RXMCGPIS           : Boolean := False;
      --  MMC Receive CRC Error Packet Counter Interrupt Status
      RXCRCERPIS         : Boolean := False;
      --  MMC Receive Alignment Error Packet Counter Interrupt Status
      RXALGNERPIS        : Boolean := False;
      --  MMC Receive Runt Packet Counter Interrupt Status
      RXRUNTPIS          : Boolean := False;
      --  MMC Receive Jabber Error Packet Counter Interrupt Status
      RXJABERPIS         : Boolean := False;
      --  MMC Receive Undersize Good Packet Counter Interrupt Status
      RXUSIZEGPIS        : Boolean := False;
      --  MMC Receive Oversize Good Packet Counter Interrupt Status
      RXOSIZEGPIS        : Boolean := False;
      --  MMC Receive 64 Octet Good Bad Packet Counter Interrupt Status
      RX64OCTGBPIS       : Boolean := False;
      --  MMC Receive 65 to 127 Octet Good Bad Packet Counter Interrupt Status
      RX65T127OCTGBPIS   : Boolean := False;
      --  MMC Receive 128 to 255 Octet Good Bad Packet Counter Interrupt Status
      RX128T255OCTGBPIS  : Boolean := False;
      --  MMC Receive 256 to 511 Octet Good Bad Packet Counter Interrupt Status
      RX256T511OCTGBPIS  : Boolean := False;
      --  MMC Receive 512 to 1023 Octet Good Bad Packet Counter Interrupt
      --  Status
      RX512T1023OCTGBPIS : Boolean := False;
      --  MMC Receive 1024 to Maximum Octet Good Bad Packet Counter Interrupt
      --  Status
      RX1024TMAXOCTGBPIS : Boolean := False;
      --  MMC Receive Unicast Good Packet Counter Interrupt Status
      RXUCGPIS           : Boolean := False;
      --  MMC Receive Length Error Packet Counter Interrupt Status
      RXLENERPIS         : Boolean := False;
      --  MMC Receive Out Of Range Error Packet Counter Interrupt Status
      RXORANGEPIS        : Boolean := False;
      --  MMC Receive Pause Packet Counter Interrupt Status
      RXPAUSPIS          : Boolean := False;
      --  MMC Receive FIFO Overflow Packet Counter Interrupt Status
      RXFOVPIS           : Boolean := False;
      --  MMC Receive VLAN Good Bad Packet Counter Interrupt Status
      RXVLANGBPIS        : Boolean := False;
      --  MMC Receive Watchdog Error Packet Counter Interrupt Status
      RXWDOGPIS          : Boolean := False;
      --  MMC Receive Error Packet Counter Interrupt Status
      RXRCVERRPIS        : Boolean := False;
      --  MMC Receive Control Packet Counter Interrupt Status
      RXCTRLPIS          : Boolean := False;
      --  MMC Receive LPI microsecond counter interrupt status
      RXLPIUSCIS         : Boolean := False;
      --  MMC Receive LPI transition counter interrupt status
      RXLPITRCIS         : Boolean := False;
      --  unspecified
      Reserved_28_31     : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_RX_INTERRUPT_Register use record
      RXGBPKTIS          at 0 range 0 .. 0;
      RXGBOCTIS          at 0 range 1 .. 1;
      RXGOCTIS           at 0 range 2 .. 2;
      RXBCGPIS           at 0 range 3 .. 3;
      RXMCGPIS           at 0 range 4 .. 4;
      RXCRCERPIS         at 0 range 5 .. 5;
      RXALGNERPIS        at 0 range 6 .. 6;
      RXRUNTPIS          at 0 range 7 .. 7;
      RXJABERPIS         at 0 range 8 .. 8;
      RXUSIZEGPIS        at 0 range 9 .. 9;
      RXOSIZEGPIS        at 0 range 10 .. 10;
      RX64OCTGBPIS       at 0 range 11 .. 11;
      RX65T127OCTGBPIS   at 0 range 12 .. 12;
      RX128T255OCTGBPIS  at 0 range 13 .. 13;
      RX256T511OCTGBPIS  at 0 range 14 .. 14;
      RX512T1023OCTGBPIS at 0 range 15 .. 15;
      RX1024TMAXOCTGBPIS at 0 range 16 .. 16;
      RXUCGPIS           at 0 range 17 .. 17;
      RXLENERPIS         at 0 range 18 .. 18;
      RXORANGEPIS        at 0 range 19 .. 19;
      RXPAUSPIS          at 0 range 20 .. 20;
      RXFOVPIS           at 0 range 21 .. 21;
      RXVLANGBPIS        at 0 range 22 .. 22;
      RXWDOGPIS          at 0 range 23 .. 23;
      RXRCVERRPIS        at 0 range 24 .. 24;
      RXCTRLPIS          at 0 range 25 .. 25;
      RXLPIUSCIS         at 0 range 26 .. 26;
      RXLPITRCIS         at 0 range 27 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  MMC Tx interrupt register
   type ETH_MMC_TX_INTERRUPT_Register is record
      --  MMC Transmit Good Bad Octet Counter Interrupt Status
      TXGBOCTIS          : Boolean := False;
      --  MMC Transmit Good Bad Packet Counter Interrupt Status
      TXGBPKTIS          : Boolean := False;
      --  MMC Transmit Broadcast Good Packet Counter Interrupt Status
      TXBCGPIS           : Boolean := False;
      --  MMC Transmit Multicast Good Packet Counter Interrupt Status
      TXMCGPIS           : Boolean := False;
      --  MMC Transmit 64 Octet Good Bad Packet Counter Interrupt Status
      TX64OCTGBPIS       : Boolean := False;
      --  MMC Transmit 65 to 127 Octet Good Bad Packet Counter
      TX65T127OCTGBPIS   : Boolean := False;
      --  MMC Transmit 128 to 255 Octet Good Bad Packet Counter
      TX128T255OCTGBPIS  : Boolean := False;
      --  MMC Transmit 256 to 511 Octet Good Bad Packet Counter
      TX256T511OCTGBPIS  : Boolean := False;
      --  MMC Transmit 512 to 1023 Octet Good Bad Packet Counter
      TX512T1023OCTGBPIS : Boolean := False;
      --  MMC Transmit 1024 to Maximum Octet Good Bad Packet Counter Interrupt
      --  Status
      TX1024TMAXOCTGBPIS : Boolean := False;
      --  MMC Transmit Unicast Good Bad Packet Counter Interrupt Status
      TXUCGBPIS          : Boolean := False;
      --  MMC Transmit Multicast Good Bad Packet Counter Interrupt Status
      TXMCGBPIS          : Boolean := False;
      --  MMC Transmit Broadcast Good Bad Packet Counter Interrupt Status
      TXBCGBPIS          : Boolean := False;
      --  MMC Transmit Underflow Error Packet Counter Interrupt Status
      TXUFLOWERPIS       : Boolean := False;
      --  MMC Transmit Single Collision Good Packet Counter Interrupt Status
      TXSCOLGPIS         : Boolean := False;
      --  MMC Transmit Multiple Collision Good Packet Counter Interrupt Status
      TXMCOLGPIS         : Boolean := False;
      --  MMC Transmit Deferred Packet Counter Interrupt Status
      TXDEFPIS           : Boolean := False;
      --  MMC Transmit Late Collision Packet Counter Interrupt Status
      TXLATCOLPIS        : Boolean := False;
      --  MMC Transmit Excessive Collision Packet Counter Interrupt Status
      TXEXCOLPIS         : Boolean := False;
      --  MMC Transmit Carrier Error Packet Counter Interrupt Status
      TXCARERPIS         : Boolean := False;
      --  MMC Transmit Good Octet Counter Interrupt Status
      TXGOCTIS           : Boolean := False;
      --  MMC Transmit Good Packet Counter Interrupt Status
      TXGPKTIS           : Boolean := False;
      --  MMC Transmit Excessive Deferral Packet Counter Interrupt Status
      TXEXDEFPIS         : Boolean := False;
      --  MMC Transmit Pause Packet Counter Interrupt Status
      TXPAUSPIS          : Boolean := False;
      --  MMC Transmit VLAN Good Packet Counter Interrupt Status
      TXVLANGPIS         : Boolean := False;
      --  MMC Transmit Oversize Good Packet Counter Interrupt Status
      TXOSIZEGPIS        : Boolean := False;
      --  MMC Transmit LPI microsecond counter interrupt status
      TXLPIUSCIS         : Boolean := False;
      --  MMC Transmit LPI transition counter interrupt status
      TXLPITRCIS         : Boolean := False;
      --  unspecified
      Reserved_28_31     : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_TX_INTERRUPT_Register use record
      TXGBOCTIS          at 0 range 0 .. 0;
      TXGBPKTIS          at 0 range 1 .. 1;
      TXBCGPIS           at 0 range 2 .. 2;
      TXMCGPIS           at 0 range 3 .. 3;
      TX64OCTGBPIS       at 0 range 4 .. 4;
      TX65T127OCTGBPIS   at 0 range 5 .. 5;
      TX128T255OCTGBPIS  at 0 range 6 .. 6;
      TX256T511OCTGBPIS  at 0 range 7 .. 7;
      TX512T1023OCTGBPIS at 0 range 8 .. 8;
      TX1024TMAXOCTGBPIS at 0 range 9 .. 9;
      TXUCGBPIS          at 0 range 10 .. 10;
      TXMCGBPIS          at 0 range 11 .. 11;
      TXBCGBPIS          at 0 range 12 .. 12;
      TXUFLOWERPIS       at 0 range 13 .. 13;
      TXSCOLGPIS         at 0 range 14 .. 14;
      TXMCOLGPIS         at 0 range 15 .. 15;
      TXDEFPIS           at 0 range 16 .. 16;
      TXLATCOLPIS        at 0 range 17 .. 17;
      TXEXCOLPIS         at 0 range 18 .. 18;
      TXCARERPIS         at 0 range 19 .. 19;
      TXGOCTIS           at 0 range 20 .. 20;
      TXGPKTIS           at 0 range 21 .. 21;
      TXEXDEFPIS         at 0 range 22 .. 22;
      TXPAUSPIS          at 0 range 23 .. 23;
      TXVLANGPIS         at 0 range 24 .. 24;
      TXOSIZEGPIS        at 0 range 25 .. 25;
      TXLPIUSCIS         at 0 range 26 .. 26;
      TXLPITRCIS         at 0 range 27 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  MMC Rx interrupt mask register
   type ETH_MMC_RX_INTERRUPT_MASK_Register is record
      --  MMC Receive Good Bad Packet Counter Interrupt Mask
      RXGBPKTIM          : Boolean := False;
      --  MMC Receive Good Bad Octet Counter Interrupt Mask
      RXGBOCTIM          : Boolean := False;
      --  MMC Receive Good Octet Counter Interrupt Mask
      RXGOCTIM           : Boolean := False;
      --  MMC Receive Broadcast Good Packet Counter Interrupt Mask
      RXBCGPIM           : Boolean := False;
      --  MMC Receive Multicast Good Packet Counter Interrupt Mask
      RXMCGPIM           : Boolean := False;
      --  MMC Receive CRC Error Packet Counter Interrupt Mask
      RXCRCERPIM         : Boolean := False;
      --  MMC Receive Alignment Error Packet Counter Interrupt Mask
      RXALGNERPIM        : Boolean := False;
      --  MMC Receive Runt Packet Counter Interrupt Mask
      RXRUNTPIM          : Boolean := False;
      --  MMC Receive Jabber Error Packet Counter Interrupt Mask
      RXJABERPIM         : Boolean := False;
      --  MMC Receive Undersize Good Packet Counter Interrupt Mask
      RXUSIZEGPIM        : Boolean := False;
      --  MMC Receive Oversize Good Packet Counter Interrupt Mask
      RXOSIZEGPIM        : Boolean := False;
      --  MMC Receive 64 Octet Good Bad Packet Counter Interrupt Mask
      RX64OCTGBPIM       : Boolean := False;
      --  MMC Receive 65 to 127 Octet Good Bad Packet Counter Interrupt Mask
      RX65T127OCTGBPIM   : Boolean := False;
      --  MMC Receive 128 to 255 Octet Good Bad Packet Counter Interrupt Mask
      RX128T255OCTGBPIM  : Boolean := False;
      --  MMC Receive 256 to 511 Octet Good Bad Packet Counter Interrupt Mask
      RX256T511OCTGBPIM  : Boolean := False;
      --  MMC Receive 512 to 1023 Octet Good Bad Packet Counter Interrupt Mask
      RX512T1023OCTGBPIM : Boolean := False;
      --  MMC Receive 1024 to Maximum Octet Good Bad Packet Counter Interrupt
      --  Mask
      RX1024TMAXOCTGBPIM : Boolean := False;
      --  MMC Receive Unicast Good Packet Counter Interrupt Mask
      RXUCGPIM           : Boolean := False;
      --  MMC Receive Length Error Packet Counter Interrupt Mask
      RXLENERPIM         : Boolean := False;
      --  MMC Receive Out Of Range Error Packet Counter Interrupt Mask
      RXORANGEPIM        : Boolean := False;
      --  MMC Receive Pause Packet Counter Interrupt Mask
      RXPAUSPIM          : Boolean := False;
      --  MMC Receive FIFO Overflow Packet Counter Interrupt Mask
      RXFOVPIM           : Boolean := False;
      --  MMC Receive VLAN Good Bad Packet Counter Interrupt Mask
      RXVLANGBPIM        : Boolean := False;
      --  MMC Receive Watchdog Error Packet Counter Interrupt Mask
      RXWDOGPIM          : Boolean := False;
      --  MMC Receive Error Packet Counter Interrupt Mask
      RXRCVERRPIM        : Boolean := False;
      --  MMC Receive Control Packet Counter Interrupt Mask
      RXCTRLPIM          : Boolean := False;
      --  MMC Receive LPI microsecond counter interrupt Mask
      RXLPIUSCIM         : Boolean := False;
      --  MMC Receive LPI transition counter interrupt Mask
      RXLPITRCIM         : Boolean := False;
      --  unspecified
      Reserved_28_31     : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_RX_INTERRUPT_MASK_Register use record
      RXGBPKTIM          at 0 range 0 .. 0;
      RXGBOCTIM          at 0 range 1 .. 1;
      RXGOCTIM           at 0 range 2 .. 2;
      RXBCGPIM           at 0 range 3 .. 3;
      RXMCGPIM           at 0 range 4 .. 4;
      RXCRCERPIM         at 0 range 5 .. 5;
      RXALGNERPIM        at 0 range 6 .. 6;
      RXRUNTPIM          at 0 range 7 .. 7;
      RXJABERPIM         at 0 range 8 .. 8;
      RXUSIZEGPIM        at 0 range 9 .. 9;
      RXOSIZEGPIM        at 0 range 10 .. 10;
      RX64OCTGBPIM       at 0 range 11 .. 11;
      RX65T127OCTGBPIM   at 0 range 12 .. 12;
      RX128T255OCTGBPIM  at 0 range 13 .. 13;
      RX256T511OCTGBPIM  at 0 range 14 .. 14;
      RX512T1023OCTGBPIM at 0 range 15 .. 15;
      RX1024TMAXOCTGBPIM at 0 range 16 .. 16;
      RXUCGPIM           at 0 range 17 .. 17;
      RXLENERPIM         at 0 range 18 .. 18;
      RXORANGEPIM        at 0 range 19 .. 19;
      RXPAUSPIM          at 0 range 20 .. 20;
      RXFOVPIM           at 0 range 21 .. 21;
      RXVLANGBPIM        at 0 range 22 .. 22;
      RXWDOGPIM          at 0 range 23 .. 23;
      RXRCVERRPIM        at 0 range 24 .. 24;
      RXCTRLPIM          at 0 range 25 .. 25;
      RXLPIUSCIM         at 0 range 26 .. 26;
      RXLPITRCIM         at 0 range 27 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  MMC Tx interrupt mask register
   type ETH_MMC_TX_INTERRUPT_MASK_Register is record
      --  MMC Transmit Good Bad Octet Counter Interrupt Mask
      TXGBOCTIM          : Boolean := False;
      --  MMC Transmit Good Bad Packet Counter Interrupt Mask
      TXGBPKTIM          : Boolean := False;
      --  MMC Transmit Broadcast Good Packet Counter Interrupt Mask
      TXBCGPIM           : Boolean := False;
      --  MMC Transmit Multicast Good Packet Counter Interrupt Mask
      TXMCGPIM           : Boolean := False;
      --  MMC Transmit 64 Octet Good Bad Packet Counter Interrupt Mask
      TX64OCTGBPIM       : Boolean := False;
      --  MMC Transmit 65 to 127 Octet Good Bad Packet Counter
      TX65T127OCTGBPIM   : Boolean := False;
      --  MMC Transmit 128 to 255 Octet Good Bad Packet Counter
      TX128T255OCTGBPIM  : Boolean := False;
      --  MMC Transmit 256 to 511 Octet Good Bad Packet Counter
      TX256T511OCTGBPIM  : Boolean := False;
      --  MMC Transmit 512 to 1023 Octet Good Bad Packet Counter
      TX512T1023OCTGBPIM : Boolean := False;
      --  MMC Transmit 1024 to Maximum Octet Good Bad Packet Counter Interrupt
      --  Mask
      TX1024TMAXOCTGBPIM : Boolean := False;
      --  MMC Transmit Unicast Good Bad Packet Counter Interrupt Mask
      TXUCGBPIM          : Boolean := False;
      --  MMC Transmit Multicast Good Bad Packet Counter Interrupt Mask
      TXMCGBPIM          : Boolean := False;
      --  MMC Transmit Broadcast Good Bad Packet Counter Interrupt Mask
      TXBCGBPIM          : Boolean := False;
      --  MMC Transmit Underflow Error Packet Counter Interrupt Mask
      TXUFLOWERPIM       : Boolean := False;
      --  MMC Transmit Single Collision Good Packet Counter Interrupt Mask
      TXSCOLGPIM         : Boolean := False;
      --  MMC Transmit Multiple Collision Good Packet Counter Interrupt Mask
      TXMCOLGPIM         : Boolean := False;
      --  MMC Transmit Deferred Packet Counter Interrupt Mask
      TXDEFPIM           : Boolean := False;
      --  MMC Transmit Late Collision Packet Counter Interrupt Mask
      TXLATCOLPIM        : Boolean := False;
      --  MMC Transmit Excessive Collision Packet Counter Interrupt Mask
      TXEXCOLPIM         : Boolean := False;
      --  MMC Transmit Carrier Error Packet Counter Interrupt Mask
      TXCARERPIM         : Boolean := False;
      --  MMC Transmit Good Octet Counter Interrupt Mask
      TXGOCTIM           : Boolean := False;
      --  MMC Transmit Good Packet Counter Interrupt Mask
      TXGPKTIM           : Boolean := False;
      --  MMC Transmit Excessive Deferral Packet Counter Interrupt Mask
      TXEXDEFPIM         : Boolean := False;
      --  MMC Transmit Pause Packet Counter Interrupt Mask
      TXPAUSPIM          : Boolean := False;
      --  MMC Transmit VLAN Good Packet Counter Interrupt Mask
      TXVLANGPIM         : Boolean := False;
      --  MMC Transmit Oversize Good Packet Counter Interrupt Mask
      TXOSIZEGPIM        : Boolean := False;
      --  MMC Transmit LPI microsecond counter interrupt Mask
      TXLPIUSCIM         : Boolean := False;
      --  MMC Transmit LPI transition counter interrupt Mask
      TXLPITRCIM         : Boolean := False;
      --  unspecified
      Reserved_28_31     : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_TX_INTERRUPT_MASK_Register use record
      TXGBOCTIM          at 0 range 0 .. 0;
      TXGBPKTIM          at 0 range 1 .. 1;
      TXBCGPIM           at 0 range 2 .. 2;
      TXMCGPIM           at 0 range 3 .. 3;
      TX64OCTGBPIM       at 0 range 4 .. 4;
      TX65T127OCTGBPIM   at 0 range 5 .. 5;
      TX128T255OCTGBPIM  at 0 range 6 .. 6;
      TX256T511OCTGBPIM  at 0 range 7 .. 7;
      TX512T1023OCTGBPIM at 0 range 8 .. 8;
      TX1024TMAXOCTGBPIM at 0 range 9 .. 9;
      TXUCGBPIM          at 0 range 10 .. 10;
      TXMCGBPIM          at 0 range 11 .. 11;
      TXBCGBPIM          at 0 range 12 .. 12;
      TXUFLOWERPIM       at 0 range 13 .. 13;
      TXSCOLGPIM         at 0 range 14 .. 14;
      TXMCOLGPIM         at 0 range 15 .. 15;
      TXDEFPIM           at 0 range 16 .. 16;
      TXLATCOLPIM        at 0 range 17 .. 17;
      TXEXCOLPIM         at 0 range 18 .. 18;
      TXCARERPIM         at 0 range 19 .. 19;
      TXGOCTIM           at 0 range 20 .. 20;
      TXGPKTIM           at 0 range 21 .. 21;
      TXEXDEFPIM         at 0 range 22 .. 22;
      TXPAUSPIM          at 0 range 23 .. 23;
      TXVLANGPIM         at 0 range 24 .. 24;
      TXOSIZEGPIM        at 0 range 25 .. 25;
      TXLPIUSCIM         at 0 range 26 .. 26;
      TXLPITRCIM         at 0 range 27 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  MMC FPE Tx interrupt status register
   type ETH_MMC_FPE_TX_ISR_Register is record
      --  MMC Tx FPE Fragment Counter Interrupt status
      FCIS          : Boolean := False;
      --  MMC Tx Hold Request Counter Interrupt Status
      HRCIS         : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_FPE_TX_ISR_Register use record
      FCIS          at 0 range 0 .. 0;
      HRCIS         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MMC FPE Tx interrupt mask register
   type ETH_MMC_FPE_TX_IMR_Register is record
      --  MMC Transmit Fragment Counter Interrupt Mask
      FCIM          : Boolean := False;
      --  MMC Transmit Hold Request Counter Interrupt Mask
      HRCIM         : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_FPE_TX_IMR_Register use record
      FCIM          at 0 range 0 .. 0;
      HRCIM         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MMC FPE Rx interrupt status register
   type ETH_MMC_FPE_RX_ISR_Register is record
      --  Read-only. MMC Rx Packet Assembly Error Counter Interrupt Status
      PAECIS        : Boolean;
      --  Read-only. MMC Rx Packet SMD Error Counter Interrupt Status
      PSECIS        : Boolean;
      --  Read-only. MMC Rx Packet Assembly OK Counter Interrupt Status
      PAOCIS        : Boolean;
      --  Read-only. MMC Rx FPE Fragment Counter Interrupt Status
      FCIS          : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_FPE_RX_ISR_Register use record
      PAECIS        at 0 range 0 .. 0;
      PSECIS        at 0 range 1 .. 1;
      PAOCIS        at 0 range 2 .. 2;
      FCIS          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  MMC FPE Rx interrupt mask register
   type ETH_MMC_FPE_RX_IMR_Register is record
      --  MMC Rx Packet Assembly Error Counter Interrupt Mask
      PAECIM        : Boolean := False;
      --  MMC Rx Packet SMD Error Counter Interrupt Mask
      PSECIM        : Boolean := False;
      --  MMC Rx Packet Assembly OK Counter Interrupt Mask
      PAOCIM        : Boolean := False;
      --  MMC Rx FPE Fragment Counter Interrupt Mask
      FCIM          : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MMC_FPE_RX_IMR_Register use record
      PAECIM        at 0 range 0 .. 0;
      PSECIM        at 0 range 1 .. 1;
      PAOCIM        at 0 range 2 .. 2;
      FCIM          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETH_MACL3L4C0R_L3HSBM0_Field is Interfaces.Bit_Types.UInt5;
   subtype ETH_MACL3L4C0R_L3HDBM0_Field is Interfaces.Bit_Types.UInt5;

   --  L3 and L4 control 0 register
   type ETH_MACL3L4C0R_Register is record
      --  Layer 3 Protocol Enable
      L3PEN0         : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Layer 3 IP SA Match Enable
      L3SAM0         : Boolean := False;
      --  Layer 3 IP SA Inverse Match Enable
      L3SAIM0        : Boolean := False;
      --  Layer 3 IP DA Match Enable
      L3DAM0         : Boolean := False;
      --  Layer 3 IP DA Inverse Match Enable
      L3DAIM0        : Boolean := False;
      --  Layer 3 IP SA higher bits match
      L3HSBM0        : ETH_MACL3L4C0R_L3HSBM0_Field := 16#0#;
      --  Layer 3 IP DA higher bits match
      L3HDBM0        : ETH_MACL3L4C0R_L3HDBM0_Field := 16#0#;
      --  Layer 4 Protocol Enable
      L4PEN0         : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Layer 4 Source Port Match Enable
      L4SPM0         : Boolean := False;
      --  Layer 4 Source Port Inverse Match Enable
      L4SPIM0        : Boolean := False;
      --  Layer 4 Destination Port Match Enable
      L4DPM0         : Boolean := False;
      --  Layer 4 Destination Port Inverse Match Enable
      L4DPIM0        : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DMA Channel Number
      DMCHN0         : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA Channel Select Enable
      DMCHEN0        : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACL3L4C0R_Register use record
      L3PEN0         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      L3SAM0         at 0 range 2 .. 2;
      L3SAIM0        at 0 range 3 .. 3;
      L3DAM0         at 0 range 4 .. 4;
      L3DAIM0        at 0 range 5 .. 5;
      L3HSBM0        at 0 range 6 .. 10;
      L3HDBM0        at 0 range 11 .. 15;
      L4PEN0         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      L4SPM0         at 0 range 18 .. 18;
      L4SPIM0        at 0 range 19 .. 19;
      L4DPM0         at 0 range 20 .. 20;
      L4DPIM0        at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMCHN0         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      DMCHEN0        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MACL4A0R_L4SP0_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACL4A0R_L4DP0_Field is Interfaces.Bit_Types.UInt16;

   --  Layer4 Address filter 0 register
   type ETH_MACL4A0R_Register is record
      --  Layer 4 Source Port Number Field
      L4SP0 : ETH_MACL4A0R_L4SP0_Field := 16#0#;
      --  Layer 4 Destination Port Number Field
      L4DP0 : ETH_MACL4A0R_L4DP0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACL4A0R_Register use record
      L4SP0 at 0 range 0 .. 15;
      L4DP0 at 0 range 16 .. 31;
   end record;

   subtype ETH_MACL3L4C1R_L3HSBM1_Field is Interfaces.Bit_Types.UInt5;
   subtype ETH_MACL3L4C1R_L3HDBM1_Field is Interfaces.Bit_Types.UInt5;

   --  L3 and L4 control 1 register
   type ETH_MACL3L4C1R_Register is record
      --  Layer 3 Protocol Enable
      L3PEN1         : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Layer 3 IP SA Match Enable
      L3SAM1         : Boolean := False;
      --  Layer 3 IP SA Inverse Match Enable
      L3SAIM1        : Boolean := False;
      --  Layer 3 IP DA Match Enable
      L3DAM1         : Boolean := False;
      --  Layer 3 IP DA Inverse Match Enable
      L3DAIM1        : Boolean := False;
      --  Layer 3 IP SA Higher Bits Match
      L3HSBM1        : ETH_MACL3L4C1R_L3HSBM1_Field := 16#0#;
      --  Layer 3 IP DA higher bits match
      L3HDBM1        : ETH_MACL3L4C1R_L3HDBM1_Field := 16#0#;
      --  Layer 4 Protocol Enable
      L4PEN1         : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Layer 4 Source Port Match Enable
      L4SPM1         : Boolean := False;
      --  Layer 4 Source Port Inverse Match Enable
      L4SPIM1        : Boolean := False;
      --  Layer 4 Destination Port Match Enable
      L4DPM1         : Boolean := False;
      --  Layer 4 Destination Port Inverse Match Enable
      L4DPIM1        : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DMA Channel Number
      DMCHN1         : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA Channel Select Enable
      DMCHEN1        : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACL3L4C1R_Register use record
      L3PEN1         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      L3SAM1         at 0 range 2 .. 2;
      L3SAIM1        at 0 range 3 .. 3;
      L3DAM1         at 0 range 4 .. 4;
      L3DAIM1        at 0 range 5 .. 5;
      L3HSBM1        at 0 range 6 .. 10;
      L3HDBM1        at 0 range 11 .. 15;
      L4PEN1         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      L4SPM1         at 0 range 18 .. 18;
      L4SPIM1        at 0 range 19 .. 19;
      L4DPM1         at 0 range 20 .. 20;
      L4DPIM1        at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMCHN1         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      DMCHEN1        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MACL4A1R_L4SP1_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MACL4A1R_L4DP1_Field is Interfaces.Bit_Types.UInt16;

   --  Layer 4 address filter 1 register
   type ETH_MACL4A1R_Register is record
      --  Layer 4 Source Port Number Field
      L4SP1 : ETH_MACL4A1R_L4SP1_Field := 16#0#;
      --  Layer 4 Destination Port Number Field
      L4DP1 : ETH_MACL4A1R_L4DP1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACL4A1R_Register use record
      L4SP1 at 0 range 0 .. 15;
      L4DP1 at 0 range 16 .. 31;
   end record;

   subtype ETH_MAC_IACR_AOFF_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_MAC_IACR_MSEL_Field is Interfaces.Bit_Types.UInt4;

   --  MAC Indirect Access Control register
   type ETH_MAC_IACR_Register is record
      --  Operation Busy.
      OB             : Boolean := False;
      --  Command type
      COM            : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Auto-increment
      AUTO           : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address Offset
      AOFF           : ETH_MAC_IACR_AOFF_Field := 16#0#;
      --  Mode Select
      MSEL           : ETH_MAC_IACR_MSEL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MAC_IACR_Register use record
      OB             at 0 range 0 .. 0;
      COM            at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      AUTO           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AOFF           at 0 range 8 .. 15;
      MSEL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_MAC_TMRQR_TYP_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MAC_TMRQR_TMRQ_Field is Interfaces.Bit_Types.UInt3;

   --  MAC type-based Rx Queue mapping register
   type ETH_MAC_TMRQR_Register is record
      --  Type field Value
      TYP            : ETH_MAC_TMRQR_TYP_Field := 16#0#;
      --  Type Match Rx Queue Number
      TMRQ           : ETH_MAC_TMRQR_TMRQ_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Preemption or Express Packet
      PFEX           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MAC_TMRQR_Register use record
      TYP            at 0 range 0 .. 15;
      TMRQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PFEX           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_MACTSCR_SNAPTYPSEL_Field is Interfaces.Bit_Types.UInt2;

   --  Timestamp control Register
   type ETH_MACTSCR_Register is record
      --  Enable Timestamp
      TSENA          : Boolean := False;
      --  Fine or Coarse Timestamp Update
      TSCFUPDT       : Boolean := False;
      --  Initialize Timestamp
      TSINIT         : Boolean := False;
      --  Update Timestamp
      TSUPDT         : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Update Addend Register
      TSADDREG       : Boolean := False;
      --  Presentation Time Generation Enable
      PTGE           : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable Timestamp for All Packets
      TSENALL        : Boolean := False;
      --  Timestamp Digital or Binary Rollover Control
      TSCTRLSSR      : Boolean := False;
      --  Enable PTP Packet Processing for Version 2 Format
      TSVER2ENA      : Boolean := False;
      --  Enable Processing of PTP over Ethernet Packets
      TSIPENA        : Boolean := False;
      --  Enable Processing of PTP Packets Sent over IPv6-UDP
      TSIPV6ENA      : Boolean := False;
      --  Enable Processing of PTP Packets Sent over IPv4-UDP
      TSIPV4ENA      : Boolean := True;
      --  Enable Timestamp Snapshot for Event Messages
      TSEVNTENA      : Boolean := False;
      --  Enable Snapshot for Messages Relevant to Master
      TSMSTRENA      : Boolean := False;
      --  Select PTP packets for Taking Snapshots
      SNAPTYPSEL     : ETH_MACTSCR_SNAPTYPSEL_Field := 16#0#;
      --  Enable MAC Address for PTP Packet Filtering
      TSENMACADDR    : Boolean := False;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  External System Time Input
      ESTI           : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Transmit Timestamp Status Mode
      TXTSSTSM       : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  AV 802.
      AV8021ASMEN    : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACTSCR_Register use record
      TSENA          at 0 range 0 .. 0;
      TSCFUPDT       at 0 range 1 .. 1;
      TSINIT         at 0 range 2 .. 2;
      TSUPDT         at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TSADDREG       at 0 range 5 .. 5;
      PTGE           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TSENALL        at 0 range 8 .. 8;
      TSCTRLSSR      at 0 range 9 .. 9;
      TSVER2ENA      at 0 range 10 .. 10;
      TSIPENA        at 0 range 11 .. 11;
      TSIPV6ENA      at 0 range 12 .. 12;
      TSIPV4ENA      at 0 range 13 .. 13;
      TSEVNTENA      at 0 range 14 .. 14;
      TSMSTRENA      at 0 range 15 .. 15;
      SNAPTYPSEL     at 0 range 16 .. 17;
      TSENMACADDR    at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ESTI           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TXTSSTSM       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      AV8021ASMEN    at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MACSSIR_SSINC_Field is Interfaces.Bit_Types.Byte;

   --  Subsecond increment register
   type ETH_MACSSIR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Subsecond Increment Value
      SSINC          : ETH_MACSSIR_SSINC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACSSIR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      SSINC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MACSTNR_TSSS_Field is Interfaces.Bit_Types.UInt31;

   --  System time nanoseconds register
   type ETH_MACSTNR_Register is record
      --  Read-only. Timestamp subseconds
      TSSS           : ETH_MACSTNR_TSSS_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACSTNR_Register use record
      TSSS           at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACSTNUR_TSSS_Field is Interfaces.Bit_Types.UInt31;

   --  System time nanoseconds update register
   type ETH_MACSTNUR_Register is record
      --  Timestamp subseconds
      TSSS   : ETH_MACSTNUR_TSSS_Field := 16#0#;
      --  Add or Subtract Time
      ADDSUB : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACSTNUR_Register use record
      TSSS   at 0 range 0 .. 30;
      ADDSUB at 0 range 31 .. 31;
   end record;

   subtype ETH_MACTSSR_ATSSTN_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACTSSR_ATSNS_Field is Interfaces.Bit_Types.UInt5;

   --  Timestamp status register
   type ETH_MACTSSR_Register is record
      --  Timestamp Seconds Overflow
      TSSOVF         : Boolean := False;
      --  Timestamp Target Time Reached
      TSTARGT0       : Boolean := False;
      --  Auxiliary Timestamp Trigger Snapshot
      AUXTSTRIG      : Boolean := False;
      --  Timestamp Target Time Error
      TSTRGTERR0     : Boolean := False;
      --  Timestamp Target Time Reached
      TSTARGT1       : Boolean := False;
      --  Timestamp Target Time Error
      TSTRGTERR1     : Boolean := False;
      --  unspecified
      Reserved_6_14  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Tx Timestamp Status Interrupt Status
      TXTSSIS        : Boolean := False;
      --  Auxiliary Timestamp Snapshot Trigger Identifier
      ATSSTN         : ETH_MACTSSR_ATSSTN_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Auxiliary Timestamp Snapshot Trigger Missed
      ATSSTM         : Boolean := False;
      --  Read-only. Number of Auxiliary Timestamp Snapshots
      ATSNS          : ETH_MACTSSR_ATSNS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACTSSR_Register use record
      TSSOVF         at 0 range 0 .. 0;
      TSTARGT0       at 0 range 1 .. 1;
      AUXTSTRIG      at 0 range 2 .. 2;
      TSTRGTERR0     at 0 range 3 .. 3;
      TSTARGT1       at 0 range 4 .. 4;
      TSTRGTERR1     at 0 range 5 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      TXTSSIS        at 0 range 15 .. 15;
      ATSSTN         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ATSSTM         at 0 range 24 .. 24;
      ATSNS          at 0 range 25 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETH_MACRXDTI_RXNS_Field is Interfaces.Bit_Types.UInt16;

   --  Rx domain time increment register
   type ETH_MACRXDTI_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Receive domain time increment value in nanoseconds
      RXNS          : ETH_MACRXDTI_RXNS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACRXDTI_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      RXNS          at 0 range 16 .. 31;
   end record;

   subtype ETH_MACTXDTI_TXNS_Field is Interfaces.Bit_Types.UInt16;

   --  Tx domain time increment register
   type ETH_MACTXDTI_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Transmit domain time increment value in nanoseconds
      TXNS          : ETH_MACTXDTI_TXNS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACTXDTI_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      TXNS          at 0 range 16 .. 31;
   end record;

   subtype ETH_MACTXTSSNR_TXTSSLO_Field is Interfaces.Bit_Types.UInt31;

   --  Tx timestamp status nanoseconds register
   type ETH_MACTXTSSNR_Register is record
      --  Transmit Timestamp Status Low
      TXTSSLO  : ETH_MACTXTSSNR_TXTSSLO_Field := 16#0#;
      --  Read-only. Transmit Timestamp Status Missed
      TXTSSMIS : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACTXTSSNR_Register use record
      TXTSSLO  at 0 range 0 .. 30;
      TXTSSMIS at 0 range 31 .. 31;
   end record;

   --  ETH_MACACR_ATSEN array
   type ETH_MACACR_ATSEN_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ETH_MACACR_ATSEN
   type ETH_MACACR_ATSEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ATSEN as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  ATSEN as an array
            Arr : ETH_MACACR_ATSEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ETH_MACACR_ATSEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Auxiliary control register
   type ETH_MACACR_Register is record
      --  Auxiliary Snapshot FIFO Clear
      ATSFC         : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Auxiliary Snapshot 0 Enable
      ATSEN         : ETH_MACACR_ATSEN_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACACR_Register use record
      ATSFC         at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      ATSEN         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETH_MACATSNR_AUXTSLO_Field is Interfaces.Bit_Types.UInt31;

   --  Auxiliary timestamp nanoseconds register
   type ETH_MACATSNR_Register is record
      --  Read-only. Auxiliary Timestamp
      AUXTSLO        : ETH_MACATSNR_AUXTSLO_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACATSNR_Register use record
      AUXTSLO        at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACTSILR_ITLSNS_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_MACTSILR_ITLNS_Field is Interfaces.Bit_Types.UInt12;

   --  Timestamp Ingress Latency register
   type ETH_MACTSILR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. Ingress Timestamp Latency, in subnanoseconds
      ITLSNS         : ETH_MACTSILR_ITLSNS_Field;
      --  Read-only. Ingress Timestamp Latency, in nanoseconds
      ITLNS          : ETH_MACTSILR_ITLNS_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACTSILR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      ITLSNS         at 0 range 8 .. 15;
      ITLNS          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ETH_MACTSELR_ETLSNS_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_MACTSELR_ETLNS_Field is Interfaces.Bit_Types.UInt12;

   --  Timestamp Egress Latency register
   type ETH_MACTSELR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. Egress Timestamp Latency, in subnanoseconds
      ETLSNS         : ETH_MACTSELR_ETLSNS_Field;
      --  Read-only. Egress Timestamp Latency, in nanoseconds
      ETLNS          : ETH_MACTSELR_ETLNS_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACTSELR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      ETLSNS         at 0 range 8 .. 15;
      ETLNS          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ETH_MACPPSCR_PPSCTRL_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACPPSCR_TRGTMODSEL0_Field is Interfaces.Bit_Types.UInt2;

   --  PPS control register
   type ETH_MACPPSCR_Register is record
      --  PPS Output Frequency Control
      PPSCTRL        : ETH_MACPPSCR_PPSCTRL_Field := 16#0#;
      --  Flexible PPS Output Mode Enable
      PPSEN0         : Boolean := False;
      --  Target Time Register Mode for PPS Output
      TRGTMODSEL0    : ETH_MACPPSCR_TRGTMODSEL0_Field := 16#0#;
      --  MCGR Mode Enable for PPS0 Output
      MCGREN0        : Boolean := False;
      --  unspecified
      Reserved_8_27  : Interfaces.Bit_Types.UInt20 := 16#0#;
      --  Time Select
      TIMESEL        : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPPSCR_Register use record
      PPSCTRL        at 0 range 0 .. 3;
      PPSEN0         at 0 range 4 .. 4;
      TRGTMODSEL0    at 0 range 5 .. 6;
      MCGREN0        at 0 range 7 .. 7;
      Reserved_8_27  at 0 range 8 .. 27;
      TIMESEL        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MACPPSCR_ALTERNATE1_PPSCMD_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACPPSCR_ALTERNATE1_TRGTMODSEL0_Field is
     Interfaces.Bit_Types.UInt2;
   subtype ETH_MACPPSCR_ALTERNATE1_PPSCMD1_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_MACPPSCR_ALTERNATE1_TRGTMODSEL1_Field is
     Interfaces.Bit_Types.UInt2;

   --  PPS control register
   type ETH_MACPPSCR_ALTERNATE1_Register is record
      --  Flexible PPS Output 0 (eth_ptp_pps_out) Control
      PPSCMD         : ETH_MACPPSCR_ALTERNATE1_PPSCMD_Field := 16#0#;
      --  Flexible PPS Output 0 Mode Enable
      PPSEN0         : Boolean := False;
      --  Target Time Register Mode for PPS Output 0
      TRGTMODSEL0    : ETH_MACPPSCR_ALTERNATE1_TRGTMODSEL0_Field := 16#0#;
      --  MCGR Mode Enable for PPS Output 0
      MCGREN0        : Boolean := False;
      --  Flexible PPS Output 1 Control
      PPSCMD1        : ETH_MACPPSCR_ALTERNATE1_PPSCMD1_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Target Time Register Mode for PPS Output 1
      TRGTMODSEL1    : ETH_MACPPSCR_ALTERNATE1_TRGTMODSEL1_Field := 16#0#;
      --  MCGR Mode Enable for PPS Output 1
      MCGREN1        : Boolean := False;
      --  unspecified
      Reserved_16_27 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Time Select
      TIMESEL        : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPPSCR_ALTERNATE1_Register use record
      PPSCMD         at 0 range 0 .. 3;
      PPSEN0         at 0 range 4 .. 4;
      TRGTMODSEL0    at 0 range 5 .. 6;
      MCGREN0        at 0 range 7 .. 7;
      PPSCMD1        at 0 range 8 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      TRGTMODSEL1    at 0 range 13 .. 14;
      MCGREN1        at 0 range 15 .. 15;
      Reserved_16_27 at 0 range 16 .. 27;
      TIMESEL        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MACPPSTTN0R_TTSL0_Field is Interfaces.Bit_Types.UInt31;

   --  PPS 0 target time nanoseconds register
   type ETH_MACPPSTTN0R_Register is record
      --  Target Time Low for PPS Register
      TTSL0     : ETH_MACPPSTTN0R_TTSL0_Field := 16#0#;
      --  PPS Target Time Register Busy
      TRGTBUSY0 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPPSTTN0R_Register use record
      TTSL0     at 0 range 0 .. 30;
      TRGTBUSY0 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACPPSTTN1R_TTSL0_Field is Interfaces.Bit_Types.UInt31;

   --  PPS 1 target time nanoseconds register
   type ETH_MACPPSTTN1R_Register is record
      --  Target Time Low for PPS Register
      TTSL0     : ETH_MACPPSTTN1R_TTSL0_Field := 16#0#;
      --  PPS Target Time Register Busy
      TRGTBUSY0 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPPSTTN1R_Register use record
      TTSL0     at 0 range 0 .. 30;
      TRGTBUSY0 at 0 range 31 .. 31;
   end record;

   subtype ETH_MACPOCR_DN_Field is Interfaces.Bit_Types.Byte;

   --  PTP Offload control register
   type ETH_MACPOCR_Register is record
      --  PTP Offload Enable
      PTOEN          : Boolean := False;
      --  Automatic PTP SYNC message Enable
      ASYNCEN        : Boolean := False;
      --  Automatic PTP Pdelay_Req message Enable
      APDREQEN       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Automatic PTP SYNC message Trigger
      ASYNCTRIG      : Boolean := False;
      --  Automatic PTP Pdelay_Req message Trigger
      APDREQTRIG     : Boolean := False;
      --  Disable PTO Delay Request/Response response generation
      DRRDIS         : Boolean := False;
      --  Disable Peer Delay Response response generation
      PDRDIS         : Boolean := False;
      --  Domain Number
      DN             : ETH_MACPOCR_DN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACPOCR_Register use record
      PTOEN          at 0 range 0 .. 0;
      ASYNCEN        at 0 range 1 .. 1;
      APDREQEN       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ASYNCTRIG      at 0 range 4 .. 4;
      APDREQTRIG     at 0 range 5 .. 5;
      DRRDIS         at 0 range 6 .. 6;
      PDRDIS         at 0 range 7 .. 7;
      DN             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_MACSPI2R_SPI2_Field is Interfaces.Bit_Types.UInt16;

   --  PTP Source port identity 2 register
   type ETH_MACSPI2R_Register is record
      --  Source Port Identity 2
      SPI2           : ETH_MACSPI2R_SPI2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACSPI2R_Register use record
      SPI2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_MACLMIR_LSI_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_MACLMIR_DRSYNCR_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MACLMIR_LMPDRI_Field is Interfaces.Bit_Types.Byte;

   --  Log message interval register
   type ETH_MACLMIR_Register is record
      --  Log Sync Interval
      LSI            : ETH_MACLMIR_LSI_Field := 16#0#;
      --  Delay_Req to SYNC Ratio
      DRSYNCR        : ETH_MACLMIR_DRSYNCR_Field := 16#0#;
      --  unspecified
      Reserved_11_23 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  Log Min Pdelay_Req Interval
      LMPDRI         : ETH_MACLMIR_LMPDRI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MACLMIR_Register use record
      LSI            at 0 range 0 .. 7;
      DRSYNCR        at 0 range 8 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      LMPDRI         at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLOMR_SCHALG_Field is Interfaces.Bit_Types.UInt2;

   --  Operating mode register
   type ETH_MTLOMR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Drop Transmit Status
      DTXSTS         : Boolean := False;
      --  Receive Arbitration Algorithm
      RAA            : Boolean := False;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Tx Scheduling Algorithm
      SCHALG         : ETH_MTLOMR_SCHALG_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Counters Preset
      CNTPRST        : Boolean := False;
      --  Counters Reset
      CNTCLR         : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLOMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DTXSTS         at 0 range 1 .. 1;
      RAA            at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SCHALG         at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CNTPRST        at 0 range 8 .. 8;
      CNTCLR         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Interrupt status register
   type ETH_MTLISR_Register is record
      --  Read-only. Queue 0 interrupt status
      Q0IS           : Boolean;
      --  Read-only. Queue 1 interrupt status
      Q1IS           : Boolean;
      --  Read-only. Queue 2 interrupt status
      Q2IS           : Boolean;
      --  Read-only. Queue 3 interrupt status
      Q3IS           : Boolean;
      --  unspecified
      Reserved_4_17  : Interfaces.Bit_Types.UInt14;
      --  Read-only. EST (TAS- 802.
      ESTIS          : Boolean;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLISR_Register use record
      Q0IS           at 0 range 0 .. 0;
      Q1IS           at 0 range 1 .. 1;
      Q2IS           at 0 range 2 .. 2;
      Q3IS           at 0 range 3 .. 3;
      Reserved_4_17  at 0 range 4 .. 17;
      ESTIS          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Rx Queue and DMA Channel Mapping register
   type ETH_MTLRXQDMAMR_Register is record
      --  Queue 0 Mapped to DMA Channel
      Q0MDMACH       : Boolean := False;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Queue 0 Enabled for DA-based DMA Channel Selection
      Q0DDMACH       : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Queue 1 Mapped to DMA Channel
      Q1MDMACH       : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Queue 1 Enabled for DA-based DMA Channel Selection
      Q1DDMACH       : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQDMAMR_Register use record
      Q0MDMACH       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      Q0DDMACH       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      Q1MDMACH       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      Q1DDMACH       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype ETH_MTLTBSCR_LEGOS_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTBSCR_LEOS_Field is Interfaces.Bit_Types.UInt24;

   --  TBS control register
   type ETH_MTLTBSCR_Register is record
      --  EST offset mode
      ESTM         : Boolean := False;
      --  Launch expiry offset valid
      LEOV         : Boolean := False;
      --  unspecified
      Reserved_2_3 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Launch Expiry GSN Offset
      LEGOS        : ETH_MTLTBSCR_LEGOS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Launch Expiry Offset
      LEOS         : ETH_MTLTBSCR_LEOS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTBSCR_Register use record
      ESTM         at 0 range 0 .. 0;
      LEOV         at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      LEGOS        at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      LEOS         at 0 range 8 .. 31;
   end record;

   subtype ETH_MTLESTCR_LCSE_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLESTCR_TILS_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLESTCR_CTOV_Field is Interfaces.Bit_Types.UInt12;
   subtype ETH_MTLESTCR_PTOV_Field is Interfaces.Bit_Types.Byte;

   --  EST Control register
   type ETH_MTLESTCR_Register is record
      --  Enable EST
      EEST           : Boolean := False;
      --  Switch to S/W owned list
      SSWL           : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Do not Drop frames during Frame Size Error
      DDBF           : Boolean := False;
      --  Drop Frames causing Scheduling Error
      DFBS           : Boolean := False;
      --  Loop Count to report Scheduling Error
      LCSE           : ETH_MTLESTCR_LCSE_Field := 16#0#;
      --  Time Interval Left Shift Amount
      TILS           : ETH_MTLESTCR_TILS_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Current Time Offset Value
      CTOV           : ETH_MTLESTCR_CTOV_Field := 16#0#;
      --  PTP Time Offset Value
      PTOV           : ETH_MTLESTCR_PTOV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTCR_Register use record
      EEST           at 0 range 0 .. 0;
      SSWL           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DDBF           at 0 range 4 .. 4;
      DFBS           at 0 range 5 .. 5;
      LCSE           at 0 range 6 .. 7;
      TILS           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CTOV           at 0 range 12 .. 23;
      PTOV           at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLESTECR_OVHD_Field is Interfaces.Bit_Types.UInt6;

   --  EST Extended Control register
   type ETH_MTLESTECR_Register is record
      --  Overhead Bytes Value
      OVHD          : ETH_MTLESTECR_OVHD_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTECR_Register use record
      OVHD          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ETH_MTLESTSR_BTRL_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_MTLESTSR_CGSN_Field is Interfaces.Bit_Types.UInt4;

   --  EST Status register
   type ETH_MTLESTSR_Register is record
      --  Switch to S/W owned list Complete
      SWLC           : Boolean := False;
      --  BTR Error
      BTRE           : Boolean := False;
      --  Read-only. Head-Of-Line Blocking due to Frame Size
      HLBF           : Boolean := False;
      --  Read-only. Head-Of-Line Blocking due to Scheduling
      HLBS           : Boolean := False;
      --  Constant Gate Control Error
      CGCE           : Boolean := False;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. S/W owned list
      SWOL           : Boolean := False;
      --  Read-only. BTR Error Loop Count
      BTRL           : ETH_MTLESTSR_BTRL_Field := 16#0#;
      --  Read-only. Current GCL slot number
      CGSN           : ETH_MTLESTSR_CGSN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTSR_Register use record
      SWLC           at 0 range 0 .. 0;
      BTRE           at 0 range 1 .. 1;
      HLBF           at 0 range 2 .. 2;
      HLBS           at 0 range 3 .. 3;
      CGCE           at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SWOL           at 0 range 7 .. 7;
      BTRL           at 0 range 8 .. 15;
      CGSN           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_MTLESTSCHER_SEQN_Field is Interfaces.Bit_Types.UInt4;

   --  EST Schedule Error register
   type ETH_MTLESTSCHER_Register is record
      --  Schedule Error Queue Number
      SEQN          : ETH_MTLESTSCHER_SEQN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTSCHER_Register use record
      SEQN          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETH_MTLESTFSER_FEQN_Field is Interfaces.Bit_Types.UInt4;

   --  EST Frame size Error register
   type ETH_MTLESTFSER_Register is record
      --  Frame Size Error Queue Number
      FEQN          : ETH_MTLESTFSER_FEQN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTFSER_Register use record
      FEQN          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETH_MTLESTFSCR_HBFS_Field is Interfaces.Bit_Types.UInt15;
   subtype ETH_MTLESTFSCR_HBFQ_Field is Interfaces.Bit_Types.UInt2;

   --  EST Frame size Capture register
   type ETH_MTLESTFSCR_Register is record
      --  Read-only. Frame Size of HLBF
      HBFS           : ETH_MTLESTFSCR_HBFS_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Queue Number of HLBF
      HBFQ           : ETH_MTLESTFSCR_HBFQ_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTFSCR_Register use record
      HBFS           at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HBFQ           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  EST Interrupt Enable register
   type ETH_MTLESTIER_Register is record
      --  Interrupt Enable for Switch List
      IECC          : Boolean := False;
      --  Interrupt Enable for BTR Error
      IEBE          : Boolean := False;
      --  Interrupt Enable for HLBF
      IEHF          : Boolean := False;
      --  Interrupt Enable for HLBS
      IEHS          : Boolean := False;
      --  Interrupt Enable for CGCE
      CGCE          : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTIER_Register use record
      IECC          at 0 range 0 .. 0;
      IEBE          at 0 range 1 .. 1;
      IEHF          at 0 range 2 .. 2;
      IEHS          at 0 range 3 .. 3;
      CGCE          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype ETH_MTLESTGCLCR_ADDR_Field is Interfaces.Bit_Types.UInt6;

   --  EST Gate Control List register
   type ETH_MTLESTGCLCR_Register is record
      --  Start Read/Write Operation
      SRWO           : Boolean := False;
      --  Read 1, Write 0
      R1W0           : Boolean := False;
      --  Gate Control Related registers
      GCRR           : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Debug Mode
      DBGM           : Boolean := False;
      --  Debug Mode Bank Select
      DBGB           : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Gate Control List Address:
      ADDR           : ETH_MTLESTGCLCR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLESTGCLCR_Register use record
      SRWO           at 0 range 0 .. 0;
      R1W0           at 0 range 1 .. 1;
      GCRR           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DBGM           at 0 range 4 .. 4;
      DBGB           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADDR           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLFPECSR_AFSZ_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLFPECSR_PEC_Field is Interfaces.Bit_Types.UInt4;

   --  FPE Frame Preemption Control Status register
   type ETH_MTLFPECSR_Register is record
      --  Additional Fragment Size
      AFSZ           : ETH_MTLFPECSR_AFSZ_Field := 16#0#;
      --  unspecified
      Reserved_2_6   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Level-based Hold Transition
      LBHT           : Boolean := False;
      --  Preemption Classification
      PEC            : ETH_MTLFPECSR_PEC_Field := 16#0#;
      --  unspecified
      Reserved_12_27 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Hold/Release Status
      HRS            : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLFPECSR_Register use record
      AFSZ           at 0 range 0 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      LBHT           at 0 range 7 .. 7;
      PEC            at 0 range 8 .. 11;
      Reserved_12_27 at 0 range 12 .. 27;
      HRS            at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MTLFPEAR_HADV_Field is Interfaces.Bit_Types.UInt16;
   subtype ETH_MTLFPEAR_RADV_Field is Interfaces.Bit_Types.UInt16;

   --  FPE Frame Preemption Advance register
   type ETH_MTLFPEAR_Register is record
      --  Hold Advance
      HADV : ETH_MTLFPEAR_HADV_Field := 16#0#;
      --  Release Advance
      RADV : ETH_MTLFPEAR_RADV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLFPEAR_Register use record
      HADV at 0 range 0 .. 15;
      RADV at 0 range 16 .. 31;
   end record;

   subtype ETH_MTLTXQ0OMR_TXQEN_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ0OMR_TTC_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ0OMR_TQS_Field is Interfaces.Bit_Types.UInt5;

   --  T0 queue 0 operating mode register
   type ETH_MTLTXQ0OMR_Register is record
      --  Flush Transmit Queue
      FTQ            : Boolean := False;
      --  Transmit Store and Forward
      TSF            : Boolean := False;
      --  Transmit Queue Enable
      TXQEN          : ETH_MTLTXQ0OMR_TXQEN_Field := 16#0#;
      --  Transmit Threshold Control
      TTC            : ETH_MTLTXQ0OMR_TTC_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Transmit queue size
      TQS            : ETH_MTLTXQ0OMR_TQS_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ0OMR_Register use record
      FTQ            at 0 range 0 .. 0;
      TSF            at 0 range 1 .. 1;
      TXQEN          at 0 range 2 .. 3;
      TTC            at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      TQS            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_MTLTXQ0UR_UFFRMCNT_Field is Interfaces.Bit_Types.UInt11;

   --  T0 queue 0 underflow register
   type ETH_MTLTXQ0UR_Register is record
      --  Underflow Packet Counter
      UFFRMCNT       : ETH_MTLTXQ0UR_UFFRMCNT_Field := 16#0#;
      --  Overflow Bit for Underflow Packet Counter
      UFCNTOVF       : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ0UR_Register use record
      UFFRMCNT       at 0 range 0 .. 10;
      UFCNTOVF       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETH_MTLTXQ0DR_TRCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ0DR_PTXQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ0DR_STXSTSF_Field is Interfaces.Bit_Types.UInt3;

   --  T0 queue 0 debug register
   type ETH_MTLTXQ0DR_Register is record
      --  Read-only. Transmit Queue in Pause
      TXQPAUSED      : Boolean;
      --  Read-only. MTL Tx Queue Read Controller Status
      TRCSTS         : ETH_MTLTXQ0DR_TRCSTS_Field;
      --  Read-only. MTL Tx Queue Write Controller Status
      TWCSTS         : Boolean;
      --  Read-only. MTL Tx Queue Not Empty Status
      TXQSTS         : Boolean;
      --  Read-only. MTL Tx Status FIFO Full Status
      TXSTSFSTS      : Boolean;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Number of Packets in the Transmit Queue
      PTXQ           : ETH_MTLTXQ0DR_PTXQ_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of Status Words in Tx Status FIFO of Queue
      STXSTSF        : ETH_MTLTXQ0DR_STXSTSF_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ0DR_Register use record
      TXQPAUSED      at 0 range 0 .. 0;
      TRCSTS         at 0 range 1 .. 2;
      TWCSTS         at 0 range 3 .. 3;
      TXQSTS         at 0 range 4 .. 4;
      TXSTSFSTS      at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PTXQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      STXSTSF        at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ETH_MTLTXQ0ESR_ABS_Field is Interfaces.Bit_Types.UInt24;

   --  T0 queue 0 ETS status register
   type ETH_MTLTXQ0ESR_Register is record
      --  Read-only. Average Bits per Slot
      ABS_k          : ETH_MTLTXQ0ESR_ABS_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ0ESR_Register use record
      ABS_k          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLTXQ0QWR_ISCQW_Field is Interfaces.Bit_Types.UInt14;

   --  T0 queue 0 quantum weight register
   type ETH_MTLTXQ0QWR_Register is record
      --  IdleSlopeCredit or Weights
      ISCQW          : ETH_MTLTXQ0QWR_ISCQW_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ0QWR_Register use record
      ISCQW          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Queue 0 interrupt control status register
   type ETH_MTLQ0ICSR_Register is record
      --  Transmit Queue Underflow Interrupt Status
      TXUNFIS        : Boolean := False;
      --  Average Bits Per Slot Interrupt Status
      ABPSIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Transmit Queue Underflow Interrupt Enable
      TXUIE          : Boolean := False;
      --  Average Bits Per Slot Interrupt Enable
      ABPSIE         : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Receive Queue Overflow Interrupt Status
      RXOVFIS        : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Receive Queue Overflow Interrupt Enable
      RXOIE          : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLQ0ICSR_Register use record
      TXUNFIS        at 0 range 0 .. 0;
      ABPSIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXUIE          at 0 range 8 .. 8;
      ABPSIE         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXOVFIS        at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      RXOIE          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ETH_MTLRXQ0OMR_RTC_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLRXQ0OMR_RFA_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLRXQ0OMR_RFD_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLRXQ0OMR_RQS_Field is Interfaces.Bit_Types.UInt4;

   --  R0 queue 0 operating mode register
   type ETH_MTLRXQ0OMR_Register is record
      --  Receive Queue Threshold Control
      RTC            : ETH_MTLRXQ0OMR_RTC_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Forward Undersized Good Packets
      FUP            : Boolean := False;
      --  Forward Error Packets
      FEP            : Boolean := False;
      --  Receive Queue Store and Forward
      RSF            : Boolean := False;
      --  Disable Dropping of TCP/IP Checksum Error Packets
      DIS_TCP_EF     : Boolean := False;
      --  Enable Hardware Flow Control
      EHFC           : Boolean := False;
      --  Threshold for Activating Flow Control (in Half-duplex and
      --  Full-duplex)
      RFA            : ETH_MTLRXQ0OMR_RFA_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Threshold for Deactivating Flow Control (in Half-duplex and
      --  Full-duplex modes)
      RFD            : ETH_MTLRXQ0OMR_RFD_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Queue Size
      RQS            : ETH_MTLRXQ0OMR_RQS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ0OMR_Register use record
      RTC            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      FUP            at 0 range 3 .. 3;
      FEP            at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      DIS_TCP_EF     at 0 range 6 .. 6;
      EHFC           at 0 range 7 .. 7;
      RFA            at 0 range 8 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RFD            at 0 range 14 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RQS            at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLRXQ0MPOCR_OVFPKTCNT_Field is Interfaces.Bit_Types.UInt11;
   subtype ETH_MTLRXQ0MPOCR_MISPKTCNT_Field is Interfaces.Bit_Types.UInt11;

   --  R0 queue 0 missed packet and overflow counter register
   type ETH_MTLRXQ0MPOCR_Register is record
      --  Overflow Packet Counter
      OVFPKTCNT      : ETH_MTLRXQ0MPOCR_OVFPKTCNT_Field := 16#0#;
      --  Overflow Counter Overflow Bit
      OVFCNTOVF      : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Missed Packet Counter
      MISPKTCNT      : ETH_MTLRXQ0MPOCR_MISPKTCNT_Field := 16#0#;
      --  Missed Packet Counter Overflow Bit
      MISCNTOVF      : Boolean := False;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ0MPOCR_Register use record
      OVFPKTCNT      at 0 range 0 .. 10;
      OVFCNTOVF      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MISPKTCNT      at 0 range 16 .. 26;
      MISCNTOVF      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ETH_MTLRXQ0DR_RRCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLRXQ0DR_RXQSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLRXQ0DR_PRXQ_Field is Interfaces.Bit_Types.UInt14;

   --  R0 queue 0 debug register
   type ETH_MTLRXQ0DR_Register is record
      --  Read-only. MTL Rx Queue Write Controller Active Status
      RWCSTS         : Boolean;
      --  Read-only. MTL Rx Queue Read Controller State
      RRCSTS         : ETH_MTLRXQ0DR_RRCSTS_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. MTL Rx Queue Fill-Level Status
      RXQSTS         : ETH_MTLRXQ0DR_RXQSTS_Field;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Number of Packets in Receive Queue
      PRXQ           : ETH_MTLRXQ0DR_PRXQ_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ0DR_Register use record
      RWCSTS         at 0 range 0 .. 0;
      RRCSTS         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXQSTS         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PRXQ           at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETH_MTLRXQ0CR_RXQ_WEGT_Field is Interfaces.Bit_Types.UInt3;

   --  R0 queue 0 control register
   type ETH_MTLRXQ0CR_Register is record
      --  Receive Queue Weight
      RXQ_WEGT      : ETH_MTLRXQ0CR_RXQ_WEGT_Field := 16#0#;
      --  Receive Queue Packet Arbitration
      RXQ_FRM_ARBIT : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ0CR_Register use record
      RXQ_WEGT      at 0 range 0 .. 2;
      RXQ_FRM_ARBIT at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETH_MTLTXQ1OMR_TXQEN_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ1OMR_TTC_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ1OMR_TQS_Field is Interfaces.Bit_Types.UInt5;

   --  T1 queue 1 operating mode register
   type ETH_MTLTXQ1OMR_Register is record
      --  Flush Transmit Queue
      FTQ            : Boolean := False;
      --  Transmit Store and Forward
      TSF            : Boolean := False;
      --  Transmit Queue Enable
      TXQEN          : ETH_MTLTXQ1OMR_TXQEN_Field := 16#0#;
      --  Transmit Threshold Control
      TTC            : ETH_MTLTXQ1OMR_TTC_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Transmit queue size
      TQS            : ETH_MTLTXQ1OMR_TQS_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1OMR_Register use record
      FTQ            at 0 range 0 .. 0;
      TSF            at 0 range 1 .. 1;
      TXQEN          at 0 range 2 .. 3;
      TTC            at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      TQS            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_MTLTXQ1UR_UFFRMCNT_Field is Interfaces.Bit_Types.UInt11;

   --  T1 queue 1 underflow register
   type ETH_MTLTXQ1UR_Register is record
      --  Underflow Packet Counter
      UFFRMCNT       : ETH_MTLTXQ1UR_UFFRMCNT_Field := 16#0#;
      --  Overflow Bit for Underflow Packet Counter
      UFCNTOVF       : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1UR_Register use record
      UFFRMCNT       at 0 range 0 .. 10;
      UFCNTOVF       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETH_MTLTXQ1DR_TRCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ1DR_PTXQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ1DR_STXSTSF_Field is Interfaces.Bit_Types.UInt3;

   --  T1 queue 1 debug register
   type ETH_MTLTXQ1DR_Register is record
      --  Read-only. Transmit Queue in Pause
      TXQPAUSED      : Boolean;
      --  Read-only. MTL Tx Queue Read Controller Status
      TRCSTS         : ETH_MTLTXQ1DR_TRCSTS_Field;
      --  Read-only. MTL Tx Queue Write Controller Status
      TWCSTS         : Boolean;
      --  Read-only. MTL Tx Queue Not Empty Status
      TXQSTS         : Boolean;
      --  Read-only. MTL Tx Status FIFO Full Status
      TXSTSFSTS      : Boolean;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Number of Packets in the Transmit Queue
      PTXQ           : ETH_MTLTXQ1DR_PTXQ_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of Status Words in Tx Status FIFO of Queue
      STXSTSF        : ETH_MTLTXQ1DR_STXSTSF_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1DR_Register use record
      TXQPAUSED      at 0 range 0 .. 0;
      TRCSTS         at 0 range 1 .. 2;
      TWCSTS         at 0 range 3 .. 3;
      TXQSTS         at 0 range 4 .. 4;
      TXSTSFSTS      at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PTXQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      STXSTSF        at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ETH_MTLTXQ1ECR_SLC_Field is Interfaces.Bit_Types.UInt3;

   --  T1 queue 1 ETS control register
   type ETH_MTLTXQ1ECR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AV Algorithm
      AVALG         : Boolean := False;
      --  Credit Control
      CC            : Boolean := False;
      --  Slot Count
      SLC           : ETH_MTLTXQ1ECR_SLC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1ECR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      AVALG         at 0 range 2 .. 2;
      CC            at 0 range 3 .. 3;
      SLC           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ETH_MTLTXQ1ESR_ABS_Field is Interfaces.Bit_Types.UInt24;

   --  T1 queue 1 ETS status register
   type ETH_MTLTXQ1ESR_Register is record
      --  Read-only. Average Bits per Slot
      ABS_k          : ETH_MTLTXQ1ESR_ABS_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1ESR_Register use record
      ABS_k          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLTXQ1QWR_ISCQW_Field is Interfaces.Bit_Types.UInt14;

   --  T1 queue 1 quantum weight register
   type ETH_MTLTXQ1QWR_Register is record
      --  IdleSlopeCredit or Weights
      ISCQW          : ETH_MTLTXQ1QWR_ISCQW_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1QWR_Register use record
      ISCQW          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLTXQ1SSCR_SSC_Field is Interfaces.Bit_Types.UInt14;

   --  T1 queue 1 send slope credit register
   type ETH_MTLTXQ1SSCR_Register is record
      --  sendSlopeCredit Value
      SSC            : ETH_MTLTXQ1SSCR_SSC_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1SSCR_Register use record
      SSC            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLTXQ1HCR_HC_Field is Interfaces.Bit_Types.UInt29;

   --  T1 Queue 1 hiCredit register
   type ETH_MTLTXQ1HCR_Register is record
      --  hiCredit Value
      HC             : ETH_MTLTXQ1HCR_HC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1HCR_Register use record
      HC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MTLTXQ1LCR_LC_Field is Interfaces.Bit_Types.UInt29;

   --  T1 queue 1 loCredit register
   type ETH_MTLTXQ1LCR_Register is record
      --  loCredit Value
      LC             : ETH_MTLTXQ1LCR_LC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ1LCR_Register use record
      LC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Queue 1 interrupt control status register
   type ETH_MTLQ1ICSR_Register is record
      --  Transmit Queue Underflow Interrupt Status
      TXUNFIS        : Boolean := False;
      --  Average Bits Per Slot Interrupt Status
      ABPSIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Transmit Queue Underflow Interrupt Enable
      TXUIE          : Boolean := False;
      --  Average Bits Per Slot Interrupt Enable
      ABPSIE         : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Receive Queue Overflow Interrupt Status
      RXOVFIS        : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Receive Queue Overflow Interrupt Enable
      RXOIE          : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLQ1ICSR_Register use record
      TXUNFIS        at 0 range 0 .. 0;
      ABPSIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXUIE          at 0 range 8 .. 8;
      ABPSIE         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXOVFIS        at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      RXOIE          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ETH_MTLRXQ1OMR_RTC_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLRXQ1OMR_RFA_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLRXQ1OMR_RFD_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLRXQ1OMR_RQS_Field is Interfaces.Bit_Types.UInt4;

   --  R1 queue 1 operating mode register
   type ETH_MTLRXQ1OMR_Register is record
      --  Receive Queue Threshold Control
      RTC            : ETH_MTLRXQ1OMR_RTC_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Forward Undersized Good Packets
      FUP            : Boolean := False;
      --  Forward Error Packets
      FEP            : Boolean := False;
      --  Receive Queue Store and Forward
      RSF            : Boolean := False;
      --  Disable Dropping of TCP/IP Checksum Error Packets
      DIS_TCP_EF     : Boolean := False;
      --  Enable Hardware Flow Control
      EHFC           : Boolean := False;
      --  Threshold for Activating Flow Control (in Half-duplex and
      --  Full-duplex)
      RFA            : ETH_MTLRXQ1OMR_RFA_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Threshold for Deactivating Flow Control (in Half-duplex and
      --  Full-duplex modes)
      RFD            : ETH_MTLRXQ1OMR_RFD_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Queue Size
      RQS            : ETH_MTLRXQ1OMR_RQS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ1OMR_Register use record
      RTC            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      FUP            at 0 range 3 .. 3;
      FEP            at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      DIS_TCP_EF     at 0 range 6 .. 6;
      EHFC           at 0 range 7 .. 7;
      RFA            at 0 range 8 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RFD            at 0 range 14 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RQS            at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLRXQ1MPOCR_OVFPKTCNT_Field is Interfaces.Bit_Types.UInt11;
   subtype ETH_MTLRXQ1MPOCR_MISPKTCNT_Field is Interfaces.Bit_Types.UInt11;

   --  R1 queue 1 missed packet and overflow counter register
   type ETH_MTLRXQ1MPOCR_Register is record
      --  Overflow Packet Counter
      OVFPKTCNT      : ETH_MTLRXQ1MPOCR_OVFPKTCNT_Field := 16#0#;
      --  Overflow Counter Overflow Bit
      OVFCNTOVF      : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Missed Packet Counter
      MISPKTCNT      : ETH_MTLRXQ1MPOCR_MISPKTCNT_Field := 16#0#;
      --  Missed Packet Counter Overflow Bit
      MISCNTOVF      : Boolean := False;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ1MPOCR_Register use record
      OVFPKTCNT      at 0 range 0 .. 10;
      OVFCNTOVF      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MISPKTCNT      at 0 range 16 .. 26;
      MISCNTOVF      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ETH_MTLRXQ1DR_RRCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLRXQ1DR_RXQSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLRXQ1DR_PRXQ_Field is Interfaces.Bit_Types.UInt14;

   --  R1 queue 1 debug register
   type ETH_MTLRXQ1DR_Register is record
      --  Read-only. MTL Rx Queue Write Controller Active Status
      RWCSTS         : Boolean;
      --  Read-only. MTL Rx Queue Read Controller State
      RRCSTS         : ETH_MTLRXQ1DR_RRCSTS_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. MTL Rx Queue Fill-Level Status
      RXQSTS         : ETH_MTLRXQ1DR_RXQSTS_Field;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Number of Packets in Receive Queue
      PRXQ           : ETH_MTLRXQ1DR_PRXQ_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ1DR_Register use record
      RWCSTS         at 0 range 0 .. 0;
      RRCSTS         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXQSTS         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PRXQ           at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETH_MTLRXQ1CR_RXQ_WEGT_Field is Interfaces.Bit_Types.UInt3;

   --  R1 queue 1 control register
   type ETH_MTLRXQ1CR_Register is record
      --  Receive Queue Weight
      RXQ_WEGT      : ETH_MTLRXQ1CR_RXQ_WEGT_Field := 16#0#;
      --  Receive Queue Packet Arbitration
      RXQ_FRM_ARBIT : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLRXQ1CR_Register use record
      RXQ_WEGT      at 0 range 0 .. 2;
      RXQ_FRM_ARBIT at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETH_MTLTXQ2OMR_TXQEN_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ2OMR_TTC_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ2OMR_TQS_Field is Interfaces.Bit_Types.UInt5;

   --  T2 queue 2 operating mode register
   type ETH_MTLTXQ2OMR_Register is record
      --  Flush Transmit Queue
      FTQ            : Boolean := False;
      --  Transmit Store and Forward
      TSF            : Boolean := False;
      --  Transmit Queue Enable
      TXQEN          : ETH_MTLTXQ2OMR_TXQEN_Field := 16#0#;
      --  Transmit Threshold Control
      TTC            : ETH_MTLTXQ2OMR_TTC_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Transmit queue size
      TQS            : ETH_MTLTXQ2OMR_TQS_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2OMR_Register use record
      FTQ            at 0 range 0 .. 0;
      TSF            at 0 range 1 .. 1;
      TXQEN          at 0 range 2 .. 3;
      TTC            at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      TQS            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_MTLTXQ2UR_UFFRMCNT_Field is Interfaces.Bit_Types.UInt11;

   --  T2 queue 2 underflow register
   type ETH_MTLTXQ2UR_Register is record
      --  Underflow Packet Counter
      UFFRMCNT       : ETH_MTLTXQ2UR_UFFRMCNT_Field := 16#0#;
      --  Overflow Bit for Underflow Packet Counter
      UFCNTOVF       : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2UR_Register use record
      UFFRMCNT       at 0 range 0 .. 10;
      UFCNTOVF       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETH_MTLTXQ2DR_TRCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ2DR_PTXQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ2DR_STXSTSF_Field is Interfaces.Bit_Types.UInt3;

   --  T2 queue 2 debug register
   type ETH_MTLTXQ2DR_Register is record
      --  Read-only. Transmit Queue in Pause
      TXQPAUSED      : Boolean;
      --  Read-only. MTL Tx Queue Read Controller Status
      TRCSTS         : ETH_MTLTXQ2DR_TRCSTS_Field;
      --  Read-only. MTL Tx Queue Write Controller Status
      TWCSTS         : Boolean;
      --  Read-only. MTL Tx Queue Not Empty Status
      TXQSTS         : Boolean;
      --  Read-only. MTL Tx Status FIFO Full Status
      TXSTSFSTS      : Boolean;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Number of Packets in the Transmit Queue
      PTXQ           : ETH_MTLTXQ2DR_PTXQ_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of Status Words in Tx Status FIFO of Queue
      STXSTSF        : ETH_MTLTXQ2DR_STXSTSF_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2DR_Register use record
      TXQPAUSED      at 0 range 0 .. 0;
      TRCSTS         at 0 range 1 .. 2;
      TWCSTS         at 0 range 3 .. 3;
      TXQSTS         at 0 range 4 .. 4;
      TXSTSFSTS      at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PTXQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      STXSTSF        at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ETH_MTLTXQ2ECR_SLC_Field is Interfaces.Bit_Types.UInt3;

   --  T2 queue 2 ETS control register
   type ETH_MTLTXQ2ECR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AV Algorithm
      AVALG         : Boolean := False;
      --  Credit Control
      CC            : Boolean := False;
      --  Slot Count
      SLC           : ETH_MTLTXQ2ECR_SLC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2ECR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      AVALG         at 0 range 2 .. 2;
      CC            at 0 range 3 .. 3;
      SLC           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ETH_MTLTXQ2ESR_ABS_Field is Interfaces.Bit_Types.UInt24;

   --  T2 queue 2 ETS status register
   type ETH_MTLTXQ2ESR_Register is record
      --  Read-only. Average Bits per Slot
      ABS_k          : ETH_MTLTXQ2ESR_ABS_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2ESR_Register use record
      ABS_k          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLTXQ2QWR_ISCQW_Field is Interfaces.Bit_Types.UInt14;

   --  T2 queue 2 quantum weight register
   type ETH_MTLTXQ2QWR_Register is record
      --  IdleSlopeCredit or Weights
      ISCQW          : ETH_MTLTXQ2QWR_ISCQW_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2QWR_Register use record
      ISCQW          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLTXQ2SSCR_SSC_Field is Interfaces.Bit_Types.UInt14;

   --  T2 queue 2 send slope credit register
   type ETH_MTLTXQ2SSCR_Register is record
      --  sendSlopeCredit Value
      SSC            : ETH_MTLTXQ2SSCR_SSC_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2SSCR_Register use record
      SSC            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLTXQ2HCR_HC_Field is Interfaces.Bit_Types.UInt29;

   --  T2 Queue 2 hiCredit register
   type ETH_MTLTXQ2HCR_Register is record
      --  hiCredit Value
      HC             : ETH_MTLTXQ2HCR_HC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2HCR_Register use record
      HC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MTLTXQ2LCR_LC_Field is Interfaces.Bit_Types.UInt29;

   --  T2 queue 2 loCredit register
   type ETH_MTLTXQ2LCR_Register is record
      --  loCredit Value
      LC             : ETH_MTLTXQ2LCR_LC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ2LCR_Register use record
      LC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Queue 2 interrupt control status register
   type ETH_MTLQ2ICSR_Register is record
      --  Transmit Queue Underflow Interrupt Status
      TXUNFIS        : Boolean := False;
      --  Average Bits Per Slot Interrupt Status
      ABPSIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Transmit Queue Underflow Interrupt Enable
      TXUIE          : Boolean := False;
      --  Average Bits Per Slot Interrupt Enable
      ABPSIE         : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Receive Queue Overflow Interrupt Status
      RXOVFIS        : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Receive Queue Overflow Interrupt Enable
      RXOIE          : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLQ2ICSR_Register use record
      TXUNFIS        at 0 range 0 .. 0;
      ABPSIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXUIE          at 0 range 8 .. 8;
      ABPSIE         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXOVFIS        at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      RXOIE          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ETH_MTLTXQ3OMR_TXQEN_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ3OMR_TTC_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ3OMR_TQS_Field is Interfaces.Bit_Types.UInt5;

   --  T3 queue 3 operating mode register
   type ETH_MTLTXQ3OMR_Register is record
      --  Flush Transmit Queue
      FTQ            : Boolean := False;
      --  Transmit Store and Forward
      TSF            : Boolean := False;
      --  Transmit Queue Enable
      TXQEN          : ETH_MTLTXQ3OMR_TXQEN_Field := 16#0#;
      --  Transmit Threshold Control
      TTC            : ETH_MTLTXQ3OMR_TTC_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Transmit queue size
      TQS            : ETH_MTLTXQ3OMR_TQS_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3OMR_Register use record
      FTQ            at 0 range 0 .. 0;
      TSF            at 0 range 1 .. 1;
      TXQEN          at 0 range 2 .. 3;
      TTC            at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      TQS            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_MTLTXQ3UR_UFFRMCNT_Field is Interfaces.Bit_Types.UInt11;

   --  T3 queue 3 underflow register
   type ETH_MTLTXQ3UR_Register is record
      --  Underflow Packet Counter
      UFFRMCNT       : ETH_MTLTXQ3UR_UFFRMCNT_Field := 16#0#;
      --  Overflow Bit for Underflow Packet Counter
      UFCNTOVF       : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3UR_Register use record
      UFFRMCNT       at 0 range 0 .. 10;
      UFCNTOVF       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETH_MTLTXQ3DR_TRCSTS_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_MTLTXQ3DR_PTXQ_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_MTLTXQ3DR_STXSTSF_Field is Interfaces.Bit_Types.UInt3;

   --  T3 queue 3 debug register
   type ETH_MTLTXQ3DR_Register is record
      --  Read-only. Transmit Queue in Pause
      TXQPAUSED      : Boolean;
      --  Read-only. MTL Tx Queue Read Controller Status
      TRCSTS         : ETH_MTLTXQ3DR_TRCSTS_Field;
      --  Read-only. MTL Tx Queue Write Controller Status
      TWCSTS         : Boolean;
      --  Read-only. MTL Tx Queue Not Empty Status
      TXQSTS         : Boolean;
      --  Read-only. MTL Tx Status FIFO Full Status
      TXSTSFSTS      : Boolean;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Number of Packets in the Transmit Queue
      PTXQ           : ETH_MTLTXQ3DR_PTXQ_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of Status Words in Tx Status FIFO of Queue
      STXSTSF        : ETH_MTLTXQ3DR_STXSTSF_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3DR_Register use record
      TXQPAUSED      at 0 range 0 .. 0;
      TRCSTS         at 0 range 1 .. 2;
      TWCSTS         at 0 range 3 .. 3;
      TXQSTS         at 0 range 4 .. 4;
      TXSTSFSTS      at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PTXQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      STXSTSF        at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ETH_MTLTXQ3ECR_SLC_Field is Interfaces.Bit_Types.UInt3;

   --  T3 queue 3 ETS control register
   type ETH_MTLTXQ3ECR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AV Algorithm
      AVALG         : Boolean := False;
      --  Credit Control
      CC            : Boolean := False;
      --  Slot Count
      SLC           : ETH_MTLTXQ3ECR_SLC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3ECR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      AVALG         at 0 range 2 .. 2;
      CC            at 0 range 3 .. 3;
      SLC           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ETH_MTLTXQ3ESR_ABS_Field is Interfaces.Bit_Types.UInt24;

   --  T3 queue 3 ETS status register
   type ETH_MTLTXQ3ESR_Register is record
      --  Read-only. Average Bits per Slot
      ABS_k          : ETH_MTLTXQ3ESR_ABS_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3ESR_Register use record
      ABS_k          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETH_MTLTXQ3QWR_ISCQW_Field is Interfaces.Bit_Types.UInt14;

   --  T3 queue 3 quantum weight register
   type ETH_MTLTXQ3QWR_Register is record
      --  IdleSlopeCredit or Weights
      ISCQW          : ETH_MTLTXQ3QWR_ISCQW_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3QWR_Register use record
      ISCQW          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLTXQ3SSCR_SSC_Field is Interfaces.Bit_Types.UInt14;

   --  T3 queue 3 send slope credit register
   type ETH_MTLTXQ3SSCR_Register is record
      --  sendSlopeCredit Value
      SSC            : ETH_MTLTXQ3SSCR_SSC_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3SSCR_Register use record
      SSC            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETH_MTLTXQ3HCR_HC_Field is Interfaces.Bit_Types.UInt29;

   --  T3 Queue 3 hiCredit register
   type ETH_MTLTXQ3HCR_Register is record
      --  hiCredit Value
      HC             : ETH_MTLTXQ3HCR_HC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3HCR_Register use record
      HC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETH_MTLTXQ3LCR_LC_Field is Interfaces.Bit_Types.UInt29;

   --  T3 queue 3 loCredit register
   type ETH_MTLTXQ3LCR_Register is record
      --  loCredit Value
      LC             : ETH_MTLTXQ3LCR_LC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLTXQ3LCR_Register use record
      LC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Queue 3 interrupt control status register
   type ETH_MTLQ3ICSR_Register is record
      --  Transmit Queue Underflow Interrupt Status
      TXUNFIS        : Boolean := False;
      --  Average Bits Per Slot Interrupt Status
      ABPSIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Transmit Queue Underflow Interrupt Enable
      TXUIE          : Boolean := False;
      --  Average Bits Per Slot Interrupt Enable
      ABPSIE         : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Receive Queue Overflow Interrupt Status
      RXOVFIS        : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Receive Queue Overflow Interrupt Enable
      RXOIE          : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_MTLQ3ICSR_Register use record
      TXUNFIS        at 0 range 0 .. 0;
      ABPSIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXUIE          at 0 range 8 .. 8;
      ABPSIE         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXOVFIS        at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      RXOIE          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  ETH_DMAMR_TAA array
   type ETH_DMAMR_TAA_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ETH_DMAMR_TAA
   type ETH_DMAMR_TAA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TAA as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  TAA as an array
            Arr : ETH_DMAMR_TAA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ETH_DMAMR_TAA_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ETH_DMAMR_INTM_Field is Interfaces.Bit_Types.UInt2;

   --  DMA mode register
   type ETH_DMAMR_Register is record
      --  Software Reset
      SWR            : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Transmit Arbitration Algorithm
      TAA            : ETH_DMAMR_TAA_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Descriptor Posted Write
      DSPW           : Boolean := False;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmit priority
      TXPR           : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Interrupt Mode
      INTM           : ETH_DMAMR_INTM_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAMR_Register use record
      SWR            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TAA            at 0 range 2 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DSPW           at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      TXPR           at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INTM           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  ETH_DMASBMR_BLEN array
   type ETH_DMASBMR_BLEN_Field_Array is array (4 .. 10) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for ETH_DMASBMR_BLEN
   type ETH_DMASBMR_BLEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BLEN as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  BLEN as an array
            Arr : ETH_DMASBMR_BLEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for ETH_DMASBMR_BLEN_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   subtype ETH_DMASBMR_RD_OSR_LMT_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_DMASBMR_WR_OSR_LMT_Field is Interfaces.Bit_Types.UInt2;

   --  System bus mode register
   type ETH_DMASBMR_Register is record
      --  Fixed Burst Length
      FB             : Boolean := False;
      --  AXI Burst Length 4
      BLEN           : ETH_DMASBMR_BLEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Automatic AXI LPI enable
      AALE           : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Address-Aligned Beats
      AAL            : Boolean := False;
      --  1 Kbyte Boundary Crossing Enable for the AXI Master
      ONEKBBE        : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AXI Maximum Read Outstanding Request Limit
      RD_OSR_LMT     : ETH_DMASBMR_RD_OSR_LMT_Field := 16#1#;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  AXI Maximum Write Outstanding Request Limit
      WR_OSR_LMT     : ETH_DMASBMR_WR_OSR_LMT_Field := 16#1#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Unlock on Magic Packet or Remote wake-up Packet
      LPI_XIT_PKT    : Boolean := False;
      --  Enable Low Power Interface (LPI)
      EN_LPI         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMASBMR_Register use record
      FB             at 0 range 0 .. 0;
      BLEN           at 0 range 1 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      AALE           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      AAL            at 0 range 12 .. 12;
      ONEKBBE        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RD_OSR_LMT     at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      WR_OSR_LMT     at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      LPI_XIT_PKT    at 0 range 30 .. 30;
      EN_LPI         at 0 range 31 .. 31;
   end record;

   --  Interrupt status register
   type ETH_DMAISR_Register is record
      --  Read-only. DMA Channel Interrupt Status
      DC0IS          : Boolean;
      --  Read-only. DMA Channel 1 Interrupt Status
      DC1IS          : Boolean;
      --  Read-only. DMA Channel 2 Interrupt Status
      DC2IS          : Boolean;
      --  Read-only. DMA Channel 3 Interrupt Status
      DC3IS          : Boolean;
      --  unspecified
      Reserved_4_15  : Interfaces.Bit_Types.UInt12;
      --  Read-only. MTL Interrupt Status
      MTLIS          : Boolean;
      --  Read-only. MAC Interrupt Status
      MACIS          : Boolean;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAISR_Register use record
      DC0IS          at 0 range 0 .. 0;
      DC1IS          at 0 range 1 .. 1;
      DC2IS          at 0 range 2 .. 2;
      DC3IS          at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      MTLIS          at 0 range 16 .. 16;
      MACIS          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ETH_DMADS1R_RPS0_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMADS1R_TPS0_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMADS1R_RPS1_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMADS1R_TPS1_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMADS1R_TPS2_Field is Interfaces.Bit_Types.UInt4;

   --  Debug status 1 register
   type ETH_DMADS1R_Register is record
      --  Read-only. AXI Master Write Channel
      AXWHSTS        : Boolean;
      --  Read-only. AXI Master Read Channel Status
      AXRHSTS        : Boolean;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6;
      --  Read-only. DMA Channel Receive Process State
      RPS0           : ETH_DMADS1R_RPS0_Field;
      --  Read-only. DMA Channel Transmit Process State
      TPS0           : ETH_DMADS1R_TPS0_Field;
      --  Read-only. DMA Channel 1 Receive Process State
      RPS1           : ETH_DMADS1R_RPS1_Field;
      --  Read-only. DMA Channel 1 Transmit Process State
      TPS1           : ETH_DMADS1R_TPS1_Field;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4;
      --  Read-only. DMA Channel 2 Transmit Process State
      TPS2           : ETH_DMADS1R_TPS2_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMADS1R_Register use record
      AXWHSTS        at 0 range 0 .. 0;
      AXRHSTS        at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      RPS0           at 0 range 8 .. 11;
      TPS0           at 0 range 12 .. 15;
      RPS1           at 0 range 16 .. 19;
      TPS1           at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      TPS2           at 0 range 28 .. 31;
   end record;

   subtype ETH_DMADS2R_TPS3_Field is Interfaces.Bit_Types.UInt4;

   --  Debug status 2 register
   type ETH_DMADS2R_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4;
      --  Read-only. DMA Channel 3 Transmit Process State
      TPS3          : ETH_DMADS2R_TPS3_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMADS2R_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      TPS3          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETH_DMAA4TXACR_TDRC_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMAA4TXACR_TEC_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMAA4TXACR_THC_Field is Interfaces.Bit_Types.UInt4;

   --  AXI4 transmit channel ACE control register
   type ETH_DMAA4TXACR_Register is record
      --  Transmit DMA Read Descriptor Cache Control
      TDRC           : ETH_DMAA4TXACR_TDRC_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transmit DMA Extended Packet Buffer or TSO Payload Cache Control
      TEC            : ETH_DMAA4TXACR_TEC_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transmit DMA First Packet Buffer or TSO Header Cache Control
      THC            : ETH_DMAA4TXACR_THC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAA4TXACR_Register use record
      TDRC           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TEC            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      THC            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_DMAA4RXACR_RDWC_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMAA4RXACR_RPC_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMAA4RXACR_RHC_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMAA4RXACR_RDC_Field is Interfaces.Bit_Types.UInt4;

   --  AXI4 receive channel ACE control register
   type ETH_DMAA4RXACR_Register is record
      --  Receive DMA Write Descriptor Cache Control
      RDWC           : ETH_DMAA4RXACR_RDWC_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Receive DMA Payload Cache Control
      RPC            : ETH_DMAA4RXACR_RPC_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Receive DMA Header Cache Control
      RHC            : ETH_DMAA4RXACR_RHC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Receive DMA Buffer Cache Control
      RDC            : ETH_DMAA4RXACR_RDC_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAA4RXACR_Register use record
      RDWC           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RPC            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RHC            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RDC            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ETH_DMAA4DACR_TDWC_Field is Interfaces.Bit_Types.UInt4;
   subtype ETH_DMAA4DACR_TDWD_Field is Interfaces.Bit_Types.UInt2;
   subtype ETH_DMAA4DACR_RDRC_Field is Interfaces.Bit_Types.UInt4;

   --  AXI4 descriptor ACE control register
   type ETH_DMAA4DACR_Register is record
      --  Transmit DMA Write Descriptor Cache control
      TDWC           : ETH_DMAA4DACR_TDWC_Field := 16#0#;
      --  Transmit DMA Write Descriptor Domain control
      TDWD           : ETH_DMAA4DACR_TDWD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Receive DMA Read Descriptor Cache control
      RDRC           : ETH_DMAA4DACR_RDRC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAA4DACR_Register use record
      TDWC           at 0 range 0 .. 3;
      TDWD           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RDRC           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETH_DMALPIEI_LPIEI_Field is Interfaces.Bit_Types.UInt4;

   --  AXI4 LPI Entry Interval register
   type ETH_DMALPIEI_Register is record
      --  LPI Entry Interval
      LPIEI         : ETH_DMALPIEI_LPIEI_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMALPIEI_Register use record
      LPIEI         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETH_DMATBSCTRL0R_FGOS_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMATBSCTRL0R_FTOS_Field is Interfaces.Bit_Types.UInt24;

   --  DMA TBS control register 0
   type ETH_DMATBSCTRL0R_Register is record
      --  Fetch time offset valid
      FTOV         : Boolean := False;
      --  unspecified
      Reserved_1_3 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fetch GSN offset
      FGOS         : ETH_DMATBSCTRL0R_FGOS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Fetch time offset
      FTOS         : ETH_DMATBSCTRL0R_FTOS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMATBSCTRL0R_Register use record
      FTOV         at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      FGOS         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      FTOS         at 0 range 8 .. 31;
   end record;

   subtype ETH_DMATBSCTRL0R_ALTERNATE1_FGOS_Field is
     Interfaces.Bit_Types.UInt3;
   subtype ETH_DMATBSCTRL0R_ALTERNATE1_FTOS_Field is
     Interfaces.Bit_Types.UInt24;

   --  DMA TBS control register 0
   type ETH_DMATBSCTRL0R_ALTERNATE1_Register is record
      --  Fetch time offset valid
      FTOV         : Boolean := False;
      --  unspecified
      Reserved_1_3 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fetch GSN offset
      FGOS         : ETH_DMATBSCTRL0R_ALTERNATE1_FGOS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Fetch time offset
      FTOS         : ETH_DMATBSCTRL0R_ALTERNATE1_FTOS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMATBSCTRL0R_ALTERNATE1_Register use record
      FTOV         at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      FGOS         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      FTOS         at 0 range 8 .. 31;
   end record;

   subtype ETH_DMATBSCTRL1R_FGOS_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMATBSCTRL1R_FTOS_Field is Interfaces.Bit_Types.UInt24;

   --  DMA TBS control register 1
   type ETH_DMATBSCTRL1R_Register is record
      --  Fetch time offset valid
      FTOV         : Boolean := False;
      --  unspecified
      Reserved_1_3 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fetch GSN offset
      FGOS         : ETH_DMATBSCTRL1R_FGOS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Fetch time offset
      FTOS         : ETH_DMATBSCTRL1R_FTOS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMATBSCTRL1R_Register use record
      FTOV         at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      FGOS         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      FTOS         at 0 range 8 .. 31;
   end record;

   subtype ETH_DMATBSCTRL2R_FGOS_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMATBSCTRL2R_FTOS_Field is Interfaces.Bit_Types.UInt24;

   --  DMA TBS control register 2
   type ETH_DMATBSCTRL2R_Register is record
      --  Fetch time offset valid
      FTOV         : Boolean := False;
      --  unspecified
      Reserved_1_3 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fetch GSN offset
      FGOS         : ETH_DMATBSCTRL2R_FGOS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Fetch time offset
      FTOS         : ETH_DMATBSCTRL2R_FTOS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMATBSCTRL2R_Register use record
      FTOV         at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      FGOS         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      FTOS         at 0 range 8 .. 31;
   end record;

   subtype ETH_DMATBSCTRL3R_FGOS_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMATBSCTRL3R_FTOS_Field is Interfaces.Bit_Types.UInt24;

   --  DMA TBS control register 3
   type ETH_DMATBSCTRL3R_Register is record
      --  Fetch time offset valid
      FTOV         : Boolean := False;
      --  unspecified
      Reserved_1_3 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fetch GSN offset
      FGOS         : ETH_DMATBSCTRL3R_FGOS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Fetch time offset
      FTOS         : ETH_DMATBSCTRL3R_FTOS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMATBSCTRL3R_Register use record
      FTOV         at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      FGOS         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      FTOS         at 0 range 8 .. 31;
   end record;

   subtype ETH_DMAC0CR_MSS_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_DMAC0CR_DSL_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 0 control register
   type ETH_DMAC0CR_Register is record
      --  Maximum Segment Size
      MSS            : ETH_DMAC0CR_MSS_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  8xPBL mode
      PBLX8          : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Descriptor Skip Length
      DSL            : ETH_DMAC0CR_DSL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0CR_Register use record
      MSS            at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PBLX8          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DSL            at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_DMAC0TXCR_TCW_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC0TXCR_TXPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype ETH_DMAC0TXCR_TQOS_Field is Interfaces.Bit_Types.UInt4;

   --  ETH_DMAC0TXCR_TFSEL array
   type ETH_DMAC0TXCR_TFSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ETH_DMAC0TXCR_TFSEL
   type ETH_DMAC0TXCR_TFSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TFSEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  TFSEL as an array
            Arr : ETH_DMAC0TXCR_TFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ETH_DMAC0TXCR_TFSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel 0 transmit control register
   type ETH_DMAC0TXCR_Register is record
      --  Start or Stop Transmission Command
      ST             : Boolean := False;
      --  Read-only. Transmit Channel Weight
      TCW            : ETH_DMAC0TXCR_TCW_Field := 16#0#;
      --  Operate on Second Packet
      OSF            : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  TCP Segmentation Enabled
      TSE            : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Ignore PBL Requirement
      IPBL           : Boolean := False;
      --  Transmit Programmable Burst Length
      TXPBL          : ETH_DMAC0TXCR_TXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmit QOS
      TQOS           : ETH_DMAC0TXCR_TQOS_Field := 16#0#;
      --  Enhanced Descriptor Enable
      EDSE           : Boolean := False;
      --  TBS Fetch Select
      TFSEL          : ETH_DMAC0TXCR_TFSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0TXCR_Register use record
      ST             at 0 range 0 .. 0;
      TCW            at 0 range 1 .. 3;
      OSF            at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      TSE            at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      IPBL           at 0 range 15 .. 15;
      TXPBL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TQOS           at 0 range 24 .. 27;
      EDSE           at 0 range 28 .. 28;
      TFSEL          at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_DMAC0RXCR_RBSZ_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_DMAC0RXCR_RXPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype ETH_DMAC0RXCR_RQOS_Field is Interfaces.Bit_Types.UInt4;

   --  Channel 0 receive control register
   type ETH_DMAC0RXCR_Register is record
      --  Start or Stop Receive
      SR             : Boolean := False;
      --  Receive Buffer size
      RBSZ           : ETH_DMAC0RXCR_RBSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Receive Programmable Burst Length
      RXPBL          : ETH_DMAC0RXCR_RXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx AXI4 QOS.
      RQOS           : ETH_DMAC0RXCR_RQOS_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA Rx Channel x Packet Flush
      RPF            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0RXCR_Register use record
      SR             at 0 range 0 .. 0;
      RBSZ           at 0 range 1 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXPBL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RQOS           at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      RPF            at 0 range 31 .. 31;
   end record;

   subtype ETH_DMAC0TXRLR_TDRL_Field is Interfaces.Bit_Types.UInt10;

   --  Channel 0 T0 descriptor ring length register
   type ETH_DMAC0TXRLR_Register is record
      --  Transmit Descriptor Ring Length
      TDRL           : ETH_DMAC0TXRLR_TDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0TXRLR_Register use record
      TDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ETH_DMAC0RXRLR_RDRL_Field is Interfaces.Bit_Types.UInt10;
   subtype ETH_DMAC0RXRLR_ARBS_Field is Interfaces.Bit_Types.UInt7;

   --  Channel 0 R0 descriptor ring length register
   type ETH_DMAC0RXRLR_Register is record
      --  Receive Descriptor Ring Length
      RDRL           : ETH_DMAC0RXRLR_RDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_16 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Alternate Receive Buffer Size
      ARBS           : ETH_DMAC0RXRLR_ARBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0RXRLR_Register use record
      RDRL           at 0 range 0 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      ARBS           at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Channel 0 interrupt enable register
   type ETH_DMAC0IER_Register is record
      --  Transmit Interrupt Enable
      TIE            : Boolean := False;
      --  Transmit Stopped Enable
      TXSE           : Boolean := False;
      --  Transmit Buffer Unavailable Enable
      TBUE           : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt Enable
      RIE            : Boolean := False;
      --  Receive Buffer Unavailable Enable
      RBUE           : Boolean := False;
      --  Receive Stopped Enable
      RSE            : Boolean := False;
      --  Receive Watchdog Timeout Enable
      RWTE           : Boolean := False;
      --  Early Transmit Interrupt Enable
      ETIE           : Boolean := False;
      --  Early Receive Interrupt Enable
      ERIE           : Boolean := False;
      --  Fatal Bus Error Enable
      FBEE           : Boolean := False;
      --  Context Descriptor Error Enable
      CDEE           : Boolean := False;
      --  Abnormal Interrupt Summary Enable
      AIE            : Boolean := False;
      --  Normal Interrupt Summary Enable
      NIE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0IER_Register use record
      TIE            at 0 range 0 .. 0;
      TXSE           at 0 range 1 .. 1;
      TBUE           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUE           at 0 range 7 .. 7;
      RSE            at 0 range 8 .. 8;
      RWTE           at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      ERIE           at 0 range 11 .. 11;
      FBEE           at 0 range 12 .. 12;
      CDEE           at 0 range 13 .. 13;
      AIE            at 0 range 14 .. 14;
      NIE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_DMAC0RXIWTR_RWT_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_DMAC0RXIWTR_RWTU_Field is Interfaces.Bit_Types.UInt2;

   --  Channel 0 R0 interrupt watchdog timer register
   type ETH_DMAC0RXIWTR_Register is record
      --  Receive Interrupt Watchdog Timer Count
      RWT            : ETH_DMAC0RXIWTR_RWT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Receive Interrupt Watchdog Timer Count Units
      RWTU           : ETH_DMAC0RXIWTR_RWTU_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0RXIWTR_Register use record
      RWT            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RWTU           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ETH_DMAC0SFCSR_SIV_Field is Interfaces.Bit_Types.UInt12;
   subtype ETH_DMAC0SFCSR_RSN_Field is Interfaces.Bit_Types.UInt4;

   --  Channel 0 slot function control status register
   type ETH_DMAC0SFCSR_Register is record
      --  Enable Slot Comparison
      ESC            : Boolean := False;
      --  Advance Slot Check
      ASC            : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Slot Interval Value
      SIV            : ETH_DMAC0SFCSR_SIV_Field := 16#7C#;
      --  Read-only. Reference Slot Number
      RSN            : ETH_DMAC0SFCSR_RSN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0SFCSR_Register use record
      ESC            at 0 range 0 .. 0;
      ASC            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SIV            at 0 range 4 .. 15;
      RSN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_DMAC0SR_TEB_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC0SR_REB_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 0 status register
   type ETH_DMAC0SR_Register is record
      --  Transmit Interrupt
      TI             : Boolean := False;
      --  Transmit Process Stopped
      TPS            : Boolean := False;
      --  Transmit Buffer Unavailable
      TBU            : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt
      RI             : Boolean := False;
      --  Receive Buffer Unavailable
      RBU            : Boolean := False;
      --  Receive Process Stopped
      RPS            : Boolean := False;
      --  Receive Watchdog Timeout
      RWT            : Boolean := False;
      --  Early Transmit Interrupt
      ETI            : Boolean := False;
      --  Early Receive Interrupt
      ERI            : Boolean := False;
      --  Fatal Bus Error
      FBE            : Boolean := False;
      --  Context Descriptor Error
      CDE            : Boolean := False;
      --  Abnormal Interrupt Summary
      AIS            : Boolean := False;
      --  Normal Interrupt Summary
      NIS            : Boolean := False;
      --  Read-only. Tx DMA Error Bits
      TEB            : ETH_DMAC0SR_TEB_Field := 16#0#;
      --  Read-only. Rx DMA Error Bits
      REB            : ETH_DMAC0SR_REB_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0SR_Register use record
      TI             at 0 range 0 .. 0;
      TPS            at 0 range 1 .. 1;
      TBU            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RI             at 0 range 6 .. 6;
      RBU            at 0 range 7 .. 7;
      RPS            at 0 range 8 .. 8;
      RWT            at 0 range 9 .. 9;
      ETI            at 0 range 10 .. 10;
      ERI            at 0 range 11 .. 11;
      FBE            at 0 range 12 .. 12;
      CDE            at 0 range 13 .. 13;
      AIS            at 0 range 14 .. 14;
      NIS            at 0 range 15 .. 15;
      TEB            at 0 range 16 .. 18;
      REB            at 0 range 19 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ETH_DMAC0MFCR_MFC_Field is Interfaces.Bit_Types.UInt11;

   --  Channel 0 missed frame count register
   type ETH_DMAC0MFCR_Register is record
      --  Dropped Packet Counters
      MFC            : ETH_DMAC0MFCR_MFC_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Overflow status of the MFC Counter
      MFCO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC0MFCR_Register use record
      MFC            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      MFCO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_DMAC1CR_MSS_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_DMAC1CR_DSL_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 1 control register
   type ETH_DMAC1CR_Register is record
      --  Maximum Segment Size
      MSS            : ETH_DMAC1CR_MSS_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  8xPBL mode
      PBLX8          : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Descriptor Skip Length
      DSL            : ETH_DMAC1CR_DSL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1CR_Register use record
      MSS            at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PBLX8          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DSL            at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_DMAC1TXCR_TCW_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC1TXCR_TXPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype ETH_DMAC1TXCR_TQOS_Field is Interfaces.Bit_Types.UInt4;

   --  ETH_DMAC1TXCR_TFSEL array
   type ETH_DMAC1TXCR_TFSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ETH_DMAC1TXCR_TFSEL
   type ETH_DMAC1TXCR_TFSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TFSEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  TFSEL as an array
            Arr : ETH_DMAC1TXCR_TFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ETH_DMAC1TXCR_TFSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel 1 transmit control register
   type ETH_DMAC1TXCR_Register is record
      --  Start or Stop Transmission Command
      ST             : Boolean := False;
      --  Read-only. Transmit Channel Weight
      TCW            : ETH_DMAC1TXCR_TCW_Field := 16#0#;
      --  Operate on Second Packet
      OSF            : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  TCP Segmentation Enabled
      TSE            : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Ignore PBL Requirement
      IPBL           : Boolean := False;
      --  Transmit Programmable Burst Length
      TXPBL          : ETH_DMAC1TXCR_TXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmit QOS
      TQOS           : ETH_DMAC1TXCR_TQOS_Field := 16#0#;
      --  Enhanced Descriptor Enable
      EDSE           : Boolean := False;
      --  TBS Fetch Select
      TFSEL          : ETH_DMAC1TXCR_TFSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1TXCR_Register use record
      ST             at 0 range 0 .. 0;
      TCW            at 0 range 1 .. 3;
      OSF            at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      TSE            at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      IPBL           at 0 range 15 .. 15;
      TXPBL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TQOS           at 0 range 24 .. 27;
      EDSE           at 0 range 28 .. 28;
      TFSEL          at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_DMAC1RXCR_RBSZ_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_DMAC1RXCR_RXPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype ETH_DMAC1RXCR_RQOS_Field is Interfaces.Bit_Types.UInt4;

   --  Channel 1 receive control register
   type ETH_DMAC1RXCR_Register is record
      --  Start or Stop Receive
      SR             : Boolean := False;
      --  Receive Buffer size
      RBSZ           : ETH_DMAC1RXCR_RBSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Receive Programmable Burst Length
      RXPBL          : ETH_DMAC1RXCR_RXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx AXI4 QOS.
      RQOS           : ETH_DMAC1RXCR_RQOS_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA Rx Channel x Packet Flush
      RPF            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1RXCR_Register use record
      SR             at 0 range 0 .. 0;
      RBSZ           at 0 range 1 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXPBL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RQOS           at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      RPF            at 0 range 31 .. 31;
   end record;

   subtype ETH_DMAC1TXRLR_TDRL_Field is Interfaces.Bit_Types.UInt10;

   --  Channel 1 T1 descriptor ring length register
   type ETH_DMAC1TXRLR_Register is record
      --  Transmit Descriptor Ring Length
      TDRL           : ETH_DMAC1TXRLR_TDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1TXRLR_Register use record
      TDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ETH_DMAC1RXRLR_RDRL_Field is Interfaces.Bit_Types.UInt10;
   subtype ETH_DMAC1RXRLR_ARBS_Field is Interfaces.Bit_Types.UInt7;

   --  Channel 1 R1 descriptor ring length register
   type ETH_DMAC1RXRLR_Register is record
      --  Receive Descriptor Ring Length
      RDRL           : ETH_DMAC1RXRLR_RDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_16 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Alternate Receive Buffer Size
      ARBS           : ETH_DMAC1RXRLR_ARBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1RXRLR_Register use record
      RDRL           at 0 range 0 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      ARBS           at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Channel 1 interrupt enable register
   type ETH_DMAC1IER_Register is record
      --  Transmit Interrupt Enable
      TIE            : Boolean := False;
      --  Transmit Stopped Enable
      TXSE           : Boolean := False;
      --  Transmit Buffer Unavailable Enable
      TBUE           : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt Enable
      RIE            : Boolean := False;
      --  Receive Buffer Unavailable Enable
      RBUE           : Boolean := False;
      --  Receive Stopped Enable
      RSE            : Boolean := False;
      --  Receive Watchdog Timeout Enable
      RWTE           : Boolean := False;
      --  Early Transmit Interrupt Enable
      ETIE           : Boolean := False;
      --  Early Receive Interrupt Enable
      ERIE           : Boolean := False;
      --  Fatal Bus Error Enable
      FBEE           : Boolean := False;
      --  Context Descriptor Error Enable
      CDEE           : Boolean := False;
      --  Abnormal Interrupt Summary Enable
      AIE            : Boolean := False;
      --  Normal Interrupt Summary Enable
      NIE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1IER_Register use record
      TIE            at 0 range 0 .. 0;
      TXSE           at 0 range 1 .. 1;
      TBUE           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUE           at 0 range 7 .. 7;
      RSE            at 0 range 8 .. 8;
      RWTE           at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      ERIE           at 0 range 11 .. 11;
      FBEE           at 0 range 12 .. 12;
      CDEE           at 0 range 13 .. 13;
      AIE            at 0 range 14 .. 14;
      NIE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_DMAC1RXIWTR_RWT_Field is Interfaces.Bit_Types.Byte;
   subtype ETH_DMAC1RXIWTR_RWTU_Field is Interfaces.Bit_Types.UInt2;

   --  Channel 1 R1 interrupt watchdog timer register
   type ETH_DMAC1RXIWTR_Register is record
      --  Receive Interrupt Watchdog Timer Count
      RWT            : ETH_DMAC1RXIWTR_RWT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Receive Interrupt Watchdog Timer Count Units
      RWTU           : ETH_DMAC1RXIWTR_RWTU_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1RXIWTR_Register use record
      RWT            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RWTU           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ETH_DMAC1SFCSR_SIV_Field is Interfaces.Bit_Types.UInt12;
   subtype ETH_DMAC1SFCSR_RSN_Field is Interfaces.Bit_Types.UInt4;

   --  Channel 1 slot function control status register
   type ETH_DMAC1SFCSR_Register is record
      --  Enable Slot Comparison
      ESC            : Boolean := False;
      --  Advance Slot Check
      ASC            : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Slot Interval Value
      SIV            : ETH_DMAC1SFCSR_SIV_Field := 16#7C#;
      --  Read-only. Reference Slot Number
      RSN            : ETH_DMAC1SFCSR_RSN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1SFCSR_Register use record
      ESC            at 0 range 0 .. 0;
      ASC            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SIV            at 0 range 4 .. 15;
      RSN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_DMAC1SR_TEB_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC1SR_REB_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 1 status register
   type ETH_DMAC1SR_Register is record
      --  Transmit Interrupt
      TI             : Boolean := False;
      --  Transmit Process Stopped
      TPS            : Boolean := False;
      --  Transmit Buffer Unavailable
      TBU            : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt
      RI             : Boolean := False;
      --  Receive Buffer Unavailable
      RBU            : Boolean := False;
      --  Receive Process Stopped
      RPS            : Boolean := False;
      --  Receive Watchdog Timeout
      RWT            : Boolean := False;
      --  Early Transmit Interrupt
      ETI            : Boolean := False;
      --  Early Receive Interrupt
      ERI            : Boolean := False;
      --  Fatal Bus Error
      FBE            : Boolean := False;
      --  Context Descriptor Error
      CDE            : Boolean := False;
      --  Abnormal Interrupt Summary
      AIS            : Boolean := False;
      --  Normal Interrupt Summary
      NIS            : Boolean := False;
      --  Read-only. Tx DMA Error Bits
      TEB            : ETH_DMAC1SR_TEB_Field := 16#0#;
      --  Read-only. Rx DMA Error Bits
      REB            : ETH_DMAC1SR_REB_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1SR_Register use record
      TI             at 0 range 0 .. 0;
      TPS            at 0 range 1 .. 1;
      TBU            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RI             at 0 range 6 .. 6;
      RBU            at 0 range 7 .. 7;
      RPS            at 0 range 8 .. 8;
      RWT            at 0 range 9 .. 9;
      ETI            at 0 range 10 .. 10;
      ERI            at 0 range 11 .. 11;
      FBE            at 0 range 12 .. 12;
      CDE            at 0 range 13 .. 13;
      AIS            at 0 range 14 .. 14;
      NIS            at 0 range 15 .. 15;
      TEB            at 0 range 16 .. 18;
      REB            at 0 range 19 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ETH_DMAC1MFCR_MFC_Field is Interfaces.Bit_Types.UInt11;

   --  Channel 1 missed frame count register
   type ETH_DMAC1MFCR_Register is record
      --  Dropped Packet Counters
      MFC            : ETH_DMAC1MFCR_MFC_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Overflow status of the MFC Counter
      MFCO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC1MFCR_Register use record
      MFC            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      MFCO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_DMAC2CR_MSS_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_DMAC2CR_DSL_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 2 control register
   type ETH_DMAC2CR_Register is record
      --  Maximum Segment Size
      MSS            : ETH_DMAC2CR_MSS_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  8xPBL mode
      PBLX8          : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Descriptor Skip Length
      DSL            : ETH_DMAC2CR_DSL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC2CR_Register use record
      MSS            at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PBLX8          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DSL            at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_DMAC2TXCR_TCW_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC2TXCR_TXPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype ETH_DMAC2TXCR_TQOS_Field is Interfaces.Bit_Types.UInt4;

   --  ETH_DMAC2TXCR_TFSEL array
   type ETH_DMAC2TXCR_TFSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ETH_DMAC2TXCR_TFSEL
   type ETH_DMAC2TXCR_TFSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TFSEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  TFSEL as an array
            Arr : ETH_DMAC2TXCR_TFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ETH_DMAC2TXCR_TFSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel 2 transmit control register
   type ETH_DMAC2TXCR_Register is record
      --  Start or Stop Transmission Command
      ST             : Boolean := False;
      --  Read-only. Transmit Channel Weight
      TCW            : ETH_DMAC2TXCR_TCW_Field := 16#0#;
      --  Operate on Second Packet
      OSF            : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  TCP Segmentation Enabled
      TSE            : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Ignore PBL Requirement
      IPBL           : Boolean := False;
      --  Transmit Programmable Burst Length
      TXPBL          : ETH_DMAC2TXCR_TXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmit QOS
      TQOS           : ETH_DMAC2TXCR_TQOS_Field := 16#0#;
      --  Enhanced Descriptor Enable
      EDSE           : Boolean := False;
      --  TBS Fetch Select
      TFSEL          : ETH_DMAC2TXCR_TFSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC2TXCR_Register use record
      ST             at 0 range 0 .. 0;
      TCW            at 0 range 1 .. 3;
      OSF            at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      TSE            at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      IPBL           at 0 range 15 .. 15;
      TXPBL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TQOS           at 0 range 24 .. 27;
      EDSE           at 0 range 28 .. 28;
      TFSEL          at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_DMAC2TXRLR_TDRL_Field is Interfaces.Bit_Types.UInt10;

   --  Channel 2 T2 descriptor ring length register
   type ETH_DMAC2TXRLR_Register is record
      --  Transmit Descriptor Ring Length
      TDRL           : ETH_DMAC2TXRLR_TDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC2TXRLR_Register use record
      TDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Channel 2 interrupt enable register
   type ETH_DMAC2IER_Register is record
      --  Transmit Interrupt Enable
      TIE            : Boolean := False;
      --  Transmit Stopped Enable
      TXSE           : Boolean := False;
      --  Transmit Buffer Unavailable Enable
      TBUE           : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt Enable
      RIE            : Boolean := False;
      --  Receive Buffer Unavailable Enable
      RBUE           : Boolean := False;
      --  Receive Stopped Enable
      RSE            : Boolean := False;
      --  Receive Watchdog Timeout Enable
      RWTE           : Boolean := False;
      --  Early Transmit Interrupt Enable
      ETIE           : Boolean := False;
      --  Early Receive Interrupt Enable
      ERIE           : Boolean := False;
      --  Fatal Bus Error Enable
      FBEE           : Boolean := False;
      --  Context Descriptor Error Enable
      CDEE           : Boolean := False;
      --  Abnormal Interrupt Summary Enable
      AIE            : Boolean := False;
      --  Normal Interrupt Summary Enable
      NIE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC2IER_Register use record
      TIE            at 0 range 0 .. 0;
      TXSE           at 0 range 1 .. 1;
      TBUE           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUE           at 0 range 7 .. 7;
      RSE            at 0 range 8 .. 8;
      RWTE           at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      ERIE           at 0 range 11 .. 11;
      FBEE           at 0 range 12 .. 12;
      CDEE           at 0 range 13 .. 13;
      AIE            at 0 range 14 .. 14;
      NIE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_DMAC2SFCSR_SIV_Field is Interfaces.Bit_Types.UInt12;
   subtype ETH_DMAC2SFCSR_RSN_Field is Interfaces.Bit_Types.UInt4;

   --  Channel 2 slot function control status register
   type ETH_DMAC2SFCSR_Register is record
      --  Enable Slot Comparison
      ESC            : Boolean := False;
      --  Advance Slot Check
      ASC            : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Slot Interval Value
      SIV            : ETH_DMAC2SFCSR_SIV_Field := 16#7C#;
      --  Read-only. Reference Slot Number
      RSN            : ETH_DMAC2SFCSR_RSN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC2SFCSR_Register use record
      ESC            at 0 range 0 .. 0;
      ASC            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SIV            at 0 range 4 .. 15;
      RSN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_DMAC2SR_TEB_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC2SR_REB_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 2 status register
   type ETH_DMAC2SR_Register is record
      --  Transmit Interrupt
      TI             : Boolean := False;
      --  Transmit Process Stopped
      TPS            : Boolean := False;
      --  Transmit Buffer Unavailable
      TBU            : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt
      RI             : Boolean := False;
      --  Receive Buffer Unavailable
      RBU            : Boolean := False;
      --  Receive Process Stopped
      RPS            : Boolean := False;
      --  Receive Watchdog Timeout
      RWT            : Boolean := False;
      --  Early Transmit Interrupt
      ETI            : Boolean := False;
      --  Early Receive Interrupt
      ERI            : Boolean := False;
      --  Fatal Bus Error
      FBE            : Boolean := False;
      --  Context Descriptor Error
      CDE            : Boolean := False;
      --  Abnormal Interrupt Summary
      AIS            : Boolean := False;
      --  Normal Interrupt Summary
      NIS            : Boolean := False;
      --  Read-only. Tx DMA Error Bits
      TEB            : ETH_DMAC2SR_TEB_Field := 16#0#;
      --  Read-only. Rx DMA Error Bits
      REB            : ETH_DMAC2SR_REB_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC2SR_Register use record
      TI             at 0 range 0 .. 0;
      TPS            at 0 range 1 .. 1;
      TBU            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RI             at 0 range 6 .. 6;
      RBU            at 0 range 7 .. 7;
      RPS            at 0 range 8 .. 8;
      RWT            at 0 range 9 .. 9;
      ETI            at 0 range 10 .. 10;
      ERI            at 0 range 11 .. 11;
      FBE            at 0 range 12 .. 12;
      CDE            at 0 range 13 .. 13;
      AIS            at 0 range 14 .. 14;
      NIS            at 0 range 15 .. 15;
      TEB            at 0 range 16 .. 18;
      REB            at 0 range 19 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ETH_DMAC3CR_MSS_Field is Interfaces.Bit_Types.UInt14;
   subtype ETH_DMAC3CR_DSL_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 3 control register
   type ETH_DMAC3CR_Register is record
      --  Maximum Segment Size
      MSS            : ETH_DMAC3CR_MSS_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  8xPBL mode
      PBLX8          : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Descriptor Skip Length
      DSL            : ETH_DMAC3CR_DSL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC3CR_Register use record
      MSS            at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PBLX8          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DSL            at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ETH_DMAC3TXCR_TCW_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC3TXCR_TXPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype ETH_DMAC3TXCR_TQOS_Field is Interfaces.Bit_Types.UInt4;

   --  ETH_DMAC3TXCR_TFSEL array
   type ETH_DMAC3TXCR_TFSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ETH_DMAC3TXCR_TFSEL
   type ETH_DMAC3TXCR_TFSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TFSEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  TFSEL as an array
            Arr : ETH_DMAC3TXCR_TFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ETH_DMAC3TXCR_TFSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel 3 transmit control register
   type ETH_DMAC3TXCR_Register is record
      --  Start or Stop Transmission Command
      ST             : Boolean := False;
      --  Read-only. Transmit Channel Weight
      TCW            : ETH_DMAC3TXCR_TCW_Field := 16#0#;
      --  Operate on Second Packet
      OSF            : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  TCP Segmentation Enabled
      TSE            : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Ignore PBL Requirement
      IPBL           : Boolean := False;
      --  Transmit Programmable Burst Length
      TXPBL          : ETH_DMAC3TXCR_TXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmit QOS
      TQOS           : ETH_DMAC3TXCR_TQOS_Field := 16#0#;
      --  Enhanced Descriptor Enable
      EDSE           : Boolean := False;
      --  TBS Fetch Select
      TFSEL          : ETH_DMAC3TXCR_TFSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC3TXCR_Register use record
      ST             at 0 range 0 .. 0;
      TCW            at 0 range 1 .. 3;
      OSF            at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      TSE            at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      IPBL           at 0 range 15 .. 15;
      TXPBL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TQOS           at 0 range 24 .. 27;
      EDSE           at 0 range 28 .. 28;
      TFSEL          at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETH_DMAC3TXRLR_TDRL_Field is Interfaces.Bit_Types.UInt10;

   --  Channel 3 T3 descriptor ring length register
   type ETH_DMAC3TXRLR_Register is record
      --  Transmit Descriptor Ring Length
      TDRL           : ETH_DMAC3TXRLR_TDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC3TXRLR_Register use record
      TDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Channel 3 interrupt enable register
   type ETH_DMAC3IER_Register is record
      --  Transmit Interrupt Enable
      TIE            : Boolean := False;
      --  Transmit Stopped Enable
      TXSE           : Boolean := False;
      --  Transmit Buffer Unavailable Enable
      TBUE           : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt Enable
      RIE            : Boolean := False;
      --  Receive Buffer Unavailable Enable
      RBUE           : Boolean := False;
      --  Receive Stopped Enable
      RSE            : Boolean := False;
      --  Receive Watchdog Timeout Enable
      RWTE           : Boolean := False;
      --  Early Transmit Interrupt Enable
      ETIE           : Boolean := False;
      --  Early Receive Interrupt Enable
      ERIE           : Boolean := False;
      --  Fatal Bus Error Enable
      FBEE           : Boolean := False;
      --  Context Descriptor Error Enable
      CDEE           : Boolean := False;
      --  Abnormal Interrupt Summary Enable
      AIE            : Boolean := False;
      --  Normal Interrupt Summary Enable
      NIE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC3IER_Register use record
      TIE            at 0 range 0 .. 0;
      TXSE           at 0 range 1 .. 1;
      TBUE           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUE           at 0 range 7 .. 7;
      RSE            at 0 range 8 .. 8;
      RWTE           at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      ERIE           at 0 range 11 .. 11;
      FBEE           at 0 range 12 .. 12;
      CDEE           at 0 range 13 .. 13;
      AIE            at 0 range 14 .. 14;
      NIE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETH_DMAC3SFCSR_SIV_Field is Interfaces.Bit_Types.UInt12;
   subtype ETH_DMAC3SFCSR_RSN_Field is Interfaces.Bit_Types.UInt4;

   --  Channel 3 slot function control status register
   type ETH_DMAC3SFCSR_Register is record
      --  Enable Slot Comparison
      ESC            : Boolean := False;
      --  Advance Slot Check
      ASC            : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Slot Interval Value
      SIV            : ETH_DMAC3SFCSR_SIV_Field := 16#7C#;
      --  Read-only. Reference Slot Number
      RSN            : ETH_DMAC3SFCSR_RSN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC3SFCSR_Register use record
      ESC            at 0 range 0 .. 0;
      ASC            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SIV            at 0 range 4 .. 15;
      RSN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETH_DMAC3SR_TEB_Field is Interfaces.Bit_Types.UInt3;
   subtype ETH_DMAC3SR_REB_Field is Interfaces.Bit_Types.UInt3;

   --  Channel 3 status register
   type ETH_DMAC3SR_Register is record
      --  Transmit Interrupt
      TI             : Boolean := False;
      --  Transmit Process Stopped
      TPS            : Boolean := False;
      --  Transmit Buffer Unavailable
      TBU            : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receive Interrupt
      RI             : Boolean := False;
      --  Receive Buffer Unavailable
      RBU            : Boolean := False;
      --  Receive Process Stopped
      RPS            : Boolean := False;
      --  Receive Watchdog Timeout
      RWT            : Boolean := False;
      --  Early Transmit Interrupt
      ETI            : Boolean := False;
      --  Early Receive Interrupt
      ERI            : Boolean := False;
      --  Fatal Bus Error
      FBE            : Boolean := False;
      --  Context Descriptor Error
      CDE            : Boolean := False;
      --  Abnormal Interrupt Summary
      AIS            : Boolean := False;
      --  Normal Interrupt Summary
      NIS            : Boolean := False;
      --  Read-only. Tx DMA Error Bits
      TEB            : ETH_DMAC3SR_TEB_Field := 16#0#;
      --  Read-only. Rx DMA Error Bits
      REB            : ETH_DMAC3SR_REB_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETH_DMAC3SR_Register use record
      TI             at 0 range 0 .. 0;
      TPS            at 0 range 1 .. 1;
      TBU            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RI             at 0 range 6 .. 6;
      RBU            at 0 range 7 .. 7;
      RPS            at 0 range 8 .. 8;
      RWT            at 0 range 9 .. 9;
      ETI            at 0 range 10 .. 10;
      ERI            at 0 range 11 .. 11;
      FBE            at 0 range 12 .. 12;
      CDE            at 0 range 13 .. 13;
      AIS            at 0 range 14 .. 14;
      NIS            at 0 range 15 .. 15;
      TEB            at 0 range 16 .. 18;
      REB            at 0 range 19 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type ETH_Disc is
     (Default,
      Alternate1);

   --  ETH address block description
   type ETH_Peripheral
     (Discriminent : ETH_Disc := Default)
   is record
      --  Operating mode configuration register
      ETH_MACCR                               : aliased ETH_MACCR_Register;
      --  Extended operating mode configuration register
      ETH_MACECR                              : aliased ETH_MACECR_Register;
      --  Packet filtering control register
      ETH_MACPFR                              : aliased ETH_MACPFR_Register;
      --  Watchdog and jabber timeout register
      ETH_MACWJBTR                            : aliased ETH_MACWJBTR_Register;
      --  Hash Table 0 register
      ETH_MACHT0R                             : aliased Interfaces.Bit_Types.UInt32;
      --  Hash Table 1 register
      ETH_MACHT1R                             : aliased Interfaces.Bit_Types.UInt32;
      --  VLAN tag Control register
      ETH_MACVTCR                             : aliased ETH_MACVTCR_Register;
      --  VLAN tag data register
      ETH_MACVTDR                             : aliased ETH_MACVTDR_Register;
      --  VLAN Hash table register
      ETH_MACVHTR                             : aliased ETH_MACVHTR_Register;
      --  Inner VLAN inclusion register
      ETH_MACIVIR                             : aliased ETH_MACIVIR_Register;
      --  Tx Queue 0 flow control register
      ETH_MACQ0TXFCR                          : aliased ETH_MACQ0TXFCR_Register;
      --  Rx flow control register
      ETH_MACRXFCR                            : aliased ETH_MACRXFCR_Register;
      --  Rx Queue control register
      ETH_MACRXQCR                            : aliased ETH_MACRXQCR_Register;
      --  Rx queue control 0 register
      ETH_MACRXQC0R                           : aliased ETH_MACRXQC0R_Register;
      --  Rx queue control 1 register
      ETH_MACRXQC1R                           : aliased ETH_MACRXQC1R_Register;
      --  Rx queue control 2 register
      ETH_MACRXQC2R                           : aliased ETH_MACRXQC2R_Register;
      --  Interrupt status register
      ETH_MACISR                              : aliased ETH_MACISR_Register;
      --  Interrupt enable register
      ETH_MACIER                              : aliased ETH_MACIER_Register;
      --  Rx Tx status register
      ETH_MACRXTXSR                           : aliased ETH_MACRXTXSR_Register;
      --  PMT control status register
      ETH_MACPCSR                             : aliased ETH_MACPCSR_Register;
      --  Remote wake-up packet filter register
      ETH_MACRWKPFR                           : aliased Interfaces.Bit_Types.UInt32;
      --  LPI control and status register
      ETH_MACLCSR                             : aliased ETH_MACLCSR_Register;
      --  LPI timers control register
      ETH_MACLTCR                             : aliased ETH_MACLTCR_Register;
      --  LPI entry timer register
      ETH_MACLETR                             : aliased ETH_MACLETR_Register;
      --  One-microsecond-tick counter register
      ETH_MAC1USTCR                           : aliased ETH_MAC1USTCR_Register;
      --  PHYIF control status register
      ETH_MACPHYCSR                           : aliased ETH_MACPHYCSR_Register;
      --  Version register
      ETH_MACVR                               : aliased ETH_MACVR_Register;
      --  Debug register
      ETH_MACDR                               : aliased ETH_MACDR_Register;
      --  HW feature 0 register
      ETH_MACHWF0R                            : aliased ETH_MACHWF0R_Register;
      --  HW feature 1 register
      ETH_MACHWF1R                            : aliased ETH_MACHWF1R_Register;
      --  HW feature 2 register
      ETH_MACHWF2R                            : aliased ETH_MACHWF2R_Register;
      --  HW feature 3 register
      ETH_MACHWF3R                            : aliased ETH_MACHWF3R_Register;
      --  MDIO address register
      ETH_MACMDIOAR                           : aliased ETH_MACMDIOAR_Register;
      --  MDIO data register
      ETH_MACMDIODR                           : aliased ETH_MACMDIODR_Register;
      --  ARP address register
      ETH_MACARPAR                            : aliased Interfaces.Bit_Types.UInt32;
      --  CSR software control register
      ETH_MACCSRSWCR                          : aliased ETH_MACCSRSWCR_Register;
      --  FPE control and status register
      ETH_MACFPECSR                           : aliased ETH_MACFPECSR_Register;
      --  MAC presentation time register
      ETH_MACPRSTIMR                          : aliased Interfaces.Bit_Types.UInt32;
      --  MAC presentation time update register
      ETH_MACPRSTIMUR                         : aliased Interfaces.Bit_Types.UInt32;
      --  MAC Address 0 high register
      ETH_MACA0HR                             : aliased ETH_MACA0HR_Register;
      --  MAC Address 0 low register
      ETH_MACA0LR                             : aliased Interfaces.Bit_Types.UInt32;
      --  MAC Address 1 high register
      ETH_MACA1HR                             : aliased ETH_MACA1HR_Register;
      --  MAC Address 1 low register
      ETH_MACA1LR                             : aliased Interfaces.Bit_Types.UInt32;
      --  MAC Address 2 high register
      ETH_MACA2HR                             : aliased ETH_MACA2HR_Register;
      --  MAC Address 2 low register
      ETH_MACA2LR                             : aliased Interfaces.Bit_Types.UInt32;
      --  MAC Address 3 high register
      ETH_MACA3HR                             : aliased ETH_MACA3HR_Register;
      --  MAC Address 3 low register
      ETH_MACA3LR                             : aliased Interfaces.Bit_Types.UInt32;
      --  MMC control register
      ETH_MMC_CONTROL                         : aliased ETH_MMC_CONTROL_Register;
      --  MMC Rx interrupt register
      ETH_MMC_RX_INTERRUPT                    : aliased ETH_MMC_RX_INTERRUPT_Register;
      --  MMC Tx interrupt register
      ETH_MMC_TX_INTERRUPT                    : aliased ETH_MMC_TX_INTERRUPT_Register;
      --  MMC Rx interrupt mask register
      ETH_MMC_RX_INTERRUPT_MASK               : aliased ETH_MMC_RX_INTERRUPT_MASK_Register;
      --  MMC Tx interrupt mask register
      ETH_MMC_TX_INTERRUPT_MASK               : aliased ETH_MMC_TX_INTERRUPT_MASK_Register;
      --  Tx octet count good bad register
      ETH_TX_OCTET_COUNT_GOOD_BAD             : aliased Interfaces.Bit_Types.UInt32;
      --  Tx packet count good bad register
      ETH_TX_PACKET_COUNT_GOOD_BAD            : aliased Interfaces.Bit_Types.UInt32;
      --  Tx broadcast packets good register
      ETH_TX_BROADCAST_PACKETS_GOOD           : aliased Interfaces.Bit_Types.UInt32;
      --  Tx multicast packets good register
      ETH_TX_MULTICAST_PACKETS_GOOD           : aliased Interfaces.Bit_Types.UInt32;
      --  Tx 64 octets packets good bad register
      ETH_TX_64OCTETS_PACKETS_GOOD_BAD        : aliased Interfaces.Bit_Types.UInt32;
      --  Tx 65 to 127 octets packets good bad register
      ETH_TX_64TO127OCTETS_PACKETS_GOOD_BAD   : aliased Interfaces.Bit_Types.UInt32;
      --  Tx 128 to 255 octets packets good bad register
      ETH_TX_128TO255OCTETS_PACKETS_GOOD_BAD  : aliased Interfaces.Bit_Types.UInt32;
      --  Tx 256 to 511 octets packets good bad register
      ETH_TX_256TO511OCTETS_PACKETS_GOOD_BAD  : aliased Interfaces.Bit_Types.UInt32;
      --  Tx 512 to 1023 octets packets good bad register
      ETH_TX_512TO1023OCTETS_PACKETS_GOOD_BAD : aliased Interfaces.Bit_Types.UInt32;
      --  Tx 1024 to max octets packets good bad register
      ETH_TX_1024TOMAXOCTETS_PACKETS_GOOD_BAD : aliased Interfaces.Bit_Types.UInt32;
      --  Tx unicast packets good bad register
      ETH_TX_UNICAST_PACKETS_GOOD_BAD         : aliased Interfaces.Bit_Types.UInt32;
      --  Tx multicast packets good bad register
      ETH_TX_MULTICAST_PACKETS_GOOD_BAD       : aliased Interfaces.Bit_Types.UInt32;
      --  Tx broadcast packets good bad register
      ETH_TX_BROADCAST_PACKETS_GOOD_BAD       : aliased Interfaces.Bit_Types.UInt32;
      --  Tx underflow error packets register
      ETH_TX_UNDERFLOW_ERROR_PACKETS          : aliased Interfaces.Bit_Types.UInt32;
      --  Tx single collision good packets register
      ETH_TX_SINGLE_COLLISION_GOOD_PACKETS    : aliased Interfaces.Bit_Types.UInt32;
      --  Tx multiple collision good packets register
      ETH_TX_MULTIPLE_COLLISION_GOOD_PACKETS  : aliased Interfaces.Bit_Types.UInt32;
      --  Tx deferred packets register
      ETH_TX_DEFERRED_PACKETS                 : aliased Interfaces.Bit_Types.UInt32;
      --  Tx late collision packets register
      ETH_TX_LATE_COLLISION_PACKETS           : aliased Interfaces.Bit_Types.UInt32;
      --  Tx excessive collision packets register
      ETH_TX_EXCESSIVE_COLLISION_PACKETS      : aliased Interfaces.Bit_Types.UInt32;
      --  Tx carrier error packets register
      ETH_TX_CARRIER_ERROR_PACKETS            : aliased Interfaces.Bit_Types.UInt32;
      --  Tx octet count good register
      ETH_TX_OCTET_COUNT_GOOD                 : aliased Interfaces.Bit_Types.UInt32;
      --  Tx packet count good register
      ETH_TX_PACKET_COUNT_GOOD                : aliased Interfaces.Bit_Types.UInt32;
      --  Tx excessive deferral error register
      ETH_TX_EXCESSIVE_DEFERRAL_ERROR         : aliased Interfaces.Bit_Types.UInt32;
      --  Tx pause packets register
      ETH_TX_PAUSE_PACKETS                    : aliased Interfaces.Bit_Types.UInt32;
      --  Tx VLAN packets good register
      ETH_TX_VLAN_PACKETS_GOOD                : aliased Interfaces.Bit_Types.UInt32;
      --  Tx OSsize packets good register
      ETH_TX_OSIZE_PACKETS_GOOD               : aliased Interfaces.Bit_Types.UInt32;
      --  Rx packets count good bad register
      ETH_RX_PACKETS_COUNT_GOOD_BAD           : aliased Interfaces.Bit_Types.UInt32;
      --  Rx octet count good bad register
      ETH_RX_OCTET_COUNT_GOOD_BAD             : aliased Interfaces.Bit_Types.UInt32;
      --  Rx octet count good register
      ETH_RX_OCTET_COUNT_GOOD                 : aliased Interfaces.Bit_Types.UInt32;
      --  Rx broadcast packets good register
      ETH_RX_BROADCAST_PACKETS_GOOD           : aliased Interfaces.Bit_Types.UInt32;
      --  Rx multicast packets good register
      ETH_RX_MULTICAST_PACKETS_GOOD           : aliased Interfaces.Bit_Types.UInt32;
      --  Rx CRC error packets register
      ETH_RX_CRC_ERROR_PACKETS                : aliased Interfaces.Bit_Types.UInt32;
      --  Rx alignment error packets register
      ETH_RX_ALIGNMENT_ERROR_PACKETS          : aliased Interfaces.Bit_Types.UInt32;
      --  Rx runt error packets register
      ETH_RX_RUNT_ERROR_PACKETS               : aliased Interfaces.Bit_Types.UInt32;
      --  Rx jabber error packets register
      ETH_RX_JABBER_ERROR_PACKETS             : aliased Interfaces.Bit_Types.UInt32;
      --  Rx undersize packets good register
      ETH_RX_UNDERSIZE_PACKETS_GOOD           : aliased Interfaces.Bit_Types.UInt32;
      --  Rx oversize packets good register
      ETH_RX_OVERSIZE_PACKETS_GOOD            : aliased Interfaces.Bit_Types.UInt32;
      --  Rx 64 octets packets good bad register
      ETH_RX_64OCTETS_PACKETS_GOOD_BAD        : aliased Interfaces.Bit_Types.UInt32;
      --  Rx 65 to 127 octets packets good bad register
      ETH_RX_65TO127OCTETS_PACKETS_GOOD_BAD   : aliased Interfaces.Bit_Types.UInt32;
      --  Rx 128 to 255 octets packets good bad register
      ETH_RX_128TO255OCTETS_PACKETS_GOOD_BAD  : aliased Interfaces.Bit_Types.UInt32;
      --  Rx 256 to 511 octets packets good bad register
      ETH_RX_256TO511OCTETS_PACKETS_GOOD_BAD  : aliased Interfaces.Bit_Types.UInt32;
      --  Rx 512 to 1023 octets packets good bad register
      ETH_RX_512TO1023OCTETS_PACKETS_GOOD_BAD : aliased Interfaces.Bit_Types.UInt32;
      --  Rx 1024 to max octets packets good bad register
      ETH_RX_1024TOMAXOCTETS_PACKETS_GOOD_BAD : aliased Interfaces.Bit_Types.UInt32;
      --  Rx unicast packets good register
      ETH_RX_UNICAST_PACKETS_GOOD             : aliased Interfaces.Bit_Types.UInt32;
      --  Rx length error packets register
      ETH_RX_LENGTH_ERROR_PACKETS             : aliased Interfaces.Bit_Types.UInt32;
      --  Rx out of range type packets register
      ETH_RX_OUT_OF_RANGE_PACKETS             : aliased Interfaces.Bit_Types.UInt32;
      --  Rx pause packets register
      ETH_RX_PAUSE_PACKETS                    : aliased Interfaces.Bit_Types.UInt32;
      --  Rx FIFO overflow packets register
      ETH_RX_FIFO_OVERFLOW_PACKETS            : aliased Interfaces.Bit_Types.UInt32;
      --  Rx VLAN packets good bad register
      ETH_RX_VLAN_PACKETS_GOOD_BAD            : aliased Interfaces.Bit_Types.UInt32;
      --  Rx watchdog error packets register
      ETH_RX_WATCHDOG_ERROR_PACKETS           : aliased Interfaces.Bit_Types.UInt32;
      --  Rx receive error register
      ETH_RX_RECEIVE_ERROR                    : aliased Interfaces.Bit_Types.UInt32;
      --  Rx control packets good register
      ETH_RX_CONTROL_PACKETS_GOOD             : aliased Interfaces.Bit_Types.UInt32;
      --  Tx LPI microsecond timer register
      ETH_TX_LPI_USEC_CNTR                    : aliased Interfaces.Bit_Types.UInt32;
      --  Tx LPI transition counter register
      ETH_TX_LPI_TRAN_CNTR                    : aliased Interfaces.Bit_Types.UInt32;
      --  Rx LPI microsecond counter register
      ETH_RX_LPI_USEC_CNTR                    : aliased Interfaces.Bit_Types.UInt32;
      --  Rx LPI transition counter register
      ETH_RX_LPI_TRAN_CNTR                    : aliased Interfaces.Bit_Types.UInt32;
      --  MMC FPE Tx interrupt status register
      ETH_MMC_FPE_TX_ISR                      : aliased ETH_MMC_FPE_TX_ISR_Register;
      --  MMC FPE Tx interrupt mask register
      ETH_MMC_FPE_TX_IMR                      : aliased ETH_MMC_FPE_TX_IMR_Register;
      --  MMC FPE Tx fragment counter register
      ETH_MMC_FPE_TX_FCR                      : aliased Interfaces.Bit_Types.UInt32;
      --  MMC Tx hold request counter register
      ETH_MMC_TX_HRCR                         : aliased Interfaces.Bit_Types.UInt32;
      --  MMC FPE Rx interrupt status register
      ETH_MMC_FPE_RX_ISR                      : aliased ETH_MMC_FPE_RX_ISR_Register;
      --  MMC FPE Rx interrupt mask register
      ETH_MMC_FPE_RX_IMR                      : aliased ETH_MMC_FPE_RX_IMR_Register;
      --  MMC Rx packet assembly error register
      ETH_RX_PACKET_ASM_ERR                   : aliased Interfaces.Bit_Types.UInt32;
      --  MMC Rx packet SMD error register
      ETH_RX_PACKET_SMD_ERR                   : aliased Interfaces.Bit_Types.UInt32;
      --  MMC Rx packet assembly OK register
      ETH_RX_PACKET_ASM_OKR                   : aliased Interfaces.Bit_Types.UInt32;
      --  MMC Rx FPE fragments counter register
      ETH_RX_FPE_FRAG_CR                      : aliased Interfaces.Bit_Types.UInt32;
      --  L3 and L4 control 0 register
      ETH_MACL3L4C0R                          : aliased ETH_MACL3L4C0R_Register;
      --  Layer4 Address filter 0 register
      ETH_MACL4A0R                            : aliased ETH_MACL4A0R_Register;
      --  Layer3 Address 0 filter 0 register
      ETH_MACL3A00R                           : aliased Interfaces.Bit_Types.UInt32;
      --  Layer3 Address 1 filter 0 register
      ETH_MACL3A10R                           : aliased Interfaces.Bit_Types.UInt32;
      --  Layer3 Address 2 filter 0 register
      ETH_MACL3A20R                           : aliased Interfaces.Bit_Types.UInt32;
      --  Layer3 Address 3 filter 0 register
      ETH_MACL3A30R                           : aliased Interfaces.Bit_Types.UInt32;
      --  L3 and L4 control 1 register
      ETH_MACL3L4C1R                          : aliased ETH_MACL3L4C1R_Register;
      --  Layer 4 address filter 1 register
      ETH_MACL4A1R                            : aliased ETH_MACL4A1R_Register;
      --  Layer3 address 0 filter 1 Register
      ETH_MACL3A01R                           : aliased Interfaces.Bit_Types.UInt32;
      --  Layer3 address 1 filter 1 register
      ETH_MACL3A11R                           : aliased Interfaces.Bit_Types.UInt32;
      --  Layer3 address 2 filter 1 Register
      ETH_MACL3A21R                           : aliased Interfaces.Bit_Types.UInt32;
      --  Layer3 address 3 filter 1 register
      ETH_MACL3A31R                           : aliased Interfaces.Bit_Types.UInt32;
      --  MAC Indirect Access Control register
      ETH_MAC_IACR                            : aliased ETH_MAC_IACR_Register;
      --  MAC type-based Rx Queue mapping register
      ETH_MAC_TMRQR                           : aliased ETH_MAC_TMRQR_Register;
      --  Timestamp control Register
      ETH_MACTSCR                             : aliased ETH_MACTSCR_Register;
      --  Subsecond increment register
      ETH_MACSSIR                             : aliased ETH_MACSSIR_Register;
      --  System time seconds register
      ETH_MACSTSR                             : aliased Interfaces.Bit_Types.UInt32;
      --  System time nanoseconds register
      ETH_MACSTNR                             : aliased ETH_MACSTNR_Register;
      --  System time seconds update register
      ETH_MACSTSUR                            : aliased Interfaces.Bit_Types.UInt32;
      --  System time nanoseconds update register
      ETH_MACSTNUR                            : aliased ETH_MACSTNUR_Register;
      --  Timestamp addend register
      ETH_MACTSAR                             : aliased Interfaces.Bit_Types.UInt32;
      --  Timestamp status register
      ETH_MACTSSR                             : aliased ETH_MACTSSR_Register;
      --  Rx domain time increment register
      ETH_MACRXDTI                            : aliased ETH_MACRXDTI_Register;
      --  Tx domain time increment register
      ETH_MACTXDTI                            : aliased ETH_MACTXDTI_Register;
      --  Tx timestamp status nanoseconds register
      ETH_MACTXTSSNR                          : aliased ETH_MACTXTSSNR_Register;
      --  Tx timestamp status seconds register
      ETH_MACTXTSSSR                          : aliased Interfaces.Bit_Types.UInt32;
      --  Auxiliary control register
      ETH_MACACR                              : aliased ETH_MACACR_Register;
      --  Auxiliary timestamp nanoseconds register
      ETH_MACATSNR                            : aliased ETH_MACATSNR_Register;
      --  Auxiliary timestamp seconds register
      ETH_MACATSSR                            : aliased Interfaces.Bit_Types.UInt32;
      --  Timestamp Ingress asymmetric correction register
      ETH_MACTSIACR                           : aliased Interfaces.Bit_Types.UInt32;
      --  Timestamp Egress asymmetric correction register
      ETH_MACTSEACR                           : aliased Interfaces.Bit_Types.UInt32;
      --  Timestamp Ingress correction nanosecond register
      ETH_MACTSICNR                           : aliased Interfaces.Bit_Types.UInt32;
      --  Timestamp Egress correction nanosecond register
      ETH_MACTSECNR                           : aliased Interfaces.Bit_Types.UInt32;
      --  Timestamp Ingress Latency register
      ETH_MACTSILR                            : aliased ETH_MACTSILR_Register;
      --  Timestamp Egress Latency register
      ETH_MACTSELR                            : aliased ETH_MACTSELR_Register;
      --  PPS 0 target time seconds register
      ETH_MACPPSTTS0R                         : aliased Interfaces.Bit_Types.UInt32;
      --  PPS 0 target time nanoseconds register
      ETH_MACPPSTTN0R                         : aliased ETH_MACPPSTTN0R_Register;
      --  PPS 0 interval register
      ETH_MACPPSI0R                           : aliased Interfaces.Bit_Types.UInt32;
      --  PPS 0 width register
      ETH_MACPPSW0R                           : aliased Interfaces.Bit_Types.UInt32;
      --  PPS 1 target time seconds register
      ETH_MACPPSTTS1R                         : aliased Interfaces.Bit_Types.UInt32;
      --  PPS 1 target time nanoseconds register
      ETH_MACPPSTTN1R                         : aliased ETH_MACPPSTTN1R_Register;
      --  PPS 1 interval register
      ETH_MACPPSI1R                           : aliased Interfaces.Bit_Types.UInt32;
      --  PPS 1 width register
      ETH_MACPPSW1R                           : aliased Interfaces.Bit_Types.UInt32;
      --  PTP Offload control register
      ETH_MACPOCR                             : aliased ETH_MACPOCR_Register;
      --  PTP Source Port Identity 0 Register
      ETH_MACSPI0R                            : aliased Interfaces.Bit_Types.UInt32;
      --  PTP Source port identity 1 register
      ETH_MACSPI1R                            : aliased Interfaces.Bit_Types.UInt32;
      --  PTP Source port identity 2 register
      ETH_MACSPI2R                            : aliased ETH_MACSPI2R_Register;
      --  Log message interval register
      ETH_MACLMIR                             : aliased ETH_MACLMIR_Register;
      --  Operating mode register
      ETH_MTLOMR                              : aliased ETH_MTLOMR_Register;
      --  Interrupt status register
      ETH_MTLISR                              : aliased ETH_MTLISR_Register;
      --  Rx Queue and DMA Channel Mapping register
      ETH_MTLRXQDMAMR                         : aliased ETH_MTLRXQDMAMR_Register;
      --  TBS control register
      ETH_MTLTBSCR                            : aliased ETH_MTLTBSCR_Register;
      --  EST Control register
      ETH_MTLESTCR                            : aliased ETH_MTLESTCR_Register;
      --  EST Extended Control register
      ETH_MTLESTECR                           : aliased ETH_MTLESTECR_Register;
      --  EST Status register
      ETH_MTLESTSR                            : aliased ETH_MTLESTSR_Register;
      --  EST Schedule Error register
      ETH_MTLESTSCHER                         : aliased ETH_MTLESTSCHER_Register;
      --  EST Frame size Error register
      ETH_MTLESTFSER                          : aliased ETH_MTLESTFSER_Register;
      --  EST Frame size Capture register
      ETH_MTLESTFSCR                          : aliased ETH_MTLESTFSCR_Register;
      --  EST Interrupt Enable register
      ETH_MTLESTIER                           : aliased ETH_MTLESTIER_Register;
      --  EST Gate Control List register
      ETH_MTLESTGCLCR                         : aliased ETH_MTLESTGCLCR_Register;
      --  EST Gate Control List Data register
      ETH_MTLESTGCLDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  FPE Frame Preemption Control Status register
      ETH_MTLFPECSR                           : aliased ETH_MTLFPECSR_Register;
      --  FPE Frame Preemption Advance register
      ETH_MTLFPEAR                            : aliased ETH_MTLFPEAR_Register;
      --  T0 queue 0 operating mode register
      ETH_MTLTXQ0OMR                          : aliased ETH_MTLTXQ0OMR_Register;
      --  T0 queue 0 underflow register
      ETH_MTLTXQ0UR                           : aliased ETH_MTLTXQ0UR_Register;
      --  T0 queue 0 debug register
      ETH_MTLTXQ0DR                           : aliased ETH_MTLTXQ0DR_Register;
      --  T0 queue 0 ETS status register
      ETH_MTLTXQ0ESR                          : aliased ETH_MTLTXQ0ESR_Register;
      --  T0 queue 0 quantum weight register
      ETH_MTLTXQ0QWR                          : aliased ETH_MTLTXQ0QWR_Register;
      --  Queue 0 interrupt control status register
      ETH_MTLQ0ICSR                           : aliased ETH_MTLQ0ICSR_Register;
      --  R0 queue 0 operating mode register
      ETH_MTLRXQ0OMR                          : aliased ETH_MTLRXQ0OMR_Register;
      --  R0 queue 0 missed packet and overflow counter register
      ETH_MTLRXQ0MPOCR                        : aliased ETH_MTLRXQ0MPOCR_Register;
      --  R0 queue 0 debug register
      ETH_MTLRXQ0DR                           : aliased ETH_MTLRXQ0DR_Register;
      --  R0 queue 0 control register
      ETH_MTLRXQ0CR                           : aliased ETH_MTLRXQ0CR_Register;
      --  T1 queue 1 operating mode register
      ETH_MTLTXQ1OMR                          : aliased ETH_MTLTXQ1OMR_Register;
      --  T1 queue 1 underflow register
      ETH_MTLTXQ1UR                           : aliased ETH_MTLTXQ1UR_Register;
      --  T1 queue 1 debug register
      ETH_MTLTXQ1DR                           : aliased ETH_MTLTXQ1DR_Register;
      --  T1 queue 1 ETS control register
      ETH_MTLTXQ1ECR                          : aliased ETH_MTLTXQ1ECR_Register;
      --  T1 queue 1 ETS status register
      ETH_MTLTXQ1ESR                          : aliased ETH_MTLTXQ1ESR_Register;
      --  T1 queue 1 quantum weight register
      ETH_MTLTXQ1QWR                          : aliased ETH_MTLTXQ1QWR_Register;
      --  T1 queue 1 send slope credit register
      ETH_MTLTXQ1SSCR                         : aliased ETH_MTLTXQ1SSCR_Register;
      --  T1 Queue 1 hiCredit register
      ETH_MTLTXQ1HCR                          : aliased ETH_MTLTXQ1HCR_Register;
      --  T1 queue 1 loCredit register
      ETH_MTLTXQ1LCR                          : aliased ETH_MTLTXQ1LCR_Register;
      --  Queue 1 interrupt control status register
      ETH_MTLQ1ICSR                           : aliased ETH_MTLQ1ICSR_Register;
      --  R1 queue 1 operating mode register
      ETH_MTLRXQ1OMR                          : aliased ETH_MTLRXQ1OMR_Register;
      --  R1 queue 1 missed packet and overflow counter register
      ETH_MTLRXQ1MPOCR                        : aliased ETH_MTLRXQ1MPOCR_Register;
      --  R1 queue 1 debug register
      ETH_MTLRXQ1DR                           : aliased ETH_MTLRXQ1DR_Register;
      --  R1 queue 1 control register
      ETH_MTLRXQ1CR                           : aliased ETH_MTLRXQ1CR_Register;
      --  T2 queue 2 operating mode register
      ETH_MTLTXQ2OMR                          : aliased ETH_MTLTXQ2OMR_Register;
      --  T2 queue 2 underflow register
      ETH_MTLTXQ2UR                           : aliased ETH_MTLTXQ2UR_Register;
      --  T2 queue 2 debug register
      ETH_MTLTXQ2DR                           : aliased ETH_MTLTXQ2DR_Register;
      --  T2 queue 2 ETS control register
      ETH_MTLTXQ2ECR                          : aliased ETH_MTLTXQ2ECR_Register;
      --  T2 queue 2 ETS status register
      ETH_MTLTXQ2ESR                          : aliased ETH_MTLTXQ2ESR_Register;
      --  T2 queue 2 quantum weight register
      ETH_MTLTXQ2QWR                          : aliased ETH_MTLTXQ2QWR_Register;
      --  T2 queue 2 send slope credit register
      ETH_MTLTXQ2SSCR                         : aliased ETH_MTLTXQ2SSCR_Register;
      --  T2 Queue 2 hiCredit register
      ETH_MTLTXQ2HCR                          : aliased ETH_MTLTXQ2HCR_Register;
      --  T2 queue 2 loCredit register
      ETH_MTLTXQ2LCR                          : aliased ETH_MTLTXQ2LCR_Register;
      --  Queue 2 interrupt control status register
      ETH_MTLQ2ICSR                           : aliased ETH_MTLQ2ICSR_Register;
      --  T3 queue 3 operating mode register
      ETH_MTLTXQ3OMR                          : aliased ETH_MTLTXQ3OMR_Register;
      --  T3 queue 3 underflow register
      ETH_MTLTXQ3UR                           : aliased ETH_MTLTXQ3UR_Register;
      --  T3 queue 3 debug register
      ETH_MTLTXQ3DR                           : aliased ETH_MTLTXQ3DR_Register;
      --  T3 queue 3 ETS control register
      ETH_MTLTXQ3ECR                          : aliased ETH_MTLTXQ3ECR_Register;
      --  T3 queue 3 ETS status register
      ETH_MTLTXQ3ESR                          : aliased ETH_MTLTXQ3ESR_Register;
      --  T3 queue 3 quantum weight register
      ETH_MTLTXQ3QWR                          : aliased ETH_MTLTXQ3QWR_Register;
      --  T3 queue 3 send slope credit register
      ETH_MTLTXQ3SSCR                         : aliased ETH_MTLTXQ3SSCR_Register;
      --  T3 Queue 3 hiCredit register
      ETH_MTLTXQ3HCR                          : aliased ETH_MTLTXQ3HCR_Register;
      --  T3 queue 3 loCredit register
      ETH_MTLTXQ3LCR                          : aliased ETH_MTLTXQ3LCR_Register;
      --  Queue 3 interrupt control status register
      ETH_MTLQ3ICSR                           : aliased ETH_MTLQ3ICSR_Register;
      --  DMA mode register
      ETH_DMAMR                               : aliased ETH_DMAMR_Register;
      --  System bus mode register
      ETH_DMASBMR                             : aliased ETH_DMASBMR_Register;
      --  Interrupt status register
      ETH_DMAISR                              : aliased ETH_DMAISR_Register;
      --  Debug status 1 register
      ETH_DMADS1R                             : aliased ETH_DMADS1R_Register;
      --  Debug status 2 register
      ETH_DMADS2R                             : aliased ETH_DMADS2R_Register;
      --  AXI4 transmit channel ACE control register
      ETH_DMAA4TXACR                          : aliased ETH_DMAA4TXACR_Register;
      --  AXI4 receive channel ACE control register
      ETH_DMAA4RXACR                          : aliased ETH_DMAA4RXACR_Register;
      --  AXI4 descriptor ACE control register
      ETH_DMAA4DACR                           : aliased ETH_DMAA4DACR_Register;
      --  AXI4 LPI Entry Interval register
      ETH_DMALPIEI                            : aliased ETH_DMALPIEI_Register;
      --  DMA TBS control register 1
      ETH_DMATBSCTRL1R                        : aliased ETH_DMATBSCTRL1R_Register;
      --  DMA TBS control register 2
      ETH_DMATBSCTRL2R                        : aliased ETH_DMATBSCTRL2R_Register;
      --  DMA TBS control register 3
      ETH_DMATBSCTRL3R                        : aliased ETH_DMATBSCTRL3R_Register;
      --  Channel 0 control register
      ETH_DMAC0CR                             : aliased ETH_DMAC0CR_Register;
      --  Channel 0 transmit control register
      ETH_DMAC0TXCR                           : aliased ETH_DMAC0TXCR_Register;
      --  Channel 0 receive control register
      ETH_DMAC0RXCR                           : aliased ETH_DMAC0RXCR_Register;
      --  Channel 0 T0 descriptor list address register
      ETH_DMAC0TXDLAR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 R0 descriptor list address register
      ETH_DMAC0RXDLAR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 T0 descriptor tail pointer register
      ETH_DMAC0TXDTPR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 R0 descriptor tail pointer register
      ETH_DMAC0RXDTPR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 T0 descriptor ring length register
      ETH_DMAC0TXRLR                          : aliased ETH_DMAC0TXRLR_Register;
      --  Channel 0 R0 descriptor ring length register
      ETH_DMAC0RXRLR                          : aliased ETH_DMAC0RXRLR_Register;
      --  Channel 0 interrupt enable register
      ETH_DMAC0IER                            : aliased ETH_DMAC0IER_Register;
      --  Channel 0 R0 interrupt watchdog timer register
      ETH_DMAC0RXIWTR                         : aliased ETH_DMAC0RXIWTR_Register;
      --  Channel 0 slot function control status register
      ETH_DMAC0SFCSR                          : aliased ETH_DMAC0SFCSR_Register;
      --  Channel 0 current application transmit descriptor register
      ETH_DMAC0CATXDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 current application receive descriptor register
      ETH_DMAC0CARXDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 current application transmit buffer register
      ETH_DMAC0CATXBR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 current application receive buffer register
      ETH_DMAC0CARXBR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 0 status register
      ETH_DMAC0SR                             : aliased ETH_DMAC0SR_Register;
      --  Channel 0 missed frame count register
      ETH_DMAC0MFCR                           : aliased ETH_DMAC0MFCR_Register;
      --  Channel 1 control register
      ETH_DMAC1CR                             : aliased ETH_DMAC1CR_Register;
      --  Channel 1 transmit control register
      ETH_DMAC1TXCR                           : aliased ETH_DMAC1TXCR_Register;
      --  Channel 1 receive control register
      ETH_DMAC1RXCR                           : aliased ETH_DMAC1RXCR_Register;
      --  Channel 1 T1 descriptor list address register
      ETH_DMAC1TXDLAR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 R1 descriptor list address register
      ETH_DMAC1RXDLAR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 T1 descriptor tail pointer register
      ETH_DMAC1TXDTPR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 R1 descriptor tail pointer register
      ETH_DMAC1RXDTPR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 T1 descriptor ring length register
      ETH_DMAC1TXRLR                          : aliased ETH_DMAC1TXRLR_Register;
      --  Channel 1 R1 descriptor ring length register
      ETH_DMAC1RXRLR                          : aliased ETH_DMAC1RXRLR_Register;
      --  Channel 1 interrupt enable register
      ETH_DMAC1IER                            : aliased ETH_DMAC1IER_Register;
      --  Channel 1 R1 interrupt watchdog timer register
      ETH_DMAC1RXIWTR                         : aliased ETH_DMAC1RXIWTR_Register;
      --  Channel 1 slot function control status register
      ETH_DMAC1SFCSR                          : aliased ETH_DMAC1SFCSR_Register;
      --  Channel 1 current application transmit descriptor register
      ETH_DMAC1CATXDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 current application receive descriptor register
      ETH_DMAC1CARXDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 current application transmit buffer register
      ETH_DMAC1CATXBR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 current application receive buffer register
      ETH_DMAC1CARXBR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 1 status register
      ETH_DMAC1SR                             : aliased ETH_DMAC1SR_Register;
      --  Channel 1 missed frame count register
      ETH_DMAC1MFCR                           : aliased ETH_DMAC1MFCR_Register;
      --  Channel 2 control register
      ETH_DMAC2CR                             : aliased ETH_DMAC2CR_Register;
      --  Channel 2 transmit control register
      ETH_DMAC2TXCR                           : aliased ETH_DMAC2TXCR_Register;
      --  Channel 2 T2 descriptor list address register
      ETH_DMAC2TXDLAR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 2 T2 descriptor tail pointer register
      ETH_DMAC2TXDTPR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 2 T2 descriptor ring length register
      ETH_DMAC2TXRLR                          : aliased ETH_DMAC2TXRLR_Register;
      --  Channel 2 interrupt enable register
      ETH_DMAC2IER                            : aliased ETH_DMAC2IER_Register;
      --  Channel 2 slot function control status register
      ETH_DMAC2SFCSR                          : aliased ETH_DMAC2SFCSR_Register;
      --  Channel 2 current application transmit descriptor register
      ETH_DMAC2CATXDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 2 current application transmit buffer register
      ETH_DMAC2CATXBR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 2 status register
      ETH_DMAC2SR                             : aliased ETH_DMAC2SR_Register;
      --  Channel 3 control register
      ETH_DMAC3CR                             : aliased ETH_DMAC3CR_Register;
      --  Channel 3 transmit control register
      ETH_DMAC3TXCR                           : aliased ETH_DMAC3TXCR_Register;
      --  Channel 3 T3 descriptor list address register
      ETH_DMAC3TXDLAR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 3 T3 descriptor tail pointer register
      ETH_DMAC3TXDTPR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 3 T3 descriptor ring length register
      ETH_DMAC3TXRLR                          : aliased ETH_DMAC3TXRLR_Register;
      --  Channel 3 interrupt enable register
      ETH_DMAC3IER                            : aliased ETH_DMAC3IER_Register;
      --  Channel 3 slot function control status register
      ETH_DMAC3SFCSR                          : aliased ETH_DMAC3SFCSR_Register;
      --  Channel 3 current application transmit descriptor register
      ETH_DMAC3CATXDR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 3 current application transmit buffer register
      ETH_DMAC3CATXBR                         : aliased Interfaces.Bit_Types.UInt32;
      --  Channel 3 status register
      ETH_DMAC3SR                             : aliased ETH_DMAC3SR_Register;
      case Discriminent is
         when Default =>
            --  VLAN inclusion register
            ETH_MACVIR : aliased ETH_MACVIR_Register;
            --  PPS control register
            ETH_MACPPSCR : aliased ETH_MACPPSCR_Register;
            --  DMA TBS control register 0
            ETH_DMATBSCTRL0R : aliased ETH_DMATBSCTRL0R_Register;
         when Alternate1 =>
            --  VLAN inclusion register
            ETH_MACVIR_ALTERNATE1 : aliased ETH_MACVIR_ALTERNATE1_Register;
            --  PPS control register
            ETH_MACPPSCR_ALTERNATE1 : aliased ETH_MACPPSCR_ALTERNATE1_Register;
            --  DMA TBS control register 0
            ETH_DMATBSCTRL0R_ALTERNATE1 : aliased ETH_DMATBSCTRL0R_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for ETH_Peripheral use record
      ETH_MACCR                               at 16#0# range 0 .. 31;
      ETH_MACECR                              at 16#4# range 0 .. 31;
      ETH_MACPFR                              at 16#8# range 0 .. 31;
      ETH_MACWJBTR                            at 16#C# range 0 .. 31;
      ETH_MACHT0R                             at 16#10# range 0 .. 31;
      ETH_MACHT1R                             at 16#14# range 0 .. 31;
      ETH_MACVTCR                             at 16#50# range 0 .. 31;
      ETH_MACVTDR                             at 16#54# range 0 .. 31;
      ETH_MACVHTR                             at 16#58# range 0 .. 31;
      ETH_MACIVIR                             at 16#64# range 0 .. 31;
      ETH_MACQ0TXFCR                          at 16#70# range 0 .. 31;
      ETH_MACRXFCR                            at 16#90# range 0 .. 31;
      ETH_MACRXQCR                            at 16#94# range 0 .. 31;
      ETH_MACRXQC0R                           at 16#A0# range 0 .. 31;
      ETH_MACRXQC1R                           at 16#A4# range 0 .. 31;
      ETH_MACRXQC2R                           at 16#A8# range 0 .. 31;
      ETH_MACISR                              at 16#B0# range 0 .. 31;
      ETH_MACIER                              at 16#B4# range 0 .. 31;
      ETH_MACRXTXSR                           at 16#B8# range 0 .. 31;
      ETH_MACPCSR                             at 16#C0# range 0 .. 31;
      ETH_MACRWKPFR                           at 16#C4# range 0 .. 31;
      ETH_MACLCSR                             at 16#D0# range 0 .. 31;
      ETH_MACLTCR                             at 16#D4# range 0 .. 31;
      ETH_MACLETR                             at 16#D8# range 0 .. 31;
      ETH_MAC1USTCR                           at 16#DC# range 0 .. 31;
      ETH_MACPHYCSR                           at 16#F8# range 0 .. 31;
      ETH_MACVR                               at 16#110# range 0 .. 31;
      ETH_MACDR                               at 16#114# range 0 .. 31;
      ETH_MACHWF0R                            at 16#11C# range 0 .. 31;
      ETH_MACHWF1R                            at 16#120# range 0 .. 31;
      ETH_MACHWF2R                            at 16#124# range 0 .. 31;
      ETH_MACHWF3R                            at 16#128# range 0 .. 31;
      ETH_MACMDIOAR                           at 16#200# range 0 .. 31;
      ETH_MACMDIODR                           at 16#204# range 0 .. 31;
      ETH_MACARPAR                            at 16#210# range 0 .. 31;
      ETH_MACCSRSWCR                          at 16#230# range 0 .. 31;
      ETH_MACFPECSR                           at 16#234# range 0 .. 31;
      ETH_MACPRSTIMR                          at 16#240# range 0 .. 31;
      ETH_MACPRSTIMUR                         at 16#244# range 0 .. 31;
      ETH_MACA0HR                             at 16#300# range 0 .. 31;
      ETH_MACA0LR                             at 16#304# range 0 .. 31;
      ETH_MACA1HR                             at 16#308# range 0 .. 31;
      ETH_MACA1LR                             at 16#30C# range 0 .. 31;
      ETH_MACA2HR                             at 16#310# range 0 .. 31;
      ETH_MACA2LR                             at 16#314# range 0 .. 31;
      ETH_MACA3HR                             at 16#318# range 0 .. 31;
      ETH_MACA3LR                             at 16#31C# range 0 .. 31;
      ETH_MMC_CONTROL                         at 16#700# range 0 .. 31;
      ETH_MMC_RX_INTERRUPT                    at 16#704# range 0 .. 31;
      ETH_MMC_TX_INTERRUPT                    at 16#708# range 0 .. 31;
      ETH_MMC_RX_INTERRUPT_MASK               at 16#70C# range 0 .. 31;
      ETH_MMC_TX_INTERRUPT_MASK               at 16#710# range 0 .. 31;
      ETH_TX_OCTET_COUNT_GOOD_BAD             at 16#714# range 0 .. 31;
      ETH_TX_PACKET_COUNT_GOOD_BAD            at 16#718# range 0 .. 31;
      ETH_TX_BROADCAST_PACKETS_GOOD           at 16#71C# range 0 .. 31;
      ETH_TX_MULTICAST_PACKETS_GOOD           at 16#720# range 0 .. 31;
      ETH_TX_64OCTETS_PACKETS_GOOD_BAD        at 16#724# range 0 .. 31;
      ETH_TX_64TO127OCTETS_PACKETS_GOOD_BAD   at 16#728# range 0 .. 31;
      ETH_TX_128TO255OCTETS_PACKETS_GOOD_BAD  at 16#72C# range 0 .. 31;
      ETH_TX_256TO511OCTETS_PACKETS_GOOD_BAD  at 16#730# range 0 .. 31;
      ETH_TX_512TO1023OCTETS_PACKETS_GOOD_BAD at 16#734# range 0 .. 31;
      ETH_TX_1024TOMAXOCTETS_PACKETS_GOOD_BAD at 16#738# range 0 .. 31;
      ETH_TX_UNICAST_PACKETS_GOOD_BAD         at 16#73C# range 0 .. 31;
      ETH_TX_MULTICAST_PACKETS_GOOD_BAD       at 16#740# range 0 .. 31;
      ETH_TX_BROADCAST_PACKETS_GOOD_BAD       at 16#744# range 0 .. 31;
      ETH_TX_UNDERFLOW_ERROR_PACKETS          at 16#748# range 0 .. 31;
      ETH_TX_SINGLE_COLLISION_GOOD_PACKETS    at 16#74C# range 0 .. 31;
      ETH_TX_MULTIPLE_COLLISION_GOOD_PACKETS  at 16#750# range 0 .. 31;
      ETH_TX_DEFERRED_PACKETS                 at 16#754# range 0 .. 31;
      ETH_TX_LATE_COLLISION_PACKETS           at 16#758# range 0 .. 31;
      ETH_TX_EXCESSIVE_COLLISION_PACKETS      at 16#75C# range 0 .. 31;
      ETH_TX_CARRIER_ERROR_PACKETS            at 16#760# range 0 .. 31;
      ETH_TX_OCTET_COUNT_GOOD                 at 16#764# range 0 .. 31;
      ETH_TX_PACKET_COUNT_GOOD                at 16#768# range 0 .. 31;
      ETH_TX_EXCESSIVE_DEFERRAL_ERROR         at 16#76C# range 0 .. 31;
      ETH_TX_PAUSE_PACKETS                    at 16#770# range 0 .. 31;
      ETH_TX_VLAN_PACKETS_GOOD                at 16#774# range 0 .. 31;
      ETH_TX_OSIZE_PACKETS_GOOD               at 16#778# range 0 .. 31;
      ETH_RX_PACKETS_COUNT_GOOD_BAD           at 16#780# range 0 .. 31;
      ETH_RX_OCTET_COUNT_GOOD_BAD             at 16#784# range 0 .. 31;
      ETH_RX_OCTET_COUNT_GOOD                 at 16#788# range 0 .. 31;
      ETH_RX_BROADCAST_PACKETS_GOOD           at 16#78C# range 0 .. 31;
      ETH_RX_MULTICAST_PACKETS_GOOD           at 16#790# range 0 .. 31;
      ETH_RX_CRC_ERROR_PACKETS                at 16#794# range 0 .. 31;
      ETH_RX_ALIGNMENT_ERROR_PACKETS          at 16#798# range 0 .. 31;
      ETH_RX_RUNT_ERROR_PACKETS               at 16#79C# range 0 .. 31;
      ETH_RX_JABBER_ERROR_PACKETS             at 16#7A0# range 0 .. 31;
      ETH_RX_UNDERSIZE_PACKETS_GOOD           at 16#7A4# range 0 .. 31;
      ETH_RX_OVERSIZE_PACKETS_GOOD            at 16#7A8# range 0 .. 31;
      ETH_RX_64OCTETS_PACKETS_GOOD_BAD        at 16#7AC# range 0 .. 31;
      ETH_RX_65TO127OCTETS_PACKETS_GOOD_BAD   at 16#7B0# range 0 .. 31;
      ETH_RX_128TO255OCTETS_PACKETS_GOOD_BAD  at 16#7B4# range 0 .. 31;
      ETH_RX_256TO511OCTETS_PACKETS_GOOD_BAD  at 16#7B8# range 0 .. 31;
      ETH_RX_512TO1023OCTETS_PACKETS_GOOD_BAD at 16#7BC# range 0 .. 31;
      ETH_RX_1024TOMAXOCTETS_PACKETS_GOOD_BAD at 16#7C0# range 0 .. 31;
      ETH_RX_UNICAST_PACKETS_GOOD             at 16#7C4# range 0 .. 31;
      ETH_RX_LENGTH_ERROR_PACKETS             at 16#7C8# range 0 .. 31;
      ETH_RX_OUT_OF_RANGE_PACKETS             at 16#7CC# range 0 .. 31;
      ETH_RX_PAUSE_PACKETS                    at 16#7D0# range 0 .. 31;
      ETH_RX_FIFO_OVERFLOW_PACKETS            at 16#7D4# range 0 .. 31;
      ETH_RX_VLAN_PACKETS_GOOD_BAD            at 16#7D8# range 0 .. 31;
      ETH_RX_WATCHDOG_ERROR_PACKETS           at 16#7DC# range 0 .. 31;
      ETH_RX_RECEIVE_ERROR                    at 16#7E0# range 0 .. 31;
      ETH_RX_CONTROL_PACKETS_GOOD             at 16#7E4# range 0 .. 31;
      ETH_TX_LPI_USEC_CNTR                    at 16#7EC# range 0 .. 31;
      ETH_TX_LPI_TRAN_CNTR                    at 16#7F0# range 0 .. 31;
      ETH_RX_LPI_USEC_CNTR                    at 16#7F4# range 0 .. 31;
      ETH_RX_LPI_TRAN_CNTR                    at 16#7F8# range 0 .. 31;
      ETH_MMC_FPE_TX_ISR                      at 16#8A0# range 0 .. 31;
      ETH_MMC_FPE_TX_IMR                      at 16#8A4# range 0 .. 31;
      ETH_MMC_FPE_TX_FCR                      at 16#8A8# range 0 .. 31;
      ETH_MMC_TX_HRCR                         at 16#8AC# range 0 .. 31;
      ETH_MMC_FPE_RX_ISR                      at 16#8C0# range 0 .. 31;
      ETH_MMC_FPE_RX_IMR                      at 16#8C4# range 0 .. 31;
      ETH_RX_PACKET_ASM_ERR                   at 16#8C8# range 0 .. 31;
      ETH_RX_PACKET_SMD_ERR                   at 16#8CC# range 0 .. 31;
      ETH_RX_PACKET_ASM_OKR                   at 16#8D0# range 0 .. 31;
      ETH_RX_FPE_FRAG_CR                      at 16#8D4# range 0 .. 31;
      ETH_MACL3L4C0R                          at 16#900# range 0 .. 31;
      ETH_MACL4A0R                            at 16#904# range 0 .. 31;
      ETH_MACL3A00R                           at 16#910# range 0 .. 31;
      ETH_MACL3A10R                           at 16#914# range 0 .. 31;
      ETH_MACL3A20R                           at 16#918# range 0 .. 31;
      ETH_MACL3A30R                           at 16#91C# range 0 .. 31;
      ETH_MACL3L4C1R                          at 16#930# range 0 .. 31;
      ETH_MACL4A1R                            at 16#934# range 0 .. 31;
      ETH_MACL3A01R                           at 16#940# range 0 .. 31;
      ETH_MACL3A11R                           at 16#944# range 0 .. 31;
      ETH_MACL3A21R                           at 16#948# range 0 .. 31;
      ETH_MACL3A31R                           at 16#94C# range 0 .. 31;
      ETH_MAC_IACR                            at 16#A70# range 0 .. 31;
      ETH_MAC_TMRQR                           at 16#A74# range 0 .. 31;
      ETH_MACTSCR                             at 16#B00# range 0 .. 31;
      ETH_MACSSIR                             at 16#B04# range 0 .. 31;
      ETH_MACSTSR                             at 16#B08# range 0 .. 31;
      ETH_MACSTNR                             at 16#B0C# range 0 .. 31;
      ETH_MACSTSUR                            at 16#B10# range 0 .. 31;
      ETH_MACSTNUR                            at 16#B14# range 0 .. 31;
      ETH_MACTSAR                             at 16#B18# range 0 .. 31;
      ETH_MACTSSR                             at 16#B20# range 0 .. 31;
      ETH_MACRXDTI                            at 16#B24# range 0 .. 31;
      ETH_MACTXDTI                            at 16#B28# range 0 .. 31;
      ETH_MACTXTSSNR                          at 16#B30# range 0 .. 31;
      ETH_MACTXTSSSR                          at 16#B34# range 0 .. 31;
      ETH_MACACR                              at 16#B40# range 0 .. 31;
      ETH_MACATSNR                            at 16#B48# range 0 .. 31;
      ETH_MACATSSR                            at 16#B4C# range 0 .. 31;
      ETH_MACTSIACR                           at 16#B50# range 0 .. 31;
      ETH_MACTSEACR                           at 16#B54# range 0 .. 31;
      ETH_MACTSICNR                           at 16#B58# range 0 .. 31;
      ETH_MACTSECNR                           at 16#B5C# range 0 .. 31;
      ETH_MACTSILR                            at 16#B68# range 0 .. 31;
      ETH_MACTSELR                            at 16#B6C# range 0 .. 31;
      ETH_MACPPSTTS0R                         at 16#B80# range 0 .. 31;
      ETH_MACPPSTTN0R                         at 16#B84# range 0 .. 31;
      ETH_MACPPSI0R                           at 16#B88# range 0 .. 31;
      ETH_MACPPSW0R                           at 16#B8C# range 0 .. 31;
      ETH_MACPPSTTS1R                         at 16#B90# range 0 .. 31;
      ETH_MACPPSTTN1R                         at 16#B94# range 0 .. 31;
      ETH_MACPPSI1R                           at 16#B98# range 0 .. 31;
      ETH_MACPPSW1R                           at 16#B9C# range 0 .. 31;
      ETH_MACPOCR                             at 16#BC0# range 0 .. 31;
      ETH_MACSPI0R                            at 16#BC4# range 0 .. 31;
      ETH_MACSPI1R                            at 16#BC8# range 0 .. 31;
      ETH_MACSPI2R                            at 16#BCC# range 0 .. 31;
      ETH_MACLMIR                             at 16#BD0# range 0 .. 31;
      ETH_MTLOMR                              at 16#C00# range 0 .. 31;
      ETH_MTLISR                              at 16#C20# range 0 .. 31;
      ETH_MTLRXQDMAMR                         at 16#C30# range 0 .. 31;
      ETH_MTLTBSCR                            at 16#C40# range 0 .. 31;
      ETH_MTLESTCR                            at 16#C50# range 0 .. 31;
      ETH_MTLESTECR                           at 16#C54# range 0 .. 31;
      ETH_MTLESTSR                            at 16#C58# range 0 .. 31;
      ETH_MTLESTSCHER                         at 16#C60# range 0 .. 31;
      ETH_MTLESTFSER                          at 16#C64# range 0 .. 31;
      ETH_MTLESTFSCR                          at 16#C68# range 0 .. 31;
      ETH_MTLESTIER                           at 16#C70# range 0 .. 31;
      ETH_MTLESTGCLCR                         at 16#C80# range 0 .. 31;
      ETH_MTLESTGCLDR                         at 16#C84# range 0 .. 31;
      ETH_MTLFPECSR                           at 16#C90# range 0 .. 31;
      ETH_MTLFPEAR                            at 16#C94# range 0 .. 31;
      ETH_MTLTXQ0OMR                          at 16#D00# range 0 .. 31;
      ETH_MTLTXQ0UR                           at 16#D04# range 0 .. 31;
      ETH_MTLTXQ0DR                           at 16#D08# range 0 .. 31;
      ETH_MTLTXQ0ESR                          at 16#D14# range 0 .. 31;
      ETH_MTLTXQ0QWR                          at 16#D18# range 0 .. 31;
      ETH_MTLQ0ICSR                           at 16#D2C# range 0 .. 31;
      ETH_MTLRXQ0OMR                          at 16#D30# range 0 .. 31;
      ETH_MTLRXQ0MPOCR                        at 16#D34# range 0 .. 31;
      ETH_MTLRXQ0DR                           at 16#D38# range 0 .. 31;
      ETH_MTLRXQ0CR                           at 16#D3C# range 0 .. 31;
      ETH_MTLTXQ1OMR                          at 16#D40# range 0 .. 31;
      ETH_MTLTXQ1UR                           at 16#D44# range 0 .. 31;
      ETH_MTLTXQ1DR                           at 16#D48# range 0 .. 31;
      ETH_MTLTXQ1ECR                          at 16#D50# range 0 .. 31;
      ETH_MTLTXQ1ESR                          at 16#D54# range 0 .. 31;
      ETH_MTLTXQ1QWR                          at 16#D58# range 0 .. 31;
      ETH_MTLTXQ1SSCR                         at 16#D5C# range 0 .. 31;
      ETH_MTLTXQ1HCR                          at 16#D60# range 0 .. 31;
      ETH_MTLTXQ1LCR                          at 16#D64# range 0 .. 31;
      ETH_MTLQ1ICSR                           at 16#D6C# range 0 .. 31;
      ETH_MTLRXQ1OMR                          at 16#D70# range 0 .. 31;
      ETH_MTLRXQ1MPOCR                        at 16#D74# range 0 .. 31;
      ETH_MTLRXQ1DR                           at 16#D78# range 0 .. 31;
      ETH_MTLRXQ1CR                           at 16#D7C# range 0 .. 31;
      ETH_MTLTXQ2OMR                          at 16#D80# range 0 .. 31;
      ETH_MTLTXQ2UR                           at 16#D84# range 0 .. 31;
      ETH_MTLTXQ2DR                           at 16#D88# range 0 .. 31;
      ETH_MTLTXQ2ECR                          at 16#D90# range 0 .. 31;
      ETH_MTLTXQ2ESR                          at 16#D94# range 0 .. 31;
      ETH_MTLTXQ2QWR                          at 16#D98# range 0 .. 31;
      ETH_MTLTXQ2SSCR                         at 16#D9C# range 0 .. 31;
      ETH_MTLTXQ2HCR                          at 16#DA0# range 0 .. 31;
      ETH_MTLTXQ2LCR                          at 16#DA4# range 0 .. 31;
      ETH_MTLQ2ICSR                           at 16#DAC# range 0 .. 31;
      ETH_MTLTXQ3OMR                          at 16#DC0# range 0 .. 31;
      ETH_MTLTXQ3UR                           at 16#DC4# range 0 .. 31;
      ETH_MTLTXQ3DR                           at 16#DC8# range 0 .. 31;
      ETH_MTLTXQ3ECR                          at 16#DD0# range 0 .. 31;
      ETH_MTLTXQ3ESR                          at 16#DD4# range 0 .. 31;
      ETH_MTLTXQ3QWR                          at 16#DD8# range 0 .. 31;
      ETH_MTLTXQ3SSCR                         at 16#DDC# range 0 .. 31;
      ETH_MTLTXQ3HCR                          at 16#DE0# range 0 .. 31;
      ETH_MTLTXQ3LCR                          at 16#DE4# range 0 .. 31;
      ETH_MTLQ3ICSR                           at 16#DEC# range 0 .. 31;
      ETH_DMAMR                               at 16#1000# range 0 .. 31;
      ETH_DMASBMR                             at 16#1004# range 0 .. 31;
      ETH_DMAISR                              at 16#1008# range 0 .. 31;
      ETH_DMADS1R                             at 16#100C# range 0 .. 31;
      ETH_DMADS2R                             at 16#1010# range 0 .. 31;
      ETH_DMAA4TXACR                          at 16#1020# range 0 .. 31;
      ETH_DMAA4RXACR                          at 16#1024# range 0 .. 31;
      ETH_DMAA4DACR                           at 16#1028# range 0 .. 31;
      ETH_DMALPIEI                            at 16#1040# range 0 .. 31;
      ETH_DMATBSCTRL1R                        at 16#1054# range 0 .. 31;
      ETH_DMATBSCTRL2R                        at 16#1058# range 0 .. 31;
      ETH_DMATBSCTRL3R                        at 16#105C# range 0 .. 31;
      ETH_DMAC0CR                             at 16#1100# range 0 .. 31;
      ETH_DMAC0TXCR                           at 16#1104# range 0 .. 31;
      ETH_DMAC0RXCR                           at 16#1108# range 0 .. 31;
      ETH_DMAC0TXDLAR                         at 16#1114# range 0 .. 31;
      ETH_DMAC0RXDLAR                         at 16#111C# range 0 .. 31;
      ETH_DMAC0TXDTPR                         at 16#1120# range 0 .. 31;
      ETH_DMAC0RXDTPR                         at 16#1128# range 0 .. 31;
      ETH_DMAC0TXRLR                          at 16#112C# range 0 .. 31;
      ETH_DMAC0RXRLR                          at 16#1130# range 0 .. 31;
      ETH_DMAC0IER                            at 16#1134# range 0 .. 31;
      ETH_DMAC0RXIWTR                         at 16#1138# range 0 .. 31;
      ETH_DMAC0SFCSR                          at 16#113C# range 0 .. 31;
      ETH_DMAC0CATXDR                         at 16#1144# range 0 .. 31;
      ETH_DMAC0CARXDR                         at 16#114C# range 0 .. 31;
      ETH_DMAC0CATXBR                         at 16#1154# range 0 .. 31;
      ETH_DMAC0CARXBR                         at 16#115C# range 0 .. 31;
      ETH_DMAC0SR                             at 16#1160# range 0 .. 31;
      ETH_DMAC0MFCR                           at 16#1164# range 0 .. 31;
      ETH_DMAC1CR                             at 16#1180# range 0 .. 31;
      ETH_DMAC1TXCR                           at 16#1184# range 0 .. 31;
      ETH_DMAC1RXCR                           at 16#1188# range 0 .. 31;
      ETH_DMAC1TXDLAR                         at 16#1194# range 0 .. 31;
      ETH_DMAC1RXDLAR                         at 16#119C# range 0 .. 31;
      ETH_DMAC1TXDTPR                         at 16#11A0# range 0 .. 31;
      ETH_DMAC1RXDTPR                         at 16#11A8# range 0 .. 31;
      ETH_DMAC1TXRLR                          at 16#11AC# range 0 .. 31;
      ETH_DMAC1RXRLR                          at 16#11B0# range 0 .. 31;
      ETH_DMAC1IER                            at 16#11B4# range 0 .. 31;
      ETH_DMAC1RXIWTR                         at 16#11B8# range 0 .. 31;
      ETH_DMAC1SFCSR                          at 16#11BC# range 0 .. 31;
      ETH_DMAC1CATXDR                         at 16#11C4# range 0 .. 31;
      ETH_DMAC1CARXDR                         at 16#11CC# range 0 .. 31;
      ETH_DMAC1CATXBR                         at 16#11D4# range 0 .. 31;
      ETH_DMAC1CARXBR                         at 16#11DC# range 0 .. 31;
      ETH_DMAC1SR                             at 16#11E0# range 0 .. 31;
      ETH_DMAC1MFCR                           at 16#11E4# range 0 .. 31;
      ETH_DMAC2CR                             at 16#1200# range 0 .. 31;
      ETH_DMAC2TXCR                           at 16#1204# range 0 .. 31;
      ETH_DMAC2TXDLAR                         at 16#1214# range 0 .. 31;
      ETH_DMAC2TXDTPR                         at 16#1220# range 0 .. 31;
      ETH_DMAC2TXRLR                          at 16#122C# range 0 .. 31;
      ETH_DMAC2IER                            at 16#1234# range 0 .. 31;
      ETH_DMAC2SFCSR                          at 16#123C# range 0 .. 31;
      ETH_DMAC2CATXDR                         at 16#1244# range 0 .. 31;
      ETH_DMAC2CATXBR                         at 16#1254# range 0 .. 31;
      ETH_DMAC2SR                             at 16#1260# range 0 .. 31;
      ETH_DMAC3CR                             at 16#1280# range 0 .. 31;
      ETH_DMAC3TXCR                           at 16#1284# range 0 .. 31;
      ETH_DMAC3TXDLAR                         at 16#1294# range 0 .. 31;
      ETH_DMAC3TXDTPR                         at 16#12A0# range 0 .. 31;
      ETH_DMAC3TXRLR                          at 16#12AC# range 0 .. 31;
      ETH_DMAC3IER                            at 16#12B4# range 0 .. 31;
      ETH_DMAC3SFCSR                          at 16#12BC# range 0 .. 31;
      ETH_DMAC3CATXDR                         at 16#12C4# range 0 .. 31;
      ETH_DMAC3CATXBR                         at 16#12D4# range 0 .. 31;
      ETH_DMAC3SR                             at 16#12E0# range 0 .. 31;
      ETH_MACVIR                              at 16#60# range 0 .. 31;
      ETH_MACPPSCR                            at 16#B70# range 0 .. 31;
      ETH_DMATBSCTRL0R                        at 16#1050# range 0 .. 31;
      ETH_MACVIR_ALTERNATE1                   at 16#60# range 0 .. 31;
      ETH_MACPPSCR_ALTERNATE1                 at 16#B70# range 0 .. 31;
      ETH_DMATBSCTRL0R_ALTERNATE1             at 16#1050# range 0 .. 31;
   end record;

   --  ETH address block description
   ETH_Periph : aliased ETH_Peripheral
     with Import, Address => ETH_Base;

   --  ETH address block description
   ETH1_S_Periph : aliased ETH_Peripheral
     with Import, Address => ETH1_S_Base;

   --  ETH address block description
   ETH2_Periph : aliased ETH_Peripheral
     with Import, Address => ETH2_Base;

   --  ETH address block description
   ETH2_S_Periph : aliased ETH_Peripheral
     with Import, Address => ETH2_S_Base;

end Interfaces.STM32.ETH;
