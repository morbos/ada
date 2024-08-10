--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RNG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_RNGEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_IE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CED_Field is Interfaces.Bit_Types.Bit;
   subtype CR_RNG_CONFIG3_Field is Interfaces.Bit_Types.UInt4;
   subtype CR_NISTC_Field is Interfaces.Bit_Types.Bit;
   subtype CR_RNG_CONFIG2_Field is Interfaces.Bit_Types.UInt3;
   subtype CR_CLKDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype CR_RNG_CONFIG1_Field is Interfaces.Bit_Types.UInt6;
   subtype CR_CONDRST_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CONFIGLOCK_Field is Interfaces.Bit_Types.Bit;

   --  control register
   type CR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  True random number generator enable
      RNGEN          : CR_RNGEN_Field := 16#0#;
      --  Interrupt Enable
      IE             : CR_IE_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Interrupt Enable
      CED            : CR_CED_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  RNG_CONFIG3
      RNG_CONFIG3    : CR_RNG_CONFIG3_Field := 16#0#;
      --  NISTC
      NISTC          : CR_NISTC_Field := 16#0#;
      --  RNG_CONFIG2
      RNG_CONFIG2    : CR_RNG_CONFIG2_Field := 16#0#;
      --  CLKDIV
      CLKDIV         : CR_CLKDIV_Field := 16#0#;
      --  RNG_CONFIG1
      RNG_CONFIG1    : CR_RNG_CONFIG1_Field := 16#8#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Conditioning soft reset
      CONDRST        : CR_CONDRST_Field := 16#0#;
      --  CONFIGLOCK
      CONFIGLOCK     : CR_CONFIGLOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RNGEN          at 0 range 2 .. 2;
      IE             at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CED            at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RNG_CONFIG3    at 0 range 8 .. 11;
      NISTC          at 0 range 12 .. 12;
      RNG_CONFIG2    at 0 range 13 .. 15;
      CLKDIV         at 0 range 16 .. 19;
      RNG_CONFIG1    at 0 range 20 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      CONDRST        at 0 range 30 .. 30;
      CONFIGLOCK     at 0 range 31 .. 31;
   end record;

   subtype SR_DRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CECS_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SECS_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CEIS_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SEIS_Field is Interfaces.Bit_Types.Bit;

   --  status register
   type SR_Register is record
      --  Read-only. Data Ready
      DRDY          : SR_DRDY_Field := 16#0#;
      --  Read-only. Clock error current status
      CECS          : SR_CECS_Field := 16#0#;
      --  Read-only. Seed error current status
      SECS          : SR_SECS_Field := 16#0#;
      --  unspecified
      Reserved_3_4  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Clock error interrupt status
      CEIS          : SR_CEIS_Field := 16#0#;
      --  Seed error interrupt status
      SEIS          : SR_SEIS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DRDY          at 0 range 0 .. 0;
      CECS          at 0 range 1 .. 1;
      SECS          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      CEIS          at 0 range 5 .. 5;
      SEIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True random number generator
   type RNG_Peripheral is record
      --  control register
      CR   : aliased CR_Register;
      --  status register
      SR   : aliased SR_Register;
      --  data register
      DR   : aliased Interfaces.Bit_Types.UInt32;
      --  health test control register
      HTCR : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for RNG_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      SR   at 16#4# range 0 .. 31;
      DR   at 16#8# range 0 .. 31;
      HTCR at 16#10# range 0 .. 31;
   end record;

   --  True random number generator
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_Base;

end Interfaces.STM32.RNG;
