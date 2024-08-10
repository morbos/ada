--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.AES is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DATATYPE_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_CHMOD10_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_CCFC_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ERRC_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CCFIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ERRIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DMAINEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DMAOUTEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_GCMPH_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_CHMOD2_Field is Interfaces.Bit_Types.Bit;
   subtype CR_KEYSIZE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_NPBLB_Field is Interfaces.Bit_Types.UInt4;

   --  control register
   type CR_Register is record
      --  AES enable
      EN             : CR_EN_Field := 16#0#;
      --  Data type selection (for data in and data out to/from the
      --  cryptographic block)
      DATATYPE       : CR_DATATYPE_Field := 16#0#;
      --  AES operating mode
      MODE           : CR_MODE_Field := 16#0#;
      --  AES chaining mode Bit1 Bit0
      CHMOD10        : CR_CHMOD10_Field := 16#0#;
      --  Computation Complete Flag Clear
      CCFC           : CR_CCFC_Field := 16#0#;
      --  Error clear
      ERRC           : CR_ERRC_Field := 16#0#;
      --  CCF flag interrupt enable
      CCFIE          : CR_CCFIE_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : CR_ERRIE_Field := 16#0#;
      --  Enable DMA management of data input phase
      DMAINEN        : CR_DMAINEN_Field := 16#0#;
      --  Enable DMA management of data output phase
      DMAOUTEN       : CR_DMAOUTEN_Field := 16#0#;
      --  Used only for GCM, CCM and GMAC algorithms and has no effect when
      --  other algorithms are selected
      GCMPH          : CR_GCMPH_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  AES chaining mode Bit2
      CHMOD2         : CR_CHMOD2_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Key size selection
      KEYSIZE        : CR_KEYSIZE_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Number of padding bytes in last block of payload
      NPBLB          : CR_NPBLB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN             at 0 range 0 .. 0;
      DATATYPE       at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 4;
      CHMOD10        at 0 range 5 .. 6;
      CCFC           at 0 range 7 .. 7;
      ERRC           at 0 range 8 .. 8;
      CCFIE          at 0 range 9 .. 9;
      ERRIE          at 0 range 10 .. 10;
      DMAINEN        at 0 range 11 .. 11;
      DMAOUTEN       at 0 range 12 .. 12;
      GCMPH          at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CHMOD2         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      KEYSIZE        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      NPBLB          at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SR_CCF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RDERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_WRERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BUSY_Field is Interfaces.Bit_Types.Bit;

   --  status register
   type SR_Register is record
      --  Read-only. Computation complete flag
      CCF           : SR_CCF_Field;
      --  Read-only. Read error flag
      RDERR         : SR_RDERR_Field;
      --  Read-only. Write error flag
      WRERR         : SR_WRERR_Field;
      --  Read-only. Busy flag
      BUSY          : SR_BUSY_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      CCF           at 0 range 0 .. 0;
      RDERR         at 0 range 1 .. 1;
      WRERR         at 0 range 2 .. 2;
      BUSY          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced encryption standard hardware accelerator 1
   type AES_Peripheral is record
      --  control register
      CR     : aliased CR_Register;
      --  status register
      SR     : aliased SR_Register;
      --  data input register
      DINR   : aliased Interfaces.Bit_Types.UInt32;
      --  data output register
      DOUTR  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 0
      KEYR0  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 1
      KEYR1  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 2
      KEYR2  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 3
      KEYR3  : aliased Interfaces.Bit_Types.UInt32;
      --  initialization vector register 0
      IVR0   : aliased Interfaces.Bit_Types.UInt32;
      --  initialization vector register 1
      IVR1   : aliased Interfaces.Bit_Types.UInt32;
      --  initialization vector register 2
      IVR2   : aliased Interfaces.Bit_Types.UInt32;
      --  initialization vector register 3
      IVR3   : aliased Interfaces.Bit_Types.UInt32;
      --  key register 4
      KEYR4  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 5
      KEYR5  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 6
      KEYR6  : aliased Interfaces.Bit_Types.UInt32;
      --  key register 7
      KEYR7  : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 0
      SUSP0R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 1
      SUSP1R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 2
      SUSP2R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 3
      SUSP3R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 4
      SUSP4R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 5
      SUSP5R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 6
      SUSP6R : aliased Interfaces.Bit_Types.UInt32;
      --  AES suspend register 7
      SUSP7R : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for AES_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      SR     at 16#4# range 0 .. 31;
      DINR   at 16#8# range 0 .. 31;
      DOUTR  at 16#C# range 0 .. 31;
      KEYR0  at 16#10# range 0 .. 31;
      KEYR1  at 16#14# range 0 .. 31;
      KEYR2  at 16#18# range 0 .. 31;
      KEYR3  at 16#1C# range 0 .. 31;
      IVR0   at 16#20# range 0 .. 31;
      IVR1   at 16#24# range 0 .. 31;
      IVR2   at 16#28# range 0 .. 31;
      IVR3   at 16#2C# range 0 .. 31;
      KEYR4  at 16#30# range 0 .. 31;
      KEYR5  at 16#34# range 0 .. 31;
      KEYR6  at 16#38# range 0 .. 31;
      KEYR7  at 16#3C# range 0 .. 31;
      SUSP0R at 16#40# range 0 .. 31;
      SUSP1R at 16#44# range 0 .. 31;
      SUSP2R at 16#48# range 0 .. 31;
      SUSP3R at 16#4C# range 0 .. 31;
      SUSP4R at 16#50# range 0 .. 31;
      SUSP5R at 16#54# range 0 .. 31;
      SUSP6R at 16#58# range 0 .. 31;
      SUSP7R at 16#5C# range 0 .. 31;
   end record;

   --  Advanced encryption standard hardware accelerator 1
   AES_Periph : aliased AES_Peripheral
     with Import, Address => AES_Base;

end Interfaces.STM32.AES;
