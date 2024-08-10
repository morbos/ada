--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.IPCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype IPCC_C1CR_RXOIE_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1CR_TXFIE_Field is Interfaces.Bit_Types.Bit;

   --  IPCC Processor 1 control register
   type IPCC_C1CR_Register is record
      --  RXOIE
      RXOIE          : IPCC_C1CR_RXOIE_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  TXFIE
      TXFIE          : IPCC_C1CR_TXFIE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1CR_Register use record
      RXOIE          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      TXFIE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype IPCC_C1MR_CH1OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH2OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH3OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH4OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH5OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH6OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH1FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH2FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH3FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH4FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH5FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1MR_CH6FM_Field is Interfaces.Bit_Types.Bit;

   --  IPCC Processor 1 mask register
   type IPCC_C1MR_Register is record
      --  CH1OM
      CH1OM          : IPCC_C1MR_CH1OM_Field := 16#1#;
      --  CH2OM
      CH2OM          : IPCC_C1MR_CH2OM_Field := 16#1#;
      --  CH3OM
      CH3OM          : IPCC_C1MR_CH3OM_Field := 16#1#;
      --  CH4OM
      CH4OM          : IPCC_C1MR_CH4OM_Field := 16#1#;
      --  CH5OM
      CH5OM          : IPCC_C1MR_CH5OM_Field := 16#1#;
      --  CH6OM
      CH6OM          : IPCC_C1MR_CH6OM_Field := 16#1#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#3FF#;
      --  CH1FM
      CH1FM          : IPCC_C1MR_CH1FM_Field := 16#1#;
      --  CH2FM
      CH2FM          : IPCC_C1MR_CH2FM_Field := 16#1#;
      --  CH3FM
      CH3FM          : IPCC_C1MR_CH3FM_Field := 16#1#;
      --  CH4FM
      CH4FM          : IPCC_C1MR_CH4FM_Field := 16#1#;
      --  CH5FM
      CH5FM          : IPCC_C1MR_CH5FM_Field := 16#1#;
      --  CH6FM
      CH6FM          : IPCC_C1MR_CH6FM_Field := 16#1#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#3FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1MR_Register use record
      CH1OM          at 0 range 0 .. 0;
      CH2OM          at 0 range 1 .. 1;
      CH3OM          at 0 range 2 .. 2;
      CH4OM          at 0 range 3 .. 3;
      CH5OM          at 0 range 4 .. 4;
      CH6OM          at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      CH1FM          at 0 range 16 .. 16;
      CH2FM          at 0 range 17 .. 17;
      CH3FM          at 0 range 18 .. 18;
      CH4FM          at 0 range 19 .. 19;
      CH5FM          at 0 range 20 .. 20;
      CH6FM          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IPCC_C1SCR_CH1C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH2C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH3C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH4C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH5C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH6C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH1S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH2S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH3S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH4S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH5S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1SCR_CH6S_Field is Interfaces.Bit_Types.Bit;

   --  Reading this register will always return 0x0000 0000.
   type IPCC_C1SCR_Register is record
      --  CH1C
      CH1C           : IPCC_C1SCR_CH1C_Field := 16#0#;
      --  CH2C
      CH2C           : IPCC_C1SCR_CH2C_Field := 16#0#;
      --  CH3C
      CH3C           : IPCC_C1SCR_CH3C_Field := 16#0#;
      --  CH4C
      CH4C           : IPCC_C1SCR_CH4C_Field := 16#0#;
      --  CH5C
      CH5C           : IPCC_C1SCR_CH5C_Field := 16#0#;
      --  CH6C
      CH6C           : IPCC_C1SCR_CH6C_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  CH1S
      CH1S           : IPCC_C1SCR_CH1S_Field := 16#0#;
      --  CH2S
      CH2S           : IPCC_C1SCR_CH2S_Field := 16#0#;
      --  CH3S
      CH3S           : IPCC_C1SCR_CH3S_Field := 16#0#;
      --  CH4S
      CH4S           : IPCC_C1SCR_CH4S_Field := 16#0#;
      --  CH5S
      CH5S           : IPCC_C1SCR_CH5S_Field := 16#0#;
      --  CH6S
      CH6S           : IPCC_C1SCR_CH6S_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1SCR_Register use record
      CH1C           at 0 range 0 .. 0;
      CH2C           at 0 range 1 .. 1;
      CH3C           at 0 range 2 .. 2;
      CH4C           at 0 range 3 .. 3;
      CH5C           at 0 range 4 .. 4;
      CH6C           at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      CH1S           at 0 range 16 .. 16;
      CH2S           at 0 range 17 .. 17;
      CH3S           at 0 range 18 .. 18;
      CH4S           at 0 range 19 .. 19;
      CH5S           at 0 range 20 .. 20;
      CH6S           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IPCC_C1TOC2SR_CH1F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1TOC2SR_CH2F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1TOC2SR_CH3F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1TOC2SR_CH4F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1TOC2SR_CH5F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C1TOC2SR_CH6F_Field is Interfaces.Bit_Types.Bit;

   --  IPCC processor 1 to processor 2 status register
   type IPCC_C1TOC2SR_Register is record
      --  Read-only. CH1F
      CH1F          : IPCC_C1TOC2SR_CH1F_Field;
      --  Read-only. CH2F
      CH2F          : IPCC_C1TOC2SR_CH2F_Field;
      --  Read-only. CH3F
      CH3F          : IPCC_C1TOC2SR_CH3F_Field;
      --  Read-only. CH4F
      CH4F          : IPCC_C1TOC2SR_CH4F_Field;
      --  Read-only. CH5F
      CH5F          : IPCC_C1TOC2SR_CH5F_Field;
      --  Read-only. CH6F
      CH6F          : IPCC_C1TOC2SR_CH6F_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1TOC2SR_Register use record
      CH1F          at 0 range 0 .. 0;
      CH2F          at 0 range 1 .. 1;
      CH3F          at 0 range 2 .. 2;
      CH4F          at 0 range 3 .. 3;
      CH5F          at 0 range 4 .. 4;
      CH6F          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IPCC_C2CR_RXOIE_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2CR_TXFIE_Field is Interfaces.Bit_Types.Bit;

   --  IPCC Processor 2 control register
   type IPCC_C2CR_Register is record
      --  RXOIE
      RXOIE          : IPCC_C2CR_RXOIE_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  TXFIE
      TXFIE          : IPCC_C2CR_TXFIE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2CR_Register use record
      RXOIE          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      TXFIE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype IPCC_C2MR_CH1OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH2OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH3OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH4OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH5OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH6OM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH1FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH2FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH3FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH4FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH5FM_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2MR_CH6FM_Field is Interfaces.Bit_Types.Bit;

   --  IPCC Processor 2 mask register
   type IPCC_C2MR_Register is record
      --  CH1OM
      CH1OM          : IPCC_C2MR_CH1OM_Field := 16#1#;
      --  CH2OM
      CH2OM          : IPCC_C2MR_CH2OM_Field := 16#1#;
      --  CH3OM
      CH3OM          : IPCC_C2MR_CH3OM_Field := 16#1#;
      --  CH4OM
      CH4OM          : IPCC_C2MR_CH4OM_Field := 16#1#;
      --  CH5OM
      CH5OM          : IPCC_C2MR_CH5OM_Field := 16#1#;
      --  CH6OM
      CH6OM          : IPCC_C2MR_CH6OM_Field := 16#1#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#3FF#;
      --  CH1FM
      CH1FM          : IPCC_C2MR_CH1FM_Field := 16#1#;
      --  CH2FM
      CH2FM          : IPCC_C2MR_CH2FM_Field := 16#1#;
      --  CH3FM
      CH3FM          : IPCC_C2MR_CH3FM_Field := 16#1#;
      --  CH4FM
      CH4FM          : IPCC_C2MR_CH4FM_Field := 16#1#;
      --  CH5FM
      CH5FM          : IPCC_C2MR_CH5FM_Field := 16#1#;
      --  CH6FM
      CH6FM          : IPCC_C2MR_CH6FM_Field := 16#1#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#3FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2MR_Register use record
      CH1OM          at 0 range 0 .. 0;
      CH2OM          at 0 range 1 .. 1;
      CH3OM          at 0 range 2 .. 2;
      CH4OM          at 0 range 3 .. 3;
      CH5OM          at 0 range 4 .. 4;
      CH6OM          at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      CH1FM          at 0 range 16 .. 16;
      CH2FM          at 0 range 17 .. 17;
      CH3FM          at 0 range 18 .. 18;
      CH4FM          at 0 range 19 .. 19;
      CH5FM          at 0 range 20 .. 20;
      CH6FM          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IPCC_C2SCR_CH1C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH2C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH3C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH4C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH5C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH6C_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH1S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH2S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH3S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH4S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH5S_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2SCR_CH6S_Field is Interfaces.Bit_Types.Bit;

   --  Reading this register will always return 0x0000 0000.
   type IPCC_C2SCR_Register is record
      --  CH1C
      CH1C           : IPCC_C2SCR_CH1C_Field := 16#0#;
      --  CH2C
      CH2C           : IPCC_C2SCR_CH2C_Field := 16#0#;
      --  CH3C
      CH3C           : IPCC_C2SCR_CH3C_Field := 16#0#;
      --  CH4C
      CH4C           : IPCC_C2SCR_CH4C_Field := 16#0#;
      --  CH5C
      CH5C           : IPCC_C2SCR_CH5C_Field := 16#0#;
      --  CH6C
      CH6C           : IPCC_C2SCR_CH6C_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  CH1S
      CH1S           : IPCC_C2SCR_CH1S_Field := 16#0#;
      --  CH2S
      CH2S           : IPCC_C2SCR_CH2S_Field := 16#0#;
      --  CH3S
      CH3S           : IPCC_C2SCR_CH3S_Field := 16#0#;
      --  CH4S
      CH4S           : IPCC_C2SCR_CH4S_Field := 16#0#;
      --  CH5S
      CH5S           : IPCC_C2SCR_CH5S_Field := 16#0#;
      --  CH6S
      CH6S           : IPCC_C2SCR_CH6S_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2SCR_Register use record
      CH1C           at 0 range 0 .. 0;
      CH2C           at 0 range 1 .. 1;
      CH3C           at 0 range 2 .. 2;
      CH4C           at 0 range 3 .. 3;
      CH5C           at 0 range 4 .. 4;
      CH6C           at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      CH1S           at 0 range 16 .. 16;
      CH2S           at 0 range 17 .. 17;
      CH3S           at 0 range 18 .. 18;
      CH4S           at 0 range 19 .. 19;
      CH5S           at 0 range 20 .. 20;
      CH6S           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IPCC_C2TOC1SR_CH1F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2TOC1SR_CH2F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2TOC1SR_CH3F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2TOC1SR_CH4F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2TOC1SR_CH5F_Field is Interfaces.Bit_Types.Bit;
   subtype IPCC_C2TOC1SR_CH6F_Field is Interfaces.Bit_Types.Bit;

   --  IPCC processor 2 to processor 1 status register
   type IPCC_C2TOC1SR_Register is record
      --  Read-only. CH1F
      CH1F          : IPCC_C2TOC1SR_CH1F_Field;
      --  Read-only. CH2F
      CH2F          : IPCC_C2TOC1SR_CH2F_Field;
      --  Read-only. CH3F
      CH3F          : IPCC_C2TOC1SR_CH3F_Field;
      --  Read-only. CH4F
      CH4F          : IPCC_C2TOC1SR_CH4F_Field;
      --  Read-only. CH5F
      CH5F          : IPCC_C2TOC1SR_CH5F_Field;
      --  Read-only. CH6F
      CH6F          : IPCC_C2TOC1SR_CH6F_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2TOC1SR_Register use record
      CH1F          at 0 range 0 .. 0;
      CH2F          at 0 range 1 .. 1;
      CH3F          at 0 range 2 .. 2;
      CH4F          at 0 range 3 .. 3;
      CH5F          at 0 range 4 .. 4;
      CH6F          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IPCC_HWCFGR_CHANNELS_Field is Interfaces.Bit_Types.Byte;

   --  IPCC Hardware configuration register
   type IPCC_HWCFGR_Register is record
      --  Read-only. CHANNELS
      CHANNELS      : IPCC_HWCFGR_CHANNELS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_HWCFGR_Register use record
      CHANNELS      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IPCC_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype IPCC_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  IPCC IP Version register
   type IPCC_VERR_Register is record
      --  Read-only. MINREV
      MINREV        : IPCC_VERR_MINREV_Field;
      --  Read-only. MAJREV
      MAJREV        : IPCC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter Processor communication controller
   type IPCC_Peripheral is record
      --  IPCC Processor 1 control register
      IPCC_C1CR     : aliased IPCC_C1CR_Register;
      --  IPCC Processor 1 mask register
      IPCC_C1MR     : aliased IPCC_C1MR_Register;
      --  Reading this register will always return 0x0000 0000.
      IPCC_C1SCR    : aliased IPCC_C1SCR_Register;
      --  IPCC processor 1 to processor 2 status register
      IPCC_C1TOC2SR : aliased IPCC_C1TOC2SR_Register;
      --  IPCC Processor 2 control register
      IPCC_C2CR     : aliased IPCC_C2CR_Register;
      --  IPCC Processor 2 mask register
      IPCC_C2MR     : aliased IPCC_C2MR_Register;
      --  Reading this register will always return 0x0000 0000.
      IPCC_C2SCR    : aliased IPCC_C2SCR_Register;
      --  IPCC processor 2 to processor 1 status register
      IPCC_C2TOC1SR : aliased IPCC_C2TOC1SR_Register;
      --  IPCC Hardware configuration register
      IPCC_HWCFGR   : aliased IPCC_HWCFGR_Register;
      --  IPCC IP Version register
      IPCC_VERR     : aliased IPCC_VERR_Register;
      --  IPCC IP Identification register
      IPCC_IPIDR    : aliased Interfaces.Bit_Types.UInt32;
      --  IPCC Size ID register
      IPCC_SIDR     : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for IPCC_Peripheral use record
      IPCC_C1CR     at 16#0# range 0 .. 31;
      IPCC_C1MR     at 16#4# range 0 .. 31;
      IPCC_C1SCR    at 16#8# range 0 .. 31;
      IPCC_C1TOC2SR at 16#C# range 0 .. 31;
      IPCC_C2CR     at 16#10# range 0 .. 31;
      IPCC_C2MR     at 16#14# range 0 .. 31;
      IPCC_C2SCR    at 16#18# range 0 .. 31;
      IPCC_C2TOC1SR at 16#1C# range 0 .. 31;
      IPCC_HWCFGR   at 16#3F0# range 0 .. 31;
      IPCC_VERR     at 16#3F4# range 0 .. 31;
      IPCC_IPIDR    at 16#3F8# range 0 .. 31;
      IPCC_SIDR     at 16#3FC# range 0 .. 31;
   end record;

   --  Inter Processor communication controller
   IPCC_Periph : aliased IPCC_Peripheral
     with Import, Address => IPCC_Base;

end Interfaces.STM32.IPCC;
