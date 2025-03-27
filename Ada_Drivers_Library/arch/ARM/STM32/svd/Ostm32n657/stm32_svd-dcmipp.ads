--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DCMIPP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DCMIPP_IPGR1_MEMORYPAGE_Field is HAL.UInt3;

   --  DCMIPP IPPLUG global register 1
   type DCMIPP_IPGR1_Register is record
      --  Memory page size, as power of 2 of 64-byte units:
      MEMORYPAGE     : DCMIPP_IPGR1_MEMORYPAGE_Field := 16#2#;
      --  unspecified
      Reserved_3_23  : HAL.UInt21 := 16#0#;
      --  Quality of service
      QOS_MODE       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPGR1_Register use record
      MEMORYPAGE     at 0 range 0 .. 2;
      Reserved_3_23  at 0 range 3 .. 23;
      QOS_MODE       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  DCMIPP IPPLUG global register 2
   type DCMIPP_IPGR2_Register is record
      --  Request to lock the IP-Plug, to allow reconfiguration.
      PSTART        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPGR2_Register use record
      PSTART        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DCMIPP IPPLUG global register 3
   type DCMIPP_IPGR3_Register is record
      --  Read-only. Status of IP-Plug
      IDLE          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPGR3_Register use record
      IDLE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DCMIPP_IPGR8_DID_Field is HAL.UInt6;
   subtype DCMIPP_IPGR8_REVID_Field is HAL.UInt5;
   subtype DCMIPP_IPGR8_ARCHIID_Field is HAL.UInt5;
   subtype DCMIPP_IPGR8_IPPID_Field is HAL.UInt8;

   --  DCMIPP IPPLUG identification register
   type DCMIPP_IPGR8_Register is record
      --  Read-only. Division identifier (0x14)
      DID            : DCMIPP_IPGR8_DID_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Revision identifier (0x03)
      REVID          : DCMIPP_IPGR8_REVID_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Architecture identifier (0x04)
      ARCHIID        : DCMIPP_IPGR8_ARCHIID_Field;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. IP identifier (0xAA)
      IPPID          : DCMIPP_IPGR8_IPPID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPGR8_Register use record
      DID            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      REVID          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ARCHIID        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      IPPID          at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_IPC1R1_TRAFFIC_Field is HAL.UInt3;
   subtype DCMIPP_IPC1R1_OTR_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 1
   type DCMIPP_IPC1R1_Register is record
      --  Burst size as power of 2 of 8-byte units
      TRAFFIC        : DCMIPP_IPC1R1_TRAFFIC_Field := 16#4#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Maximum outstanding transactions
      OTR            : DCMIPP_IPC1R1_OTR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC1R1_Register use record
      TRAFFIC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTR            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DCMIPP_IPC1R2_SVCMAPPING_Field is HAL.UInt4;
   subtype DCMIPP_IPC1R2_WLRU_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 2
   type DCMIPP_IPC1R2_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Non-user, must be kept at reset value.
      SVCMAPPING     : DCMIPP_IPC1R2_SVCMAPPING_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Ratio for WLRU[3:0] arbitration
      WLRU           : DCMIPP_IPC1R2_WLRU_Field := 16#1#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC1R2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SVCMAPPING     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WLRU           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DCMIPP_IPC1R3_DPREGSTART_Field is HAL.UInt10;
   subtype DCMIPP_IPC1R3_DPREGEND_Field is HAL.UInt10;

   --  DCMIPP IPPLUG Clientx register 3
   type DCMIPP_IPC1R3_Register is record
      --  Start word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGSTART     : DCMIPP_IPC1R3_DPREGSTART_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  End word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGEND       : DCMIPP_IPC1R3_DPREGEND_Field := 16#7F#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC1R3_Register use record
      DPREGSTART     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DPREGEND       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_IPC2R1_TRAFFIC_Field is HAL.UInt3;
   subtype DCMIPP_IPC2R1_OTR_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 1
   type DCMIPP_IPC2R1_Register is record
      --  Burst size as power of 2 of 8-byte units
      TRAFFIC        : DCMIPP_IPC2R1_TRAFFIC_Field := 16#4#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Maximum outstanding transactions
      OTR            : DCMIPP_IPC2R1_OTR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC2R1_Register use record
      TRAFFIC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTR            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DCMIPP_IPC2R2_SVCMAPPING_Field is HAL.UInt4;
   subtype DCMIPP_IPC2R2_WLRU_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 2
   type DCMIPP_IPC2R2_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Non-user, must be kept at reset value.
      SVCMAPPING     : DCMIPP_IPC2R2_SVCMAPPING_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Ratio for WLRU[3:0] arbitration
      WLRU           : DCMIPP_IPC2R2_WLRU_Field := 16#1#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC2R2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SVCMAPPING     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WLRU           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DCMIPP_IPC2R3_DPREGSTART_Field is HAL.UInt10;
   subtype DCMIPP_IPC2R3_DPREGEND_Field is HAL.UInt10;

   --  DCMIPP IPPLUG Clientx register 3
   type DCMIPP_IPC2R3_Register is record
      --  Start word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGSTART     : DCMIPP_IPC2R3_DPREGSTART_Field := 16#80#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  End word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGEND       : DCMIPP_IPC2R3_DPREGEND_Field := 16#13F#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC2R3_Register use record
      DPREGSTART     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DPREGEND       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_IPC3R1_TRAFFIC_Field is HAL.UInt3;
   subtype DCMIPP_IPC3R1_OTR_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 1
   type DCMIPP_IPC3R1_Register is record
      --  Burst size as power of 2 of 8-byte units
      TRAFFIC        : DCMIPP_IPC3R1_TRAFFIC_Field := 16#4#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Maximum outstanding transactions
      OTR            : DCMIPP_IPC3R1_OTR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC3R1_Register use record
      TRAFFIC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTR            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DCMIPP_IPC3R2_SVCMAPPING_Field is HAL.UInt4;
   subtype DCMIPP_IPC3R2_WLRU_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 2
   type DCMIPP_IPC3R2_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Non-user, must be kept at reset value.
      SVCMAPPING     : DCMIPP_IPC3R2_SVCMAPPING_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Ratio for WLRU[3:0] arbitration
      WLRU           : DCMIPP_IPC3R2_WLRU_Field := 16#1#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC3R2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SVCMAPPING     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WLRU           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DCMIPP_IPC3R3_DPREGSTART_Field is HAL.UInt10;
   subtype DCMIPP_IPC3R3_DPREGEND_Field is HAL.UInt10;

   --  DCMIPP IPPLUG Clientx register 3
   type DCMIPP_IPC3R3_Register is record
      --  Start word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGSTART     : DCMIPP_IPC3R3_DPREGSTART_Field := 16#140#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  End word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGEND       : DCMIPP_IPC3R3_DPREGEND_Field := 16#18F#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC3R3_Register use record
      DPREGSTART     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DPREGEND       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_IPC4R1_TRAFFIC_Field is HAL.UInt3;
   subtype DCMIPP_IPC4R1_OTR_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 1
   type DCMIPP_IPC4R1_Register is record
      --  Burst size as power of 2 of 8-byte units
      TRAFFIC        : DCMIPP_IPC4R1_TRAFFIC_Field := 16#4#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Maximum outstanding transactions
      OTR            : DCMIPP_IPC4R1_OTR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC4R1_Register use record
      TRAFFIC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTR            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DCMIPP_IPC4R2_SVCMAPPING_Field is HAL.UInt4;
   subtype DCMIPP_IPC4R2_WLRU_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 2
   type DCMIPP_IPC4R2_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Non-user, must be kept at reset value.
      SVCMAPPING     : DCMIPP_IPC4R2_SVCMAPPING_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Ratio for WLRU[3:0] arbitration
      WLRU           : DCMIPP_IPC4R2_WLRU_Field := 16#1#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC4R2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SVCMAPPING     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WLRU           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DCMIPP_IPC4R3_DPREGSTART_Field is HAL.UInt10;
   subtype DCMIPP_IPC4R3_DPREGEND_Field is HAL.UInt10;

   --  DCMIPP IPPLUG Clientx register 3
   type DCMIPP_IPC4R3_Register is record
      --  Start word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGSTART     : DCMIPP_IPC4R3_DPREGSTART_Field := 16#190#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  End word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGEND       : DCMIPP_IPC4R3_DPREGEND_Field := 16#1BF#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC4R3_Register use record
      DPREGSTART     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DPREGEND       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_IPC5R1_TRAFFIC_Field is HAL.UInt3;
   subtype DCMIPP_IPC5R1_OTR_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 1
   type DCMIPP_IPC5R1_Register is record
      --  Burst size as power of 2 of 8-byte units
      TRAFFIC        : DCMIPP_IPC5R1_TRAFFIC_Field := 16#4#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Maximum outstanding transactions
      OTR            : DCMIPP_IPC5R1_OTR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC5R1_Register use record
      TRAFFIC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTR            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DCMIPP_IPC5R2_SVCMAPPING_Field is HAL.UInt4;
   subtype DCMIPP_IPC5R2_WLRU_Field is HAL.UInt4;

   --  DCMIPP IPPLUG Clientx register 2
   type DCMIPP_IPC5R2_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Non-user, must be kept at reset value.
      SVCMAPPING     : DCMIPP_IPC5R2_SVCMAPPING_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Ratio for WLRU[3:0] arbitration
      WLRU           : DCMIPP_IPC5R2_WLRU_Field := 16#1#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC5R2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SVCMAPPING     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WLRU           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DCMIPP_IPC5R3_DPREGSTART_Field is HAL.UInt10;
   subtype DCMIPP_IPC5R3_DPREGEND_Field is HAL.UInt10;

   --  DCMIPP IPPLUG Clientx register 3
   type DCMIPP_IPC5R3_Register is record
      --  Start word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGSTART     : DCMIPP_IPC5R3_DPREGSTART_Field := 16#1C0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  End word (AXI width = 64 bits) of the FIFO of Clientx.
      DPREGEND       : DCMIPP_IPC5R3_DPREGEND_Field := 16#27F#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_IPC5R3_Register use record
      DPREGSTART     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DPREGEND       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_PRCR_EDM_Field is HAL.UInt3;
   subtype DCMIPP_PRCR_FORMAT_Field is HAL.UInt8;

   --  DCMIPP parallel interface control register
   type DCMIPP_PRCR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Embedded synchronization select
      ESS            : Boolean := False;
      --  Pixel clock polarity
      PCKPOL         : Boolean := False;
      --  Horizontal synchronization polarity
      HSPOL          : Boolean := False;
      --  Vertical synchronization polarity
      VSPOL          : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Extended data mode
      EDM            : DCMIPP_PRCR_EDM_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Parallel interface enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Other values: data are captured and output as-is only through the
      --  data/dump pipeline (e.g. JPEG or byte input format).
      FORMAT         : DCMIPP_PRCR_FORMAT_Field := 16#0#;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Swap data (cycle 0 vs. cycle 1) for pixels received on two cycles
      SWAPCYCLES     : Boolean := False;
      --  Swap LSB vs. MSB within each received component
      SWAPBITS       : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_PRCR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ESS            at 0 range 4 .. 4;
      PCKPOL         at 0 range 5 .. 5;
      HSPOL          at 0 range 6 .. 6;
      VSPOL          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      EDM            at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      ENABLE         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FORMAT         at 0 range 16 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      SWAPCYCLES     at 0 range 25 .. 25;
      SWAPBITS       at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_PRESCR_FSC_Field is HAL.UInt8;
   subtype DCMIPP_PRESCR_LSC_Field is HAL.UInt8;
   subtype DCMIPP_PRESCR_LEC_Field is HAL.UInt8;
   subtype DCMIPP_PRESCR_FEC_Field is HAL.UInt8;

   --  DCMIPP parallel interface embedded synchronization code register
   type DCMIPP_PRESCR_Register is record
      --  Frame start delimiter code
      FSC : DCMIPP_PRESCR_FSC_Field := 16#0#;
      --  Line start delimiter code
      LSC : DCMIPP_PRESCR_LSC_Field := 16#0#;
      --  Line end delimiter code
      LEC : DCMIPP_PRESCR_LEC_Field := 16#0#;
      --  Frame end delimiter code
      FEC : DCMIPP_PRESCR_FEC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_PRESCR_Register use record
      FSC at 0 range 0 .. 7;
      LSC at 0 range 8 .. 15;
      LEC at 0 range 16 .. 23;
      FEC at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_PRESUR_FSU_Field is HAL.UInt8;
   subtype DCMIPP_PRESUR_LSU_Field is HAL.UInt8;
   subtype DCMIPP_PRESUR_LEU_Field is HAL.UInt8;
   subtype DCMIPP_PRESUR_FEU_Field is HAL.UInt8;

   --  DCMIPP parallel interface embedded synchronization unmask register
   type DCMIPP_PRESUR_Register is record
      --  Frame start delimiter unmask
      FSU : DCMIPP_PRESUR_FSU_Field := 16#0#;
      --  Line start delimiter unmask
      LSU : DCMIPP_PRESUR_LSU_Field := 16#0#;
      --  Line end delimiter unmask
      LEU : DCMIPP_PRESUR_LEU_Field := 16#0#;
      --  Frame end delimiter unmask
      FEU : DCMIPP_PRESUR_FEU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_PRESUR_Register use record
      FSU at 0 range 0 .. 7;
      LSU at 0 range 8 .. 15;
      LEU at 0 range 16 .. 23;
      FEU at 0 range 24 .. 31;
   end record;

   --  DCMIPP parallel interface interrupt enable register
   type DCMIPP_PRIER_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Synchronization error interrupt enable
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_PRIER_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ERRIE         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  DCMIPP parallel interface status register
   type DCMIPP_PRSR_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Synchronization error raw interrupt status
      ERRF           : Boolean;
      --  unspecified
      Reserved_7_15  : HAL.UInt9;
      --  Read-only. This bit gives the state of the HSYNC pin with the correct
      --  programmed polarity if ENABLE bit is set into the DCMIPP_PRCR
      --  register and if the pixel clock is received. It is set during the
      --  blanking period whatever the polarity selected in HPOL bit, and
      --  cleared otherwise.
      HSYNC          : Boolean;
      --  Read-only. This bit gives the state of the VSYNC pin with the correct
      --  programmed polarity if ENABLE bit is set into the DCMIPP_PRCR
      --  register and if the pixel clock is received. It is set during the
      --  blanking period whatever the polarity selected in VPOL bit, and
      --  cleared otherwise.
      VSYNC          : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_PRSR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      ERRF           at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      HSYNC          at 0 range 16 .. 16;
      VSYNC          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  DCMIPP parallel interface interrupt clear register
   type DCMIPP_PRFCR_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Write-only. Synchronization error interrupt status clear
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_PRFCR_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      CERRF         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DCMIPP_CMCR_PSFC_Field is HAL.UInt2;

   --  DCMIPP common configuration register
   type DCMIPP_CMCR_Register is record
      --  input selection
      INSEL         : Boolean := False;
      --  Pipe selection for the frame counter
      PSFC          : DCMIPP_CMCR_PSFC_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. Clear frame counter
      CFC           : Boolean := False;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  Swap R/U and B/V
      SWAPRB        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_CMCR_Register use record
      INSEL         at 0 range 0 .. 0;
      PSFC          at 0 range 1 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CFC           at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      SWAPRB        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DCMIPP common interrupt enable register
   type DCMIPP_CMIER_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  AXI transfer error interrupt enable for IPPLUG
      ATXERRIE       : Boolean := False;
      --  Limit interrupt enable for the parallel Interface
      PRERRIE        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Multi-line capture complete interrupt enable for Pipe0
      P0LINEIE       : Boolean := False;
      --  Frame capture complete interrupt enable for Pipe0
      P0FRAMEIE      : Boolean := False;
      --  Vertical sync interrupt enable for Pipe0
      P0VSYNCIE      : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Limit interrupt enable for Pipe0
      P0LIMITIE      : Boolean := False;
      --  Overrun interrupt enable for Pipe0
      P0OVRIE        : Boolean := False;
      --  Multi-line capture complete interrupt status clear for Pipe1
      P1LINEIE       : Boolean := False;
      --  Frame capture complete interrupt enable for Pipe1
      P1FRAMEIE      : Boolean := False;
      --  Vertical sync interrupt enable for Pipe1
      P1VSYNCIE      : Boolean := False;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  Overrun interrupt enable for Pipe1
      P1OVRIE        : Boolean := False;
      --  Multi-line capture complete interrupt enable for Pipe2
      P2LINEIE       : Boolean := False;
      --  Frame capture complete interrupt enable for Pipe2
      P2FRAMEIE      : Boolean := False;
      --  Vertical sync interrupt enable for Pipe2
      P2VSYNCIE      : Boolean := False;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  Overrun interrupt status enable for Pipe2
      P2OVRIE        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_CMIER_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      ATXERRIE       at 0 range 5 .. 5;
      PRERRIE        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0LINEIE       at 0 range 8 .. 8;
      P0FRAMEIE      at 0 range 9 .. 9;
      P0VSYNCIE      at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      P0LIMITIE      at 0 range 14 .. 14;
      P0OVRIE        at 0 range 15 .. 15;
      P1LINEIE       at 0 range 16 .. 16;
      P1FRAMEIE      at 0 range 17 .. 17;
      P1VSYNCIE      at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      P1OVRIE        at 0 range 23 .. 23;
      P2LINEIE       at 0 range 24 .. 24;
      P2FRAMEIE      at 0 range 25 .. 25;
      P2VSYNCIE      at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      P2OVRIE        at 0 range 31 .. 31;
   end record;

   --  DCMIPP common status register 1
   type DCMIPP_CMSR1_Register is record
      --  Read-only. This bit gives the state of the HSYNC pin with the correct
      --  programmed polarity on the parallel interface if ENABLE bit is set
      --  into the DCMIPP_PRCR register and if the pixel clock is received. It
      --  is set during the blanking period whatever the polarity selected in
      --  HPOL bit of the DCMIPP_PRCR register, and cleared otherwise.
      PRHSYNC        : Boolean;
      --  Read-only. This bit gives the state of the VSYNC pin with the correct
      --  programmed polarity on the parallel interface if ENABLE bit is set
      --  into the DCMIPP_PRCR register and if the pixel clock is received. It
      --  is set during the blanking period whatever the polarity selected in
      --  VPOL bit of the DCMIPP_PRCR register, and cleared otherwise.
      PRVSYNC        : Boolean;
      --  unspecified
      Reserved_2_7   : HAL.UInt6;
      --  Read-only. Last line LSB bit, sampled at Frame capture complete event
      --  for Pipe0
      P0LSTLINE      : Boolean;
      --  Read-only. Last frame LSB bit, sampled at Frame capture complete
      --  event for Pipe0
      P0LSTFRM       : Boolean;
      --  unspecified
      Reserved_10_14 : HAL.UInt5;
      --  Read-only. Active frame capture (active from start-of-frame to frame
      --  complete) for Pipe0
      P0CPTACT       : Boolean;
      --  Read-only. Last line LSB bit, sampled at Frame capture complete event
      --  for Pipe1
      P1LSTLINE      : Boolean;
      --  Read-only. Last frame LSB bit, sampled at frame capture complete
      --  event for Pipe1
      P1LSTFRM       : Boolean;
      --  unspecified
      Reserved_18_22 : HAL.UInt5;
      --  Read-only. Active frame capture (active from start-of-frame to frame
      --  complete) for Pipe1
      P1CPTACT       : Boolean;
      --  Read-only. Last line LSB bit, sampled at frame capture complete event
      --  for Pipe2
      P2LSTLINE      : Boolean;
      --  Read-only. Last frame LSB bit, sampled at frame capture complete
      --  event for Pipe2
      P2LSTFRM       : Boolean;
      --  unspecified
      Reserved_26_30 : HAL.UInt5;
      --  Read-only. Active frame capture (active from start-of-frame to frame
      --  complete) for Pipe2
      P2CPTACT       : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_CMSR1_Register use record
      PRHSYNC        at 0 range 0 .. 0;
      PRVSYNC        at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      P0LSTLINE      at 0 range 8 .. 8;
      P0LSTFRM       at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      P0CPTACT       at 0 range 15 .. 15;
      P1LSTLINE      at 0 range 16 .. 16;
      P1LSTFRM       at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      P1CPTACT       at 0 range 23 .. 23;
      P2LSTLINE      at 0 range 24 .. 24;
      P2LSTFRM       at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      P2CPTACT       at 0 range 31 .. 31;
   end record;

   --  DCMIPP common status register 2
   type DCMIPP_CMSR2_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5;
      --  Read-only. AXI transfer error interrupt status flag for the IPPLUG.
      ATXERRF        : Boolean;
      --  Read-only. Synchronization error raw interrupt status for the
      --  parallel interface.
      PRERRF         : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Multi-line capture completed raw interrupt status for
      --  Pipe0
      P0LINEF        : Boolean;
      --  Read-only. Frame capture completed raw interrupt status for Pipe0
      P0FRAMEF       : Boolean;
      --  Read-only. VSYNC raw interrupt status for Pipe0
      P0VSYNCF       : Boolean;
      --  unspecified
      Reserved_11_13 : HAL.UInt3;
      --  Read-only. Limit raw interrupt status for Pipe0
      P0LIMITF       : Boolean;
      --  Read-only. Overrun raw interrupt status for Pipe0
      P0OVRF         : Boolean;
      --  Read-only. Multi-line capture completed raw interrupt status for
      --  Pipe1
      P1LINEF        : Boolean;
      --  Read-only. Frame capture completed raw interrupt status for Pipe1
      P1FRAMEF       : Boolean;
      --  Read-only. VSYNC raw interrupt status for Pipe1
      P1VSYNCF       : Boolean;
      --  unspecified
      Reserved_19_22 : HAL.UInt4;
      --  Read-only. Overrun raw interrupt status for Pipe1
      P1OVRF         : Boolean;
      --  Read-only. Multi-line capture completed raw interrupt status for
      --  Pipe2
      P2LINEF        : Boolean;
      --  Read-only. Frame capture completed raw interrupt status for Pipe2
      P2FRAMEF       : Boolean;
      --  Read-only. VSYNC raw interrupt status for Pipe2
      P2VSYNCF       : Boolean;
      --  unspecified
      Reserved_27_30 : HAL.UInt4;
      --  Read-only. Overrun raw interrupt status for Pipe2
      P2OVRF         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_CMSR2_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      ATXERRF        at 0 range 5 .. 5;
      PRERRF         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0LINEF        at 0 range 8 .. 8;
      P0FRAMEF       at 0 range 9 .. 9;
      P0VSYNCF       at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      P0LIMITF       at 0 range 14 .. 14;
      P0OVRF         at 0 range 15 .. 15;
      P1LINEF        at 0 range 16 .. 16;
      P1FRAMEF       at 0 range 17 .. 17;
      P1VSYNCF       at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      P1OVRF         at 0 range 23 .. 23;
      P2LINEF        at 0 range 24 .. 24;
      P2FRAMEF       at 0 range 25 .. 25;
      P2VSYNCF       at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      P2OVRF         at 0 range 31 .. 31;
   end record;

   --  DCMIPP common interrupt clear register
   type DCMIPP_CMFCR_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Write-only. AXI transfer error interrupt status clear
      CATXERRF       : Boolean := False;
      --  Write-only. Synchronization error interrupt status clear
      CPRERRF        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Multi-line capture complete interrupt status clear
      CP0LINEF       : Boolean := False;
      --  Write-only. Frame capture complete interrupt status clear
      CP0FRAMEF      : Boolean := False;
      --  Write-only. Vertical synchronization interrupt status clear
      CP0VSYNCF      : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Write-only. limit interrupt status clear
      CP0LIMITF      : Boolean := False;
      --  Write-only. Overrun interrupt status clear
      CP0OVRF        : Boolean := False;
      --  Write-only. Multi-line capture complete interrupt status clear
      CP1LINEF       : Boolean := False;
      --  Write-only. Frame capture complete interrupt status clear
      CP1FRAMEF      : Boolean := False;
      --  Write-only. Vertical synchronization interrupt status clear
      CP1VSYNCF      : Boolean := False;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  Write-only. Overrun interrupt status clear
      CP1OVRF        : Boolean := False;
      --  Write-only. Multi-line capture complete interrupt status clear
      CP2LINEF       : Boolean := False;
      --  Write-only. Frame capture complete interrupt status clear
      CP2FRAMEF      : Boolean := False;
      --  Write-only. Vertical synchronization interrupt status clear
      CP2VSYNCF      : Boolean := False;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  Write-only. Overrun interrupt status clear
      CP2OVRF        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_CMFCR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CATXERRF       at 0 range 5 .. 5;
      CPRERRF        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CP0LINEF       at 0 range 8 .. 8;
      CP0FRAMEF      at 0 range 9 .. 9;
      CP0VSYNCF      at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CP0LIMITF      at 0 range 14 .. 14;
      CP0OVRF        at 0 range 15 .. 15;
      CP1LINEF       at 0 range 16 .. 16;
      CP1FRAMEF      at 0 range 17 .. 17;
      CP1VSYNCF      at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      CP1OVRF        at 0 range 23 .. 23;
      CP2LINEF       at 0 range 24 .. 24;
      CP2FRAMEF      at 0 range 25 .. 25;
      CP2VSYNCF      at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      CP2OVRF        at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P0FSCR_DTIDA_Field is HAL.UInt6;
   subtype DCMIPP_P0FSCR_DTIDB_Field is HAL.UInt6;
   subtype DCMIPP_P0FSCR_DTMODE_Field is HAL.UInt2;
   subtype DCMIPP_P0FSCR_VC_Field is HAL.UInt2;

   --  DCMIPP Pipe0 flow selection configuration register
   type DCMIPP_P0FSCR_Register is record
      --  Data type selection ID A
      DTIDA          : DCMIPP_P0FSCR_DTIDA_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Data type selection ID B
      DTIDB          : DCMIPP_P0FSCR_DTIDB_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Flow selection mode
      DTMODE         : DCMIPP_P0FSCR_DTMODE_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Flow selection mode
      VC             : DCMIPP_P0FSCR_VC_Field := 16#0#;
      --  unspecified
      Reserved_21_30 : HAL.UInt10 := 16#0#;
      --  Activation of PipeN
      PIPEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0FSCR_Register use record
      DTIDA          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DTIDB          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTMODE         at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      VC             at 0 range 19 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      PIPEN          at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P0FCTCR_FRATE_Field is HAL.UInt2;

   --  DCMIPP Pipe0 flow control configuration register
   type DCMIPP_P0FCTCR_Register is record
      --  Frame capture rate control
      FRATE         : DCMIPP_P0FCTCR_FRATE_Field := 16#0#;
      --  Capture mode
      CPTMODE       : Boolean := False;
      --  Capture requested
      CPTREQ        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0FCTCR_Register use record
      FRATE         at 0 range 0 .. 1;
      CPTMODE       at 0 range 2 .. 2;
      CPTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P0SCSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P0SCSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipe0 stat/crop start register
   type DCMIPP_P0SCSTR_Register is record
      --  Horizontal start, from 0 to 4094 words wide
      HSTART         : DCMIPP_P0SCSTR_HSTART_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P0SCSTR_VSTART_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0SCSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P0SCSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P0SCSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe0 stat/crop size register
   type DCMIPP_P0SCSZR_Register is record
      --  Horizontal size, from 0 to 4094 word wide (data 32-bit)
      HSIZE          : DCMIPP_P0SCSZR_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P0SCSZR_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is set and cleared by software. It has a meaning only if
      --  ENABLE bit is set.
      POSNEG         : Boolean := False;
      --  This bit is set and cleared by software.
      ENABLE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0SCSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      POSNEG         at 0 range 30 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P0DCCNTR_CNT_Field is HAL.UInt26;

   --  DCMIPP Pipe0 dump counter register
   type DCMIPP_P0DCCNTR_Register is record
      --  Read-only. Number of data dumped during the frame.
      CNT            : DCMIPP_P0DCCNTR_CNT_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0DCCNTR_Register use record
      CNT            at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P0DCLMTR_LIMIT_Field is HAL.UInt24;

   --  DCMIPP Pipe0 dump limit register
   type DCMIPP_P0DCLMTR_Register is record
      --  Maximum number of 32-bit data that can be dumped during a frame,
      --  after the crop 2D operation.
      LIMIT          : DCMIPP_P0DCLMTR_LIMIT_Field := 16#FFFFFF#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  None
      ENABLE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0DCLMTR_Register use record
      LIMIT          at 0 range 0 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P0PPCR_BSM_Field is HAL.UInt2;
   subtype DCMIPP_P0PPCR_LINEMULT_Field is HAL.UInt3;

   --  DCMIPP Pipe0 pixel packer configuration register
   type DCMIPP_P0PPCR_Register is record
      --  Swaps, within a 32-bit word, byte 0-vs-1 and byte 2-vs-3. It
      --  corresponds, for YUV422 pixels formats, to swap between UYVY and
      --  YUYV.
      SWAPYUV        : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  Pad mode for monochrome and raw Bayer 10/12/14 bpp: MSB vs. LSB
      --  alignment.
      PAD            : Boolean := False;
      --  CSI header dump enable
      HEADEREN       : Boolean := False;
      --  Byte select mode
      BSM            : DCMIPP_P0PPCR_BSM_Field := 16#0#;
      --  Odd/even byte select (byte select start)
      OEBS           : Boolean := False;
      --  Line select mode
      LSM            : Boolean := False;
      --  Odd/even line select (line select start)
      OELS           : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Amount of capture completed lines for LINE event and interrupt
      LINEMULT       : DCMIPP_P0PPCR_LINEMULT_Field := 16#0#;
      --  Double buffer mode
      DBM            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0PPCR_Register use record
      SWAPYUV        at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      PAD            at 0 range 5 .. 5;
      HEADEREN       at 0 range 6 .. 6;
      BSM            at 0 range 7 .. 8;
      OEBS           at 0 range 9 .. 9;
      LSM            at 0 range 10 .. 10;
      OELS           at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      LINEMULT       at 0 range 13 .. 15;
      DBM            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  DCMIPP Pipe0 interrupt enable register
   type DCMIPP_P0IER_Register is record
      --  Multi-line capture completed interrupt enable
      LINEIE        : Boolean := False;
      --  Frame capture completed interrupt enable
      FRAMEIE       : Boolean := False;
      --  VSYNC interrupt enable
      VSYNCIE       : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Limit interrupt enable
      LIMITIE       : Boolean := False;
      --  Overrun interrupt enable
      OVRIE         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0IER_Register use record
      LINEIE        at 0 range 0 .. 0;
      FRAMEIE       at 0 range 1 .. 1;
      VSYNCIE       at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      LIMITIE       at 0 range 6 .. 6;
      OVRIE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DCMIPP Pipe0 status register
   type DCMIPP_P0SR_Register is record
      --  Read-only. Multi-line capture completed raw interrupt status
      LINEF          : Boolean;
      --  Read-only. Frame capture completed raw interrupt status
      FRAMEF         : Boolean;
      --  Read-only. VSYNC raw interrupt status
      VSYNCF         : Boolean;
      --  unspecified
      Reserved_3_5   : HAL.UInt3;
      --  Read-only. Limit raw interrupt status
      LIMITF         : Boolean;
      --  Read-only. Overrun raw interrupt status
      OVRF           : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Last line LSB bit, sampled at frame capture complete
      --  event.
      LSTLINE        : Boolean;
      --  Read-only. Last frame LSB bit, sampled at frame capture complete
      --  event. The information is extracted from the frame data number that
      --  can be delivered by the camera through the CSI2 interface.
      LSTFRM         : Boolean;
      --  unspecified
      Reserved_18_22 : HAL.UInt5;
      --  Read-only. Capture immediate status
      CPTACT         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0SR_Register use record
      LINEF          at 0 range 0 .. 0;
      FRAMEF         at 0 range 1 .. 1;
      VSYNCF         at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      LIMITF         at 0 range 6 .. 6;
      OVRF           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LSTLINE        at 0 range 16 .. 16;
      LSTFRM         at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      CPTACT         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DCMIPP Pipe0 interrupt clear register
   type DCMIPP_P0FCR_Register is record
      --  Write-only. Multi-line capture complete interrupt status clear
      CLINEF        : Boolean := False;
      --  Write-only. Frame capture complete interrupt status clear
      CFRAMEF       : Boolean := False;
      --  Write-only. Vertical synchronization interrupt status clear
      CVSYNCF       : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Write-only. limit interrupt status clear
      CLIMITF       : Boolean := False;
      --  Write-only. Overrun interrupt status clear
      COVRF         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0FCR_Register use record
      CLINEF        at 0 range 0 .. 0;
      CFRAMEF       at 0 range 1 .. 1;
      CVSYNCF       at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      CLIMITF       at 0 range 6 .. 6;
      COVRF         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P0CFSCR_DTIDA_Field is HAL.UInt6;
   subtype DCMIPP_P0CFSCR_DTIDB_Field is HAL.UInt6;
   subtype DCMIPP_P0CFSCR_DTMODE_Field is HAL.UInt2;
   subtype DCMIPP_P0CFSCR_VC_Field is HAL.UInt2;

   --  DCMIPP Pipe0 current flow selection configuration register
   type DCMIPP_P0CFSCR_Register is record
      --  Read-only. Current data type selection ID A
      DTIDA          : DCMIPP_P0CFSCR_DTIDA_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Current data type selection ID B
      DTIDB          : DCMIPP_P0CFSCR_DTIDB_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Flow selection mode
      DTMODE         : DCMIPP_P0CFSCR_DTMODE_Field;
      --  unspecified
      Reserved_18_18 : HAL.Bit;
      --  Read-only. Current flow selection mode
      VC             : DCMIPP_P0CFSCR_VC_Field;
      --  unspecified
      Reserved_21_30 : HAL.UInt10;
      --  Read-only. Current activation of PipeN
      PIPEN          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0CFSCR_Register use record
      DTIDA          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DTIDB          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTMODE         at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      VC             at 0 range 19 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      PIPEN          at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P0CFCTCR_FRATE_Field is HAL.UInt2;

   --  DCMIPP Pipe0 current flow control configuration register
   type DCMIPP_P0CFCTCR_Register is record
      --  Read-only. Frame capture rate control
      FRATE         : DCMIPP_P0CFCTCR_FRATE_Field;
      --  Read-only. Capture mode
      CPTMODE       : Boolean;
      --  Read-only. Capture requested
      CPTREQ        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0CFCTCR_Register use record
      FRATE         at 0 range 0 .. 1;
      CPTMODE       at 0 range 2 .. 2;
      CPTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P0CSCSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P0CSCSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipe0 current stat/crop start register
   type DCMIPP_P0CSCSTR_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 words wide
      HSTART         : DCMIPP_P0CSCSTR_HSTART_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P0CSCSTR_VSTART_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0CSCSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P0CSCSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P0CSCSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe0 current stat/crop size register
   type DCMIPP_P0CSCSZR_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 word wide (data
      --  32-bit).
      HSIZE          : DCMIPP_P0CSCSZR_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high.
      VSIZE          : DCMIPP_P0CSCSZR_VSIZE_Field;
      --  unspecified
      Reserved_28_29 : HAL.UInt2;
      --  Read-only. Current value of the POSNEG bit
      POSNEG         : Boolean;
      --  Read-only. Current value of the ENABLE bit
      ENABLE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0CSCSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      POSNEG         at 0 range 30 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P0CPPCR_BSM_Field is HAL.UInt2;
   subtype DCMIPP_P0CPPCR_LINEMULT_Field is HAL.UInt3;

   --  DCMIPP Pipe0 current pixel packer configuration register
   type DCMIPP_P0CPPCR_Register is record
      --  Read-only. Swaps, within a 32-bit word, byte 0 vs. 1 and byte 2 vs.
      --  3. It corresponds, for YUV422 pixels formats, to swap between UYVY
      --  and YUYV.
      SWAPYUV        : Boolean;
      --  unspecified
      Reserved_1_4   : HAL.UInt4;
      --  Read-only. Current Pad mode for monochrome and raw Bayer 10/12/14
      --  bpp: MSB vs. LSB alignment
      PAD            : Boolean;
      --  Read-only. Current CSI header dump enable
      HEADEREN       : Boolean;
      --  Read-only. Current Byte select mode
      BSM            : DCMIPP_P0CPPCR_BSM_Field;
      --  Read-only. Current odd/even byte select (byte select start)
      OEBS           : Boolean;
      --  Read-only. Current Line select mode
      LSM            : Boolean;
      --  Read-only. Current odd/even line select (ine select start)
      OELS           : Boolean;
      --  unspecified
      Reserved_12_12 : HAL.Bit;
      --  Read-only. Current amount of capture completed lines for LINE event
      --  and interrupt
      LINEMULT       : DCMIPP_P0CPPCR_LINEMULT_Field;
      --  Read-only. Double buffer mode
      DBM            : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P0CPPCR_Register use record
      SWAPYUV        at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      PAD            at 0 range 5 .. 5;
      HEADEREN       at 0 range 6 .. 6;
      BSM            at 0 range 7 .. 8;
      OEBS           at 0 range 9 .. 9;
      LSM            at 0 range 10 .. 10;
      OELS           at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      LINEMULT       at 0 range 13 .. 15;
      DBM            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DCMIPP_P1FSCR_DTIDA_Field is HAL.UInt6;
   subtype DCMIPP_P1FSCR_DTIDB_Field is HAL.UInt6;
   subtype DCMIPP_P1FSCR_DTMODE_Field is HAL.UInt2;
   subtype DCMIPP_P1FSCR_VC_Field is HAL.UInt2;
   subtype DCMIPP_P1FSCR_FDTF_Field is HAL.UInt6;

   --  DCMIPP Pipe1 flow selection configuration register
   type DCMIPP_P1FSCR_Register is record
      --  Data type selection ID A
      DTIDA          : DCMIPP_P1FSCR_DTIDA_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Data type selection ID B
      DTIDB          : DCMIPP_P1FSCR_DTIDB_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Flow selection mode
      DTMODE         : DCMIPP_P1FSCR_DTMODE_Field := 16#0#;
      --  Differentiates Pipe2 from Pipe1
      PIPEDIFF       : Boolean := False;
      --  Flow selection mode
      VC             : DCMIPP_P1FSCR_VC_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Force Datatype format.
      FDTF           : DCMIPP_P1FSCR_FDTF_Field := 16#0#;
      --  Force Datatype format enable.
      FDTFEN         : Boolean := False;
      --  Activation of PipeN
      PIPEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1FSCR_Register use record
      DTIDA          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DTIDB          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTMODE         at 0 range 16 .. 17;
      PIPEDIFF       at 0 range 18 .. 18;
      VC             at 0 range 19 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FDTF           at 0 range 24 .. 29;
      FDTFEN         at 0 range 30 .. 30;
      PIPEN          at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1SRCR_LASTLINE_Field is HAL.UInt12;
   subtype DCMIPP_P1SRCR_FIRSTLINEDEL_Field is HAL.UInt3;

   --  DCMIPP Pipe1 stat removal configuration register
   type DCMIPP_P1SRCR_Register is record
      --  Amount of following lines to keep when CROPEN = 1. If LASTLINE = 0
      --  all pixels after FIRSTLINEDEL are fed through.
      LASTLINE       : DCMIPP_P1SRCR_LASTLINE_Field := 16#0#;
      --  Amount of first lines to delete when CROPEN = 1
      FIRSTLINEDEL   : DCMIPP_P1SRCR_FIRSTLINEDEL_Field := 16#0#;
      --  Crop line enable
      CROPEN         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1SRCR_Register use record
      LASTLINE       at 0 range 0 .. 11;
      FIRSTLINEDEL   at 0 range 12 .. 14;
      CROPEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCMIPP_P1BPRCR_STRENGTH_Field is HAL.UInt3;

   --  DCMIPP Pipe1 bad pixel removal control register
   type DCMIPP_P1BPRCR_Register is record
      --  Bad pixel detection must be enabled only for raw Bayer flows, as it
      --  corrupts RGB flows.
      ENABLE        : Boolean := False;
      --  Strength (aggressiveness) of the bad pixel detection
      STRENGTH      : DCMIPP_P1BPRCR_STRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1BPRCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      STRENGTH      at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P1BPRSR_BADCNT_Field is HAL.UInt12;

   --  DCMIPP Pipe1 bad pixel removal status register
   type DCMIPP_P1BPRSR_Register is record
      --  Read-only. Amount of detected bad pixels
      BADCNT         : DCMIPP_P1BPRSR_BADCNT_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1BPRSR_Register use record
      BADCNT         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DCMIPP_P1DECR_HDEC_Field is HAL.UInt2;
   subtype DCMIPP_P1DECR_VDEC_Field is HAL.UInt2;

   --  DCMIPP Pipe1 decimation register
   type DCMIPP_P1DECR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  Horizontal decimation ratio
      HDEC          : DCMIPP_P1DECR_HDEC_Field := 16#0#;
      --  Vertical decimation ratio
      VDEC          : DCMIPP_P1DECR_VDEC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1DECR_Register use record
      ENABLE        at 0 range 0 .. 0;
      HDEC          at 0 range 1 .. 2;
      VDEC          at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCMIPP_P1BLCCR_BLCB_Field is HAL.UInt8;
   subtype DCMIPP_P1BLCCR_BLCG_Field is HAL.UInt8;
   subtype DCMIPP_P1BLCCR_BLCR_Field is HAL.UInt8;

   --  DCMIPP Pipe1 black level calibration control register
   type DCMIPP_P1BLCCR_Register is record
      --  Black level calibration
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Black level calibration - Blue
      BLCB         : DCMIPP_P1BLCCR_BLCB_Field := 16#0#;
      --  Black level calibration - Green
      BLCG         : DCMIPP_P1BLCCR_BLCG_Field := 16#0#;
      --  Black level calibration - Red
      BLCR         : DCMIPP_P1BLCCR_BLCR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1BLCCR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      BLCB         at 0 range 8 .. 15;
      BLCG         at 0 range 16 .. 23;
      BLCR         at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1EXCR1_MULTR_Field is HAL.UInt8;
   subtype DCMIPP_P1EXCR1_SHFR_Field is HAL.UInt3;

   --  DCMIPP Pipe1 exposure control register 1
   type DCMIPP_P1EXCR1_Register is record
      --  Exposure control (multiplication and shift) of all red, green and
      --  blue
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_1_19  : HAL.UInt19 := 16#0#;
      --  Exposure multiplier - Red
      MULTR          : DCMIPP_P1EXCR1_MULTR_Field := 16#0#;
      --  Exposure shift - Red
      SHFR           : DCMIPP_P1EXCR1_SHFR_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1EXCR1_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_19  at 0 range 1 .. 19;
      MULTR          at 0 range 20 .. 27;
      SHFR           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1EXCR2_MULTB_Field is HAL.UInt8;
   subtype DCMIPP_P1EXCR2_SHFB_Field is HAL.UInt3;
   subtype DCMIPP_P1EXCR2_MULTG_Field is HAL.UInt8;
   subtype DCMIPP_P1EXCR2_SHFG_Field is HAL.UInt3;

   --  DCMIPP Pipe1 exposure control register 2
   type DCMIPP_P1EXCR2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Exposure multiplier - Blue
      MULTB          : DCMIPP_P1EXCR2_MULTB_Field := 16#0#;
      --  Exposure shift - Blue
      SHFB           : DCMIPP_P1EXCR2_SHFB_Field := 16#0#;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Exposure multiplier - Green
      MULTG          : DCMIPP_P1EXCR2_MULTG_Field := 16#0#;
      --  Exposure shift - Green
      SHFG           : DCMIPP_P1EXCR2_SHFG_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1EXCR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MULTB          at 0 range 4 .. 11;
      SHFB           at 0 range 12 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      MULTG          at 0 range 20 .. 27;
      SHFG           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1ST1CR_BINS_Field is HAL.UInt2;
   subtype DCMIPP_P1ST1CR_SRC_Field is HAL.UInt3;

   --  DCMIPP Pipe1 statistics1 control register
   type DCMIPP_P1ST1CR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Current bin definition
      BINS          : DCMIPP_P1ST1CR_BINS_Field := 16#0#;
      --  Statistics source
      SRC           : DCMIPP_P1ST1CR_SRC_Field := 16#0#;
      --  Statistics mode
      MODE          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1ST1CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      BINS          at 0 range 2 .. 3;
      SRC           at 0 range 4 .. 6;
      MODE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1ST2CR_BINS_Field is HAL.UInt2;
   subtype DCMIPP_P1ST2CR_SRC_Field is HAL.UInt3;

   --  DCMIPP Pipe1 statistics 2 control register
   type DCMIPP_P1ST2CR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Bin definition
      BINS          : DCMIPP_P1ST2CR_BINS_Field := 16#0#;
      --  Statistics source
      SRC           : DCMIPP_P1ST2CR_SRC_Field := 16#0#;
      --  Statistics mode
      MODE          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1ST2CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      BINS          at 0 range 2 .. 3;
      SRC           at 0 range 4 .. 6;
      MODE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1ST3CR_BINS_Field is HAL.UInt2;
   subtype DCMIPP_P1ST3CR_SRC_Field is HAL.UInt3;

   --  DCMIPP Pipe1 statistics 3 control register
   type DCMIPP_P1ST3CR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Bin definition
      BINS          : DCMIPP_P1ST3CR_BINS_Field := 16#0#;
      --  Statistics source
      SRC           : DCMIPP_P1ST3CR_SRC_Field := 16#0#;
      --  Statistics mode
      MODE          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1ST3CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      BINS          at 0 range 2 .. 3;
      SRC           at 0 range 4 .. 6;
      MODE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1STSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1STSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipe1 statistics window start register
   type DCMIPP_P1STSTR_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1STSTR_HSTART_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1STSTR_VSTART_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1STSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1STSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1STSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 statistics window size register
   type DCMIPP_P1STSZR_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1STSZR_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1STSZR_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  None
      CROPEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1STSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      CROPEN         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1ST1SR_ACCU_Field is HAL.UInt24;

   --  DCMIPP Pipe1 statistics 1 status register
   type DCMIPP_P1ST1SR_Register is record
      --  Read-only. Accumulation result, divided by 256.
      ACCU           : DCMIPP_P1ST1SR_ACCU_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1ST1SR_Register use record
      ACCU           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1ST2SR_ACCU_Field is HAL.UInt24;

   --  DCMIPP Pipe1 statistics 2 status register
   type DCMIPP_P1ST2SR_Register is record
      --  Read-only. accumulation result, divided by 256.
      ACCU           : DCMIPP_P1ST2SR_ACCU_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1ST2SR_Register use record
      ACCU           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1ST3SR_ACCU_Field is HAL.UInt24;

   --  DCMIPP Pipe1 statistics 3 status register
   type DCMIPP_P1ST3SR_Register is record
      --  Read-only. accumulation result, divided by 256.
      ACCU           : DCMIPP_P1ST3SR_ACCU_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1ST3SR_Register use record
      ACCU           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1DMCR_TYPE_Field is HAL.UInt2;
   subtype DCMIPP_P1DMCR_PEAK_Field is HAL.UInt3;
   subtype DCMIPP_P1DMCR_LINEV_Field is HAL.UInt3;
   subtype DCMIPP_P1DMCR_LINEH_Field is HAL.UInt3;
   subtype DCMIPP_P1DMCR_EDGE_Field is HAL.UInt3;

   --  DCMIPP Pipe1 demosaicing configuration register
   type DCMIPP_P1DMCR_Register is record
      --  None
      ENABLE         : Boolean := False;
      --  Raw Bayer type
      TYPE_k         : DCMIPP_P1DMCR_TYPE_Field := 16#0#;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Strength of the peak detection
      PEAK           : DCMIPP_P1DMCR_PEAK_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Strength of the vertical line detection
      LINEV          : DCMIPP_P1DMCR_LINEV_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Strength of the horizontal line detection
      LINEH          : DCMIPP_P1DMCR_LINEH_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Strength of the edge detection
      EDGE           : DCMIPP_P1DMCR_EDGE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1DMCR_Register use record
      ENABLE         at 0 range 0 .. 0;
      TYPE_k         at 0 range 1 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      PEAK           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      LINEV          at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LINEH          at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      EDGE           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  DCMIPP Pipe1 ColorConv configuration register
   type DCMIPP_P1CCCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  output samples type used while CLAMP is activated
      TYPE_k        : Boolean := False;
      --  Clamp the output samples
      CLAMP         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      TYPE_k        at 0 range 1 .. 1;
      CLAMP         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DCMIPP_P1CCRR1_RR_Field is HAL.UInt11;
   subtype DCMIPP_P1CCRR1_RG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 ColorConv red coefficient register 1
   type DCMIPP_P1CCRR1_Register is record
      --  Coefficient row 1 column 1 of the matrix
      RR             : DCMIPP_P1CCRR1_RR_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 1 column 2 of the matrix
      RG             : DCMIPP_P1CCRR1_RG_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCRR1_Register use record
      RR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1CCRR2_RB_Field is HAL.UInt11;
   subtype DCMIPP_P1CCRR2_RA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 ColorConv red coefficient register 2
   type DCMIPP_P1CCRR2_Register is record
      --  Coefficient row 1 column 3 of the matrix
      RB             : DCMIPP_P1CCRR2_RB_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 1 of the added column (signed integer value)
      RA             : DCMIPP_P1CCRR2_RA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCRR2_Register use record
      RB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1CCGR1_GR_Field is HAL.UInt11;
   subtype DCMIPP_P1CCGR1_GG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 ColorConv green coefficient register 1
   type DCMIPP_P1CCGR1_Register is record
      --  Coefficient row 2 column 1 of the matrix
      GR             : DCMIPP_P1CCGR1_GR_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 2 column 2 of the matrix
      GG             : DCMIPP_P1CCGR1_GG_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCGR1_Register use record
      GR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1CCGR2_GB_Field is HAL.UInt11;
   subtype DCMIPP_P1CCGR2_GA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 ColorConv green coefficient register 2
   type DCMIPP_P1CCGR2_Register is record
      --  Coefficient row 2 column 3 of the matrix
      GB             : DCMIPP_P1CCGR2_GB_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 2 of the added column (signed integer value)
      GA             : DCMIPP_P1CCGR2_GA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCGR2_Register use record
      GB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1CCBR1_BR_Field is HAL.UInt11;
   subtype DCMIPP_P1CCBR1_BG_Field is HAL.UInt11;

   --  DCMIPP Pipex ColorConv blue coefficient register 1
   type DCMIPP_P1CCBR1_Register is record
      --  Coefficient row 3 column 1 of the matrix
      BR             : DCMIPP_P1CCBR1_BR_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 3 column 2 of the matrix
      BG             : DCMIPP_P1CCBR1_BG_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCBR1_Register use record
      BR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1CCBR2_BB_Field is HAL.UInt11;
   subtype DCMIPP_P1CCBR2_BA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 ColorConv blue coefficient register 2
   type DCMIPP_P1CCBR2_Register is record
      --  Coefficient row 3 column 3 of the matrix
      BB             : DCMIPP_P1CCBR2_BB_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 3 of the added column (signed integer value)
      BA             : DCMIPP_P1CCBR2_BA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCBR2_Register use record
      BB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1CTCR1_LUM0_Field is HAL.UInt6;

   --  DCMIPP Pipe1 contrast control register 1
   type DCMIPP_P1CTCR1_Register is record
      --  None
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  Luminance increase for input luminance of 0 (increase is idle with
      --  LUMx = 16)
      LUM0           : DCMIPP_P1CTCR1_LUM0_Field := 16#10#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CTCR1_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      LUM0           at 0 range 9 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DCMIPP_P1CTCR2_LUM4_Field is HAL.UInt6;
   subtype DCMIPP_P1CTCR2_LUM3_Field is HAL.UInt6;
   subtype DCMIPP_P1CTCR2_LUM2_Field is HAL.UInt6;
   subtype DCMIPP_P1CTCR2_LUM1_Field is HAL.UInt6;

   --  DCMIPP Pipe1 contrast control register 2
   type DCMIPP_P1CTCR2_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Luminance increase for input luminance of 128 (increase is idle with
      --  LUMx = 16)
      LUM4           : DCMIPP_P1CTCR2_LUM4_Field := 16#10#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Luminance increase for input luminance of 96 (increase is idle with
      --  LUMx = 16)
      LUM3           : DCMIPP_P1CTCR2_LUM3_Field := 16#10#;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Luminance increase for input luminance of 64 (increase is idle with
      --  LUMx = 16)
      LUM2           : DCMIPP_P1CTCR2_LUM2_Field := 16#10#;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  Luminance increase for input luminance of 32 (increase is idle with
      --  LUMx = 16)
      LUM1           : DCMIPP_P1CTCR2_LUM1_Field := 16#10#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CTCR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LUM4           at 0 range 1 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LUM3           at 0 range 9 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      LUM2           at 0 range 17 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      LUM1           at 0 range 25 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CTCR3_LUM8_Field is HAL.UInt6;
   subtype DCMIPP_P1CTCR3_LUM7_Field is HAL.UInt6;
   subtype DCMIPP_P1CTCR3_LUM6_Field is HAL.UInt6;
   subtype DCMIPP_P1CTCR3_LUM5_Field is HAL.UInt6;

   --  DCMIPP Pipe1 contrast control register 3
   type DCMIPP_P1CTCR3_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Luminance increase for input luminance of 256 (increase is idle with
      --  LUMx = 16)
      LUM8           : DCMIPP_P1CTCR3_LUM8_Field := 16#10#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Luminance increase for input luminance of 224 (increase is idle with
      --  LUMx = 16)
      LUM7           : DCMIPP_P1CTCR3_LUM7_Field := 16#10#;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Luminance increase for input luminance of 192 (increase is idle with
      --  LUMx = 16)
      LUM6           : DCMIPP_P1CTCR3_LUM6_Field := 16#10#;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  Luminance increase for input luminance of 160 (increase is idle with
      --  LUMx = 16)
      LUM5           : DCMIPP_P1CTCR3_LUM5_Field := 16#10#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CTCR3_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LUM8           at 0 range 1 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LUM7           at 0 range 9 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      LUM6           at 0 range 17 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      LUM5           at 0 range 25 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1FCTCR_FRATE_Field is HAL.UInt2;

   --  DCMIPP Pipex flow control configuration register
   type DCMIPP_P1FCTCR_Register is record
      --  Frame capture rate control
      FRATE         : DCMIPP_P1FCTCR_FRATE_Field := 16#0#;
      --  Capture mode
      CPTMODE       : Boolean := False;
      --  Capture requested
      CPTREQ        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1FCTCR_Register use record
      FRATE         at 0 range 0 .. 1;
      CPTMODE       at 0 range 2 .. 2;
      CPTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P1CRSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipex crop window start register
   type DCMIPP_P1CRSTR_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRSTR_HSTART_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRSTR_VSTART_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex crop window size register
   type DCMIPP_P1CRSZR_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide. If the value is
      --  maintained at 0 when enabling the crop by means of the ENABLE bit,
      --  the value is forced internally at 0xFFE, which is the maximum value.
      HSIZE          : DCMIPP_P1CRSZR_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high. If the value is maintained
      --  at 0 when enabling the crop thanks to the ENABLE bit, the value is
      --  forced internally at 0xFFE, which is the maximum value.
      VSIZE          : DCMIPP_P1CRSZR_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  None
      ENABLE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1DCCR_HDEC_Field is HAL.UInt2;
   subtype DCMIPP_P1DCCR_VDEC_Field is HAL.UInt2;

   --  DCMIPP Pipex decimation register
   type DCMIPP_P1DCCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  Horizontal decimation ratio
      HDEC          : DCMIPP_P1DCCR_HDEC_Field := 16#0#;
      --  Vertical decimation ratio
      VDEC          : DCMIPP_P1DCCR_VDEC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1DCCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      HDEC          at 0 range 1 .. 2;
      VDEC          at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCMIPP_P1DSCR_HDIV_Field is HAL.UInt10;
   subtype DCMIPP_P1DSCR_VDIV_Field is HAL.UInt10;

   --  DCMIPP Pipex downsize configuration register
   type DCMIPP_P1DSCR_Register is record
      --  Horizontal division factor, from 128 (8x) to 1023 (1x)
      HDIV           : DCMIPP_P1DSCR_HDIV_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Vertical division factor, from 128 (8x) to 1023 (1x)
      VDIV           : DCMIPP_P1DSCR_VDIV_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  None
      ENABLE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1DSCR_Register use record
      HDIV           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      VDIV           at 0 range 16 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1DSRTIOR_HRATIO_Field is HAL.UInt16;
   subtype DCMIPP_P1DSRTIOR_VRATIO_Field is HAL.UInt16;

   --  DCMIPP Pipex downsize ratio register
   type DCMIPP_P1DSRTIOR_Register is record
      --  Horizontal ratio, from 8192 (1x) to 65535 (8x)
      HRATIO : DCMIPP_P1DSRTIOR_HRATIO_Field := 16#0#;
      --  Vertical ratio, from 8192 (1x) to 65535 (8x)
      VRATIO : DCMIPP_P1DSRTIOR_VRATIO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1DSRTIOR_Register use record
      HRATIO at 0 range 0 .. 15;
      VRATIO at 0 range 16 .. 31;
   end record;

   subtype DCMIPP_P1DSSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1DSSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex downsize destination size register
   type DCMIPP_P1DSSZR_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1DSSZR_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1DSSZR_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1DSSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CMRICR_ROILSZ_Field is HAL.UInt2;

   --  DCMIPP Pipex common ROI configuration register
   type DCMIPP_P1CMRICR_Register is record
      --  Region of interest line size width
      ROILSZ         : DCMIPP_P1CMRICR_ROILSZ_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Region of interest 1 enable
      ROI1EN         : Boolean := False;
      --  Region of interest 2 enable
      ROI2EN         : Boolean := False;
      --  Region of interest 3 enable
      ROI3EN         : Boolean := False;
      --  Region of interest 4 enable
      ROI4EN         : Boolean := False;
      --  Region of interest 5 enable
      ROI5EN         : Boolean := False;
      --  Region of interest 6 enable
      ROI6EN         : Boolean := False;
      --  Region of interest 7 enable
      ROI7EN         : Boolean := False;
      --  Region of interest 8 enable
      ROI8EN         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CMRICR_Register use record
      ROILSZ         at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ROI1EN         at 0 range 16 .. 16;
      ROI2EN         at 0 range 17 .. 17;
      ROI3EN         at 0 range 18 .. 18;
      ROI4EN         at 0 range 19 .. 19;
      ROI5EN         at 0 range 20 .. 20;
      ROI6EN         at 0 range 21 .. 21;
      ROI7EN         at 0 range 22 .. 22;
      ROI8EN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1RI1CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI1CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI1CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI1CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI1CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI1 configuration register 1
   type DCMIPP_P1RI1CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI1CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI1CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI1CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI1CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI1CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI1CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI1CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI1CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI1 configuration register 2
   type DCMIPP_P1RI1CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI1CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI1CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI1CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI2CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI2CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI2CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI2CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI2CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI2 configuration register 1
   type DCMIPP_P1RI2CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI2CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI2CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI2CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI2CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI2CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI2CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI2CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI2CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI2 configuration register 2
   type DCMIPP_P1RI2CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI2CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI2CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI2CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI3CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI3CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI3CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI3CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI3CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI3 configuration register 1
   type DCMIPP_P1RI3CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI3CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI3CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI3CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI3CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI3CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI3CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI3CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI3CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI3 configuration register 2
   type DCMIPP_P1RI3CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI3CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI3CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI3CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI4CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI4CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI4CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI4CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI4CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI4 configuration register 1
   type DCMIPP_P1RI4CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI4CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI4CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI4CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI4CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI4CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI4CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI4CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI4CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI4 configuration register 2
   type DCMIPP_P1RI4CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI4CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI4CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI4CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI5CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI5CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI5CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI5CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI5CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI5 configuration register 1
   type DCMIPP_P1RI5CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI5CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI5CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI5CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI5CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI5CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI5CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI5CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI5CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI5 configuration register 2
   type DCMIPP_P1RI5CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI5CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI5CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI5CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI6CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI6CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI6CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI6CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI6CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI6 configuration register 1
   type DCMIPP_P1RI6CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI6CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI6CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI6CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI6CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI6CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI6CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI6CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI6CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI6 configuration register 2
   type DCMIPP_P1RI6CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI6CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI6CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI6CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI7CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI7CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI7CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI7CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI7CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI7 configuration register 1
   type DCMIPP_P1RI7CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI7CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI7CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI7CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI7CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI7CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI7CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI7CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI7CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI7 configuration register 2
   type DCMIPP_P1RI7CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI7CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI7CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI7CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1RI8CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI8CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1RI8CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1RI8CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1RI8CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 ROI8 configuration register 1
   type DCMIPP_P1RI8CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1RI8CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P1RI8CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P1RI8CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1RI8CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P1RI8CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI8CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1RI8CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1RI8CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 ROI8 configuration register 2
   type DCMIPP_P1RI8CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1RI8CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1RI8CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1RI8CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  DCMIPP Pipex gamma configuration register
   type DCMIPP_P1GMCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1GMCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DCMIPP Pipe1 YUVConv configuration register
   type DCMIPP_P1YUVCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  Output samples type used while CLAMP is activated
      TYPE_k        : Boolean := False;
      --  Clamp the output samples
      CLAMP         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      TYPE_k        at 0 range 1 .. 1;
      CLAMP         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DCMIPP_P1YUVRR1_RR_Field is HAL.UInt11;
   subtype DCMIPP_P1YUVRR1_RG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 YUVConv red coefficient register 1
   type DCMIPP_P1YUVRR1_Register is record
      --  Coefficient row 1 column 1 of the matrix
      RR             : DCMIPP_P1YUVRR1_RR_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 1 column 2 of the matrix
      RG             : DCMIPP_P1YUVRR1_RG_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVRR1_Register use record
      RR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1YUVRR2_RB_Field is HAL.UInt11;
   subtype DCMIPP_P1YUVRR2_RA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 YUVConv red coefficient register 2
   type DCMIPP_P1YUVRR2_Register is record
      --  Coefficient row 1 column 3 of the matrix
      RB             : DCMIPP_P1YUVRR2_RB_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 1 of the added column (signed integer value)
      RA             : DCMIPP_P1YUVRR2_RA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVRR2_Register use record
      RB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1YUVGR1_GR_Field is HAL.UInt11;
   subtype DCMIPP_P1YUVGR1_GG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 YUVConv green coefficient register 1
   type DCMIPP_P1YUVGR1_Register is record
      --  Coefficient row 2 column 1 of the matrix
      GR             : DCMIPP_P1YUVGR1_GR_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 2 column 2 of the matrix
      GG             : DCMIPP_P1YUVGR1_GG_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVGR1_Register use record
      GR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1YUVGR2_GB_Field is HAL.UInt11;
   subtype DCMIPP_P1YUVGR2_GA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 YUVConv green coefficient register 2
   type DCMIPP_P1YUVGR2_Register is record
      --  Coefficient row 2 column 3 of the matrix
      GB             : DCMIPP_P1YUVGR2_GB_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 2 of the added column (signed integer value)
      GA             : DCMIPP_P1YUVGR2_GA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVGR2_Register use record
      GB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1YUVBR1_BR_Field is HAL.UInt11;
   subtype DCMIPP_P1YUVBR1_BG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 YUVConv blue coefficient register 1
   type DCMIPP_P1YUVBR1_Register is record
      --  Coefficient row 3 column 1 of the matrix
      BR             : DCMIPP_P1YUVBR1_BR_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 3 column 2 of the matrix
      BG             : DCMIPP_P1YUVBR1_BG_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVBR1_Register use record
      BR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1YUVBR2_BB_Field is HAL.UInt11;
   subtype DCMIPP_P1YUVBR2_BA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 YUV blue coefficient register 2
   type DCMIPP_P1YUVBR2_Register is record
      --  Coefficient row 3 column 3 of the matrix
      BB             : DCMIPP_P1YUVBR2_BB_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Coefficient row 3 of the added column (signed integer value)
      BA             : DCMIPP_P1YUVBR2_BA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1YUVBR2_Register use record
      BB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1PPCR_FORMAT_Field is HAL.UInt4;
   subtype DCMIPP_P1PPCR_LINEMULT_Field is HAL.UInt3;
   subtype DCMIPP_P1PPCR_LMAWM_Field is HAL.UInt3;

   --  DCMIPP Pipe1 pixel packer configuration register
   type DCMIPP_P1PPCR_Register is record
      --  Memory format
      FORMAT         : DCMIPP_P1PPCR_FORMAT_Field := 16#0#;
      --  Swaps R-vs-B components if RGB, and U-vs-V components if YUV
      SWAPRB         : Boolean := False;
      --  unspecified
      Reserved_5_12  : HAL.UInt8 := 16#0#;
      --  Amount of capture completed lines for LINE Event and Interrupt
      LINEMULT       : DCMIPP_P1PPCR_LINEMULT_Field := 16#0#;
      --  Double buffer mode
      DBM            : Boolean := False;
      --  Line multi address wrapping modulo.
      LMAWM          : DCMIPP_P1PPCR_LMAWM_Field := 16#0#;
      --  Line multi address wrapping enable bit.
      LMAWE          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1PPCR_Register use record
      FORMAT         at 0 range 0 .. 3;
      SWAPRB         at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      LINEMULT       at 0 range 13 .. 15;
      DBM            at 0 range 16 .. 16;
      LMAWM          at 0 range 17 .. 19;
      LMAWE          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DCMIPP_P1PPM0PR_PITCH_Field is HAL.UInt15;

   --  DCMIPP Pipex pixel packer Memory0 pitch register
   type DCMIPP_P1PPM0PR_Register is record
      --  Number of bytes between the address of two consecutive lines.
      PITCH          : DCMIPP_P1PPM0PR_PITCH_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1PPM0PR_Register use record
      PITCH          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DCMIPP_P1PPM1PR_PITCH_Field is HAL.UInt15;

   --  DCMIPP Pipex pixel packer Memory1 pitch register
   type DCMIPP_P1PPM1PR_Register is record
      --  Number of bytes between the address of two consecutive lines.
      PITCH          : DCMIPP_P1PPM1PR_PITCH_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1PPM1PR_Register use record
      PITCH          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  DCMIPP Pipe1 interrupt enable register
   type DCMIPP_P1IER_Register is record
      --  Multi-line capture completed interrupt enable
      LINEIE        : Boolean := False;
      --  Frame capture completed interrupt enable
      FRAMEIE       : Boolean := False;
      --  VSYNC interrupt enable
      VSYNCIE       : Boolean := False;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  Overrun interrupt enable
      OVRIE         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1IER_Register use record
      LINEIE        at 0 range 0 .. 0;
      FRAMEIE       at 0 range 1 .. 1;
      VSYNCIE       at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      OVRIE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DCMIPP Pipe1 status register
   type DCMIPP_P1SR_Register is record
      --  Read-only. Multi-line capture completed raw interrupt status
      LINEF          : Boolean;
      --  Read-only. Frame capture completed raw interrupt status
      FRAMEF         : Boolean;
      --  Read-only. VSYNC raw interrupt status
      VSYNCF         : Boolean;
      --  unspecified
      Reserved_3_6   : HAL.UInt4;
      --  Read-only. Overrun raw interrupt status
      OVRF           : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Last line LSB bit, sampled at frame capture complete
      --  event.
      LSTLINE        : Boolean;
      --  Read-only. Last frame LSB bit, sampled at frame capture complete
      --  event. The information is extracted from the frame data number, which
      --  can be delivered by the camera through the CSI2 interface.
      LSTFRM         : Boolean;
      --  unspecified
      Reserved_18_22 : HAL.UInt5;
      --  Read-only. Capture immediate status
      CPTACT         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1SR_Register use record
      LINEF          at 0 range 0 .. 0;
      FRAMEF         at 0 range 1 .. 1;
      VSYNCF         at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      OVRF           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LSTLINE        at 0 range 16 .. 16;
      LSTFRM         at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      CPTACT         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DCMIPP Pipe1 interrupt clear register
   type DCMIPP_P1FCR_Register is record
      --  Write-only. Multi-line capture complete interrupt status clear
      CLINEF        : Boolean := False;
      --  Write-only. Frame capture complete interrupt status clear
      CFRAMEF       : Boolean := False;
      --  Write-only. Vertical synchronization interrupt status clear
      CVSYNCF       : Boolean := False;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  Write-only. Overrun interrupt status clear
      COVRF         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1FCR_Register use record
      CLINEF        at 0 range 0 .. 0;
      CFRAMEF       at 0 range 1 .. 1;
      CVSYNCF       at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      COVRF         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1CFSCR_DTIDA_Field is HAL.UInt6;
   subtype DCMIPP_P1CFSCR_DTIDB_Field is HAL.UInt6;
   subtype DCMIPP_P1CFSCR_DTMODE_Field is HAL.UInt2;
   subtype DCMIPP_P1CFSCR_VC_Field is HAL.UInt2;
   subtype DCMIPP_P1CFSCR_FDTF_Field is HAL.UInt6;

   --  DCMIPP Pipe1 current flow selection configuration register
   type DCMIPP_P1CFSCR_Register is record
      --  Read-only. Current data type ID A
      DTIDA          : DCMIPP_P1CFSCR_DTIDA_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Current data type ID B
      DTIDB          : DCMIPP_P1CFSCR_DTIDB_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Flow selection mode
      DTMODE         : DCMIPP_P1CFSCR_DTMODE_Field;
      --  Read-only. Current differentiates Pipe2 vs. Pipe1
      PIPEDIFF       : Boolean;
      --  Read-only. Current flow selection mode
      VC             : DCMIPP_P1CFSCR_VC_Field;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. Current force data type format
      FDTF           : DCMIPP_P1CFSCR_FDTF_Field;
      --  Read-only. Current force data type format enable
      FDTFEN         : Boolean;
      --  Read-only. Current activation of PipeN
      PIPEN          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CFSCR_Register use record
      DTIDA          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DTIDB          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTMODE         at 0 range 16 .. 17;
      PIPEDIFF       at 0 range 18 .. 18;
      VC             at 0 range 19 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FDTF           at 0 range 24 .. 29;
      FDTFEN         at 0 range 30 .. 30;
      PIPEN          at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CBPRCR_STRENGTH_Field is HAL.UInt3;

   --  DCMIPP Pipe1 current bad pixel removal register
   type DCMIPP_P1CBPRCR_Register is record
      --  Read-only. Current status of enable bit
      ENABLE        : Boolean;
      --  Read-only. Current strength (aggressiveness) of the bad pixel
      --  detection:
      STRENGTH      : DCMIPP_P1CBPRCR_STRENGTH_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CBPRCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      STRENGTH      at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P1CBLCCR_BLCB_Field is HAL.UInt8;
   subtype DCMIPP_P1CBLCCR_BLCG_Field is HAL.UInt8;
   subtype DCMIPP_P1CBLCCR_BLCR_Field is HAL.UInt8;

   --  DCMIPP Pipe1 current black level calibration control register
   type DCMIPP_P1CBLCCR_Register is record
      --  Read-only. For current black level calibration
      ENABLE       : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
      --  Read-only. Current black level calibration - Blue
      BLCB         : DCMIPP_P1CBLCCR_BLCB_Field;
      --  Read-only. Current black level calibration - Green
      BLCG         : DCMIPP_P1CBLCCR_BLCG_Field;
      --  Read-only. Current black level calibration - Red
      BLCR         : DCMIPP_P1CBLCCR_BLCR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CBLCCR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      BLCB         at 0 range 8 .. 15;
      BLCG         at 0 range 16 .. 23;
      BLCR         at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1CEXCR1_MULTR_Field is HAL.UInt8;
   subtype DCMIPP_P1CEXCR1_SHFR_Field is HAL.UInt3;

   --  DCMIPP Pipe1 current exposure control register 1
   type DCMIPP_P1CEXCR1_Register is record
      --  Read-only. for exposure control (multiplication and shift)
      ENABLE         : Boolean;
      --  unspecified
      Reserved_1_19  : HAL.UInt19;
      --  Read-only. Current exposure multiplier - Red
      MULTR          : DCMIPP_P1CEXCR1_MULTR_Field;
      --  Read-only. Current exposure shift - Red
      SHFR           : DCMIPP_P1CEXCR1_SHFR_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CEXCR1_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_19  at 0 range 1 .. 19;
      MULTR          at 0 range 20 .. 27;
      SHFR           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CEXCR2_MULTB_Field is HAL.UInt8;
   subtype DCMIPP_P1CEXCR2_SHFB_Field is HAL.UInt3;
   subtype DCMIPP_P1CEXCR2_MULTG_Field is HAL.UInt8;
   subtype DCMIPP_P1CEXCR2_SHFG_Field is HAL.UInt3;

   --  DCMIPP Pipe1 current exposure control register 2
   type DCMIPP_P1CEXCR2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. Current exposure multiplier - Blue
      MULTB          : DCMIPP_P1CEXCR2_MULTB_Field;
      --  Read-only. Current exposure shift - Blue
      SHFB           : DCMIPP_P1CEXCR2_SHFB_Field;
      --  unspecified
      Reserved_15_19 : HAL.UInt5;
      --  Read-only. Current exposure multiplier - Green
      MULTG          : DCMIPP_P1CEXCR2_MULTG_Field;
      --  Read-only. Current exposure shift - Green
      SHFG           : DCMIPP_P1CEXCR2_SHFG_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CEXCR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MULTB          at 0 range 4 .. 11;
      SHFB           at 0 range 12 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      MULTG          at 0 range 20 .. 27;
      SHFG           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CST1CR_BINS_Field is HAL.UInt2;
   subtype DCMIPP_P1CST1CR_SRC_Field is HAL.UInt3;
   subtype DCMIPP_P1CST1CR_ACCU_Field is HAL.UInt24;

   --  DCMIPP Pipe1 current statistics 1 control register
   type DCMIPP_P1CST1CR_Register is record
      --  Read-only. Current enable bit value
      ENABLE       : Boolean;
      --  unspecified
      Reserved_1_1 : HAL.Bit;
      --  Read-only. Current bin definition
      BINS         : DCMIPP_P1CST1CR_BINS_Field;
      --  Read-only. Current source of statistics
      SRC          : DCMIPP_P1CST1CR_SRC_Field;
      --  Read-only. Current statistics mode
      MODE         : Boolean;
      --  Read-only. Current accumulation result, divided by 256.
      ACCU         : DCMIPP_P1CST1CR_ACCU_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CST1CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      BINS         at 0 range 2 .. 3;
      SRC          at 0 range 4 .. 6;
      MODE         at 0 range 7 .. 7;
      ACCU         at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1CST2CR_BINS_Field is HAL.UInt2;
   subtype DCMIPP_P1CST2CR_SRC_Field is HAL.UInt3;
   subtype DCMIPP_P1CST2CR_ACCU_Field is HAL.UInt24;

   --  DCMIPP Pipe1 current statistics 2 control register
   type DCMIPP_P1CST2CR_Register is record
      --  Read-only. None
      ENABLE       : Boolean;
      --  unspecified
      Reserved_1_1 : HAL.Bit;
      --  Read-only. Bin definition
      BINS         : DCMIPP_P1CST2CR_BINS_Field;
      --  Read-only. Statistics source
      SRC          : DCMIPP_P1CST2CR_SRC_Field;
      --  Read-only. Statistics mode
      MODE         : Boolean;
      --  Read-only. Accumulation result, divided by 256.
      ACCU         : DCMIPP_P1CST2CR_ACCU_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CST2CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      BINS         at 0 range 2 .. 3;
      SRC          at 0 range 4 .. 6;
      MODE         at 0 range 7 .. 7;
      ACCU         at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1CST3CR_BINS_Field is HAL.UInt2;
   subtype DCMIPP_P1CST3CR_SRC_Field is HAL.UInt3;
   subtype DCMIPP_P1CST3CR_ACCU_Field is HAL.UInt24;

   --  DCMIPP Pipe1 current statistics 3 control register
   type DCMIPP_P1CST3CR_Register is record
      --  Read-only. None
      ENABLE       : Boolean;
      --  unspecified
      Reserved_1_1 : HAL.Bit;
      --  Read-only. Current bin definition
      BINS         : DCMIPP_P1CST3CR_BINS_Field;
      --  Read-only. Statistics source
      SRC          : DCMIPP_P1CST3CR_SRC_Field;
      --  Read-only. Statistics mode
      MODE         : Boolean;
      --  Read-only. Accumulation result, divided by 256.
      ACCU         : DCMIPP_P1CST3CR_ACCU_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CST3CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      BINS         at 0 range 2 .. 3;
      SRC          at 0 range 4 .. 6;
      MODE         at 0 range 7 .. 7;
      ACCU         at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P1CSTSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CSTSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current statistics window start register
   type DCMIPP_P1CSTSTR_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CSTSTR_HSTART_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CSTSTR_VSTART_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CSTSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CSTSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CSTSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current statistics window size register
   type DCMIPP_P1CSTSZR_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CSTSZR_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CSTSZR_VSIZE_Field;
      --  unspecified
      Reserved_28_30 : HAL.UInt3;
      --  Read-only. Current CROPEN bit value
      CROPEN         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CSTSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      CROPEN         at 0 range 31 .. 31;
   end record;

   --  DCMIPP Pipe1 current ColorConv configuration register
   type DCMIPP_P1CCCCR_Register is record
      --  Read-only. Current value applied
      ENABLE        : Boolean;
      --  Read-only. Output samples type used while CLAMP is activated
      TYPE_k        : Boolean;
      --  Read-only. Clamp the output samples
      CLAMP         : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      TYPE_k        at 0 range 1 .. 1;
      CLAMP         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DCMIPP_P1CCCRR1_RR_Field is HAL.UInt11;
   subtype DCMIPP_P1CCCRR1_RG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 current ColorConv red coefficient register 1
   type DCMIPP_P1CCCRR1_Register is record
      --  Read-only. Current coefficient row 1 column 1 of the matrix
      RR             : DCMIPP_P1CCCRR1_RR_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Current coefficient row 1 column 2 of the matrix
      RG             : DCMIPP_P1CCCRR1_RG_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCRR1_Register use record
      RR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1CCCRR2_RB_Field is HAL.UInt11;
   subtype DCMIPP_P1CCCRR2_RA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 current ColorConv red coefficient register 2
   type DCMIPP_P1CCCRR2_Register is record
      --  Read-only. Current coefficient row 1 column 3 of the matrix
      RB             : DCMIPP_P1CCCRR2_RB_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Current coefficient row 1 of the added column (signed
      --  integer value)
      RA             : DCMIPP_P1CCCRR2_RA_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCRR2_Register use record
      RB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1CCCGR1_GR_Field is HAL.UInt11;
   subtype DCMIPP_P1CCCGR1_GG_Field is HAL.UInt11;

   --  DCMIPP Pipe1 current ColorConv green coefficient register 1
   type DCMIPP_P1CCCGR1_Register is record
      --  Read-only. Current coefficient row 2 column 1 of the matrix
      GR             : DCMIPP_P1CCCGR1_GR_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Current coefficient row 2 column 2 of the matrix
      GG             : DCMIPP_P1CCCGR1_GG_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCGR1_Register use record
      GR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1CCCGR2_GB_Field is HAL.UInt11;
   subtype DCMIPP_P1CCCGR2_GA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 current ColorConv green coefficient register 2
   type DCMIPP_P1CCCGR2_Register is record
      --  Read-only. Current coefficient row 2 column 3 of the matrix
      GB             : DCMIPP_P1CCCGR2_GB_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Current coefficient row 2 of the added column (signed
      --  integer value)
      GA             : DCMIPP_P1CCCGR2_GA_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCGR2_Register use record
      GB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1CCCBR1_BR_Field is HAL.UInt11;
   subtype DCMIPP_P1CCCBR1_BG_Field is HAL.UInt11;

   --  DCMIPP Pipex current ColorConv blue coefficient register 1
   type DCMIPP_P1CCCBR1_Register is record
      --  Read-only. Current coefficient row 3 column 1 of the matrix
      BR             : DCMIPP_P1CCCBR1_BR_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Current coefficient row 3 column 2 of the matrix
      BG             : DCMIPP_P1CCCBR1_BG_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCBR1_Register use record
      BR             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BG             at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCMIPP_P1CCCBR2_BB_Field is HAL.UInt11;
   subtype DCMIPP_P1CCCBR2_BA_Field is HAL.UInt10;

   --  DCMIPP Pipe1 current ColorConv blue coefficient register 2
   type DCMIPP_P1CCCBR2_Register is record
      --  Read-only. Current coefficient row 3 column 3 of the matrix
      BB             : DCMIPP_P1CCCBR2_BB_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Current coefficient row 3 of the added column (signed
      --  integer value)
      BA             : DCMIPP_P1CCCBR2_BA_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCCBR2_Register use record
      BB             at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BA             at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCMIPP_P1CCTCR1_LUM0_Field is HAL.UInt6;

   --  DCMIPP Pipe1 current contrast control register 1
   type DCMIPP_P1CCTCR1_Register is record
      --  Read-only. Current ENABLE bit value
      ENABLE         : Boolean;
      --  unspecified
      Reserved_1_8   : HAL.UInt8;
      --  Read-only. Current luminance increase for input luminance of 0
      --  (increase is idle with LUMx = 16)
      LUM0           : DCMIPP_P1CCTCR1_LUM0_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCTCR1_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      LUM0           at 0 range 9 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DCMIPP_P1CCTCR2_LUM4_Field is HAL.UInt6;
   subtype DCMIPP_P1CCTCR2_LUM3_Field is HAL.UInt6;
   subtype DCMIPP_P1CCTCR2_LUM2_Field is HAL.UInt6;
   subtype DCMIPP_P1CCTCR2_LUM1_Field is HAL.UInt6;

   --  DCMIPP Pipe1 current contrast control register 2
   type DCMIPP_P1CCTCR2_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Current luminance increase for input luminance of 128
      --  (increase is idle with LUMx = 16)
      LUM4           : DCMIPP_P1CCTCR2_LUM4_Field;
      --  unspecified
      Reserved_7_8   : HAL.UInt2;
      --  Read-only. Current luminance increase for input luminance of 96
      --  (increase is idle with LUMx = 16)
      LUM3           : DCMIPP_P1CCTCR2_LUM3_Field;
      --  unspecified
      Reserved_15_16 : HAL.UInt2;
      --  Read-only. Current luminance increase for input luminance of 64
      --  (increase is idle with LUMx = 16)
      LUM2           : DCMIPP_P1CCTCR2_LUM2_Field;
      --  unspecified
      Reserved_23_24 : HAL.UInt2;
      --  Read-only. Current luminance increase for input luminance of 32
      --  (increase is idle with LUMx = 16)
      LUM1           : DCMIPP_P1CCTCR2_LUM1_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCTCR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LUM4           at 0 range 1 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LUM3           at 0 range 9 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      LUM2           at 0 range 17 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      LUM1           at 0 range 25 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CCTCR3_LUM8_Field is HAL.UInt6;
   subtype DCMIPP_P1CCTCR3_LUM7_Field is HAL.UInt6;
   subtype DCMIPP_P1CCTCR3_LUM6_Field is HAL.UInt6;
   subtype DCMIPP_P1CCTCR3_LUM5_Field is HAL.UInt6;

   --  DCMIPP Pipe1 current contrast control register 3
   type DCMIPP_P1CCTCR3_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Luminance increase for input luminance of 256 (increase is
      --  idle with LUMx = 16)
      LUM8           : DCMIPP_P1CCTCR3_LUM8_Field;
      --  unspecified
      Reserved_7_8   : HAL.UInt2;
      --  Read-only. Luminance increase for input luminance of 224 (increase is
      --  idle with LUMx = 16)
      LUM7           : DCMIPP_P1CCTCR3_LUM7_Field;
      --  unspecified
      Reserved_15_16 : HAL.UInt2;
      --  Read-only. Luminance increase for input luminance of 192 (increase is
      --  idle with LUMx = 16)
      LUM6           : DCMIPP_P1CCTCR3_LUM6_Field;
      --  unspecified
      Reserved_23_24 : HAL.UInt2;
      --  Read-only. Luminance increase for input luminance of 160 (increase is
      --  idle with LUMx = 16)
      LUM5           : DCMIPP_P1CCTCR3_LUM5_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCTCR3_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LUM8           at 0 range 1 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LUM7           at 0 range 9 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      LUM6           at 0 range 17 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      LUM5           at 0 range 25 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CFCTCR_FRATE_Field is HAL.UInt2;

   --  DCMIPP Pipex current flow control configuration register
   type DCMIPP_P1CFCTCR_Register is record
      --  Read-only. Frame capture rate control
      FRATE         : DCMIPP_P1CFCTCR_FRATE_Field;
      --  Read-only. Capture mode
      CPTMODE       : Boolean;
      --  Read-only. Capture requested
      CPTREQ        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CFCTCR_Register use record
      FRATE         at 0 range 0 .. 1;
      CPTMODE       at 0 range 2 .. 2;
      CPTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P1CCRSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CCRSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipex current crop window start register
   type DCMIPP_P1CCRSTR_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CCRSTR_HSTART_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CCRSTR_VSTART_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCRSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CCRSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CCRSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex current crop window size register
   type DCMIPP_P1CCRSZR_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CCRSZR_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CCRSZR_VSIZE_Field;
      --  unspecified
      Reserved_28_30 : HAL.UInt3;
      --  Read-only. Current ENABLE bit value.
      ENABLE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCRSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CDCCR_HDEC_Field is HAL.UInt2;
   subtype DCMIPP_P1CDCCR_VDEC_Field is HAL.UInt2;

   --  DCMIPP Pipex current decimation register
   type DCMIPP_P1CDCCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  Horizontal decimation ratio
      HDEC          : DCMIPP_P1CDCCR_HDEC_Field := 16#0#;
      --  Vertical decimation ratio
      VDEC          : DCMIPP_P1CDCCR_VDEC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CDCCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      HDEC          at 0 range 1 .. 2;
      VDEC          at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCMIPP_P1CDSCR_HDIV_Field is HAL.UInt10;
   subtype DCMIPP_P1CDSCR_VDIV_Field is HAL.UInt10;

   --  DCMIPP Pipex current downsize configuration register
   type DCMIPP_P1CDSCR_Register is record
      --  Read-only. Current horizontal division factor, from 128 (8x) to 1023
      --  (1x)
      HDIV           : DCMIPP_P1CDSCR_HDIV_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Current vertical division factor, from 128 (8x) to 1023
      --  (1x)
      VDIV           : DCMIPP_P1CDSCR_VDIV_Field;
      --  unspecified
      Reserved_26_30 : HAL.UInt5;
      --  Read-only. Current value of bit ENABLE
      ENABLE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CDSCR_Register use record
      HDIV           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      VDIV           at 0 range 16 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P1CDSRTIOR_HRATIO_Field is HAL.UInt16;
   subtype DCMIPP_P1CDSRTIOR_VRATIO_Field is HAL.UInt16;

   --  DCMIPP Pipex current downsize ratio register
   type DCMIPP_P1CDSRTIOR_Register is record
      --  Read-only. Current horizontal ratio, from 8192 (1x) to 65535 (8x)
      HRATIO : DCMIPP_P1CDSRTIOR_HRATIO_Field;
      --  Read-only. Current vertical ratio, from 8192 (1x) to 65535 (8x)
      VRATIO : DCMIPP_P1CDSRTIOR_VRATIO_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CDSRTIOR_Register use record
      HRATIO at 0 range 0 .. 15;
      VRATIO at 0 range 16 .. 31;
   end record;

   subtype DCMIPP_P1CDSSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CDSSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex current downsize destination size register
   type DCMIPP_P1CDSSZR_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CDSSZR_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CDSSZR_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CDSSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CCMRICR_ROILSZ_Field is HAL.UInt2;

   --  DCMIPP Pipex current common ROI configuration register
   type DCMIPP_P1CCMRICR_Register is record
      --  Read-only. Current region of interest line size width
      ROILSZ         : DCMIPP_P1CCMRICR_ROILSZ_Field;
      --  unspecified
      Reserved_2_15  : HAL.UInt14;
      --  Read-only. Current region of interest 1 enable
      ROI1EN         : Boolean;
      --  Read-only. Current region of interest 2 enable
      ROI2EN         : Boolean;
      --  Read-only. Current region of interest 3 enable
      ROI3EN         : Boolean;
      --  Read-only. Current region of interest 4 enable
      ROI4EN         : Boolean;
      --  Read-only. Current region of interest 5 enable
      ROI5EN         : Boolean;
      --  Read-only. Current region of interest 6 enable
      ROI6EN         : Boolean;
      --  Read-only. Current region of interest 7 enable
      ROI7EN         : Boolean;
      --  Read-only. Current region of interest 8 enable
      ROI8EN         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CCMRICR_Register use record
      ROILSZ         at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ROI1EN         at 0 range 16 .. 16;
      ROI2EN         at 0 range 17 .. 17;
      ROI3EN         at 0 range 18 .. 18;
      ROI4EN         at 0 range 19 .. 19;
      ROI5EN         at 0 range 20 .. 20;
      ROI6EN         at 0 range 21 .. 21;
      ROI7EN         at 0 range 22 .. 22;
      ROI8EN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P1CRI1CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI1CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI1CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI1CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI1CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI1 configuration register 1
   type DCMIPP_P1CRI1CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI1CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI1CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI1CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI1CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI1CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI1CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI1CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI1CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI1 configuration register 2
   type DCMIPP_P1CRI1CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI1CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI1CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI1CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI2CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI2CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI2CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI2CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI2CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI2 configuration register 1
   type DCMIPP_P1CRI2CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI2CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI2CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI2CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI2CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI2CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI2CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI2CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI2CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI2 configuration register 2
   type DCMIPP_P1CRI2CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI2CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI2CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI2CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI3CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI3CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI3CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI3CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI3CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI3 configuration register 1
   type DCMIPP_P1CRI3CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI3CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI3CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI3CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI3CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI3CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI3CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI3CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI3CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI3 configuration register 2
   type DCMIPP_P1CRI3CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI3CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI3CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI3CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI4CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI4CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI4CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI4CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI4CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI4 configuration register 1
   type DCMIPP_P1CRI4CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI4CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI4CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI4CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI4CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI4CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI4CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI4CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI4CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI4 configuration register 2
   type DCMIPP_P1CRI4CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI4CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI4CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI4CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI5CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI5CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI5CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI5CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI5CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI5 configuration register 1
   type DCMIPP_P1CRI5CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI5CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI5CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI5CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI5CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI5CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI5CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI5CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI5CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI5 configuration register 2
   type DCMIPP_P1CRI5CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI5CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI5CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI5CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI6CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI6CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI6CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI6CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI6CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI6 configuration register 1
   type DCMIPP_P1CRI6CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI6CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI6CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI6CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI6CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI6CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI6CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI6CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI6CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI6 configuration register 2
   type DCMIPP_P1CRI6CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI6CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI6CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI6CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI7CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI7CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI7CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI7CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI7CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI7 configuration register 1
   type DCMIPP_P1CRI7CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI7CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI7CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI7CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI7CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI7CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI7CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI7CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI7CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI7 configuration register 2
   type DCMIPP_P1CRI7CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI7CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI7CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI7CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CRI8CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI8CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI8CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P1CRI8CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI8CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe1 current ROI8 configuration register 1
   type DCMIPP_P1CRI8CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P1CRI8CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P1CRI8CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P1CRI8CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P1CRI8CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P1CRI8CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI8CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P1CRI8CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P1CRI8CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe1 current ROI8 configuration register 2
   type DCMIPP_P1CRI8CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P1CRI8CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P1CRI8CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CRI8CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P1CPPCR_FORMAT_Field is HAL.UInt4;
   subtype DCMIPP_P1CPPCR_LINEMULT_Field is HAL.UInt3;
   subtype DCMIPP_P1CPPCR_LMAWM_Field is HAL.UInt3;

   --  DCMIPP Pipe1 current pixel packer configuration register
   type DCMIPP_P1CPPCR_Register is record
      --  Read-only. Memory format
      FORMAT         : DCMIPP_P1CPPCR_FORMAT_Field;
      --  Read-only. Swaps R-vs-B components if RGB, and U-vs-V components if
      --  YUV
      SWAPRB         : Boolean;
      --  unspecified
      Reserved_5_12  : HAL.UInt8;
      --  Read-only. Amount of capture completed lines for LINE Event and
      --  Interrupt
      LINEMULT       : DCMIPP_P1CPPCR_LINEMULT_Field;
      --  Read-only. Double buffer mode
      DBM            : Boolean;
      --  Read-only. Line multi address wrapping modulo
      LMAWM          : DCMIPP_P1CPPCR_LMAWM_Field;
      --  Read-only. Line multi address wrapping enable bit
      LMAWE          : Boolean;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CPPCR_Register use record
      FORMAT         at 0 range 0 .. 3;
      SWAPRB         at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      LINEMULT       at 0 range 13 .. 15;
      DBM            at 0 range 16 .. 16;
      LMAWM          at 0 range 17 .. 19;
      LMAWE          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DCMIPP_P1CPPM0PR_PITCH_Field is HAL.UInt15;

   --  DCMIPP Pipex current pixel packer Memory0 pitch register
   type DCMIPP_P1CPPM0PR_Register is record
      --  Read-only. Current number of bytes between the address of two
      --  consecutive lines.
      PITCH          : DCMIPP_P1CPPM0PR_PITCH_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CPPM0PR_Register use record
      PITCH          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DCMIPP_P1CPPM1PR_PITCH_Field is HAL.UInt15;

   --  DCMIPP Pipex current pixel packer Memory1 pitch register
   type DCMIPP_P1CPPM1PR_Register is record
      --  Read-only. Current number of bytes between the address of two
      --  consecutive lines
      PITCH          : DCMIPP_P1CPPM1PR_PITCH_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P1CPPM1PR_Register use record
      PITCH          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DCMIPP_P2FSCR_DTIDA_Field is HAL.UInt6;
   subtype DCMIPP_P2FSCR_VC_Field is HAL.UInt2;
   subtype DCMIPP_P2FSCR_FDTF_Field is HAL.UInt6;

   --  DCMIPP Pipe2 flow selection configuration register
   type DCMIPP_P2FSCR_Register is record
      --  Data type ID
      DTIDA          : DCMIPP_P2FSCR_DTIDA_Field := 16#0#;
      --  unspecified
      Reserved_6_18  : HAL.UInt13 := 16#0#;
      --  Flow selection mode
      VC             : DCMIPP_P2FSCR_VC_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Force data type format
      FDTF           : DCMIPP_P2FSCR_FDTF_Field := 16#0#;
      --  Force data type format enable
      FDTFEN         : Boolean := False;
      --  Activation of PipeN
      PIPEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2FSCR_Register use record
      DTIDA          at 0 range 0 .. 5;
      Reserved_6_18  at 0 range 6 .. 18;
      VC             at 0 range 19 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FDTF           at 0 range 24 .. 29;
      FDTFEN         at 0 range 30 .. 30;
      PIPEN          at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P2FCTCR_FRATE_Field is HAL.UInt2;

   --  DCMIPP Pipex flow control configuration register
   type DCMIPP_P2FCTCR_Register is record
      --  Frame capture rate control
      FRATE         : DCMIPP_P2FCTCR_FRATE_Field := 16#0#;
      --  Capture mode
      CPTMODE       : Boolean := False;
      --  Capture requested
      CPTREQ        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2FCTCR_Register use record
      FRATE         at 0 range 0 .. 1;
      CPTMODE       at 0 range 2 .. 2;
      CPTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P2CRSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipex crop window start register
   type DCMIPP_P2CRSTR_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRSTR_HSTART_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRSTR_VSTART_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex crop window size register
   type DCMIPP_P2CRSZR_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide. If the value is
      --  maintained at 0 when enabling the crop by means of the ENABLE bit,
      --  the value is forced internally at 0xFFE, which is the maximum value.
      HSIZE          : DCMIPP_P2CRSZR_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high. If the value is maintained
      --  at 0 when enabling the crop thanks to the ENABLE bit, the value is
      --  forced internally at 0xFFE, which is the maximum value.
      VSIZE          : DCMIPP_P2CRSZR_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  None
      ENABLE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P2DCCR_HDEC_Field is HAL.UInt2;
   subtype DCMIPP_P2DCCR_VDEC_Field is HAL.UInt2;

   --  DCMIPP Pipex decimation register
   type DCMIPP_P2DCCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  Horizontal decimation ratio
      HDEC          : DCMIPP_P2DCCR_HDEC_Field := 16#0#;
      --  Vertical decimation ratio
      VDEC          : DCMIPP_P2DCCR_VDEC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2DCCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      HDEC          at 0 range 1 .. 2;
      VDEC          at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCMIPP_P2DSCR_HDIV_Field is HAL.UInt10;
   subtype DCMIPP_P2DSCR_VDIV_Field is HAL.UInt10;

   --  DCMIPP Pipex downsize configuration register
   type DCMIPP_P2DSCR_Register is record
      --  Horizontal division factor, from 128 (8x) to 1023 (1x)
      HDIV           : DCMIPP_P2DSCR_HDIV_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Vertical division factor, from 128 (8x) to 1023 (1x)
      VDIV           : DCMIPP_P2DSCR_VDIV_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  None
      ENABLE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2DSCR_Register use record
      HDIV           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      VDIV           at 0 range 16 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P2DSRTIOR_HRATIO_Field is HAL.UInt16;
   subtype DCMIPP_P2DSRTIOR_VRATIO_Field is HAL.UInt16;

   --  DCMIPP Pipex downsize ratio register
   type DCMIPP_P2DSRTIOR_Register is record
      --  Horizontal ratio, from 8192 (1x) to 65535 (8x)
      HRATIO : DCMIPP_P2DSRTIOR_HRATIO_Field := 16#0#;
      --  Vertical ratio, from 8192 (1x) to 65535 (8x)
      VRATIO : DCMIPP_P2DSRTIOR_VRATIO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2DSRTIOR_Register use record
      HRATIO at 0 range 0 .. 15;
      VRATIO at 0 range 16 .. 31;
   end record;

   subtype DCMIPP_P2DSSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2DSSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex downsize destination size register
   type DCMIPP_P2DSSZR_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2DSSZR_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2DSSZR_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2DSSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CMRICR_ROILSZ_Field is HAL.UInt2;

   --  DCMIPP Pipex common ROI configuration register
   type DCMIPP_P2CMRICR_Register is record
      --  Region of interest line size width
      ROILSZ         : DCMIPP_P2CMRICR_ROILSZ_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Region of interest 1 enable
      ROI1EN         : Boolean := False;
      --  Region of interest 2 enable
      ROI2EN         : Boolean := False;
      --  Region of interest 3 enable
      ROI3EN         : Boolean := False;
      --  Region of interest 4 enable
      ROI4EN         : Boolean := False;
      --  Region of interest 5 enable
      ROI5EN         : Boolean := False;
      --  Region of interest 6 enable
      ROI6EN         : Boolean := False;
      --  Region of interest 7 enable
      ROI7EN         : Boolean := False;
      --  Region of interest 8 enable
      ROI8EN         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CMRICR_Register use record
      ROILSZ         at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ROI1EN         at 0 range 16 .. 16;
      ROI2EN         at 0 range 17 .. 17;
      ROI3EN         at 0 range 18 .. 18;
      ROI4EN         at 0 range 19 .. 19;
      ROI5EN         at 0 range 20 .. 20;
      ROI6EN         at 0 range 21 .. 21;
      ROI7EN         at 0 range 22 .. 22;
      ROI8EN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P2RI1CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI1CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI1CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI1CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI1CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI1 configuration register 1
   type DCMIPP_P2RI1CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI1CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI1CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI1CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI1CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI1CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI1CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI1CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI1CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI1 configuration register 2
   type DCMIPP_P2RI1CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI1CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI1CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI1CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI2CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI2CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI2CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI2CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI2CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI2 configuration register 1
   type DCMIPP_P2RI2CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI2CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI2CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI2CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI2CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI2CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI2CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI2CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI2CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI2 configuration register 2
   type DCMIPP_P2RI2CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI2CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI2CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI2CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI3CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI3CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI3CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI3CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI3CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI3 configuration register 1
   type DCMIPP_P2RI3CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI3CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI3CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI3CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI3CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI3CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI3CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI3CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI3CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI3 configuration register 2
   type DCMIPP_P2RI3CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI3CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI3CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI3CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI4CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI4CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI4CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI4CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI4CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI4 configuration register 1
   type DCMIPP_P2RI4CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI4CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI4CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI4CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI4CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI4CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI4CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI4CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI4CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI4 configuration register 2
   type DCMIPP_P2RI4CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI4CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI4CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI4CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI5CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI5CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI5CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI5CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI5CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI5 configuration register 1
   type DCMIPP_P2RI5CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI5CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI5CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI5CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI5CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI5CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI5CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI5CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI5CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI5 configuration register 2
   type DCMIPP_P2RI5CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI5CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI5CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI5CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI6CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI6CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI6CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI6CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI6CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI6 configuration register 1
   type DCMIPP_P2RI6CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI6CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI6CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI6CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI6CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI6CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI6CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI6CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI6CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI6 configuration register 2
   type DCMIPP_P2RI6CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI6CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI6CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI6CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI7CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI7CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI7CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI7CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI7CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI7 configuration register 1
   type DCMIPP_P2RI7CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI7CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI7CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI7CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI7CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI7CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI7CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI7CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI7CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI7 configuration register 2
   type DCMIPP_P2RI7CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI7CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI7CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI7CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2RI8CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI8CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2RI8CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2RI8CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2RI8CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 ROI8 configuration register 1
   type DCMIPP_P2RI8CR1_Register is record
      --  Horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2RI8CR1_HSTART_Field := 16#0#;
      --  Color line blue
      CLB            : DCMIPP_P2RI8CR1_CLB_Field := 16#0#;
      --  Color line green
      CLG            : DCMIPP_P2RI8CR1_CLG_Field := 16#0#;
      --  Vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2RI8CR1_VSTART_Field := 16#0#;
      --  Color line red
      CLR            : DCMIPP_P2RI8CR1_CLR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI8CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2RI8CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2RI8CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 ROI8 configuration register 2
   type DCMIPP_P2RI8CR2_Register is record
      --  Horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2RI8CR2_HSIZE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2RI8CR2_VSIZE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2RI8CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  DCMIPP Pipex gamma configuration register
   type DCMIPP_P2GMCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2GMCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DCMIPP_P2PPCR_FORMAT_Field is HAL.UInt4;
   subtype DCMIPP_P2PPCR_LINEMULT_Field is HAL.UInt3;
   subtype DCMIPP_P2PPCR_LMAWM_Field is HAL.UInt3;

   --  DCMIPP Pipe2 pixel packer configuration register
   type DCMIPP_P2PPCR_Register is record
      --  Memory format (only coplanar formats are supported in Pipe2)
      FORMAT         : DCMIPP_P2PPCR_FORMAT_Field := 16#0#;
      --  Swaps R-vs-B components if RGB, and if YUV, swaps U-vs-V components
      SWAPRB         : Boolean := False;
      --  unspecified
      Reserved_5_12  : HAL.UInt8 := 16#0#;
      --  Amount of capture completed lines for LINE event and interrupt
      LINEMULT       : DCMIPP_P2PPCR_LINEMULT_Field := 16#0#;
      --  Double buffer mode
      DBM            : Boolean := False;
      --  Line multi address wrapping modulo
      LMAWM          : DCMIPP_P2PPCR_LMAWM_Field := 16#0#;
      --  Line multi address wrapping enable bit
      LMAWE          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2PPCR_Register use record
      FORMAT         at 0 range 0 .. 3;
      SWAPRB         at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      LINEMULT       at 0 range 13 .. 15;
      DBM            at 0 range 16 .. 16;
      LMAWM          at 0 range 17 .. 19;
      LMAWE          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DCMIPP_P2PPM0PR_PITCH_Field is HAL.UInt15;

   --  DCMIPP Pipex pixel packer Memory0 pitch register
   type DCMIPP_P2PPM0PR_Register is record
      --  Number of bytes between the address of two consecutive lines.
      PITCH          : DCMIPP_P2PPM0PR_PITCH_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2PPM0PR_Register use record
      PITCH          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  DCMIPP Pipe2 interrupt enable register
   type DCMIPP_P2IER_Register is record
      --  Multi-line capture completed interrupt enable
      LINEIE        : Boolean := False;
      --  Frame capture completed interrupt enable
      FRAMEIE       : Boolean := False;
      --  VSYNC interrupt enable
      VSYNCIE       : Boolean := False;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  Overrun interrupt enable
      OVRIE         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2IER_Register use record
      LINEIE        at 0 range 0 .. 0;
      FRAMEIE       at 0 range 1 .. 1;
      VSYNCIE       at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      OVRIE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DCMIPP Pipe2 status register
   type DCMIPP_P2SR_Register is record
      --  Read-only. Multi-line capture completed raw interrupt status
      LINEF          : Boolean;
      --  Read-only. Frame capture completed raw interrupt status
      FRAMEF         : Boolean;
      --  Read-only. VSYNC raw interrupt status
      VSYNCF         : Boolean;
      --  unspecified
      Reserved_3_6   : HAL.UInt4;
      --  Read-only. Overrun raw interrupt status
      OVRF           : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Last line LSB bit, sampled at frame capture complete
      --  event.
      LSTLINE        : Boolean;
      --  Read-only. Last frame LSB bit, sampled at frame capture complete
      --  event. The information is extracted from the frame data number which
      --  can be delivered by the camera through the CSI2 interface.
      LSTFRM         : Boolean;
      --  unspecified
      Reserved_18_22 : HAL.UInt5;
      --  Read-only. Capture immediate status
      CPTACT         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2SR_Register use record
      LINEF          at 0 range 0 .. 0;
      FRAMEF         at 0 range 1 .. 1;
      VSYNCF         at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      OVRF           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LSTLINE        at 0 range 16 .. 16;
      LSTFRM         at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      CPTACT         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DCMIPP Pipe2 interrupt clear register
   type DCMIPP_P2FCR_Register is record
      --  Write-only. Multi-line capture complete interrupt status clear
      CLINEF        : Boolean := False;
      --  Write-only. Frame capture complete interrupt status clear
      CFRAMEF       : Boolean := False;
      --  Write-only. Vertical synchronization interrupt status clear
      CVSYNCF       : Boolean := False;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  Write-only. Overrun interrupt status clear
      COVRF         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2FCR_Register use record
      CLINEF        at 0 range 0 .. 0;
      CFRAMEF       at 0 range 1 .. 1;
      CVSYNCF       at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      COVRF         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCMIPP_P2CFSCR_DTIDA_Field is HAL.UInt6;
   subtype DCMIPP_P2CFSCR_VC_Field is HAL.UInt2;
   subtype DCMIPP_P2CFSCR_FDTF_Field is HAL.UInt6;

   --  DCMIPP Pipe2 current flow selection configuration register
   type DCMIPP_P2CFSCR_Register is record
      --  Read-only. Current data type ID
      DTIDA          : DCMIPP_P2CFSCR_DTIDA_Field;
      --  unspecified
      Reserved_6_18  : HAL.UInt13;
      --  Read-only. Current flow selection mode
      VC             : DCMIPP_P2CFSCR_VC_Field;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. Current force data type format
      FDTF           : DCMIPP_P2CFSCR_FDTF_Field;
      --  Read-only. Current force data type format enable
      FDTFEN         : Boolean;
      --  Read-only. Current activation of PipeN
      PIPEN          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CFSCR_Register use record
      DTIDA          at 0 range 0 .. 5;
      Reserved_6_18  at 0 range 6 .. 18;
      VC             at 0 range 19 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FDTF           at 0 range 24 .. 29;
      FDTFEN         at 0 range 30 .. 30;
      PIPEN          at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P2CFCTCR_FRATE_Field is HAL.UInt2;

   --  DCMIPP Pipex current flow control configuration register
   type DCMIPP_P2CFCTCR_Register is record
      --  Read-only. Frame capture rate control
      FRATE         : DCMIPP_P2CFCTCR_FRATE_Field;
      --  Read-only. Capture mode
      CPTMODE       : Boolean;
      --  Read-only. Capture requested
      CPTREQ        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CFCTCR_Register use record
      FRATE         at 0 range 0 .. 1;
      CPTMODE       at 0 range 2 .. 2;
      CPTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMIPP_P2CCRSTR_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CCRSTR_VSTART_Field is HAL.UInt12;

   --  DCMIPP Pipex current crop window start register
   type DCMIPP_P2CCRSTR_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CCRSTR_HSTART_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CCRSTR_VSTART_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CCRSTR_Register use record
      HSTART         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSTART         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CCRSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CCRSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex current crop window size register
   type DCMIPP_P2CCRSZR_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CCRSZR_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CCRSZR_VSIZE_Field;
      --  unspecified
      Reserved_28_30 : HAL.UInt3;
      --  Read-only. Current ENABLE bit value.
      ENABLE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CCRSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P2CDCCR_HDEC_Field is HAL.UInt2;
   subtype DCMIPP_P2CDCCR_VDEC_Field is HAL.UInt2;

   --  DCMIPP Pipex current decimation register
   type DCMIPP_P2CDCCR_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  Horizontal decimation ratio
      HDEC          : DCMIPP_P2CDCCR_HDEC_Field := 16#0#;
      --  Vertical decimation ratio
      VDEC          : DCMIPP_P2CDCCR_VDEC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CDCCR_Register use record
      ENABLE        at 0 range 0 .. 0;
      HDEC          at 0 range 1 .. 2;
      VDEC          at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCMIPP_P2CDSCR_HDIV_Field is HAL.UInt10;
   subtype DCMIPP_P2CDSCR_VDIV_Field is HAL.UInt10;

   --  DCMIPP Pipex current downsize configuration register
   type DCMIPP_P2CDSCR_Register is record
      --  Read-only. Current horizontal division factor, from 128 (8x) to 1023
      --  (1x)
      HDIV           : DCMIPP_P2CDSCR_HDIV_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Current vertical division factor, from 128 (8x) to 1023
      --  (1x)
      VDIV           : DCMIPP_P2CDSCR_VDIV_Field;
      --  unspecified
      Reserved_26_30 : HAL.UInt5;
      --  Read-only. Current value of bit ENABLE
      ENABLE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CDSCR_Register use record
      HDIV           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      VDIV           at 0 range 16 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      ENABLE         at 0 range 31 .. 31;
   end record;

   subtype DCMIPP_P2CDSRTIOR_HRATIO_Field is HAL.UInt16;
   subtype DCMIPP_P2CDSRTIOR_VRATIO_Field is HAL.UInt16;

   --  DCMIPP Pipex current downsize ratio register
   type DCMIPP_P2CDSRTIOR_Register is record
      --  Read-only. Current horizontal ratio, from 8192 (1x) to 65535 (8x)
      HRATIO : DCMIPP_P2CDSRTIOR_HRATIO_Field;
      --  Read-only. Current vertical ratio, from 8192 (1x) to 65535 (8x)
      VRATIO : DCMIPP_P2CDSRTIOR_VRATIO_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CDSRTIOR_Register use record
      HRATIO at 0 range 0 .. 15;
      VRATIO at 0 range 16 .. 31;
   end record;

   subtype DCMIPP_P2CDSSZR_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CDSSZR_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipex current downsize destination size register
   type DCMIPP_P2CDSSZR_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CDSSZR_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CDSSZR_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CDSSZR_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CCMRICR_ROILSZ_Field is HAL.UInt2;

   --  DCMIPP Pipex current common ROI configuration register
   type DCMIPP_P2CCMRICR_Register is record
      --  Read-only. Current region of interest line size width
      ROILSZ         : DCMIPP_P2CCMRICR_ROILSZ_Field;
      --  unspecified
      Reserved_2_15  : HAL.UInt14;
      --  Read-only. Current region of interest 1 enable
      ROI1EN         : Boolean;
      --  Read-only. Current region of interest 2 enable
      ROI2EN         : Boolean;
      --  Read-only. Current region of interest 3 enable
      ROI3EN         : Boolean;
      --  Read-only. Current region of interest 4 enable
      ROI4EN         : Boolean;
      --  Read-only. Current region of interest 5 enable
      ROI5EN         : Boolean;
      --  Read-only. Current region of interest 6 enable
      ROI6EN         : Boolean;
      --  Read-only. Current region of interest 7 enable
      ROI7EN         : Boolean;
      --  Read-only. Current region of interest 8 enable
      ROI8EN         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CCMRICR_Register use record
      ROILSZ         at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ROI1EN         at 0 range 16 .. 16;
      ROI2EN         at 0 range 17 .. 17;
      ROI3EN         at 0 range 18 .. 18;
      ROI4EN         at 0 range 19 .. 19;
      ROI5EN         at 0 range 20 .. 20;
      ROI6EN         at 0 range 21 .. 21;
      ROI7EN         at 0 range 22 .. 22;
      ROI8EN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DCMIPP_P2CRI1CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI1CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI1CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI1CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI1CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI1 configuration register 1
   type DCMIPP_P2CRI1CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI1CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI1CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI1CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI1CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI1CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI1CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI1CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI1CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI1 configuration register 2
   type DCMIPP_P2CRI1CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI1CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI1CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI1CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI2CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI2CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI2CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI2CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI2CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI2 configuration register 1
   type DCMIPP_P2CRI2CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI2CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI2CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI2CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI2CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI2CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI2CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI2CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI2CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI2 configuration register 2
   type DCMIPP_P2CRI2CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI2CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI2CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI2CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI3CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI3CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI3CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI3CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI3CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI3 configuration register 1
   type DCMIPP_P2CRI3CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI3CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI3CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI3CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI3CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI3CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI3CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI3CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI3CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI3 configuration register 2
   type DCMIPP_P2CRI3CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI3CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI3CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI3CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI4CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI4CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI4CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI4CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI4CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI4 configuration register 1
   type DCMIPP_P2CRI4CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI4CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI4CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI4CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI4CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI4CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI4CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI4CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI4CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI4 configuration register 2
   type DCMIPP_P2CRI4CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI4CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI4CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI4CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI5CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI5CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI5CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI5CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI5CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI5 configuration register 1
   type DCMIPP_P2CRI5CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI5CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI5CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI5CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI5CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI5CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI5CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI5CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI5CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI5 configuration register 2
   type DCMIPP_P2CRI5CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI5CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI5CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI5CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI6CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI6CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI6CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI6CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI6CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI6 configuration register 1
   type DCMIPP_P2CRI6CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI6CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI6CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI6CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI6CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI6CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI6CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI6CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI6CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI6 configuration register 2
   type DCMIPP_P2CRI6CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI6CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI6CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI6CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI7CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI7CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI7CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI7CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI7CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI7 configuration register 1
   type DCMIPP_P2CRI7CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI7CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI7CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI7CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI7CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI7CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI7CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI7CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI7CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI7 configuration register 2
   type DCMIPP_P2CRI7CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI7CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI7CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI7CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CRI8CR1_HSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI8CR1_CLB_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI8CR1_CLG_Field is HAL.UInt2;
   subtype DCMIPP_P2CRI8CR1_VSTART_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI8CR1_CLR_Field is HAL.UInt2;

   --  DCMIPP Pipe2 current ROI8 configuration register 1
   type DCMIPP_P2CRI8CR1_Register is record
      --  Read-only. Current horizontal start, from 0 to 4094 pixels wide
      HSTART         : DCMIPP_P2CRI8CR1_HSTART_Field;
      --  Read-only. Current color line blue
      CLB            : DCMIPP_P2CRI8CR1_CLB_Field;
      --  Read-only. Current color line green
      CLG            : DCMIPP_P2CRI8CR1_CLG_Field;
      --  Read-only. Current vertical start, from 0 to 4094 pixels high
      VSTART         : DCMIPP_P2CRI8CR1_VSTART_Field;
      --  Read-only. Current color line red
      CLR            : DCMIPP_P2CRI8CR1_CLR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI8CR1_Register use record
      HSTART         at 0 range 0 .. 11;
      CLB            at 0 range 12 .. 13;
      CLG            at 0 range 14 .. 15;
      VSTART         at 0 range 16 .. 27;
      CLR            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCMIPP_P2CRI8CR2_HSIZE_Field is HAL.UInt12;
   subtype DCMIPP_P2CRI8CR2_VSIZE_Field is HAL.UInt12;

   --  DCMIPP Pipe2 current ROI8 configuration register 2
   type DCMIPP_P2CRI8CR2_Register is record
      --  Read-only. Current horizontal size, from 0 to 4094 pixels wide
      HSIZE          : DCMIPP_P2CRI8CR2_HSIZE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current vertical size, from 0 to 4094 pixels high
      VSIZE          : DCMIPP_P2CRI8CR2_VSIZE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CRI8CR2_Register use record
      HSIZE          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VSIZE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DCMIPP_P2CPPCR_FORMAT_Field is HAL.UInt4;
   subtype DCMIPP_P2CPPCR_LINEMULT_Field is HAL.UInt3;
   subtype DCMIPP_P2CPPCR_LMAWM_Field is HAL.UInt3;

   --  DCMIPP Pipe2 current pixel packer configuration register
   type DCMIPP_P2CPPCR_Register is record
      --  Read-only. Memory format (only coplanar formats are supported in
      --  Pipe2)
      FORMAT         : DCMIPP_P2CPPCR_FORMAT_Field;
      --  Read-only. Swaps R-vs-B components if RGB, and if YUV, swaps U-vs-V
      --  components
      SWAPRB         : Boolean;
      --  unspecified
      Reserved_5_12  : HAL.UInt8;
      --  Read-only. Amount of capture completed lines for LINE event and
      --  interrupt
      LINEMULT       : DCMIPP_P2CPPCR_LINEMULT_Field;
      --  Read-only. Double buffer mode
      DBM            : Boolean;
      --  Read-only. Line multi address wrapping modulo
      LMAWM          : DCMIPP_P2CPPCR_LMAWM_Field;
      --  Read-only. Line multi address wrapping enable bit
      LMAWE          : Boolean;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMIPP_P2CPPCR_Register use record
      FORMAT         at 0 range 0 .. 3;
      SWAPRB         at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      LINEMULT       at 0 range 13 .. 15;
      DBM            at 0 range 16 .. 16;
      LMAWM          at 0 range 17 .. 19;
      LMAWE          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital camera interface pixel pipeline
   type DCMIPP_Peripheral is record
      --  DCMIPP IPPLUG global register 1
      DCMIPP_IPGR1      : aliased DCMIPP_IPGR1_Register;
      --  DCMIPP IPPLUG global register 2
      DCMIPP_IPGR2      : aliased DCMIPP_IPGR2_Register;
      --  DCMIPP IPPLUG global register 3
      DCMIPP_IPGR3      : aliased DCMIPP_IPGR3_Register;
      --  DCMIPP IPPLUG identification register
      DCMIPP_IPGR8      : aliased DCMIPP_IPGR8_Register;
      --  DCMIPP IPPLUG Clientx register 1
      DCMIPP_IPC1R1     : aliased DCMIPP_IPC1R1_Register;
      --  DCMIPP IPPLUG Clientx register 2
      DCMIPP_IPC1R2     : aliased DCMIPP_IPC1R2_Register;
      --  DCMIPP IPPLUG Clientx register 3
      DCMIPP_IPC1R3     : aliased DCMIPP_IPC1R3_Register;
      --  DCMIPP IPPLUG Clientx register 1
      DCMIPP_IPC2R1     : aliased DCMIPP_IPC2R1_Register;
      --  DCMIPP IPPLUG Clientx register 2
      DCMIPP_IPC2R2     : aliased DCMIPP_IPC2R2_Register;
      --  DCMIPP IPPLUG Clientx register 3
      DCMIPP_IPC2R3     : aliased DCMIPP_IPC2R3_Register;
      --  DCMIPP IPPLUG Clientx register 1
      DCMIPP_IPC3R1     : aliased DCMIPP_IPC3R1_Register;
      --  DCMIPP IPPLUG Clientx register 2
      DCMIPP_IPC3R2     : aliased DCMIPP_IPC3R2_Register;
      --  DCMIPP IPPLUG Clientx register 3
      DCMIPP_IPC3R3     : aliased DCMIPP_IPC3R3_Register;
      --  DCMIPP IPPLUG Clientx register 1
      DCMIPP_IPC4R1     : aliased DCMIPP_IPC4R1_Register;
      --  DCMIPP IPPLUG Clientx register 2
      DCMIPP_IPC4R2     : aliased DCMIPP_IPC4R2_Register;
      --  DCMIPP IPPLUG Clientx register 3
      DCMIPP_IPC4R3     : aliased DCMIPP_IPC4R3_Register;
      --  DCMIPP IPPLUG Clientx register 1
      DCMIPP_IPC5R1     : aliased DCMIPP_IPC5R1_Register;
      --  DCMIPP IPPLUG Clientx register 2
      DCMIPP_IPC5R2     : aliased DCMIPP_IPC5R2_Register;
      --  DCMIPP IPPLUG Clientx register 3
      DCMIPP_IPC5R3     : aliased DCMIPP_IPC5R3_Register;
      --  DCMIPP parallel interface control register
      DCMIPP_PRCR       : aliased DCMIPP_PRCR_Register;
      --  DCMIPP parallel interface embedded synchronization code register
      DCMIPP_PRESCR     : aliased DCMIPP_PRESCR_Register;
      --  DCMIPP parallel interface embedded synchronization unmask register
      DCMIPP_PRESUR     : aliased DCMIPP_PRESUR_Register;
      --  DCMIPP parallel interface interrupt enable register
      DCMIPP_PRIER      : aliased DCMIPP_PRIER_Register;
      --  DCMIPP parallel interface status register
      DCMIPP_PRSR       : aliased DCMIPP_PRSR_Register;
      --  DCMIPP parallel interface interrupt clear register
      DCMIPP_PRFCR      : aliased DCMIPP_PRFCR_Register;
      --  DCMIPP common configuration register
      DCMIPP_CMCR       : aliased DCMIPP_CMCR_Register;
      --  DCMIPP common frame counter register
      DCMIPP_CMFRCR     : aliased HAL.UInt32;
      --  DCMIPP common interrupt enable register
      DCMIPP_CMIER      : aliased DCMIPP_CMIER_Register;
      --  DCMIPP common status register 1
      DCMIPP_CMSR1      : aliased DCMIPP_CMSR1_Register;
      --  DCMIPP common status register 2
      DCMIPP_CMSR2      : aliased DCMIPP_CMSR2_Register;
      --  DCMIPP common interrupt clear register
      DCMIPP_CMFCR      : aliased DCMIPP_CMFCR_Register;
      --  DCMIPP Pipe0 flow selection configuration register
      DCMIPP_P0FSCR     : aliased DCMIPP_P0FSCR_Register;
      --  DCMIPP Pipe0 flow control configuration register
      DCMIPP_P0FCTCR    : aliased DCMIPP_P0FCTCR_Register;
      --  DCMIPP Pipe0 stat/crop start register
      DCMIPP_P0SCSTR    : aliased DCMIPP_P0SCSTR_Register;
      --  DCMIPP Pipe0 stat/crop size register
      DCMIPP_P0SCSZR    : aliased DCMIPP_P0SCSZR_Register;
      --  DCMIPP Pipe0 dump counter register
      DCMIPP_P0DCCNTR   : aliased DCMIPP_P0DCCNTR_Register;
      --  DCMIPP Pipe0 dump limit register
      DCMIPP_P0DCLMTR   : aliased DCMIPP_P0DCLMTR_Register;
      --  DCMIPP Pipe0 pixel packer configuration register
      DCMIPP_P0PPCR     : aliased DCMIPP_P0PPCR_Register;
      --  DCMIPP Pipe0 pixel packer Memory0 address register 1
      DCMIPP_P0PPM0AR1  : aliased HAL.UInt32;
      --  DCMIPP Pipe0 pixel packer Memory0 address register 2
      DCMIPP_P0PPM0AR2  : aliased HAL.UInt32;
      --  DCMIPP Pipe0 status Memory0 address register
      DCMIPP_P0STM0AR   : aliased HAL.UInt32;
      --  DCMIPP Pipe0 interrupt enable register
      DCMIPP_P0IER      : aliased DCMIPP_P0IER_Register;
      --  DCMIPP Pipe0 status register
      DCMIPP_P0SR       : aliased DCMIPP_P0SR_Register;
      --  DCMIPP Pipe0 interrupt clear register
      DCMIPP_P0FCR      : aliased DCMIPP_P0FCR_Register;
      --  DCMIPP Pipe0 current flow selection configuration register
      DCMIPP_P0CFSCR    : aliased DCMIPP_P0CFSCR_Register;
      --  DCMIPP Pipe0 current flow control configuration register
      DCMIPP_P0CFCTCR   : aliased DCMIPP_P0CFCTCR_Register;
      --  DCMIPP Pipe0 current stat/crop start register
      DCMIPP_P0CSCSTR   : aliased DCMIPP_P0CSCSTR_Register;
      --  DCMIPP Pipe0 current stat/crop size register
      DCMIPP_P0CSCSZR   : aliased DCMIPP_P0CSCSZR_Register;
      --  DCMIPP Pipe0 current pixel packer configuration register
      DCMIPP_P0CPPCR    : aliased DCMIPP_P0CPPCR_Register;
      --  DCMIPP Pipe0 current pixel packer Memory0 address register 1
      DCMIPP_P0CPPM0AR1 : aliased HAL.UInt32;
      --  DCMIPP Pipe0 current pixel packer Memory0 address register 2
      DCMIPP_P0CPPM0AR2 : aliased HAL.UInt32;
      --  DCMIPP Pipe1 flow selection configuration register
      DCMIPP_P1FSCR     : aliased DCMIPP_P1FSCR_Register;
      --  DCMIPP Pipe1 stat removal configuration register
      DCMIPP_P1SRCR     : aliased DCMIPP_P1SRCR_Register;
      --  DCMIPP Pipe1 bad pixel removal control register
      DCMIPP_P1BPRCR    : aliased DCMIPP_P1BPRCR_Register;
      --  DCMIPP Pipe1 bad pixel removal status register
      DCMIPP_P1BPRSR    : aliased DCMIPP_P1BPRSR_Register;
      --  DCMIPP Pipe1 decimation register
      DCMIPP_P1DECR     : aliased DCMIPP_P1DECR_Register;
      --  DCMIPP Pipe1 black level calibration control register
      DCMIPP_P1BLCCR    : aliased DCMIPP_P1BLCCR_Register;
      --  DCMIPP Pipe1 exposure control register 1
      DCMIPP_P1EXCR1    : aliased DCMIPP_P1EXCR1_Register;
      --  DCMIPP Pipe1 exposure control register 2
      DCMIPP_P1EXCR2    : aliased DCMIPP_P1EXCR2_Register;
      --  DCMIPP Pipe1 statistics1 control register
      DCMIPP_P1ST1CR    : aliased DCMIPP_P1ST1CR_Register;
      --  DCMIPP Pipe1 statistics 2 control register
      DCMIPP_P1ST2CR    : aliased DCMIPP_P1ST2CR_Register;
      --  DCMIPP Pipe1 statistics 3 control register
      DCMIPP_P1ST3CR    : aliased DCMIPP_P1ST3CR_Register;
      --  DCMIPP Pipe1 statistics window start register
      DCMIPP_P1STSTR    : aliased DCMIPP_P1STSTR_Register;
      --  DCMIPP Pipe1 statistics window size register
      DCMIPP_P1STSZR    : aliased DCMIPP_P1STSZR_Register;
      --  DCMIPP Pipe1 statistics 1 status register
      DCMIPP_P1ST1SR    : aliased DCMIPP_P1ST1SR_Register;
      --  DCMIPP Pipe1 statistics 2 status register
      DCMIPP_P1ST2SR    : aliased DCMIPP_P1ST2SR_Register;
      --  DCMIPP Pipe1 statistics 3 status register
      DCMIPP_P1ST3SR    : aliased DCMIPP_P1ST3SR_Register;
      --  DCMIPP Pipe1 demosaicing configuration register
      DCMIPP_P1DMCR     : aliased DCMIPP_P1DMCR_Register;
      --  DCMIPP Pipe1 ColorConv configuration register
      DCMIPP_P1CCCR     : aliased DCMIPP_P1CCCR_Register;
      --  DCMIPP Pipe1 ColorConv red coefficient register 1
      DCMIPP_P1CCRR1    : aliased DCMIPP_P1CCRR1_Register;
      --  DCMIPP Pipe1 ColorConv red coefficient register 2
      DCMIPP_P1CCRR2    : aliased DCMIPP_P1CCRR2_Register;
      --  DCMIPP Pipe1 ColorConv green coefficient register 1
      DCMIPP_P1CCGR1    : aliased DCMIPP_P1CCGR1_Register;
      --  DCMIPP Pipe1 ColorConv green coefficient register 2
      DCMIPP_P1CCGR2    : aliased DCMIPP_P1CCGR2_Register;
      --  DCMIPP Pipex ColorConv blue coefficient register 1
      DCMIPP_P1CCBR1    : aliased DCMIPP_P1CCBR1_Register;
      --  DCMIPP Pipe1 ColorConv blue coefficient register 2
      DCMIPP_P1CCBR2    : aliased DCMIPP_P1CCBR2_Register;
      --  DCMIPP Pipe1 contrast control register 1
      DCMIPP_P1CTCR1    : aliased DCMIPP_P1CTCR1_Register;
      --  DCMIPP Pipe1 contrast control register 2
      DCMIPP_P1CTCR2    : aliased DCMIPP_P1CTCR2_Register;
      --  DCMIPP Pipe1 contrast control register 3
      DCMIPP_P1CTCR3    : aliased DCMIPP_P1CTCR3_Register;
      --  DCMIPP Pipex flow control configuration register
      DCMIPP_P1FCTCR    : aliased DCMIPP_P1FCTCR_Register;
      --  DCMIPP Pipex crop window start register
      DCMIPP_P1CRSTR    : aliased DCMIPP_P1CRSTR_Register;
      --  DCMIPP Pipex crop window size register
      DCMIPP_P1CRSZR    : aliased DCMIPP_P1CRSZR_Register;
      --  DCMIPP Pipex decimation register
      DCMIPP_P1DCCR     : aliased DCMIPP_P1DCCR_Register;
      --  DCMIPP Pipex downsize configuration register
      DCMIPP_P1DSCR     : aliased DCMIPP_P1DSCR_Register;
      --  DCMIPP Pipex downsize ratio register
      DCMIPP_P1DSRTIOR  : aliased DCMIPP_P1DSRTIOR_Register;
      --  DCMIPP Pipex downsize destination size register
      DCMIPP_P1DSSZR    : aliased DCMIPP_P1DSSZR_Register;
      --  DCMIPP Pipex common ROI configuration register
      DCMIPP_P1CMRICR   : aliased DCMIPP_P1CMRICR_Register;
      --  DCMIPP Pipe1 ROI1 configuration register 1
      DCMIPP_P1RI1CR1   : aliased DCMIPP_P1RI1CR1_Register;
      --  DCMIPP Pipe1 ROI1 configuration register 2
      DCMIPP_P1RI1CR2   : aliased DCMIPP_P1RI1CR2_Register;
      --  DCMIPP Pipe1 ROI2 configuration register 1
      DCMIPP_P1RI2CR1   : aliased DCMIPP_P1RI2CR1_Register;
      --  DCMIPP Pipe1 ROI2 configuration register 2
      DCMIPP_P1RI2CR2   : aliased DCMIPP_P1RI2CR2_Register;
      --  DCMIPP Pipe1 ROI3 configuration register 1
      DCMIPP_P1RI3CR1   : aliased DCMIPP_P1RI3CR1_Register;
      --  DCMIPP Pipe1 ROI3 configuration register 2
      DCMIPP_P1RI3CR2   : aliased DCMIPP_P1RI3CR2_Register;
      --  DCMIPP Pipe1 ROI4 configuration register 1
      DCMIPP_P1RI4CR1   : aliased DCMIPP_P1RI4CR1_Register;
      --  DCMIPP Pipe1 ROI4 configuration register 2
      DCMIPP_P1RI4CR2   : aliased DCMIPP_P1RI4CR2_Register;
      --  DCMIPP Pipe1 ROI5 configuration register 1
      DCMIPP_P1RI5CR1   : aliased DCMIPP_P1RI5CR1_Register;
      --  DCMIPP Pipe1 ROI5 configuration register 2
      DCMIPP_P1RI5CR2   : aliased DCMIPP_P1RI5CR2_Register;
      --  DCMIPP Pipe1 ROI6 configuration register 1
      DCMIPP_P1RI6CR1   : aliased DCMIPP_P1RI6CR1_Register;
      --  DCMIPP Pipe1 ROI6 configuration register 2
      DCMIPP_P1RI6CR2   : aliased DCMIPP_P1RI6CR2_Register;
      --  DCMIPP Pipe1 ROI7 configuration register 1
      DCMIPP_P1RI7CR1   : aliased DCMIPP_P1RI7CR1_Register;
      --  DCMIPP Pipe1 ROI7 configuration register 2
      DCMIPP_P1RI7CR2   : aliased DCMIPP_P1RI7CR2_Register;
      --  DCMIPP Pipe1 ROI8 configuration register 1
      DCMIPP_P1RI8CR1   : aliased DCMIPP_P1RI8CR1_Register;
      --  DCMIPP Pipe1 ROI8 configuration register 2
      DCMIPP_P1RI8CR2   : aliased DCMIPP_P1RI8CR2_Register;
      --  DCMIPP Pipex gamma configuration register
      DCMIPP_P1GMCR     : aliased DCMIPP_P1GMCR_Register;
      --  DCMIPP Pipe1 YUVConv configuration register
      DCMIPP_P1YUVCR    : aliased DCMIPP_P1YUVCR_Register;
      --  DCMIPP Pipe1 YUVConv red coefficient register 1
      DCMIPP_P1YUVRR1   : aliased DCMIPP_P1YUVRR1_Register;
      --  DCMIPP Pipe1 YUVConv red coefficient register 2
      DCMIPP_P1YUVRR2   : aliased DCMIPP_P1YUVRR2_Register;
      --  DCMIPP Pipe1 YUVConv green coefficient register 1
      DCMIPP_P1YUVGR1   : aliased DCMIPP_P1YUVGR1_Register;
      --  DCMIPP Pipe1 YUVConv green coefficient register 2
      DCMIPP_P1YUVGR2   : aliased DCMIPP_P1YUVGR2_Register;
      --  DCMIPP Pipe1 YUVConv blue coefficient register 1
      DCMIPP_P1YUVBR1   : aliased DCMIPP_P1YUVBR1_Register;
      --  DCMIPP Pipe1 YUV blue coefficient register 2
      DCMIPP_P1YUVBR2   : aliased DCMIPP_P1YUVBR2_Register;
      --  DCMIPP Pipe1 pixel packer configuration register
      DCMIPP_P1PPCR     : aliased DCMIPP_P1PPCR_Register;
      --  DCMIPP Pipe1 pixel packer Memory0 address register 1
      DCMIPP_P1PPM0AR1  : aliased HAL.UInt32;
      --  DCMIPP Pipe1 pixel packer Memory0 address register 2
      DCMIPP_P1PPM0AR2  : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer Memory0 pitch register
      DCMIPP_P1PPM0PR   : aliased DCMIPP_P1PPM0PR_Register;
      --  DCMIPP Pipex status Memory0 address register
      DCMIPP_P1STM0AR   : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer Memory1 address register 1
      DCMIPP_P1PPM1AR1  : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer Memory1 address register 2
      DCMIPP_P1PPM1AR2  : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer Memory1 pitch register
      DCMIPP_P1PPM1PR   : aliased DCMIPP_P1PPM1PR_Register;
      --  DCMIPP Pipex status Memory1 address register
      DCMIPP_P1STM1AR   : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer memory2 address register 1
      DCMIPP_P1PPM2AR1  : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer memory2 address register 2
      DCMIPP_P1PPM2AR2  : aliased HAL.UInt32;
      --  DCMIPP Pipex status Memory2 address register
      DCMIPP_P1STM2AR   : aliased HAL.UInt32;
      --  DCMIPP Pipe1 interrupt enable register
      DCMIPP_P1IER      : aliased DCMIPP_P1IER_Register;
      --  DCMIPP Pipe1 status register
      DCMIPP_P1SR       : aliased DCMIPP_P1SR_Register;
      --  DCMIPP Pipe1 interrupt clear register
      DCMIPP_P1FCR      : aliased DCMIPP_P1FCR_Register;
      --  DCMIPP Pipe1 current flow selection configuration register
      DCMIPP_P1CFSCR    : aliased DCMIPP_P1CFSCR_Register;
      --  DCMIPP Pipe1 current bad pixel removal register
      DCMIPP_P1CBPRCR   : aliased DCMIPP_P1CBPRCR_Register;
      --  DCMIPP Pipe1 current black level calibration control register
      DCMIPP_P1CBLCCR   : aliased DCMIPP_P1CBLCCR_Register;
      --  DCMIPP Pipe1 current exposure control register 1
      DCMIPP_P1CEXCR1   : aliased DCMIPP_P1CEXCR1_Register;
      --  DCMIPP Pipe1 current exposure control register 2
      DCMIPP_P1CEXCR2   : aliased DCMIPP_P1CEXCR2_Register;
      --  DCMIPP Pipe1 current statistics 1 control register
      DCMIPP_P1CST1CR   : aliased DCMIPP_P1CST1CR_Register;
      --  DCMIPP Pipe1 current statistics 2 control register
      DCMIPP_P1CST2CR   : aliased DCMIPP_P1CST2CR_Register;
      --  DCMIPP Pipe1 current statistics 3 control register
      DCMIPP_P1CST3CR   : aliased DCMIPP_P1CST3CR_Register;
      --  DCMIPP Pipe1 current statistics window start register
      DCMIPP_P1CSTSTR   : aliased DCMIPP_P1CSTSTR_Register;
      --  DCMIPP Pipe1 current statistics window size register
      DCMIPP_P1CSTSZR   : aliased DCMIPP_P1CSTSZR_Register;
      --  DCMIPP Pipe1 current ColorConv configuration register
      DCMIPP_P1CCCCR    : aliased DCMIPP_P1CCCCR_Register;
      --  DCMIPP Pipe1 current ColorConv red coefficient register 1
      DCMIPP_P1CCCRR1   : aliased DCMIPP_P1CCCRR1_Register;
      --  DCMIPP Pipe1 current ColorConv red coefficient register 2
      DCMIPP_P1CCCRR2   : aliased DCMIPP_P1CCCRR2_Register;
      --  DCMIPP Pipe1 current ColorConv green coefficient register 1
      DCMIPP_P1CCCGR1   : aliased DCMIPP_P1CCCGR1_Register;
      --  DCMIPP Pipe1 current ColorConv green coefficient register 2
      DCMIPP_P1CCCGR2   : aliased DCMIPP_P1CCCGR2_Register;
      --  DCMIPP Pipex current ColorConv blue coefficient register 1
      DCMIPP_P1CCCBR1   : aliased DCMIPP_P1CCCBR1_Register;
      --  DCMIPP Pipe1 current ColorConv blue coefficient register 2
      DCMIPP_P1CCCBR2   : aliased DCMIPP_P1CCCBR2_Register;
      --  DCMIPP Pipe1 current contrast control register 1
      DCMIPP_P1CCTCR1   : aliased DCMIPP_P1CCTCR1_Register;
      --  DCMIPP Pipe1 current contrast control register 2
      DCMIPP_P1CCTCR2   : aliased DCMIPP_P1CCTCR2_Register;
      --  DCMIPP Pipe1 current contrast control register 3
      DCMIPP_P1CCTCR3   : aliased DCMIPP_P1CCTCR3_Register;
      --  DCMIPP Pipex current flow control configuration register
      DCMIPP_P1CFCTCR   : aliased DCMIPP_P1CFCTCR_Register;
      --  DCMIPP Pipex current crop window start register
      DCMIPP_P1CCRSTR   : aliased DCMIPP_P1CCRSTR_Register;
      --  DCMIPP Pipex current crop window size register
      DCMIPP_P1CCRSZR   : aliased DCMIPP_P1CCRSZR_Register;
      --  DCMIPP Pipex current decimation register
      DCMIPP_P1CDCCR    : aliased DCMIPP_P1CDCCR_Register;
      --  DCMIPP Pipex current downsize configuration register
      DCMIPP_P1CDSCR    : aliased DCMIPP_P1CDSCR_Register;
      --  DCMIPP Pipex current downsize ratio register
      DCMIPP_P1CDSRTIOR : aliased DCMIPP_P1CDSRTIOR_Register;
      --  DCMIPP Pipex current downsize destination size register
      DCMIPP_P1CDSSZR   : aliased DCMIPP_P1CDSSZR_Register;
      --  DCMIPP Pipex current common ROI configuration register
      DCMIPP_P1CCMRICR  : aliased DCMIPP_P1CCMRICR_Register;
      --  DCMIPP Pipe1 current ROI1 configuration register 1
      DCMIPP_P1CRI1CR1  : aliased DCMIPP_P1CRI1CR1_Register;
      --  DCMIPP Pipe1 current ROI1 configuration register 2
      DCMIPP_P1CRI1CR2  : aliased DCMIPP_P1CRI1CR2_Register;
      --  DCMIPP Pipe1 current ROI2 configuration register 1
      DCMIPP_P1CRI2CR1  : aliased DCMIPP_P1CRI2CR1_Register;
      --  DCMIPP Pipe1 current ROI2 configuration register 2
      DCMIPP_P1CRI2CR2  : aliased DCMIPP_P1CRI2CR2_Register;
      --  DCMIPP Pipe1 current ROI3 configuration register 1
      DCMIPP_P1CRI3CR1  : aliased DCMIPP_P1CRI3CR1_Register;
      --  DCMIPP Pipe1 current ROI3 configuration register 2
      DCMIPP_P1CRI3CR2  : aliased DCMIPP_P1CRI3CR2_Register;
      --  DCMIPP Pipe1 current ROI4 configuration register 1
      DCMIPP_P1CRI4CR1  : aliased DCMIPP_P1CRI4CR1_Register;
      --  DCMIPP Pipe1 current ROI4 configuration register 2
      DCMIPP_P1CRI4CR2  : aliased DCMIPP_P1CRI4CR2_Register;
      --  DCMIPP Pipe1 current ROI5 configuration register 1
      DCMIPP_P1CRI5CR1  : aliased DCMIPP_P1CRI5CR1_Register;
      --  DCMIPP Pipe1 current ROI5 configuration register 2
      DCMIPP_P1CRI5CR2  : aliased DCMIPP_P1CRI5CR2_Register;
      --  DCMIPP Pipe1 current ROI6 configuration register 1
      DCMIPP_P1CRI6CR1  : aliased DCMIPP_P1CRI6CR1_Register;
      --  DCMIPP Pipe1 current ROI6 configuration register 2
      DCMIPP_P1CRI6CR2  : aliased DCMIPP_P1CRI6CR2_Register;
      --  DCMIPP Pipe1 current ROI7 configuration register 1
      DCMIPP_P1CRI7CR1  : aliased DCMIPP_P1CRI7CR1_Register;
      --  DCMIPP Pipe1 current ROI7 configuration register 2
      DCMIPP_P1CRI7CR2  : aliased DCMIPP_P1CRI7CR2_Register;
      --  DCMIPP Pipe1 current ROI8 configuration register 1
      DCMIPP_P1CRI8CR1  : aliased DCMIPP_P1CRI8CR1_Register;
      --  DCMIPP Pipe1 current ROI8 configuration register 2
      DCMIPP_P1CRI8CR2  : aliased DCMIPP_P1CRI8CR2_Register;
      --  DCMIPP Pipe1 current pixel packer configuration register
      DCMIPP_P1CPPCR    : aliased DCMIPP_P1CPPCR_Register;
      --  DCMIPP Pipe1 current pixel packer Memory0 address register 1
      DCMIPP_P1CPPM0AR1 : aliased HAL.UInt32;
      --  DCMIPP Pipe1 current pixel packer Memory0 address register 2
      DCMIPP_P1CPPM0AR2 : aliased HAL.UInt32;
      --  DCMIPP Pipex current pixel packer Memory0 pitch register
      DCMIPP_P1CPPM0PR  : aliased DCMIPP_P1CPPM0PR_Register;
      --  DCMIPP Pipex current pixel packer Memory1 address register 1
      DCMIPP_P1CPPM1AR1 : aliased HAL.UInt32;
      --  DCMIPP Pipex current pixel packer Memory1 address register 2
      DCMIPP_P1CPPM1AR2 : aliased HAL.UInt32;
      --  DCMIPP Pipex current pixel packer Memory1 pitch register
      DCMIPP_P1CPPM1PR  : aliased DCMIPP_P1CPPM1PR_Register;
      --  DCMIPP Pipex current pixel packer Memory2 address register 1
      DCMIPP_P1CPPM2AR1 : aliased HAL.UInt32;
      --  DCMIPP Pipex current pixel packer Memory2 address register 1
      DCMIPP_P1CPPM2AR2 : aliased HAL.UInt32;
      --  DCMIPP Pipe2 flow selection configuration register
      DCMIPP_P2FSCR     : aliased DCMIPP_P2FSCR_Register;
      --  DCMIPP Pipex flow control configuration register
      DCMIPP_P2FCTCR    : aliased DCMIPP_P2FCTCR_Register;
      --  DCMIPP Pipex crop window start register
      DCMIPP_P2CRSTR    : aliased DCMIPP_P2CRSTR_Register;
      --  DCMIPP Pipex crop window size register
      DCMIPP_P2CRSZR    : aliased DCMIPP_P2CRSZR_Register;
      --  DCMIPP Pipex decimation register
      DCMIPP_P2DCCR     : aliased DCMIPP_P2DCCR_Register;
      --  DCMIPP Pipex downsize configuration register
      DCMIPP_P2DSCR     : aliased DCMIPP_P2DSCR_Register;
      --  DCMIPP Pipex downsize ratio register
      DCMIPP_P2DSRTIOR  : aliased DCMIPP_P2DSRTIOR_Register;
      --  DCMIPP Pipex downsize destination size register
      DCMIPP_P2DSSZR    : aliased DCMIPP_P2DSSZR_Register;
      --  DCMIPP Pipex common ROI configuration register
      DCMIPP_P2CMRICR   : aliased DCMIPP_P2CMRICR_Register;
      --  DCMIPP Pipe2 ROI1 configuration register 1
      DCMIPP_P2RI1CR1   : aliased DCMIPP_P2RI1CR1_Register;
      --  DCMIPP Pipe2 ROI1 configuration register 2
      DCMIPP_P2RI1CR2   : aliased DCMIPP_P2RI1CR2_Register;
      --  DCMIPP Pipe2 ROI2 configuration register 1
      DCMIPP_P2RI2CR1   : aliased DCMIPP_P2RI2CR1_Register;
      --  DCMIPP Pipe2 ROI2 configuration register 2
      DCMIPP_P2RI2CR2   : aliased DCMIPP_P2RI2CR2_Register;
      --  DCMIPP Pipe2 ROI3 configuration register 1
      DCMIPP_P2RI3CR1   : aliased DCMIPP_P2RI3CR1_Register;
      --  DCMIPP Pipe2 ROI3 configuration register 2
      DCMIPP_P2RI3CR2   : aliased DCMIPP_P2RI3CR2_Register;
      --  DCMIPP Pipe2 ROI4 configuration register 1
      DCMIPP_P2RI4CR1   : aliased DCMIPP_P2RI4CR1_Register;
      --  DCMIPP Pipe2 ROI4 configuration register 2
      DCMIPP_P2RI4CR2   : aliased DCMIPP_P2RI4CR2_Register;
      --  DCMIPP Pipe2 ROI5 configuration register 1
      DCMIPP_P2RI5CR1   : aliased DCMIPP_P2RI5CR1_Register;
      --  DCMIPP Pipe2 ROI5 configuration register 2
      DCMIPP_P2RI5CR2   : aliased DCMIPP_P2RI5CR2_Register;
      --  DCMIPP Pipe2 ROI6 configuration register 1
      DCMIPP_P2RI6CR1   : aliased DCMIPP_P2RI6CR1_Register;
      --  DCMIPP Pipe2 ROI6 configuration register 2
      DCMIPP_P2RI6CR2   : aliased DCMIPP_P2RI6CR2_Register;
      --  DCMIPP Pipe2 ROI7 configuration register 1
      DCMIPP_P2RI7CR1   : aliased DCMIPP_P2RI7CR1_Register;
      --  DCMIPP Pipe2 ROI7 configuration register 2
      DCMIPP_P2RI7CR2   : aliased DCMIPP_P2RI7CR2_Register;
      --  DCMIPP Pipe2 ROI8 configuration register 1
      DCMIPP_P2RI8CR1   : aliased DCMIPP_P2RI8CR1_Register;
      --  DCMIPP Pipe2 ROI8 configuration register 2
      DCMIPP_P2RI8CR2   : aliased DCMIPP_P2RI8CR2_Register;
      --  DCMIPP Pipex gamma configuration register
      DCMIPP_P2GMCR     : aliased DCMIPP_P2GMCR_Register;
      --  DCMIPP Pipe2 pixel packer configuration register
      DCMIPP_P2PPCR     : aliased DCMIPP_P2PPCR_Register;
      --  DCMIPP Pipe2 pixel packer Memory0 address register 1
      DCMIPP_P2PPM0AR1  : aliased HAL.UInt32;
      --  DCMIPP Pipe2 pixel packer Memory0 address register 2
      DCMIPP_P2PPM0AR2  : aliased HAL.UInt32;
      --  DCMIPP Pipex pixel packer Memory0 pitch register
      DCMIPP_P2PPM0PR   : aliased DCMIPP_P2PPM0PR_Register;
      --  DCMIPP Pipex status Memory0 address register
      DCMIPP_P2STM0AR   : aliased HAL.UInt32;
      --  DCMIPP Pipe2 interrupt enable register
      DCMIPP_P2IER      : aliased DCMIPP_P2IER_Register;
      --  DCMIPP Pipe2 status register
      DCMIPP_P2SR       : aliased DCMIPP_P2SR_Register;
      --  DCMIPP Pipe2 interrupt clear register
      DCMIPP_P2FCR      : aliased DCMIPP_P2FCR_Register;
      --  DCMIPP Pipe2 current flow selection configuration register
      DCMIPP_P2CFSCR    : aliased DCMIPP_P2CFSCR_Register;
      --  DCMIPP Pipex current flow control configuration register
      DCMIPP_P2CFCTCR   : aliased DCMIPP_P2CFCTCR_Register;
      --  DCMIPP Pipex current crop window start register
      DCMIPP_P2CCRSTR   : aliased DCMIPP_P2CCRSTR_Register;
      --  DCMIPP Pipex current crop window size register
      DCMIPP_P2CCRSZR   : aliased DCMIPP_P2CCRSZR_Register;
      --  DCMIPP Pipex current decimation register
      DCMIPP_P2CDCCR    : aliased DCMIPP_P2CDCCR_Register;
      --  DCMIPP Pipex current downsize configuration register
      DCMIPP_P2CDSCR    : aliased DCMIPP_P2CDSCR_Register;
      --  DCMIPP Pipex current downsize ratio register
      DCMIPP_P2CDSRTIOR : aliased DCMIPP_P2CDSRTIOR_Register;
      --  DCMIPP Pipex current downsize destination size register
      DCMIPP_P2CDSSZR   : aliased DCMIPP_P2CDSSZR_Register;
      --  DCMIPP Pipex current common ROI configuration register
      DCMIPP_P2CCMRICR  : aliased DCMIPP_P2CCMRICR_Register;
      --  DCMIPP Pipe2 current ROI1 configuration register 1
      DCMIPP_P2CRI1CR1  : aliased DCMIPP_P2CRI1CR1_Register;
      --  DCMIPP Pipe2 current ROI1 configuration register 2
      DCMIPP_P2CRI1CR2  : aliased DCMIPP_P2CRI1CR2_Register;
      --  DCMIPP Pipe2 current ROI2 configuration register 1
      DCMIPP_P2CRI2CR1  : aliased DCMIPP_P2CRI2CR1_Register;
      --  DCMIPP Pipe2 current ROI2 configuration register 2
      DCMIPP_P2CRI2CR2  : aliased DCMIPP_P2CRI2CR2_Register;
      --  DCMIPP Pipe2 current ROI3 configuration register 1
      DCMIPP_P2CRI3CR1  : aliased DCMIPP_P2CRI3CR1_Register;
      --  DCMIPP Pipe2 current ROI3 configuration register 2
      DCMIPP_P2CRI3CR2  : aliased DCMIPP_P2CRI3CR2_Register;
      --  DCMIPP Pipe2 current ROI4 configuration register 1
      DCMIPP_P2CRI4CR1  : aliased DCMIPP_P2CRI4CR1_Register;
      --  DCMIPP Pipe2 current ROI4 configuration register 2
      DCMIPP_P2CRI4CR2  : aliased DCMIPP_P2CRI4CR2_Register;
      --  DCMIPP Pipe2 current ROI5 configuration register 1
      DCMIPP_P2CRI5CR1  : aliased DCMIPP_P2CRI5CR1_Register;
      --  DCMIPP Pipe2 current ROI5 configuration register 2
      DCMIPP_P2CRI5CR2  : aliased DCMIPP_P2CRI5CR2_Register;
      --  DCMIPP Pipe2 current ROI6 configuration register 1
      DCMIPP_P2CRI6CR1  : aliased DCMIPP_P2CRI6CR1_Register;
      --  DCMIPP Pipe2 current ROI6 configuration register 2
      DCMIPP_P2CRI6CR2  : aliased DCMIPP_P2CRI6CR2_Register;
      --  DCMIPP Pipe2 current ROI7 configuration register 1
      DCMIPP_P2CRI7CR1  : aliased DCMIPP_P2CRI7CR1_Register;
      --  DCMIPP Pipe2 current ROI7 configuration register 2
      DCMIPP_P2CRI7CR2  : aliased DCMIPP_P2CRI7CR2_Register;
      --  DCMIPP Pipe2 current ROI8 configuration register 1
      DCMIPP_P2CRI8CR1  : aliased DCMIPP_P2CRI8CR1_Register;
      --  DCMIPP Pipe2 current ROI8 configuration register 2
      DCMIPP_P2CRI8CR2  : aliased DCMIPP_P2CRI8CR2_Register;
      --  DCMIPP Pipe2 current pixel packer configuration register
      DCMIPP_P2CPPCR    : aliased DCMIPP_P2CPPCR_Register;
      --  DCMIPP Pipe2 current pixel packer Memory0 address register 1
      DCMIPP_P2CPPM0AR1 : aliased HAL.UInt32;
      --  DCMIPP Pipe2 current pixel packer Memory0 address register 2
      DCMIPP_P2CPPM0AR2 : aliased HAL.UInt32;
   end record
     with Volatile;

   for DCMIPP_Peripheral use record
      DCMIPP_IPGR1      at 16#0# range 0 .. 31;
      DCMIPP_IPGR2      at 16#4# range 0 .. 31;
      DCMIPP_IPGR3      at 16#8# range 0 .. 31;
      DCMIPP_IPGR8      at 16#1C# range 0 .. 31;
      DCMIPP_IPC1R1     at 16#20# range 0 .. 31;
      DCMIPP_IPC1R2     at 16#24# range 0 .. 31;
      DCMIPP_IPC1R3     at 16#28# range 0 .. 31;
      DCMIPP_IPC2R1     at 16#30# range 0 .. 31;
      DCMIPP_IPC2R2     at 16#34# range 0 .. 31;
      DCMIPP_IPC2R3     at 16#38# range 0 .. 31;
      DCMIPP_IPC3R1     at 16#40# range 0 .. 31;
      DCMIPP_IPC3R2     at 16#44# range 0 .. 31;
      DCMIPP_IPC3R3     at 16#48# range 0 .. 31;
      DCMIPP_IPC4R1     at 16#50# range 0 .. 31;
      DCMIPP_IPC4R2     at 16#54# range 0 .. 31;
      DCMIPP_IPC4R3     at 16#58# range 0 .. 31;
      DCMIPP_IPC5R1     at 16#60# range 0 .. 31;
      DCMIPP_IPC5R2     at 16#64# range 0 .. 31;
      DCMIPP_IPC5R3     at 16#68# range 0 .. 31;
      DCMIPP_PRCR       at 16#104# range 0 .. 31;
      DCMIPP_PRESCR     at 16#108# range 0 .. 31;
      DCMIPP_PRESUR     at 16#10C# range 0 .. 31;
      DCMIPP_PRIER      at 16#1F4# range 0 .. 31;
      DCMIPP_PRSR       at 16#1F8# range 0 .. 31;
      DCMIPP_PRFCR      at 16#1FC# range 0 .. 31;
      DCMIPP_CMCR       at 16#204# range 0 .. 31;
      DCMIPP_CMFRCR     at 16#208# range 0 .. 31;
      DCMIPP_CMIER      at 16#3F0# range 0 .. 31;
      DCMIPP_CMSR1      at 16#3F4# range 0 .. 31;
      DCMIPP_CMSR2      at 16#3F8# range 0 .. 31;
      DCMIPP_CMFCR      at 16#3FC# range 0 .. 31;
      DCMIPP_P0FSCR     at 16#404# range 0 .. 31;
      DCMIPP_P0FCTCR    at 16#500# range 0 .. 31;
      DCMIPP_P0SCSTR    at 16#504# range 0 .. 31;
      DCMIPP_P0SCSZR    at 16#508# range 0 .. 31;
      DCMIPP_P0DCCNTR   at 16#5B0# range 0 .. 31;
      DCMIPP_P0DCLMTR   at 16#5B4# range 0 .. 31;
      DCMIPP_P0PPCR     at 16#5C0# range 0 .. 31;
      DCMIPP_P0PPM0AR1  at 16#5C4# range 0 .. 31;
      DCMIPP_P0PPM0AR2  at 16#5C8# range 0 .. 31;
      DCMIPP_P0STM0AR   at 16#5D0# range 0 .. 31;
      DCMIPP_P0IER      at 16#5F4# range 0 .. 31;
      DCMIPP_P0SR       at 16#5F8# range 0 .. 31;
      DCMIPP_P0FCR      at 16#5FC# range 0 .. 31;
      DCMIPP_P0CFSCR    at 16#604# range 0 .. 31;
      DCMIPP_P0CFCTCR   at 16#700# range 0 .. 31;
      DCMIPP_P0CSCSTR   at 16#704# range 0 .. 31;
      DCMIPP_P0CSCSZR   at 16#708# range 0 .. 31;
      DCMIPP_P0CPPCR    at 16#7C0# range 0 .. 31;
      DCMIPP_P0CPPM0AR1 at 16#7C4# range 0 .. 31;
      DCMIPP_P0CPPM0AR2 at 16#7C8# range 0 .. 31;
      DCMIPP_P1FSCR     at 16#804# range 0 .. 31;
      DCMIPP_P1SRCR     at 16#820# range 0 .. 31;
      DCMIPP_P1BPRCR    at 16#824# range 0 .. 31;
      DCMIPP_P1BPRSR    at 16#828# range 0 .. 31;
      DCMIPP_P1DECR     at 16#830# range 0 .. 31;
      DCMIPP_P1BLCCR    at 16#840# range 0 .. 31;
      DCMIPP_P1EXCR1    at 16#844# range 0 .. 31;
      DCMIPP_P1EXCR2    at 16#848# range 0 .. 31;
      DCMIPP_P1ST1CR    at 16#850# range 0 .. 31;
      DCMIPP_P1ST2CR    at 16#854# range 0 .. 31;
      DCMIPP_P1ST3CR    at 16#858# range 0 .. 31;
      DCMIPP_P1STSTR    at 16#85C# range 0 .. 31;
      DCMIPP_P1STSZR    at 16#860# range 0 .. 31;
      DCMIPP_P1ST1SR    at 16#864# range 0 .. 31;
      DCMIPP_P1ST2SR    at 16#868# range 0 .. 31;
      DCMIPP_P1ST3SR    at 16#86C# range 0 .. 31;
      DCMIPP_P1DMCR     at 16#870# range 0 .. 31;
      DCMIPP_P1CCCR     at 16#880# range 0 .. 31;
      DCMIPP_P1CCRR1    at 16#884# range 0 .. 31;
      DCMIPP_P1CCRR2    at 16#888# range 0 .. 31;
      DCMIPP_P1CCGR1    at 16#88C# range 0 .. 31;
      DCMIPP_P1CCGR2    at 16#890# range 0 .. 31;
      DCMIPP_P1CCBR1    at 16#894# range 0 .. 31;
      DCMIPP_P1CCBR2    at 16#898# range 0 .. 31;
      DCMIPP_P1CTCR1    at 16#8A0# range 0 .. 31;
      DCMIPP_P1CTCR2    at 16#8A4# range 0 .. 31;
      DCMIPP_P1CTCR3    at 16#8A8# range 0 .. 31;
      DCMIPP_P1FCTCR    at 16#900# range 0 .. 31;
      DCMIPP_P1CRSTR    at 16#904# range 0 .. 31;
      DCMIPP_P1CRSZR    at 16#908# range 0 .. 31;
      DCMIPP_P1DCCR     at 16#90C# range 0 .. 31;
      DCMIPP_P1DSCR     at 16#910# range 0 .. 31;
      DCMIPP_P1DSRTIOR  at 16#914# range 0 .. 31;
      DCMIPP_P1DSSZR    at 16#918# range 0 .. 31;
      DCMIPP_P1CMRICR   at 16#920# range 0 .. 31;
      DCMIPP_P1RI1CR1   at 16#924# range 0 .. 31;
      DCMIPP_P1RI1CR2   at 16#928# range 0 .. 31;
      DCMIPP_P1RI2CR1   at 16#92C# range 0 .. 31;
      DCMIPP_P1RI2CR2   at 16#930# range 0 .. 31;
      DCMIPP_P1RI3CR1   at 16#934# range 0 .. 31;
      DCMIPP_P1RI3CR2   at 16#938# range 0 .. 31;
      DCMIPP_P1RI4CR1   at 16#93C# range 0 .. 31;
      DCMIPP_P1RI4CR2   at 16#940# range 0 .. 31;
      DCMIPP_P1RI5CR1   at 16#944# range 0 .. 31;
      DCMIPP_P1RI5CR2   at 16#948# range 0 .. 31;
      DCMIPP_P1RI6CR1   at 16#94C# range 0 .. 31;
      DCMIPP_P1RI6CR2   at 16#950# range 0 .. 31;
      DCMIPP_P1RI7CR1   at 16#954# range 0 .. 31;
      DCMIPP_P1RI7CR2   at 16#958# range 0 .. 31;
      DCMIPP_P1RI8CR1   at 16#95C# range 0 .. 31;
      DCMIPP_P1RI8CR2   at 16#960# range 0 .. 31;
      DCMIPP_P1GMCR     at 16#970# range 0 .. 31;
      DCMIPP_P1YUVCR    at 16#980# range 0 .. 31;
      DCMIPP_P1YUVRR1   at 16#984# range 0 .. 31;
      DCMIPP_P1YUVRR2   at 16#988# range 0 .. 31;
      DCMIPP_P1YUVGR1   at 16#98C# range 0 .. 31;
      DCMIPP_P1YUVGR2   at 16#990# range 0 .. 31;
      DCMIPP_P1YUVBR1   at 16#994# range 0 .. 31;
      DCMIPP_P1YUVBR2   at 16#998# range 0 .. 31;
      DCMIPP_P1PPCR     at 16#9C0# range 0 .. 31;
      DCMIPP_P1PPM0AR1  at 16#9C4# range 0 .. 31;
      DCMIPP_P1PPM0AR2  at 16#9C8# range 0 .. 31;
      DCMIPP_P1PPM0PR   at 16#9CC# range 0 .. 31;
      DCMIPP_P1STM0AR   at 16#9D0# range 0 .. 31;
      DCMIPP_P1PPM1AR1  at 16#9D4# range 0 .. 31;
      DCMIPP_P1PPM1AR2  at 16#9D8# range 0 .. 31;
      DCMIPP_P1PPM1PR   at 16#9DC# range 0 .. 31;
      DCMIPP_P1STM1AR   at 16#9E0# range 0 .. 31;
      DCMIPP_P1PPM2AR1  at 16#9E4# range 0 .. 31;
      DCMIPP_P1PPM2AR2  at 16#9E8# range 0 .. 31;
      DCMIPP_P1STM2AR   at 16#9F0# range 0 .. 31;
      DCMIPP_P1IER      at 16#9F4# range 0 .. 31;
      DCMIPP_P1SR       at 16#9F8# range 0 .. 31;
      DCMIPP_P1FCR      at 16#9FC# range 0 .. 31;
      DCMIPP_P1CFSCR    at 16#A04# range 0 .. 31;
      DCMIPP_P1CBPRCR   at 16#A24# range 0 .. 31;
      DCMIPP_P1CBLCCR   at 16#A40# range 0 .. 31;
      DCMIPP_P1CEXCR1   at 16#A44# range 0 .. 31;
      DCMIPP_P1CEXCR2   at 16#A48# range 0 .. 31;
      DCMIPP_P1CST1CR   at 16#A50# range 0 .. 31;
      DCMIPP_P1CST2CR   at 16#A54# range 0 .. 31;
      DCMIPP_P1CST3CR   at 16#A58# range 0 .. 31;
      DCMIPP_P1CSTSTR   at 16#A5C# range 0 .. 31;
      DCMIPP_P1CSTSZR   at 16#A60# range 0 .. 31;
      DCMIPP_P1CCCCR    at 16#A80# range 0 .. 31;
      DCMIPP_P1CCCRR1   at 16#A84# range 0 .. 31;
      DCMIPP_P1CCCRR2   at 16#A88# range 0 .. 31;
      DCMIPP_P1CCCGR1   at 16#A8C# range 0 .. 31;
      DCMIPP_P1CCCGR2   at 16#A90# range 0 .. 31;
      DCMIPP_P1CCCBR1   at 16#A94# range 0 .. 31;
      DCMIPP_P1CCCBR2   at 16#A98# range 0 .. 31;
      DCMIPP_P1CCTCR1   at 16#AA0# range 0 .. 31;
      DCMIPP_P1CCTCR2   at 16#AA4# range 0 .. 31;
      DCMIPP_P1CCTCR3   at 16#AA8# range 0 .. 31;
      DCMIPP_P1CFCTCR   at 16#B00# range 0 .. 31;
      DCMIPP_P1CCRSTR   at 16#B04# range 0 .. 31;
      DCMIPP_P1CCRSZR   at 16#B08# range 0 .. 31;
      DCMIPP_P1CDCCR    at 16#B0C# range 0 .. 31;
      DCMIPP_P1CDSCR    at 16#B10# range 0 .. 31;
      DCMIPP_P1CDSRTIOR at 16#B14# range 0 .. 31;
      DCMIPP_P1CDSSZR   at 16#B18# range 0 .. 31;
      DCMIPP_P1CCMRICR  at 16#B20# range 0 .. 31;
      DCMIPP_P1CRI1CR1  at 16#B24# range 0 .. 31;
      DCMIPP_P1CRI1CR2  at 16#B28# range 0 .. 31;
      DCMIPP_P1CRI2CR1  at 16#B2C# range 0 .. 31;
      DCMIPP_P1CRI2CR2  at 16#B30# range 0 .. 31;
      DCMIPP_P1CRI3CR1  at 16#B34# range 0 .. 31;
      DCMIPP_P1CRI3CR2  at 16#B38# range 0 .. 31;
      DCMIPP_P1CRI4CR1  at 16#B3C# range 0 .. 31;
      DCMIPP_P1CRI4CR2  at 16#B40# range 0 .. 31;
      DCMIPP_P1CRI5CR1  at 16#B44# range 0 .. 31;
      DCMIPP_P1CRI5CR2  at 16#B48# range 0 .. 31;
      DCMIPP_P1CRI6CR1  at 16#B4C# range 0 .. 31;
      DCMIPP_P1CRI6CR2  at 16#B50# range 0 .. 31;
      DCMIPP_P1CRI7CR1  at 16#B54# range 0 .. 31;
      DCMIPP_P1CRI7CR2  at 16#B58# range 0 .. 31;
      DCMIPP_P1CRI8CR1  at 16#B5C# range 0 .. 31;
      DCMIPP_P1CRI8CR2  at 16#B60# range 0 .. 31;
      DCMIPP_P1CPPCR    at 16#BC0# range 0 .. 31;
      DCMIPP_P1CPPM0AR1 at 16#BC4# range 0 .. 31;
      DCMIPP_P1CPPM0AR2 at 16#BC8# range 0 .. 31;
      DCMIPP_P1CPPM0PR  at 16#BCC# range 0 .. 31;
      DCMIPP_P1CPPM1AR1 at 16#BD4# range 0 .. 31;
      DCMIPP_P1CPPM1AR2 at 16#BD8# range 0 .. 31;
      DCMIPP_P1CPPM1PR  at 16#BDC# range 0 .. 31;
      DCMIPP_P1CPPM2AR1 at 16#BE4# range 0 .. 31;
      DCMIPP_P1CPPM2AR2 at 16#BE8# range 0 .. 31;
      DCMIPP_P2FSCR     at 16#C04# range 0 .. 31;
      DCMIPP_P2FCTCR    at 16#D00# range 0 .. 31;
      DCMIPP_P2CRSTR    at 16#D04# range 0 .. 31;
      DCMIPP_P2CRSZR    at 16#D08# range 0 .. 31;
      DCMIPP_P2DCCR     at 16#D0C# range 0 .. 31;
      DCMIPP_P2DSCR     at 16#D10# range 0 .. 31;
      DCMIPP_P2DSRTIOR  at 16#D14# range 0 .. 31;
      DCMIPP_P2DSSZR    at 16#D18# range 0 .. 31;
      DCMIPP_P2CMRICR   at 16#D20# range 0 .. 31;
      DCMIPP_P2RI1CR1   at 16#D24# range 0 .. 31;
      DCMIPP_P2RI1CR2   at 16#D28# range 0 .. 31;
      DCMIPP_P2RI2CR1   at 16#D2C# range 0 .. 31;
      DCMIPP_P2RI2CR2   at 16#D30# range 0 .. 31;
      DCMIPP_P2RI3CR1   at 16#D34# range 0 .. 31;
      DCMIPP_P2RI3CR2   at 16#D38# range 0 .. 31;
      DCMIPP_P2RI4CR1   at 16#D3C# range 0 .. 31;
      DCMIPP_P2RI4CR2   at 16#D40# range 0 .. 31;
      DCMIPP_P2RI5CR1   at 16#D44# range 0 .. 31;
      DCMIPP_P2RI5CR2   at 16#D48# range 0 .. 31;
      DCMIPP_P2RI6CR1   at 16#D4C# range 0 .. 31;
      DCMIPP_P2RI6CR2   at 16#D50# range 0 .. 31;
      DCMIPP_P2RI7CR1   at 16#D54# range 0 .. 31;
      DCMIPP_P2RI7CR2   at 16#D58# range 0 .. 31;
      DCMIPP_P2RI8CR1   at 16#D5C# range 0 .. 31;
      DCMIPP_P2RI8CR2   at 16#D60# range 0 .. 31;
      DCMIPP_P2GMCR     at 16#D70# range 0 .. 31;
      DCMIPP_P2PPCR     at 16#DC0# range 0 .. 31;
      DCMIPP_P2PPM0AR1  at 16#DC4# range 0 .. 31;
      DCMIPP_P2PPM0AR2  at 16#DC8# range 0 .. 31;
      DCMIPP_P2PPM0PR   at 16#DCC# range 0 .. 31;
      DCMIPP_P2STM0AR   at 16#DD0# range 0 .. 31;
      DCMIPP_P2IER      at 16#DF4# range 0 .. 31;
      DCMIPP_P2SR       at 16#DF8# range 0 .. 31;
      DCMIPP_P2FCR      at 16#DFC# range 0 .. 31;
      DCMIPP_P2CFSCR    at 16#E04# range 0 .. 31;
      DCMIPP_P2CFCTCR   at 16#F00# range 0 .. 31;
      DCMIPP_P2CCRSTR   at 16#F04# range 0 .. 31;
      DCMIPP_P2CCRSZR   at 16#F08# range 0 .. 31;
      DCMIPP_P2CDCCR    at 16#F0C# range 0 .. 31;
      DCMIPP_P2CDSCR    at 16#F10# range 0 .. 31;
      DCMIPP_P2CDSRTIOR at 16#F14# range 0 .. 31;
      DCMIPP_P2CDSSZR   at 16#F18# range 0 .. 31;
      DCMIPP_P2CCMRICR  at 16#F20# range 0 .. 31;
      DCMIPP_P2CRI1CR1  at 16#F24# range 0 .. 31;
      DCMIPP_P2CRI1CR2  at 16#F28# range 0 .. 31;
      DCMIPP_P2CRI2CR1  at 16#F2C# range 0 .. 31;
      DCMIPP_P2CRI2CR2  at 16#F30# range 0 .. 31;
      DCMIPP_P2CRI3CR1  at 16#F34# range 0 .. 31;
      DCMIPP_P2CRI3CR2  at 16#F38# range 0 .. 31;
      DCMIPP_P2CRI4CR1  at 16#F3C# range 0 .. 31;
      DCMIPP_P2CRI4CR2  at 16#F40# range 0 .. 31;
      DCMIPP_P2CRI5CR1  at 16#F44# range 0 .. 31;
      DCMIPP_P2CRI5CR2  at 16#F48# range 0 .. 31;
      DCMIPP_P2CRI6CR1  at 16#F4C# range 0 .. 31;
      DCMIPP_P2CRI6CR2  at 16#F50# range 0 .. 31;
      DCMIPP_P2CRI7CR1  at 16#F54# range 0 .. 31;
      DCMIPP_P2CRI7CR2  at 16#F58# range 0 .. 31;
      DCMIPP_P2CRI8CR1  at 16#F5C# range 0 .. 31;
      DCMIPP_P2CRI8CR2  at 16#F60# range 0 .. 31;
      DCMIPP_P2CPPCR    at 16#FC0# range 0 .. 31;
      DCMIPP_P2CPPM0AR1 at 16#FC4# range 0 .. 31;
      DCMIPP_P2CPPM0AR2 at 16#FC8# range 0 .. 31;
   end record;

   --  Digital camera interface pixel pipeline
   DCMIPP_Periph : aliased DCMIPP_Peripheral
     with Import, Address => DCMIPP_Base;

   --  Digital camera interface pixel pipeline
   DCMIPP_S_Periph : aliased DCMIPP_Peripheral
     with Import, Address => DCMIPP_S_Base;

end STM32_SVD.DCMIPP;
