--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.CSI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  CSI-2 Host control register
   type CSI_CR_Register is record
      --  CSI-2 enable
      CSIEN          : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Virtual channel 0 start
      VC0START       : Boolean := False;
      --  Write-only. Virtual channel 0 stop
      VC0STOP        : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Virtual channel 1 start
      VC1START       : Boolean := False;
      --  Write-only. Virtual channel 1 stop
      VC1STOP        : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Virtual channel 2 start
      VC2START       : Boolean := False;
      --  Write-only. Virtual channel 2 stop
      VC2STOP        : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Virtual channel 3 start
      VC3START       : Boolean := False;
      --  Write-only. Virtual channel 3 stop
      VC3STOP        : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CR_Register use record
      CSIEN          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      VC0START       at 0 range 2 .. 2;
      VC0STOP        at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      VC1START       at 0 range 6 .. 6;
      VC1STOP        at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      VC2START       at 0 range 10 .. 10;
      VC2STOP        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      VC3START       at 0 range 14 .. 14;
      VC3STOP        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CSI-2 Host DPHY_RX control register
   type CSI_PCR_Register is record
      --  Power down
      PWRDOWN       : Boolean := False;
      --  Clock lane enable
      CLEN          : Boolean := False;
      --  D-PHY_RX data lane 0 enable
      DL0EN         : Boolean := False;
      --  D-PHY_RX data lane 1 enable
      DL1EN         : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PCR_Register use record
      PWRDOWN       at 0 range 0 .. 0;
      CLEN          at 0 range 1 .. 1;
      DL0EN         at 0 range 2 .. 2;
      DL1EN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CSI_VC0CFGR1_CDTFT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC0CFGR1_DT0_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR1_DT0FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 0 configuration register 1
   type CSI_VC0CFGR1_Register is record
      --  All data types enable for the virtual channel x
      ALLDT          : Boolean := False;
      --  Data type 0 enable
      DT0EN          : Boolean := False;
      --  Data type 1 enable
      DT1EN          : Boolean := False;
      --  Data type 2 enable
      DT2EN          : Boolean := False;
      --  Data type 3 enable
      DT3EN          : Boolean := False;
      --  Data type 4 enable
      DT4EN          : Boolean := False;
      --  Data type 5 enable
      DT5EN          : Boolean := False;
      --  Data type 6 enable
      DT6EN          : Boolean := False;
      --  Common format for all data types
      CDTFT          : CSI_VC0CFGR1_CDTFT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 0 class selection for virtual channel x
      DT0            : CSI_VC0CFGR1_DT0_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 0 format
      DT0FT          : CSI_VC0CFGR1_DT0FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC0CFGR1_Register use record
      ALLDT          at 0 range 0 .. 0;
      DT0EN          at 0 range 1 .. 1;
      DT1EN          at 0 range 2 .. 2;
      DT2EN          at 0 range 3 .. 3;
      DT3EN          at 0 range 4 .. 4;
      DT4EN          at 0 range 5 .. 5;
      DT5EN          at 0 range 6 .. 6;
      DT6EN          at 0 range 7 .. 7;
      CDTFT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT0            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT0FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC0CFGR2_DT1_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR2_DT1FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC0CFGR2_DT2_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR2_DT2FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 0 configuration register 2
   type CSI_VC0CFGR2_Register is record
      --  Data type 1 class selection for virtual channel x
      DT1            : CSI_VC0CFGR2_DT1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 1 format
      DT1FT          : CSI_VC0CFGR2_DT1FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 2 class selection for virtual channel x
      DT2            : CSI_VC0CFGR2_DT2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 2 format
      DT2FT          : CSI_VC0CFGR2_DT2FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC0CFGR2_Register use record
      DT1            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT1FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT2            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT2FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC0CFGR3_DT3_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR3_DT3FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC0CFGR3_DT4_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR3_DT4FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 0 configuration register 3
   type CSI_VC0CFGR3_Register is record
      --  Data type 3 class selection for virtual channel x
      DT3            : CSI_VC0CFGR3_DT3_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 3 format
      DT3FT          : CSI_VC0CFGR3_DT3FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 4 class selection for virtual channel x
      DT4            : CSI_VC0CFGR3_DT4_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 4 format
      DT4FT          : CSI_VC0CFGR3_DT4FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC0CFGR3_Register use record
      DT3            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT3FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT4            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT4FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC0CFGR4_DT5_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR4_DT5FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC0CFGR4_DT6_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC0CFGR4_DT6FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 0 configuration register 4
   type CSI_VC0CFGR4_Register is record
      --  Data type 5 class selection for virtual channel x
      DT5            : CSI_VC0CFGR4_DT5_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 5 format
      DT5FT          : CSI_VC0CFGR4_DT5FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 6 class selection for virtual channel x
      DT6            : CSI_VC0CFGR4_DT6_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 6 format
      DT6FT          : CSI_VC0CFGR4_DT6FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC0CFGR4_Register use record
      DT5            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT5FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT6            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT6FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC1CFGR1_CDTFT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC1CFGR1_DT0_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR1_DT0FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 1 configuration register 1
   type CSI_VC1CFGR1_Register is record
      --  All data types enable for the virtual channel x
      ALLDT          : Boolean := False;
      --  Data type 0 enable
      DT0EN          : Boolean := False;
      --  Data type 1 enable
      DT1EN          : Boolean := False;
      --  Data type 2 enable
      DT2EN          : Boolean := False;
      --  Data type 3 enable
      DT3EN          : Boolean := False;
      --  Data type 4 enable
      DT4EN          : Boolean := False;
      --  Data type 5 enable
      DT5EN          : Boolean := False;
      --  Data type 6 enable
      DT6EN          : Boolean := False;
      --  Common format for all data types
      CDTFT          : CSI_VC1CFGR1_CDTFT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 0 class selection for virtual channel x
      DT0            : CSI_VC1CFGR1_DT0_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 0 format
      DT0FT          : CSI_VC1CFGR1_DT0FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC1CFGR1_Register use record
      ALLDT          at 0 range 0 .. 0;
      DT0EN          at 0 range 1 .. 1;
      DT1EN          at 0 range 2 .. 2;
      DT2EN          at 0 range 3 .. 3;
      DT3EN          at 0 range 4 .. 4;
      DT4EN          at 0 range 5 .. 5;
      DT5EN          at 0 range 6 .. 6;
      DT6EN          at 0 range 7 .. 7;
      CDTFT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT0            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT0FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC1CFGR2_DT1_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR2_DT1FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC1CFGR2_DT2_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR2_DT2FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 1 configuration register 2
   type CSI_VC1CFGR2_Register is record
      --  Data type 1 class selection for virtual channel x
      DT1            : CSI_VC1CFGR2_DT1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 1 format
      DT1FT          : CSI_VC1CFGR2_DT1FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 2 class selection for virtual channel x
      DT2            : CSI_VC1CFGR2_DT2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 2 format
      DT2FT          : CSI_VC1CFGR2_DT2FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC1CFGR2_Register use record
      DT1            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT1FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT2            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT2FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC1CFGR3_DT3_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR3_DT3FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC1CFGR3_DT4_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR3_DT4FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 1 configuration register 3
   type CSI_VC1CFGR3_Register is record
      --  Data type 3 class selection for virtual channel x
      DT3            : CSI_VC1CFGR3_DT3_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 3 format
      DT3FT          : CSI_VC1CFGR3_DT3FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 4 class selection for virtual channel x
      DT4            : CSI_VC1CFGR3_DT4_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 4 format
      DT4FT          : CSI_VC1CFGR3_DT4FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC1CFGR3_Register use record
      DT3            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT3FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT4            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT4FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC1CFGR4_DT5_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR4_DT5FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC1CFGR4_DT6_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC1CFGR4_DT6FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 1 configuration register 4
   type CSI_VC1CFGR4_Register is record
      --  Data type 5 class selection for virtual channel x
      DT5            : CSI_VC1CFGR4_DT5_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 5 format
      DT5FT          : CSI_VC1CFGR4_DT5FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 6 class selection for virtual channel x
      DT6            : CSI_VC1CFGR4_DT6_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 6 format
      DT6FT          : CSI_VC1CFGR4_DT6FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC1CFGR4_Register use record
      DT5            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT5FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT6            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT6FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC2CFGR1_CDTFT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC2CFGR1_DT0_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR1_DT0FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 2 configuration register 1
   type CSI_VC2CFGR1_Register is record
      --  All data types enable for the virtual channel x
      ALLDT          : Boolean := False;
      --  Data type 0 enable
      DT0EN          : Boolean := False;
      --  Data type 1 enable
      DT1EN          : Boolean := False;
      --  Data type 2 enable
      DT2EN          : Boolean := False;
      --  Data type 3 enable
      DT3EN          : Boolean := False;
      --  Data type 4 enable
      DT4EN          : Boolean := False;
      --  Data type 5 enable
      DT5EN          : Boolean := False;
      --  Data type 6 enable
      DT6EN          : Boolean := False;
      --  Common format for all data types
      CDTFT          : CSI_VC2CFGR1_CDTFT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 0 class selection for virtual channel x
      DT0            : CSI_VC2CFGR1_DT0_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 0 format
      DT0FT          : CSI_VC2CFGR1_DT0FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC2CFGR1_Register use record
      ALLDT          at 0 range 0 .. 0;
      DT0EN          at 0 range 1 .. 1;
      DT1EN          at 0 range 2 .. 2;
      DT2EN          at 0 range 3 .. 3;
      DT3EN          at 0 range 4 .. 4;
      DT4EN          at 0 range 5 .. 5;
      DT5EN          at 0 range 6 .. 6;
      DT6EN          at 0 range 7 .. 7;
      CDTFT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT0            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT0FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC2CFGR2_DT1_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR2_DT1FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC2CFGR2_DT2_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR2_DT2FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 2 configuration register 2
   type CSI_VC2CFGR2_Register is record
      --  Data type 1 class selection for virtual channel x
      DT1            : CSI_VC2CFGR2_DT1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 1 format
      DT1FT          : CSI_VC2CFGR2_DT1FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 2 class selection for virtual channel x
      DT2            : CSI_VC2CFGR2_DT2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 2 format
      DT2FT          : CSI_VC2CFGR2_DT2FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC2CFGR2_Register use record
      DT1            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT1FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT2            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT2FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC2CFGR3_DT3_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR3_DT3FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC2CFGR3_DT4_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR3_DT4FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 2 configuration register 3
   type CSI_VC2CFGR3_Register is record
      --  Data type 3 class selection for virtual channel x
      DT3            : CSI_VC2CFGR3_DT3_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 3 format
      DT3FT          : CSI_VC2CFGR3_DT3FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 4 class selection for virtual channel x
      DT4            : CSI_VC2CFGR3_DT4_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 4 format
      DT4FT          : CSI_VC2CFGR3_DT4FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC2CFGR3_Register use record
      DT3            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT3FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT4            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT4FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC2CFGR4_DT5_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR4_DT5FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC2CFGR4_DT6_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC2CFGR4_DT6FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 2 configuration register 4
   type CSI_VC2CFGR4_Register is record
      --  Data type 5 class selection for virtual channel x
      DT5            : CSI_VC2CFGR4_DT5_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 5 format
      DT5FT          : CSI_VC2CFGR4_DT5FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 6 class selection for virtual channel x
      DT6            : CSI_VC2CFGR4_DT6_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 6 format
      DT6FT          : CSI_VC2CFGR4_DT6FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC2CFGR4_Register use record
      DT5            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT5FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT6            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT6FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC3CFGR1_CDTFT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC3CFGR1_DT0_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR1_DT0FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 3 configuration register 1
   type CSI_VC3CFGR1_Register is record
      --  All data types enable for the virtual channel x
      ALLDT          : Boolean := False;
      --  Data type 0 enable
      DT0EN          : Boolean := False;
      --  Data type 1 enable
      DT1EN          : Boolean := False;
      --  Data type 2 enable
      DT2EN          : Boolean := False;
      --  Data type 3 enable
      DT3EN          : Boolean := False;
      --  Data type 4 enable
      DT4EN          : Boolean := False;
      --  Data type 5 enable
      DT5EN          : Boolean := False;
      --  Data type 6 enable
      DT6EN          : Boolean := False;
      --  Common format for all data types
      CDTFT          : CSI_VC3CFGR1_CDTFT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 0 class selection for virtual channel x
      DT0            : CSI_VC3CFGR1_DT0_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 0 format
      DT0FT          : CSI_VC3CFGR1_DT0FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC3CFGR1_Register use record
      ALLDT          at 0 range 0 .. 0;
      DT0EN          at 0 range 1 .. 1;
      DT1EN          at 0 range 2 .. 2;
      DT2EN          at 0 range 3 .. 3;
      DT3EN          at 0 range 4 .. 4;
      DT4EN          at 0 range 5 .. 5;
      DT5EN          at 0 range 6 .. 6;
      DT6EN          at 0 range 7 .. 7;
      CDTFT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT0            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT0FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC3CFGR2_DT1_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR2_DT1FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC3CFGR2_DT2_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR2_DT2FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 3 configuration register 2
   type CSI_VC3CFGR2_Register is record
      --  Data type 1 class selection for virtual channel x
      DT1            : CSI_VC3CFGR2_DT1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 1 format
      DT1FT          : CSI_VC3CFGR2_DT1FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 2 class selection for virtual channel x
      DT2            : CSI_VC3CFGR2_DT2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 2 format
      DT2FT          : CSI_VC3CFGR2_DT2FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC3CFGR2_Register use record
      DT1            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT1FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT2            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT2FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC3CFGR3_DT3_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR3_DT3FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC3CFGR3_DT4_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR3_DT4FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 3 configuration register 3
   type CSI_VC3CFGR3_Register is record
      --  Data type 3 class selection for virtual channel x
      DT3            : CSI_VC3CFGR3_DT3_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 3 format
      DT3FT          : CSI_VC3CFGR3_DT3FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 4 class selection for virtual channel x
      DT4            : CSI_VC3CFGR3_DT4_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 4 format
      DT4FT          : CSI_VC3CFGR3_DT4FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC3CFGR3_Register use record
      DT3            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT3FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT4            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT4FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_VC3CFGR4_DT5_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR4_DT5FT_Field is Interfaces.Bit_Types.UInt5;
   subtype CSI_VC3CFGR4_DT6_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_VC3CFGR4_DT6FT_Field is Interfaces.Bit_Types.UInt5;

   --  CSI-2 Host virtual channel 3 configuration register 4
   type CSI_VC3CFGR4_Register is record
      --  Data type 5 class selection for virtual channel x
      DT5            : CSI_VC3CFGR4_DT5_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 5 format
      DT5FT          : CSI_VC3CFGR4_DT5FT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data type 6 class selection for virtual channel x
      DT6            : CSI_VC3CFGR4_DT6_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data type 6 format
      DT6FT          : CSI_VC3CFGR4_DT6FT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VC3CFGR4_Register use record
      DT5            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DT5FT          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DT6            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DT6FT          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CSI_LB0CFGR_BYTECNT_Field is Interfaces.Bit_Types.UInt16;
   subtype CSI_LB0CFGR_LINECNT_Field is Interfaces.Bit_Types.UInt16;

   --  CSI-2 Host line byte 0 configuration register
   type CSI_LB0CFGR_Register is record
      --  Byte counter
      BYTECNT : CSI_LB0CFGR_BYTECNT_Field := 16#0#;
      --  Line counter
      LINECNT : CSI_LB0CFGR_LINECNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_LB0CFGR_Register use record
      BYTECNT at 0 range 0 .. 15;
      LINECNT at 0 range 16 .. 31;
   end record;

   subtype CSI_LB1CFGR_BYTECNT_Field is Interfaces.Bit_Types.UInt16;
   subtype CSI_LB1CFGR_LINECNT_Field is Interfaces.Bit_Types.UInt16;

   --  CSI-2 Host line byte 1 configuration register
   type CSI_LB1CFGR_Register is record
      --  Byte counter
      BYTECNT : CSI_LB1CFGR_BYTECNT_Field := 16#0#;
      --  Line counter
      LINECNT : CSI_LB1CFGR_LINECNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_LB1CFGR_Register use record
      BYTECNT at 0 range 0 .. 15;
      LINECNT at 0 range 16 .. 31;
   end record;

   subtype CSI_LB2CFGR_BYTECNT_Field is Interfaces.Bit_Types.UInt16;
   subtype CSI_LB2CFGR_LINECNT_Field is Interfaces.Bit_Types.UInt16;

   --  CSI-2 Host line byte 2 configuration register
   type CSI_LB2CFGR_Register is record
      --  Byte counter
      BYTECNT : CSI_LB2CFGR_BYTECNT_Field := 16#0#;
      --  Line counter
      LINECNT : CSI_LB2CFGR_LINECNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_LB2CFGR_Register use record
      BYTECNT at 0 range 0 .. 15;
      LINECNT at 0 range 16 .. 31;
   end record;

   subtype CSI_LB3CFGR_BYTECNT_Field is Interfaces.Bit_Types.UInt16;
   subtype CSI_LB3CFGR_LINECNT_Field is Interfaces.Bit_Types.UInt16;

   --  CSI-2 Host line byte 3 configuration register
   type CSI_LB3CFGR_Register is record
      --  Byte counter
      BYTECNT : CSI_LB3CFGR_BYTECNT_Field := 16#0#;
      --  Line counter
      LINECNT : CSI_LB3CFGR_LINECNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_LB3CFGR_Register use record
      BYTECNT at 0 range 0 .. 15;
      LINECNT at 0 range 16 .. 31;
   end record;

   subtype CSI_TIM0CFGR_COUNT_Field is Interfaces.Bit_Types.UInt25;

   --  CSI-2 Host timer 0 configuration register
   type CSI_TIM0CFGR_Register is record
      --  Clock cycle counter
      COUNT          : CSI_TIM0CFGR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_TIM0CFGR_Register use record
      COUNT          at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CSI_TIM1CFGR_COUNT_Field is Interfaces.Bit_Types.UInt25;

   --  CSI-2 Host timer 1 configuration register
   type CSI_TIM1CFGR_Register is record
      --  Clock cycle counter
      COUNT          : CSI_TIM1CFGR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_TIM1CFGR_Register use record
      COUNT          at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CSI_TIM2CFGR_COUNT_Field is Interfaces.Bit_Types.UInt25;

   --  CSI-2 Host timer 2 configuration register
   type CSI_TIM2CFGR_Register is record
      --  Clock cycle counter
      COUNT          : CSI_TIM2CFGR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_TIM2CFGR_Register use record
      COUNT          at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CSI_TIM3CFGR_COUNT_Field is Interfaces.Bit_Types.UInt25;

   --  CSI-2 Host timer 3 configuration register
   type CSI_TIM3CFGR_Register is record
      --  Clock cycle counter
      COUNT          : CSI_TIM3CFGR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_TIM3CFGR_Register use record
      COUNT          at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CSI_LMCFGR_LANENB_Field is Interfaces.Bit_Types.UInt3;
   subtype CSI_LMCFGR_DL0MAP_Field is Interfaces.Bit_Types.UInt3;
   subtype CSI_LMCFGR_DL1MAP_Field is Interfaces.Bit_Types.UInt3;

   --  CSI-2 Host lane merger configuration register
   type CSI_LMCFGR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Number of lanes
      LANENB         : CSI_LMCFGR_LANENB_Field := 16#2#;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Physical mapping of logical data lane 0
      DL0MAP         : CSI_LMCFGR_DL0MAP_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Physical mapping of logical data lane 1
      DL1MAP         : CSI_LMCFGR_DL1MAP_Field := 16#2#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#86#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_LMCFGR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      LANENB         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      DL0MAP         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      DL1MAP         at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CSI_PRGITR_LB0VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_LB1VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_LB2VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_LB3VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_TIM0VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_TIM1VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_TIM2VC_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_PRGITR_TIM3VC_Field is Interfaces.Bit_Types.UInt2;

   --  CSI-2 Host program interrupt register
   type CSI_PRGITR_Register is record
      --  Line/byte counter 0 linked to a virtual channel
      LB0VC          : CSI_PRGITR_LB0VC_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Line/byte 0 counter enable
      LB0EN          : Boolean := False;
      --  Line/byte counter 1 linked to a virtual channel
      LB1VC          : CSI_PRGITR_LB1VC_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Line/byte 1 counter enable
      LB1EN          : Boolean := False;
      --  Line/byte counter 2 linked to a virtual channel
      LB2VC          : CSI_PRGITR_LB2VC_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Line/byte 2 counter enable
      LB2EN          : Boolean := False;
      --  Line/byte counter 3 linked to a virtual channel
      LB3VC          : CSI_PRGITR_LB3VC_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Line/byte 3 counter enable
      LB3EN          : Boolean := False;
      --  TIM0 base time linked to a virtual channel
      TIM0VC         : CSI_PRGITR_TIM0VC_Field := 16#0#;
      --  TIM0 base time starting from the EOF
      TIM0EOF        : Boolean := False;
      --  TIM0 base time enable
      TIM0EN         : Boolean := False;
      --  TIM1 base time linked to a virtual channel
      TIM1VC         : CSI_PRGITR_TIM1VC_Field := 16#0#;
      --  TIM1 base time starting from the EOF
      TIM1EOF        : Boolean := False;
      --  TIM1 base time enable
      TIM1EN         : Boolean := False;
      --  TIM2 base time linked to a virtual channel
      TIM2VC         : CSI_PRGITR_TIM2VC_Field := 16#0#;
      --  TIM2 base time starting from the EOF
      TIM2EOF        : Boolean := False;
      --  TIM2 base time enable
      TIM2EN         : Boolean := False;
      --  TIM3 base time linked to a virtual channel
      TIM3VC         : CSI_PRGITR_TIM3VC_Field := 16#0#;
      --  TIM3 base time starting from the EOF
      TIM3EOF        : Boolean := False;
      --  TIM3 base time enable
      TIM3EN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PRGITR_Register use record
      LB0VC          at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LB0EN          at 0 range 3 .. 3;
      LB1VC          at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LB1EN          at 0 range 7 .. 7;
      LB2VC          at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      LB2EN          at 0 range 11 .. 11;
      LB3VC          at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      LB3EN          at 0 range 15 .. 15;
      TIM0VC         at 0 range 16 .. 17;
      TIM0EOF        at 0 range 18 .. 18;
      TIM0EN         at 0 range 19 .. 19;
      TIM1VC         at 0 range 20 .. 21;
      TIM1EOF        at 0 range 22 .. 22;
      TIM1EN         at 0 range 23 .. 23;
      TIM2VC         at 0 range 24 .. 25;
      TIM2EOF        at 0 range 26 .. 26;
      TIM2EN         at 0 range 27 .. 27;
      TIM3VC         at 0 range 28 .. 29;
      TIM3EOF        at 0 range 30 .. 30;
      TIM3EN         at 0 range 31 .. 31;
   end record;

   --  CSI-2 Host interrupt enable register 0
   type CSI_IER0_Register is record
      --  Line/byte counter 0 interrupt enable
      LB0IE          : Boolean := False;
      --  Line/byte counter 1 interrupt enable
      LB1IE          : Boolean := False;
      --  Line/byte counter 2 interrupt enable
      LB2IE          : Boolean := False;
      --  Line/byte counter 3 interrupt enable
      LB3IE          : Boolean := False;
      --  Timer 0 interrupt enable
      TIM0IE         : Boolean := False;
      --  Timer 1 interrupt enable
      TIM1IE         : Boolean := False;
      --  Timer 2 interrupt enable
      TIM2IE         : Boolean := False;
      --  Timer 3 interrupt enable
      TIM3IE         : Boolean := False;
      --  SOF for virtual channel 0 interrupt enable
      SOF0IE         : Boolean := False;
      --  SOF for virtual channel 1 interrupt enable
      SOF1IE         : Boolean := False;
      --  SOF for virtual channel 2 interrupt enable
      SOF2IE         : Boolean := False;
      --  SOF for virtual channel 3 interrupt enable
      SOF3IE         : Boolean := False;
      --  EOF for virtual channel 0 interrupt enable
      EOF0IE         : Boolean := False;
      --  EOF for virtual channel 1 interrupt enable
      EOF1IE         : Boolean := False;
      --  EOF for virtual channel 2 interrupt enable
      EOF2IE         : Boolean := False;
      --  EOF for virtual channel 3 interrupt enable
      EOF3IE         : Boolean := False;
      --  Short packet interrupt enable
      SPKTIE         : Boolean := False;
      --  unspecified
      Reserved_17_20 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Clock changer FIFO full interrupt enable
      CCFIFOFIE      : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CRC error interrupt enable
      CRCERRIE       : Boolean := False;
      --  ECC error interrupt enable
      ECCERRIE       : Boolean := False;
      --  Corrected ECC error interrupt enable
      CECCERRIE      : Boolean := False;
      --  Data type ID error interrupt enable
      IDERRIE        : Boolean := False;
      --  Short packet error interrupt enable
      SPKTERRIE      : Boolean := False;
      --  Watchdog error interrupt enable
      WDERRIE        : Boolean := False;
      --  Invalid synchronization error interrupt enable
      SYNCERRIE      : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_IER0_Register use record
      LB0IE          at 0 range 0 .. 0;
      LB1IE          at 0 range 1 .. 1;
      LB2IE          at 0 range 2 .. 2;
      LB3IE          at 0 range 3 .. 3;
      TIM0IE         at 0 range 4 .. 4;
      TIM1IE         at 0 range 5 .. 5;
      TIM2IE         at 0 range 6 .. 6;
      TIM3IE         at 0 range 7 .. 7;
      SOF0IE         at 0 range 8 .. 8;
      SOF1IE         at 0 range 9 .. 9;
      SOF2IE         at 0 range 10 .. 10;
      SOF3IE         at 0 range 11 .. 11;
      EOF0IE         at 0 range 12 .. 12;
      EOF1IE         at 0 range 13 .. 13;
      EOF2IE         at 0 range 14 .. 14;
      EOF3IE         at 0 range 15 .. 15;
      SPKTIE         at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      CCFIFOFIE      at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CRCERRIE       at 0 range 24 .. 24;
      ECCERRIE       at 0 range 25 .. 25;
      CECCERRIE      at 0 range 26 .. 26;
      IDERRIE        at 0 range 27 .. 27;
      SPKTERRIE      at 0 range 28 .. 28;
      WDERRIE        at 0 range 29 .. 29;
      SYNCERRIE      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CSI-2 Host interrupt enable register 1
   type CSI_IER1_Register is record
      --  SOT error interrupt enable on lane 0
      ESOTDL0IE      : Boolean := False;
      --  SOT synchronization interrupt error enable on lane 0
      ESOTSYNCDL0IE  : Boolean := False;
      --  D-PHY_RX lane 0 escape entry error interrupt enable
      EESCDL0IE      : Boolean := False;
      --  D-PHY_RX lane 0 low power data transmission synchronization error
      --  interrupt enable
      ESYNCESCDL0IE  : Boolean := False;
      --  D-PHY_RX lane 0 control error interrupt enable
      ECTRLDL0IE     : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  SOT error interrupt enable on lane 1
      ESOTDL1IE      : Boolean := False;
      --  SOT synchronization interrupt error enable on lane 1
      ESOTSYNCDL1IE  : Boolean := False;
      --  D-PHY_RX lane 1 escape entry error interrupt enable
      EESCDL1IE      : Boolean := False;
      --  D-PHY_RX lane 1 low-power data transmission synchronization error
      --  interrupt enable
      ESYNCESCDL1IE  : Boolean := False;
      --  D-PHY_RX lane 1 control error interrupt enable
      ECTRLDL1IE     : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_IER1_Register use record
      ESOTDL0IE      at 0 range 0 .. 0;
      ESOTSYNCDL0IE  at 0 range 1 .. 1;
      EESCDL0IE      at 0 range 2 .. 2;
      ESYNCESCDL0IE  at 0 range 3 .. 3;
      ECTRLDL0IE     at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ESOTDL1IE      at 0 range 8 .. 8;
      ESOTSYNCDL1IE  at 0 range 9 .. 9;
      EESCDL1IE      at 0 range 10 .. 10;
      ESYNCESCDL1IE  at 0 range 11 .. 11;
      ECTRLDL1IE     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CSI-2 Host status register 0
   type CSI_SR0_Register is record
      --  Read-only. Line/byte counter 0 flag
      LB0F           : Boolean;
      --  Read-only. Line/byte counter 1 flag
      LB1F           : Boolean;
      --  Read-only. Line/byte counter 2 flag
      LB2F           : Boolean;
      --  Read-only. Line/byte counter 3 flag
      LB3F           : Boolean;
      --  Read-only. Timer 0 flag
      TIM0F          : Boolean;
      --  Read-only. Timer 1 flag
      TIM1F          : Boolean;
      --  Read-only. Timer 2 flag
      TIM2F          : Boolean;
      --  Read-only. Timer 3 flag
      TIM3F          : Boolean;
      --  Read-only. SOF flag for virtual channel 0
      SOF0F          : Boolean;
      --  Read-only. SOF flag for virtual channel 1
      SOF1F          : Boolean;
      --  Read-only. SOF flag for virtual channel 2
      SOF2F          : Boolean;
      --  Read-only. SOF flag for virtual channel 3
      SOF3F          : Boolean;
      --  Read-only. EOF flag for virtual channel 0
      EOF0F          : Boolean;
      --  Read-only. EOF flag for virtual channel 1
      EOF1F          : Boolean;
      --  Read-only. EOF flag for virtual channel 2
      EOF2F          : Boolean;
      --  Read-only. EOF flag for virtual channel 3
      EOF3F          : Boolean;
      --  Read-only. Short packet flag
      SPKTF          : Boolean;
      --  Read-only. Virtual channel 0 state flag
      VC0STATEF      : Boolean;
      --  Read-only. Virtual channel 1 state flag
      VC1STATEF      : Boolean;
      --  Read-only. Virtual channel 2 state flag
      VC2STATEF      : Boolean;
      --  Read-only. Virtual channel 3 state flag
      VC3STATEF      : Boolean;
      --  Read-only. Clock changer FIFO full flag
      CCFIFOFF       : Boolean;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2;
      --  Read-only. CRC error flag
      CRCERRF        : Boolean;
      --  Read-only. ECC error flag
      ECCERRF        : Boolean;
      --  Read-only. Corrected ECC error flag
      CECCERRF       : Boolean;
      --  Read-only. Data type ID error flag
      IDERRF         : Boolean;
      --  Read-only. Short packet error flag
      SPKTERRF       : Boolean;
      --  Read-only. Watchdog error flag
      WDERRF         : Boolean;
      --  Read-only. Invalid synchronization error flag
      SYNCERRF       : Boolean;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_SR0_Register use record
      LB0F           at 0 range 0 .. 0;
      LB1F           at 0 range 1 .. 1;
      LB2F           at 0 range 2 .. 2;
      LB3F           at 0 range 3 .. 3;
      TIM0F          at 0 range 4 .. 4;
      TIM1F          at 0 range 5 .. 5;
      TIM2F          at 0 range 6 .. 6;
      TIM3F          at 0 range 7 .. 7;
      SOF0F          at 0 range 8 .. 8;
      SOF1F          at 0 range 9 .. 9;
      SOF2F          at 0 range 10 .. 10;
      SOF3F          at 0 range 11 .. 11;
      EOF0F          at 0 range 12 .. 12;
      EOF1F          at 0 range 13 .. 13;
      EOF2F          at 0 range 14 .. 14;
      EOF3F          at 0 range 15 .. 15;
      SPKTF          at 0 range 16 .. 16;
      VC0STATEF      at 0 range 17 .. 17;
      VC1STATEF      at 0 range 18 .. 18;
      VC2STATEF      at 0 range 19 .. 19;
      VC3STATEF      at 0 range 20 .. 20;
      CCFIFOFF       at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CRCERRF        at 0 range 24 .. 24;
      ECCERRF        at 0 range 25 .. 25;
      CECCERRF       at 0 range 26 .. 26;
      IDERRF         at 0 range 27 .. 27;
      SPKTERRF       at 0 range 28 .. 28;
      WDERRF         at 0 range 29 .. 29;
      SYNCERRF       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CSI-2 Host status register 1
   type CSI_SR1_Register is record
      --  Read-only. SOT error flag on lane 0
      ESOTDL0F       : Boolean;
      --  Read-only. SOT synchronization error flag on lane 0
      ESOTSYNCDL0F   : Boolean;
      --  Read-only. D-PHY_RX lane 0 escape entry error flag
      EESCDL0F       : Boolean;
      --  Read-only. D-PHY_RX lane 0 low-power data transmission
      --  synchronization error flag
      ESYNCESCDL0F   : Boolean;
      --  Read-only. D-PHY_RX lane 0 control error flag
      ECTRLDL0F      : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. SOT error flag on lane 1
      ESOTDL1F       : Boolean;
      --  Read-only. SOT synchronization error flag on lane 1
      ESOTSYNCDL1F   : Boolean;
      --  Read-only. D-PHY_RX lane 1 escape entry error flag
      EESCDL1F       : Boolean;
      --  Read-only. D-PHY_RX lane 1 low-power data transmission
      --  synchronization error flag
      ESYNCESCDL1F   : Boolean;
      --  Read-only. D-PHY_RX lane 1 control error flag
      ECTRLDL1F      : Boolean;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. D-PHY_RX lane 0 high-speed reception active
      ACTDL0F        : Boolean;
      --  Read-only. D-PHY_RX lane 0 receiver synchronization observed
      SYNCDL0F       : Boolean;
      --  Read-only. D-PHY_RX lane 0 high-speed skew calibration
      SKCALDL0F      : Boolean;
      --  Read-only. D-PHY_RX receiver data lane 0 in stop state
      STOPDL0F       : Boolean;
      --  Read-only. D-PHY_RX receiver ultra-low-power state (not) active on
      --  data lane 0
      ULPNDL0F       : Boolean;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit;
      --  Read-only. D-PHY_RX lane 1 high-speed reception active
      ACTDL1F        : Boolean;
      --  Read-only. D-PHY_RX lane 1 receiver synchronization observed
      SYNCDL1F       : Boolean;
      --  Read-only. D-PHY_RX lane 1 high-speed skew calibration
      SKCALDL1F      : Boolean;
      --  Read-only. D-PHY_RX receiver data lane 1 in stop state
      STOPDL1F       : Boolean;
      --  Read-only. D-PHY_RX receiver ultra-low-power state (not) active on
      --  data lane 1
      ULPNDL1F       : Boolean;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit;
      --  Read-only. D-PHY_RX receiver in stop state for the clock lane
      STOPCLF        : Boolean;
      --  Read-only. D-PHY_RX receiver ULP state (not) active
      ULPNACTF       : Boolean;
      --  Read-only. D-PHY_RX receiver Ultra-Low power state (not) on clock
      --  lane.
      ULPNCLF        : Boolean;
      --  Read-only. D-PHY_RX receiver clock active flag
      ACTCLF         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_SR1_Register use record
      ESOTDL0F       at 0 range 0 .. 0;
      ESOTSYNCDL0F   at 0 range 1 .. 1;
      EESCDL0F       at 0 range 2 .. 2;
      ESYNCESCDL0F   at 0 range 3 .. 3;
      ECTRLDL0F      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ESOTDL1F       at 0 range 8 .. 8;
      ESOTSYNCDL1F   at 0 range 9 .. 9;
      EESCDL1F       at 0 range 10 .. 10;
      ESYNCESCDL1F   at 0 range 11 .. 11;
      ECTRLDL1F      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ACTDL0F        at 0 range 16 .. 16;
      SYNCDL0F       at 0 range 17 .. 17;
      SKCALDL0F      at 0 range 18 .. 18;
      STOPDL0F       at 0 range 19 .. 19;
      ULPNDL0F       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ACTDL1F        at 0 range 22 .. 22;
      SYNCDL1F       at 0 range 23 .. 23;
      SKCALDL1F      at 0 range 24 .. 24;
      STOPDL1F       at 0 range 25 .. 25;
      ULPNDL1F       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      STOPCLF        at 0 range 28 .. 28;
      ULPNACTF       at 0 range 29 .. 29;
      ULPNCLF        at 0 range 30 .. 30;
      ACTCLF         at 0 range 31 .. 31;
   end record;

   --  CSI-2 Host flag clear register 0
   type CSI_FCR0_Register is record
      --  Write-only. Clear line/byte counter 0 flag
      CLB0F          : Boolean := False;
      --  Write-only. Clear line/byte counter 1 flag
      CLB1F          : Boolean := False;
      --  Write-only. Clear line/byte counter 2 flag
      CLB2F          : Boolean := False;
      --  Write-only. Clear line/byte counter 3 flag
      CLB3F          : Boolean := False;
      --  Write-only. Clear timer 0 flag
      CTIM0F         : Boolean := False;
      --  Write-only. Clear timer 1 flag
      CTIM1F         : Boolean := False;
      --  Write-only. Clear timer 2 flag
      CTIM2F         : Boolean := False;
      --  Write-only. Clear timer 3 flag
      CTIM3F         : Boolean := False;
      --  Write-only. Clear SOF flag for virtual channel 0
      CSOF0F         : Boolean := False;
      --  Write-only. Clear SOF flag for virtual channel 1
      CSOF1F         : Boolean := False;
      --  Write-only. Clear SOF flag for virtual channel 2
      CSOF2F         : Boolean := False;
      --  Write-only. Clear SOF flag for virtual channel 3
      CSOF3F         : Boolean := False;
      --  Write-only. Clear EOF flag for virtual channel 0
      CEOF0F         : Boolean := False;
      --  Write-only. Clear EOF flag for virtual channel 1
      CEOF1F         : Boolean := False;
      --  Write-only. Clear EOF flag for virtual channel 2
      CEOF2F         : Boolean := False;
      --  Write-only. Clear EOF flag for virtual channel 3
      CEOF3F         : Boolean := False;
      --  Write-only. Clear short packet flag
      CSPKTF         : Boolean := False;
      --  unspecified
      Reserved_17_20 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Clear clock changer FIFO full flag
      CCCFIFOFF      : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Clear CRC error flag
      CCRCERRF       : Boolean := False;
      --  Write-only. Clear ECC error flag
      CECCERRF       : Boolean := False;
      --  Write-only. Clear corrected ECC error flag
      CCECCERRF      : Boolean := False;
      --  Write-only. Clear data type ID error flag
      CIDERRF        : Boolean := False;
      --  Write-only. Clear short packet error flag
      CSPKTERRF      : Boolean := False;
      --  Write-only. Clear watchdog error flag
      CWDERRF        : Boolean := False;
      --  Write-only. Clear invalid synchronization error flag
      CSYNCERRF      : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_FCR0_Register use record
      CLB0F          at 0 range 0 .. 0;
      CLB1F          at 0 range 1 .. 1;
      CLB2F          at 0 range 2 .. 2;
      CLB3F          at 0 range 3 .. 3;
      CTIM0F         at 0 range 4 .. 4;
      CTIM1F         at 0 range 5 .. 5;
      CTIM2F         at 0 range 6 .. 6;
      CTIM3F         at 0 range 7 .. 7;
      CSOF0F         at 0 range 8 .. 8;
      CSOF1F         at 0 range 9 .. 9;
      CSOF2F         at 0 range 10 .. 10;
      CSOF3F         at 0 range 11 .. 11;
      CEOF0F         at 0 range 12 .. 12;
      CEOF1F         at 0 range 13 .. 13;
      CEOF2F         at 0 range 14 .. 14;
      CEOF3F         at 0 range 15 .. 15;
      CSPKTF         at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      CCCFIFOFF      at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CCRCERRF       at 0 range 24 .. 24;
      CECCERRF       at 0 range 25 .. 25;
      CCECCERRF      at 0 range 26 .. 26;
      CIDERRF        at 0 range 27 .. 27;
      CSPKTERRF      at 0 range 28 .. 28;
      CWDERRF        at 0 range 29 .. 29;
      CSYNCERRF      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CSI-2 Host flag clear register 1
   type CSI_FCR1_Register is record
      --  Write-only. Clear SOT error flag on lane 0
      CESOTDL0F      : Boolean := False;
      --  Write-only. Clear SOT synchronization error flag on lane 0
      CESOTSYNCDL0F  : Boolean := False;
      --  Write-only. Clear D-PHY_RX lane 0 escape entry error flag
      CEESCDL0F      : Boolean := False;
      --  Write-only. Clear D-PHY_RX lane 0 low-power data transmission
      --  synchronization error flag
      CESYNCESCDL0F  : Boolean := False;
      --  Write-only. Clear D-PHY_RX lane 0 control error flag
      CECTRLDL0F     : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Clear SOT error flag on lane 1
      CESOTDL1F      : Boolean := False;
      --  Write-only. Clear SOT synchronization error flag on lane 1
      CESOTSYNCDL1F  : Boolean := False;
      --  Write-only. Clear D-PHY_RX lane 1 escape entry error flag
      CEESCDL1F      : Boolean := False;
      --  Write-only. Clear D-PHY_RX lane 1 low-power data transmission
      --  synchronization error flag
      CESYNCESCDL1F  : Boolean := False;
      --  Write-only. Clear D-PHY_RX lane 1 control error flag
      CECTRLDL1F     : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_FCR1_Register use record
      CESOTDL0F      at 0 range 0 .. 0;
      CESOTSYNCDL0F  at 0 range 1 .. 1;
      CEESCDL0F      at 0 range 2 .. 2;
      CESYNCESCDL0F  at 0 range 3 .. 3;
      CECTRLDL0F     at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CESOTDL1F      at 0 range 8 .. 8;
      CESOTSYNCDL1F  at 0 range 9 .. 9;
      CEESCDL1F      at 0 range 10 .. 10;
      CESYNCESCDL1F  at 0 range 11 .. 11;
      CECTRLDL1F     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype CSI_SPDFR_DATAFIELD_Field is Interfaces.Bit_Types.UInt16;
   subtype CSI_SPDFR_DATATYPE_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_SPDFR_VCHANNEL_Field is Interfaces.Bit_Types.UInt2;

   --  CSI-2 Host short packet data field register
   type CSI_SPDFR_Register is record
      --  Read-only. Data field
      DATAFIELD      : CSI_SPDFR_DATAFIELD_Field;
      --  Read-only. Data type class
      DATATYPE       : CSI_SPDFR_DATATYPE_Field;
      --  Read-only. Virtual channel
      VCHANNEL       : CSI_SPDFR_VCHANNEL_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_SPDFR_Register use record
      DATAFIELD      at 0 range 0 .. 15;
      DATATYPE       at 0 range 16 .. 21;
      VCHANNEL       at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CSI_ERR1_CRCDTERR_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_ERR1_CRCVCERR_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_ERR1_CECCDTERR_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_ERR1_CECCVCERR_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_ERR1_IDDTERR_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_ERR1_IDVCERR_Field is Interfaces.Bit_Types.UInt2;

   --  CSI-2 Host error register 1
   type CSI_ERR1_Register is record
      --  Read-only. Data type having a CRC error
      CRCDTERR       : CSI_ERR1_CRCDTERR_Field;
      --  Read-only. Virtual channel having a CRC error
      CRCVCERR       : CSI_ERR1_CRCVCERR_Field;
      --  Read-only. Data type having a corrected ECC error
      CECCDTERR      : CSI_ERR1_CECCDTERR_Field;
      --  Read-only. Virtual channel having a corrected ECC error
      CECCVCERR      : CSI_ERR1_CECCVCERR_Field;
      --  Read-only. Data type in error
      IDDTERR        : CSI_ERR1_IDDTERR_Field;
      --  Read-only. Virtual channel having ID error
      IDVCERR        : CSI_ERR1_IDVCERR_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_ERR1_Register use record
      CRCDTERR       at 0 range 0 .. 5;
      CRCVCERR       at 0 range 6 .. 7;
      CECCDTERR      at 0 range 8 .. 13;
      CECCVCERR      at 0 range 14 .. 15;
      IDDTERR        at 0 range 16 .. 21;
      IDVCERR        at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CSI_ERR2_SPKTDTERR_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_ERR2_SPKTVCERR_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_ERR2_WDVCERR_Field is Interfaces.Bit_Types.UInt2;
   subtype CSI_ERR2_SYNCVCERR_Field is Interfaces.Bit_Types.UInt2;

   --  CSI-2 Host error register 2
   type CSI_ERR2_Register is record
      --  Read-only. Data type having a short packet error
      SPKTDTERR      : CSI_ERR2_SPKTDTERR_Field;
      --  Read-only. Virtual channel having a short packet error
      SPKTVCERR      : CSI_ERR2_SPKTVCERR_Field;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Virtual channel having a watchdog error
      WDVCERR        : CSI_ERR2_WDVCERR_Field;
      --  Read-only. Virtual channel having synchronization error
      SYNCVCERR      : CSI_ERR2_SYNCVCERR_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_ERR2_Register use record
      SPKTDTERR      at 0 range 0 .. 5;
      SPKTVCERR      at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WDVCERR        at 0 range 16 .. 17;
      SYNCVCERR      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CSI_HHWCFGR_TECHNO_Field is Interfaces.Bit_Types.UInt4;

   --  CSI-2 Host hardware configuration register
   type CSI_HHWCFGR_Register is record
      --  Read-only. Technology
      TECHNO        : CSI_HHWCFGR_TECHNO_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_HHWCFGR_Register use record
      TECHNO        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CSI_HVERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype CSI_HVERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  CSI-2 Host version register
   type CSI_HVERR_Register is record
      --  Read-only. Major revision
      MINREV        : CSI_HVERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : CSI_HVERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_HVERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CSI PHY reset control register
   type CSI_PRCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  When set to 0, this bit places the digital section of the D-PHY in
      --  the reset state.
      PEN           : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PRCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PEN           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CSI_PMCR_FRXMDL array
   type CSI_PMCR_FRXMDL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CSI_PMCR_FRXMDL
   type CSI_PMCR_FRXMDL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FRXMDL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  FRXMDL as an array
            Arr : CSI_PMCR_FRXMDL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CSI_PMCR_FRXMDL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CSI PHY mode control register
   type CSI_PMCR_Register is record
      --  Force to Rx mode the data lane 0
      FRXMDL         : CSI_PMCR_FRXMDL_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Force to Tx Stop mode the data lane 0
      FTXSMDL0       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Disable turn-around data lane 0
      DTDL           : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Turn-around request data lane 0
      RTDL0          : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Tx ULP escape-mode data lane 0
      TUESDL0        : Boolean := True;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Tx ULP exit sequence data lane 0
      TUEXDL0        : Boolean := True;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PMCR_Register use record
      FRXMDL         at 0 range 0 .. 1;
      FTXSMDL0       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DTDL           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RTDL0          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TUESDL0        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TUEXDL0        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CSI_PFCR_CCFR_Field is Interfaces.Bit_Types.UInt6;
   subtype CSI_PFCR_HSFR_Field is Interfaces.Bit_Types.UInt7;

   --  CSI PHY frequency control register
   type CSI_PFCR_Register is record
      --  Configuration clock frequency range selection
      CCFR           : CSI_PFCR_CCFR_Field := 16#17#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PHY high-speed frequency range selection
      HSFR           : CSI_PFCR_HSFR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Data lane direction of lane 0
      DLD            : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PFCR_Register use record
      CCFR           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      HSFR           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DLD            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  CSI PHY test control register 0
   type CSI_PTCR0_Register is record
      --  Test-interface clock enable for the TDI bus into the PHY
      TCKEN         : Boolean := True;
      --  Test-interface reset enable for the TDI bus into the PHY
      TRSEN         : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PTCR0_Register use record
      TCKEN         at 0 range 0 .. 0;
      TRSEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CSI_PTCR1_TDI_Field is Interfaces.Bit_Types.Byte;

   --  CSI PHY test control register 1
   type CSI_PTCR1_Register is record
      --  Test-interface data in
      TDI            : CSI_PTCR1_TDI_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Test-interface write mode selector
      TWM            : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PTCR1_Register use record
      TDI            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TWM            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CSI_PTSR_TDO_Field is Interfaces.Bit_Types.Byte;

   --  CSI PHY test status register
   type CSI_PTSR_Register is record
      --  Read-only. CSI PHY test interface data output bus for read-back and
      --  internal probing functionalities
      TDO           : CSI_PTSR_TDO_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_PTSR_Register use record
      TDO           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CSI_HWCFGR_TECHNO_Field is Interfaces.Bit_Types.UInt4;
   subtype CSI_HWCFGR_LANES_Field is Interfaces.Bit_Types.UInt4;

   --  CSI-2 Host hardware configuration register
   type CSI_HWCFGR_Register is record
      --  Read-only. Technology
      TECHNO        : CSI_HWCFGR_TECHNO_Field;
      --  Read-only. Amount of CSI data lanes (excluding the clock lane)
      LANES         : CSI_HWCFGR_LANES_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_HWCFGR_Register use record
      TECHNO        at 0 range 0 .. 3;
      LANES         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CSI_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype CSI_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  CSI-2 Host version register
   type CSI_VERR_Register is record
      --  Read-only. Major revision
      MINREV        : CSI_VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : CSI_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CSI address block description
   type CSI_Peripheral is record
      --  CSI-2 Host control register
      CSI_CR       : aliased CSI_CR_Register;
      --  CSI-2 Host DPHY_RX control register
      CSI_PCR      : aliased CSI_PCR_Register;
      --  CSI-2 Host virtual channel 0 configuration register 1
      CSI_VC0CFGR1 : aliased CSI_VC0CFGR1_Register;
      --  CSI-2 Host virtual channel 0 configuration register 2
      CSI_VC0CFGR2 : aliased CSI_VC0CFGR2_Register;
      --  CSI-2 Host virtual channel 0 configuration register 3
      CSI_VC0CFGR3 : aliased CSI_VC0CFGR3_Register;
      --  CSI-2 Host virtual channel 0 configuration register 4
      CSI_VC0CFGR4 : aliased CSI_VC0CFGR4_Register;
      --  CSI-2 Host virtual channel 1 configuration register 1
      CSI_VC1CFGR1 : aliased CSI_VC1CFGR1_Register;
      --  CSI-2 Host virtual channel 1 configuration register 2
      CSI_VC1CFGR2 : aliased CSI_VC1CFGR2_Register;
      --  CSI-2 Host virtual channel 1 configuration register 3
      CSI_VC1CFGR3 : aliased CSI_VC1CFGR3_Register;
      --  CSI-2 Host virtual channel 1 configuration register 4
      CSI_VC1CFGR4 : aliased CSI_VC1CFGR4_Register;
      --  CSI-2 Host virtual channel 2 configuration register 1
      CSI_VC2CFGR1 : aliased CSI_VC2CFGR1_Register;
      --  CSI-2 Host virtual channel 2 configuration register 2
      CSI_VC2CFGR2 : aliased CSI_VC2CFGR2_Register;
      --  CSI-2 Host virtual channel 2 configuration register 3
      CSI_VC2CFGR3 : aliased CSI_VC2CFGR3_Register;
      --  CSI-2 Host virtual channel 2 configuration register 4
      CSI_VC2CFGR4 : aliased CSI_VC2CFGR4_Register;
      --  CSI-2 Host virtual channel 3 configuration register 1
      CSI_VC3CFGR1 : aliased CSI_VC3CFGR1_Register;
      --  CSI-2 Host virtual channel 3 configuration register 2
      CSI_VC3CFGR2 : aliased CSI_VC3CFGR2_Register;
      --  CSI-2 Host virtual channel 3 configuration register 3
      CSI_VC3CFGR3 : aliased CSI_VC3CFGR3_Register;
      --  CSI-2 Host virtual channel 3 configuration register 4
      CSI_VC3CFGR4 : aliased CSI_VC3CFGR4_Register;
      --  CSI-2 Host line byte 0 configuration register
      CSI_LB0CFGR  : aliased CSI_LB0CFGR_Register;
      --  CSI-2 Host line byte 1 configuration register
      CSI_LB1CFGR  : aliased CSI_LB1CFGR_Register;
      --  CSI-2 Host line byte 2 configuration register
      CSI_LB2CFGR  : aliased CSI_LB2CFGR_Register;
      --  CSI-2 Host line byte 3 configuration register
      CSI_LB3CFGR  : aliased CSI_LB3CFGR_Register;
      --  CSI-2 Host timer 0 configuration register
      CSI_TIM0CFGR : aliased CSI_TIM0CFGR_Register;
      --  CSI-2 Host timer 1 configuration register
      CSI_TIM1CFGR : aliased CSI_TIM1CFGR_Register;
      --  CSI-2 Host timer 2 configuration register
      CSI_TIM2CFGR : aliased CSI_TIM2CFGR_Register;
      --  CSI-2 Host timer 3 configuration register
      CSI_TIM3CFGR : aliased CSI_TIM3CFGR_Register;
      --  CSI-2 Host lane merger configuration register
      CSI_LMCFGR   : aliased CSI_LMCFGR_Register;
      --  CSI-2 Host program interrupt register
      CSI_PRGITR   : aliased CSI_PRGITR_Register;
      --  CSI-2 Host watchdog register
      CSI_WDR      : aliased Interfaces.Bit_Types.UInt32;
      --  CSI-2 Host interrupt enable register 0
      CSI_IER0     : aliased CSI_IER0_Register;
      --  CSI-2 Host interrupt enable register 1
      CSI_IER1     : aliased CSI_IER1_Register;
      --  CSI-2 Host status register 0
      CSI_SR0      : aliased CSI_SR0_Register;
      --  CSI-2 Host status register 1
      CSI_SR1      : aliased CSI_SR1_Register;
      --  CSI-2 Host flag clear register 0
      CSI_FCR0     : aliased CSI_FCR0_Register;
      --  CSI-2 Host flag clear register 1
      CSI_FCR1     : aliased CSI_FCR1_Register;
      --  CSI-2 Host short packet data field register
      CSI_SPDFR    : aliased CSI_SPDFR_Register;
      --  CSI-2 Host error register 1
      CSI_ERR1     : aliased CSI_ERR1_Register;
      --  CSI-2 Host error register 2
      CSI_ERR2     : aliased CSI_ERR2_Register;
      --  CSI-2 Host hardware configuration register
      CSI_HHWCFGR  : aliased CSI_HHWCFGR_Register;
      --  CSI-2 Host version register
      CSI_HVERR    : aliased CSI_HVERR_Register;
      --  CSI-2 Host identification register
      CSI_HIPIDR   : aliased Interfaces.Bit_Types.UInt32;
      --  CSI-2 Host size identification register
      CSI_HSIDR    : aliased Interfaces.Bit_Types.UInt32;
      --  CSI PHY reset control register
      CSI_PRCR     : aliased CSI_PRCR_Register;
      --  CSI PHY mode control register
      CSI_PMCR     : aliased CSI_PMCR_Register;
      --  CSI PHY frequency control register
      CSI_PFCR     : aliased CSI_PFCR_Register;
      --  CSI PHY test control register 0
      CSI_PTCR0    : aliased CSI_PTCR0_Register;
      --  CSI PHY test control register 1
      CSI_PTCR1    : aliased CSI_PTCR1_Register;
      --  CSI PHY test status register
      CSI_PTSR     : aliased CSI_PTSR_Register;
      --  CSI-2 Host hardware configuration register
      CSI_HWCFGR   : aliased CSI_HWCFGR_Register;
      --  CSI-2 Host version register
      CSI_VERR     : aliased CSI_VERR_Register;
      --  CSI-2 Host identification register
      CSI_IPIDR    : aliased Interfaces.Bit_Types.UInt32;
      --  CSI-2 Host size identification register
      CSI_SIDR     : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for CSI_Peripheral use record
      CSI_CR       at 16#0# range 0 .. 31;
      CSI_PCR      at 16#4# range 0 .. 31;
      CSI_VC0CFGR1 at 16#10# range 0 .. 31;
      CSI_VC0CFGR2 at 16#14# range 0 .. 31;
      CSI_VC0CFGR3 at 16#18# range 0 .. 31;
      CSI_VC0CFGR4 at 16#1C# range 0 .. 31;
      CSI_VC1CFGR1 at 16#20# range 0 .. 31;
      CSI_VC1CFGR2 at 16#24# range 0 .. 31;
      CSI_VC1CFGR3 at 16#28# range 0 .. 31;
      CSI_VC1CFGR4 at 16#2C# range 0 .. 31;
      CSI_VC2CFGR1 at 16#30# range 0 .. 31;
      CSI_VC2CFGR2 at 16#34# range 0 .. 31;
      CSI_VC2CFGR3 at 16#38# range 0 .. 31;
      CSI_VC2CFGR4 at 16#3C# range 0 .. 31;
      CSI_VC3CFGR1 at 16#40# range 0 .. 31;
      CSI_VC3CFGR2 at 16#44# range 0 .. 31;
      CSI_VC3CFGR3 at 16#48# range 0 .. 31;
      CSI_VC3CFGR4 at 16#4C# range 0 .. 31;
      CSI_LB0CFGR  at 16#50# range 0 .. 31;
      CSI_LB1CFGR  at 16#54# range 0 .. 31;
      CSI_LB2CFGR  at 16#58# range 0 .. 31;
      CSI_LB3CFGR  at 16#5C# range 0 .. 31;
      CSI_TIM0CFGR at 16#60# range 0 .. 31;
      CSI_TIM1CFGR at 16#64# range 0 .. 31;
      CSI_TIM2CFGR at 16#68# range 0 .. 31;
      CSI_TIM3CFGR at 16#6C# range 0 .. 31;
      CSI_LMCFGR   at 16#70# range 0 .. 31;
      CSI_PRGITR   at 16#74# range 0 .. 31;
      CSI_WDR      at 16#78# range 0 .. 31;
      CSI_IER0     at 16#80# range 0 .. 31;
      CSI_IER1     at 16#84# range 0 .. 31;
      CSI_SR0      at 16#90# range 0 .. 31;
      CSI_SR1      at 16#94# range 0 .. 31;
      CSI_FCR0     at 16#100# range 0 .. 31;
      CSI_FCR1     at 16#104# range 0 .. 31;
      CSI_SPDFR    at 16#110# range 0 .. 31;
      CSI_ERR1     at 16#114# range 0 .. 31;
      CSI_ERR2     at 16#118# range 0 .. 31;
      CSI_HHWCFGR  at 16#FF0# range 0 .. 31;
      CSI_HVERR    at 16#FF4# range 0 .. 31;
      CSI_HIPIDR   at 16#FF8# range 0 .. 31;
      CSI_HSIDR    at 16#FFC# range 0 .. 31;
      CSI_PRCR     at 16#1000# range 0 .. 31;
      CSI_PMCR     at 16#1004# range 0 .. 31;
      CSI_PFCR     at 16#1008# range 0 .. 31;
      CSI_PTCR0    at 16#1010# range 0 .. 31;
      CSI_PTCR1    at 16#1014# range 0 .. 31;
      CSI_PTSR     at 16#1018# range 0 .. 31;
      CSI_HWCFGR   at 16#1FF0# range 0 .. 31;
      CSI_VERR     at 16#1FF4# range 0 .. 31;
      CSI_IPIDR    at 16#1FF8# range 0 .. 31;
      CSI_SIDR     at 16#1FFC# range 0 .. 31;
   end record;

   --  CSI address block description
   CSI_Periph : aliased CSI_Peripheral
     with Import, Address => CSI_Base;

   --  CSI address block description
   CSI_S_Periph : aliased CSI_Peripheral
     with Import, Address => CSI_S_Base;

end Interfaces.STM32.CSI;
