--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GFXMMU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GFXMMU configuration register
   type GFXMMU_CR_Register is record
      --  Buffer 0 overflow interrupt enable
      B0OIE          : Boolean := False;
      --  Buffer 1 overflow interrupt enable
      B1OIE          : Boolean := False;
      --  Buffer 2 overflow interrupt enable
      B2OIE          : Boolean := False;
      --  Buffer 3 overflow interrupt enable
      B3OIE          : Boolean := False;
      --  AXI master error interrupt enable
      AMEIE          : Boolean := False;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block size
      BS             : Boolean := False;
      --  unspecified
      Reserved_7_14  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Address translation enable
      ATE            : Boolean := False;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Buffer 0 packing enable
      B0PE           : Boolean := False;
      --  Buffer 0 packing mode
      B0PM           : Boolean := False;
      --  Buffer 1 packing enable
      B1PE           : Boolean := False;
      --  Buffer 1 packing mode
      B1PM           : Boolean := False;
      --  Buffer 2 packing enable
      B2PE           : Boolean := False;
      --  Buffer 2 packing mode
      B2PM           : Boolean := False;
      --  Buffer 3 packing enable
      B3PE           : Boolean := False;
      --  Buffer 3 packing mode
      B3PM           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_CR_Register use record
      B0OIE          at 0 range 0 .. 0;
      B1OIE          at 0 range 1 .. 1;
      B2OIE          at 0 range 2 .. 2;
      B3OIE          at 0 range 3 .. 3;
      AMEIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      BS             at 0 range 6 .. 6;
      Reserved_7_14  at 0 range 7 .. 14;
      ATE            at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      B0PE           at 0 range 24 .. 24;
      B0PM           at 0 range 25 .. 25;
      B1PE           at 0 range 26 .. 26;
      B1PM           at 0 range 27 .. 27;
      B2PE           at 0 range 28 .. 28;
      B2PM           at 0 range 29 .. 29;
      B3PE           at 0 range 30 .. 30;
      B3PM           at 0 range 31 .. 31;
   end record;

   --  GFXMMU status register
   type GFXMMU_SR_Register is record
      --  Read-only. Buffer 0 overflow flag
      B0OF          : Boolean;
      --  Read-only. Buffer 1 overflow flag
      B1OF          : Boolean;
      --  Read-only. Buffer 2 overflow flag
      B2OF          : Boolean;
      --  Read-only. Buffer 3 overflow flag
      B3OF          : Boolean;
      --  Read-only. AXI master error flag
      AMEF          : Boolean;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_SR_Register use record
      B0OF          at 0 range 0 .. 0;
      B1OF          at 0 range 1 .. 1;
      B2OF          at 0 range 2 .. 2;
      B3OF          at 0 range 3 .. 3;
      AMEF          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  GFXMMU flag clear register
   type GFXMMU_FCR_Register is record
      --  Clear buffer 0 overflow flag
      CB0OF         : Boolean := False;
      --  Clear buffer 1 overflow flag
      CB1OF         : Boolean := False;
      --  Clear buffer 2 overflow flag
      CB2OF         : Boolean := False;
      --  Clear buffer 3 overflow flag
      CB3OF         : Boolean := False;
      --  Clear AXI master error flag
      CAMEF         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_FCR_Register use record
      CB0OF         at 0 range 0 .. 0;
      CB1OF         at 0 range 1 .. 1;
      CB2OF         at 0 range 2 .. 2;
      CB3OF         at 0 range 3 .. 3;
      CAMEF         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype GFXMMU_DAR_DA_Field is Interfaces.Bit_Types.Byte;

   --  GFXMMU default alpha register
   type GFXMMU_DAR_Register is record
      --  Default alpha
      DA            : GFXMMU_DAR_DA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_DAR_Register use record
      DA            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype GFXMMU_B0CR_PBO_Field is Interfaces.Bit_Types.UInt19;
   subtype GFXMMU_B0CR_PBBA_Field is Interfaces.Bit_Types.UInt9;

   --  GFXMMU buffer 0 configuration register
   type GFXMMU_B0CR_Register is record
      --  unspecified
      Reserved_0_3 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Physical buffer offset
      PBO          : GFXMMU_B0CR_PBO_Field := 16#0#;
      --  Physical buffer base address
      PBBA         : GFXMMU_B0CR_PBBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_B0CR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PBO          at 0 range 4 .. 22;
      PBBA         at 0 range 23 .. 31;
   end record;

   subtype GFXMMU_B1CR_PBO_Field is Interfaces.Bit_Types.UInt19;
   subtype GFXMMU_B1CR_PBBA_Field is Interfaces.Bit_Types.UInt9;

   --  GFXMMU buffer 1 configuration register
   type GFXMMU_B1CR_Register is record
      --  unspecified
      Reserved_0_3 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Physical buffer offset
      PBO          : GFXMMU_B1CR_PBO_Field := 16#0#;
      --  Physical buffer base address
      PBBA         : GFXMMU_B1CR_PBBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_B1CR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PBO          at 0 range 4 .. 22;
      PBBA         at 0 range 23 .. 31;
   end record;

   subtype GFXMMU_B2CR_PBO_Field is Interfaces.Bit_Types.UInt19;
   subtype GFXMMU_B2CR_PBBA_Field is Interfaces.Bit_Types.UInt9;

   --  GFXMMU buffer 2 configuration register
   type GFXMMU_B2CR_Register is record
      --  unspecified
      Reserved_0_3 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Physical buffer offset
      PBO          : GFXMMU_B2CR_PBO_Field := 16#0#;
      --  Physical buffer base address
      PBBA         : GFXMMU_B2CR_PBBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_B2CR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PBO          at 0 range 4 .. 22;
      PBBA         at 0 range 23 .. 31;
   end record;

   subtype GFXMMU_B3CR_PBO_Field is Interfaces.Bit_Types.UInt19;
   subtype GFXMMU_B3CR_PBBA_Field is Interfaces.Bit_Types.UInt9;

   --  GFXMMU buffer 3 configuration register
   type GFXMMU_B3CR_Register is record
      --  unspecified
      Reserved_0_3 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Physical buffer offset
      PBO          : GFXMMU_B3CR_PBO_Field := 16#0#;
      --  Physical buffer base address
      PBBA         : GFXMMU_B3CR_PBBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_B3CR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PBO          at 0 range 4 .. 22;
      PBBA         at 0 range 23 .. 31;
   end record;

   ------------------------------------
   -- GFXMMU_LUT cluster's Registers --
   ------------------------------------

   subtype GFXMMU_LUTL_GFXMMU_LUT_FVB_Field is Interfaces.Bit_Types.Byte;
   subtype GFXMMU_LUTL_GFXMMU_LUT_LVB_Field is Interfaces.Bit_Types.Byte;

   --  GFXMMU LUT low
   type GFXMMU_LUTL_GFXMMU_LUT_Register is record
      --  Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  First valid block
      FVB            : GFXMMU_LUTL_GFXMMU_LUT_FVB_Field := 16#0#;
      --  Last valid block
      LVB            : GFXMMU_LUTL_GFXMMU_LUT_LVB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_LUTL_GFXMMU_LUT_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FVB            at 0 range 8 .. 15;
      LVB            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GFXMMU_LUTH_GFXMMU_LUT_LO_Field is Interfaces.Bit_Types.UInt18;

   --  GFXMMU LUT high
   type GFXMMU_LUTH_GFXMMU_LUT_Register is record
      --  Line offset
      LO             : GFXMMU_LUTH_GFXMMU_LUT_LO_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXMMU_LUTH_GFXMMU_LUT_Register use record
      LO             at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   type GFXMMU_LUT_Cluster is record
      --  GFXMMU LUT low
      GFXMMU_LUTL : aliased GFXMMU_LUTL_GFXMMU_LUT_Register;
      --  GFXMMU LUT high
      GFXMMU_LUTH : aliased GFXMMU_LUTH_GFXMMU_LUT_Register;
   end record
     with Size => 64;

   for GFXMMU_LUT_Cluster use record
      GFXMMU_LUTL at 16#0# range 0 .. 31;
      GFXMMU_LUTH at 16#4# range 0 .. 31;
   end record;

   type GFXMMU_LUT_Clusters is array (0 .. 1023) of GFXMMU_LUT_Cluster;

   ------------------------------------
   -- GFXMMU_LUT cluster's Registers --
   ------------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Chrom-GRC
   type GFXMMU_Peripheral is record
      --  GFXMMU configuration register
      GFXMMU_CR   : aliased GFXMMU_CR_Register;
      --  GFXMMU status register
      GFXMMU_SR   : aliased GFXMMU_SR_Register;
      --  GFXMMU flag clear register
      GFXMMU_FCR  : aliased GFXMMU_FCR_Register;
      --  GFXMMU default value register
      GFXMMU_DVR  : aliased Interfaces.Bit_Types.UInt32;
      --  GFXMMU default alpha register
      GFXMMU_DAR  : aliased GFXMMU_DAR_Register;
      --  GFXMMU buffer 0 configuration register
      GFXMMU_B0CR : aliased GFXMMU_B0CR_Register;
      --  GFXMMU buffer 1 configuration register
      GFXMMU_B1CR : aliased GFXMMU_B1CR_Register;
      --  GFXMMU buffer 2 configuration register
      GFXMMU_B2CR : aliased GFXMMU_B2CR_Register;
      --  GFXMMU buffer 3 configuration register
      GFXMMU_B3CR : aliased GFXMMU_B3CR_Register;
      GFXMMU_LUT  : aliased GFXMMU_LUT_Clusters;
   end record
     with Volatile;

   for GFXMMU_Peripheral use record
      GFXMMU_CR   at 16#0# range 0 .. 31;
      GFXMMU_SR   at 16#4# range 0 .. 31;
      GFXMMU_FCR  at 16#8# range 0 .. 31;
      GFXMMU_DVR  at 16#10# range 0 .. 31;
      GFXMMU_DAR  at 16#14# range 0 .. 31;
      GFXMMU_B0CR at 16#20# range 0 .. 31;
      GFXMMU_B1CR at 16#24# range 0 .. 31;
      GFXMMU_B2CR at 16#28# range 0 .. 31;
      GFXMMU_B3CR at 16#2C# range 0 .. 31;
      GFXMMU_LUT  at 16#1000# range 0 .. 65535;
   end record;

   --  Chrom-GRC
   GFXMMU_Periph : aliased GFXMMU_Peripheral
     with Import, Address => GFXMMU_Base;

   --  Chrom-GRC
   GFXMMU_S_Periph : aliased GFXMMU_Peripheral
     with Import, Address => GFXMMU_S_Base;

end Interfaces.STM32.GFXMMU;
