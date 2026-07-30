--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RNG_CR_RNG_CONFIG3_Field is HAL.UInt4;
   subtype RNG_CR_RNG_CONFIG2_Field is HAL.UInt3;
   subtype RNG_CR_CLKDIV_Field is HAL.UInt4;
   subtype RNG_CR_RNG_CONFIG1_Field is HAL.UInt6;

   --  RNG control register
   type RNG_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  True random number generator enable
      RNGEN          : Boolean := False;
      --  Interrupt enable
      IE             : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Clock error detection
      CED            : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Auto reset disable
      ARDIS          : Boolean := False;
      --  RNG configuration 3
      RNG_CONFIG3    : RNG_CR_RNG_CONFIG3_Field := 16#F#;
      --  NIST custom
      NISTC          : Boolean := False;
      --  RNG configuration 2
      RNG_CONFIG2    : RNG_CR_RNG_CONFIG2_Field := 16#0#;
      --  Clock divider factor
      CLKDIV         : RNG_CR_CLKDIV_Field := 16#0#;
      --  RNG configuration 1
      RNG_CONFIG1    : RNG_CR_RNG_CONFIG1_Field := 16#2#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  Conditioning soft reset
      CONDRST        : Boolean := False;
      --  RNG Config lock
      CONFIGLOCK     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RNGEN          at 0 range 2 .. 2;
      IE             at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CED            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      ARDIS          at 0 range 7 .. 7;
      RNG_CONFIG3    at 0 range 8 .. 11;
      NISTC          at 0 range 12 .. 12;
      RNG_CONFIG2    at 0 range 13 .. 15;
      CLKDIV         at 0 range 16 .. 19;
      RNG_CONFIG1    at 0 range 20 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      CONDRST        at 0 range 30 .. 30;
      CONFIGLOCK     at 0 range 31 .. 31;
   end record;

   --  RNG status register
   type RNG_SR_Register is record
      --  Read-only. Data ready
      DRDY          : Boolean := False;
      --  Read-only. Clock error current status
      CECS          : Boolean := False;
      --  Read-only. Seed error current status
      SECS          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Read-only. Busy
      BUSY          : Boolean := False;
      --  Clock error interrupt status
      CEIS          : Boolean := False;
      --  Seed error interrupt status
      SEIS          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_SR_Register use record
      DRDY          at 0 range 0 .. 0;
      CECS          at 0 range 1 .. 1;
      SECS          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      CEIS          at 0 range 5 .. 5;
      SEIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RNG_NSCR_EN_OSC array element
   subtype RNG_NSCR_EN_OSC_Element is HAL.UInt3;

   --  RNG_NSCR_EN_OSC array
   type RNG_NSCR_EN_OSC_Field_Array is array (1 .. 3)
     of RNG_NSCR_EN_OSC_Element
     with Component_Size => 3, Size => 9;

   --  Type definition for RNG_NSCR_EN_OSC
   type RNG_NSCR_EN_OSC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EN_OSC as a value
            Val : HAL.UInt9;
         when True =>
            --  EN_OSC as an array
            Arr : RNG_NSCR_EN_OSC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RNG_NSCR_EN_OSC_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RNG noise source control register
   type RNG_NSCR_Register is record
      --  Each bit drives one oscillator enable signal input of instance number
      --  1, gated with the RNGEN bit in RNG_CR (set bit to enable the
      --  oscillator).
      EN_OSC        : RNG_NSCR_EN_OSC_Field :=
                       (As_Array => False, Val => 16#7#);
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_NSCR_Register use record
      EN_OSC        at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RNG address block description
   type RNG_Peripheral is record
      --  RNG control register
      RNG_CR    : aliased RNG_CR_Register;
      --  RNG status register
      RNG_SR    : aliased RNG_SR_Register;
      --  RNG data register
      RNG_DR    : aliased HAL.UInt32;
      --  RNG noise source control register
      RNG_NSCR  : aliased RNG_NSCR_Register;
      --  RNG health test control register 0
      RNG_HTCR0 : aliased HAL.UInt32;
      --  RNG health test control register 1
      RNG_HTCR1 : aliased HAL.UInt32;
      --  RNG health test control register 2
      RNG_HTCR2 : aliased HAL.UInt32;
      --  RNG health test control register 3
      RNG_HTCR3 : aliased HAL.UInt32;
   end record
     with Volatile;

   for RNG_Peripheral use record
      RNG_CR    at 16#0# range 0 .. 31;
      RNG_SR    at 16#4# range 0 .. 31;
      RNG_DR    at 16#8# range 0 .. 31;
      RNG_NSCR  at 16#C# range 0 .. 31;
      RNG_HTCR0 at 16#10# range 0 .. 31;
      RNG_HTCR1 at 16#14# range 0 .. 31;
      RNG_HTCR2 at 16#18# range 0 .. 31;
      RNG_HTCR3 at 16#1C# range 0 .. 31;
   end record;

   --  RNG address block description
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_Base;

   --  RNG address block description
   SEC_RNG_Periph : aliased RNG_Peripheral
     with Import, Address => SEC_RNG_Base;

end STM32_SVD.RNG;
