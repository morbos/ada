--  This spec has been automatically generated from STM32WL5x_CM4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.IPCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype C1CR_RXOIE_Field is HAL.Bit;
   subtype C1CR_TXFIE_Field is HAL.Bit;

   --  IPCC Processor 1 control register
   type C1CR_Register is record
      --  RXOIE
      RXOIE          : C1CR_RXOIE_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  TXFIE
      TXFIE          : C1CR_TXFIE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1CR_Register use record
      RXOIE          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      TXFIE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype C1MR_CH1OM_Field is HAL.Bit;
   subtype C1MR_CH2OM_Field is HAL.Bit;
   subtype C1MR_CH3OM_Field is HAL.Bit;
   subtype C1MR_CH4OM_Field is HAL.Bit;
   subtype C1MR_CH5OM_Field is HAL.Bit;
   subtype C1MR_CH6OM_Field is HAL.Bit;
   subtype C1MR_CH1FM_Field is HAL.Bit;
   subtype C1MR_CH2FM_Field is HAL.Bit;
   subtype C1MR_CH3FM_Field is HAL.Bit;
   subtype C1MR_CH4FM_Field is HAL.Bit;
   subtype C1MR_CH5FM_Field is HAL.Bit;
   subtype C1MR_CH6FM_Field is HAL.Bit;

   --  IPCC Processor 1 mask register
   type C1MR_Register is record
      --  CH1OM
      CH1OM          : C1MR_CH1OM_Field := 16#1#;
      --  CH2OM
      CH2OM          : C1MR_CH2OM_Field := 16#1#;
      --  CH3OM
      CH3OM          : C1MR_CH3OM_Field := 16#1#;
      --  CH4OM
      CH4OM          : C1MR_CH4OM_Field := 16#1#;
      --  CH5OM
      CH5OM          : C1MR_CH5OM_Field := 16#1#;
      --  CH6OM
      CH6OM          : C1MR_CH6OM_Field := 16#1#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#3FF#;
      --  CH1FM
      CH1FM          : C1MR_CH1FM_Field := 16#1#;
      --  CH2FM
      CH2FM          : C1MR_CH2FM_Field := 16#1#;
      --  CH3FM
      CH3FM          : C1MR_CH3FM_Field := 16#1#;
      --  CH4FM
      CH4FM          : C1MR_CH4FM_Field := 16#1#;
      --  CH5FM
      CH5FM          : C1MR_CH5FM_Field := 16#1#;
      --  CH6FM
      CH6FM          : C1MR_CH6FM_Field := 16#1#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#3FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1MR_Register use record
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

   subtype C1SCR_CH1C_Field is HAL.Bit;
   subtype C1SCR_CH2C_Field is HAL.Bit;
   subtype C1SCR_CH3C_Field is HAL.Bit;
   subtype C1SCR_CH4C_Field is HAL.Bit;
   subtype C1SCR_CH5C_Field is HAL.Bit;
   subtype C1SCR_CH6C_Field is HAL.Bit;
   subtype C1SCR_CH1S_Field is HAL.Bit;
   subtype C1SCR_CH2S_Field is HAL.Bit;
   subtype C1SCR_CH3S_Field is HAL.Bit;
   subtype C1SCR_CH4S_Field is HAL.Bit;
   subtype C1SCR_CH5S_Field is HAL.Bit;
   subtype C1SCR_CH6S_Field is HAL.Bit;

   --  Reading this register will always return 0x0000 0000.
   type C1SCR_Register is record
      --  CH1C
      CH1C           : C1SCR_CH1C_Field := 16#0#;
      --  CH2C
      CH2C           : C1SCR_CH2C_Field := 16#0#;
      --  CH3C
      CH3C           : C1SCR_CH3C_Field := 16#0#;
      --  CH4C
      CH4C           : C1SCR_CH4C_Field := 16#0#;
      --  CH5C
      CH5C           : C1SCR_CH5C_Field := 16#0#;
      --  CH6C
      CH6C           : C1SCR_CH6C_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  CH1S
      CH1S           : C1SCR_CH1S_Field := 16#0#;
      --  CH2S
      CH2S           : C1SCR_CH2S_Field := 16#0#;
      --  CH3S
      CH3S           : C1SCR_CH3S_Field := 16#0#;
      --  CH4S
      CH4S           : C1SCR_CH4S_Field := 16#0#;
      --  CH5S
      CH5S           : C1SCR_CH5S_Field := 16#0#;
      --  CH6S
      CH6S           : C1SCR_CH6S_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1SCR_Register use record
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

   subtype IC1TOC2SR_CH1F_Field is HAL.Bit;
   subtype IC1TOC2SR_CH2F_Field is HAL.Bit;
   subtype IC1TOC2SR_CH3F_Field is HAL.Bit;
   subtype IC1TOC2SR_CH4F_Field is HAL.Bit;
   subtype IC1TOC2SR_CH5F_Field is HAL.Bit;
   subtype IC1TOC2SR_CH6F_Field is HAL.Bit;

   --  IPCC processor 1 to processor 2 status register
   type IC1TOC2SR_Register is record
      --  Read-only. CH1F
      CH1F          : IC1TOC2SR_CH1F_Field;
      --  Read-only. CH2F
      CH2F          : IC1TOC2SR_CH2F_Field;
      --  Read-only. CH3F
      CH3F          : IC1TOC2SR_CH3F_Field;
      --  Read-only. CH4F
      CH4F          : IC1TOC2SR_CH4F_Field;
      --  Read-only. CH5F
      CH5F          : IC1TOC2SR_CH5F_Field;
      --  Read-only. CH6F
      CH6F          : IC1TOC2SR_CH6F_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC1TOC2SR_Register use record
      CH1F          at 0 range 0 .. 0;
      CH2F          at 0 range 1 .. 1;
      CH3F          at 0 range 2 .. 2;
      CH4F          at 0 range 3 .. 3;
      CH5F          at 0 range 4 .. 4;
      CH6F          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype C2CR_RXOIE_Field is HAL.Bit;
   subtype C2CR_TXFIE_Field is HAL.Bit;

   --  IPCC Processor 2 control register
   type C2CR_Register is record
      --  RXOIE
      RXOIE          : C2CR_RXOIE_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  TXFIE
      TXFIE          : C2CR_TXFIE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2CR_Register use record
      RXOIE          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      TXFIE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype C2MR_CH1OM_Field is HAL.Bit;
   subtype C2MR_CH2OM_Field is HAL.Bit;
   subtype C2MR_CH3OM_Field is HAL.Bit;
   subtype C2MR_CH4OM_Field is HAL.Bit;
   subtype C2MR_CH5OM_Field is HAL.Bit;
   subtype C2MR_CH6OM_Field is HAL.Bit;
   subtype C2MR_CH1FM_Field is HAL.Bit;
   subtype C2MR_CH2FM_Field is HAL.Bit;
   subtype C2MR_CH3FM_Field is HAL.Bit;
   subtype C2MR_CH4FM_Field is HAL.Bit;
   subtype C2MR_CH5FM_Field is HAL.Bit;
   subtype C2MR_CH6FM_Field is HAL.Bit;

   --  IPCC Processor 2 mask register
   type C2MR_Register is record
      --  CH1OM
      CH1OM          : C2MR_CH1OM_Field := 16#1#;
      --  CH2OM
      CH2OM          : C2MR_CH2OM_Field := 16#1#;
      --  CH3OM
      CH3OM          : C2MR_CH3OM_Field := 16#1#;
      --  CH4OM
      CH4OM          : C2MR_CH4OM_Field := 16#1#;
      --  CH5OM
      CH5OM          : C2MR_CH5OM_Field := 16#1#;
      --  CH6OM
      CH6OM          : C2MR_CH6OM_Field := 16#1#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#3FF#;
      --  CH1FM
      CH1FM          : C2MR_CH1FM_Field := 16#1#;
      --  CH2FM
      CH2FM          : C2MR_CH2FM_Field := 16#1#;
      --  CH3FM
      CH3FM          : C2MR_CH3FM_Field := 16#1#;
      --  CH4FM
      CH4FM          : C2MR_CH4FM_Field := 16#1#;
      --  CH5FM
      CH5FM          : C2MR_CH5FM_Field := 16#1#;
      --  CH6FM
      CH6FM          : C2MR_CH6FM_Field := 16#1#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#3FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2MR_Register use record
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

   subtype C2SCR_CH1C_Field is HAL.Bit;
   subtype C2SCR_CH2C_Field is HAL.Bit;
   subtype C2SCR_CH3C_Field is HAL.Bit;
   subtype C2SCR_CH4C_Field is HAL.Bit;
   subtype C2SCR_CH5C_Field is HAL.Bit;
   subtype C2SCR_CH6C_Field is HAL.Bit;
   subtype C2SCR_CH1S_Field is HAL.Bit;
   subtype C2SCR_CH2S_Field is HAL.Bit;
   subtype C2SCR_CH3S_Field is HAL.Bit;
   subtype C2SCR_CH4S_Field is HAL.Bit;
   subtype C2SCR_CH5S_Field is HAL.Bit;
   subtype C2SCR_CH6S_Field is HAL.Bit;

   --  Reading this register will always return 0x0000 0000.
   type C2SCR_Register is record
      --  CH1C
      CH1C           : C2SCR_CH1C_Field := 16#0#;
      --  CH2C
      CH2C           : C2SCR_CH2C_Field := 16#0#;
      --  CH3C
      CH3C           : C2SCR_CH3C_Field := 16#0#;
      --  CH4C
      CH4C           : C2SCR_CH4C_Field := 16#0#;
      --  CH5C
      CH5C           : C2SCR_CH5C_Field := 16#0#;
      --  CH6C
      CH6C           : C2SCR_CH6C_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  CH1S
      CH1S           : C2SCR_CH1S_Field := 16#0#;
      --  CH2S
      CH2S           : C2SCR_CH2S_Field := 16#0#;
      --  CH3S
      CH3S           : C2SCR_CH3S_Field := 16#0#;
      --  CH4S
      CH4S           : C2SCR_CH4S_Field := 16#0#;
      --  CH5S
      CH5S           : C2SCR_CH5S_Field := 16#0#;
      --  CH6S
      CH6S           : C2SCR_CH6S_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2SCR_Register use record
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

   subtype C2TOC1SR_CH1F_Field is HAL.Bit;
   subtype C2TOC1SR_CH2F_Field is HAL.Bit;
   subtype C2TOC1SR_CH3F_Field is HAL.Bit;
   subtype C2TOC1SR_CH4F_Field is HAL.Bit;
   subtype C2TOC1SR_CH5F_Field is HAL.Bit;
   subtype C2TOC1SR_CH6F_Field is HAL.Bit;

   --  IPCC processor 2 to processor 1 status register
   type C2TOC1SR_Register is record
      --  Read-only. CH1F
      CH1F          : C2TOC1SR_CH1F_Field;
      --  Read-only. CH2F
      CH2F          : C2TOC1SR_CH2F_Field;
      --  Read-only. CH3F
      CH3F          : C2TOC1SR_CH3F_Field;
      --  Read-only. CH4F
      CH4F          : C2TOC1SR_CH4F_Field;
      --  Read-only. CH5F
      CH5F          : C2TOC1SR_CH5F_Field;
      --  Read-only. CH6F
      CH6F          : C2TOC1SR_CH6F_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2TOC1SR_Register use record
      CH1F          at 0 range 0 .. 0;
      CH2F          at 0 range 1 .. 1;
      CH3F          at 0 range 2 .. 2;
      CH4F          at 0 range 3 .. 3;
      CH5F          at 0 range 4 .. 4;
      CH6F          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype HWCFGR_CHANNELS_Field is HAL.UInt8;

   --  IPCC Hardware configuration register
   type HWCFGR_Register is record
      --  Read-only. CHANNELS
      CHANNELS      : HWCFGR_CHANNELS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR_Register use record
      CHANNELS      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype VERR_MINREV_Field is HAL.UInt4;
   subtype VERR_MAJREV_Field is HAL.UInt4;

   --  IPCC IP Version register
   type VERR_Register is record
      --  Read-only. MINREV
      MINREV        : VERR_MINREV_Field;
      --  Read-only. MAJREV
      MAJREV        : VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERR_Register use record
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
      C1CR      : aliased C1CR_Register;
      --  IPCC Processor 1 mask register
      C1MR      : aliased C1MR_Register;
      --  Reading this register will always return 0x0000 0000.
      C1SCR     : aliased C1SCR_Register;
      --  IPCC processor 1 to processor 2 status register
      IC1TOC2SR : aliased IC1TOC2SR_Register;
      --  IPCC Processor 2 control register
      C2CR      : aliased C2CR_Register;
      --  IPCC Processor 2 mask register
      C2MR      : aliased C2MR_Register;
      --  Reading this register will always return 0x0000 0000.
      C2SCR     : aliased C2SCR_Register;
      --  IPCC processor 2 to processor 1 status register
      C2TOC1SR  : aliased C2TOC1SR_Register;
      --  IPCC Hardware configuration register
      HWCFGR    : aliased HWCFGR_Register;
      --  IPCC IP Version register
      VERR      : aliased VERR_Register;
      --  IPCC IP Identification register
      IPIDR     : aliased HAL.UInt32;
      --  IPCC Size ID register
      SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for IPCC_Peripheral use record
      C1CR      at 16#0# range 0 .. 31;
      C1MR      at 16#4# range 0 .. 31;
      C1SCR     at 16#8# range 0 .. 31;
      IC1TOC2SR at 16#C# range 0 .. 31;
      C2CR      at 16#10# range 0 .. 31;
      C2MR      at 16#14# range 0 .. 31;
      C2SCR     at 16#18# range 0 .. 31;
      C2TOC1SR  at 16#1C# range 0 .. 31;
      HWCFGR    at 16#3F0# range 0 .. 31;
      VERR      at 16#3F4# range 0 .. 31;
      IPIDR     at 16#3F8# range 0 .. 31;
      SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  Inter Processor communication controller
   IPCC_Periph : aliased IPCC_Peripheral
     with Import, Address => IPCC_Base;

end STM32_SVD.IPCC;
