--  This spec has been automatically generated from STM32MP25_CM33.svd

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
      --  Clock error detection The clock error detection cannot be enabled nor
      --  disabled on-the-fly when the RNG is enabled, that is to enable or
      --  disable CED, the RNG must be disabled. Writing this bit is taken into
      --  account only if the CONDRST bit is set to 1 in the same access, while
      --  CONFIGLOCK remains at 0. Writing to this bit is ignored if
      --  CONFIGLOCK=1.
      CED            : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Auto reset disable Set this bit to deactivate the auto-reset feature.
      --  Keeping the auto-reset enabled (automatic clearance of the SECS bit)
      --  simplifies the management of noise source errors, as described in
      --  Section57.3.7: Error management. Writing this bit is taken into
      --  account only if CONDRST bit is set to 1 in the same access, while
      --  CONFIGLOCK remains at 0. Writing to this bit is ignored if
      --  CONFIGLOCK=1.
      ARDIS          : Boolean := False;
      --  RNG configuration 3 Reserved to the RNG configuration (bit field 3).
      --  Refer to RNG_CONFIG1 bit field for details. If the NISTC bit is
      --  cleared in this register RNG_CONFIG3 bit field values are ignored by
      --  RNG.
      RNG_CONFIG3    : RNG_CR_RNG_CONFIG3_Field := 16#D#;
      --  NIST custom two conditioning loops are performed and 256 bits of
      --  noise source are used. Writing this bit is taken into account only if
      --  CONDRST bit is set to 1 in the same access, while CONFIGLOCK remains
      --  at 0. Writing to this bit is ignored if CONFIGLOCK=1.
      NISTC          : Boolean := False;
      --  RNG configuration 2 Reserved to the RNG configuration (bit field 2).
      --  Bit 13 can be set when RNG power consumption is critical. See
      --  Section57.3.8: RNG low-power use. Refer to the RNG_CONFIG1 bit field
      --  for details.
      RNG_CONFIG2    : RNG_CR_RNG_CONFIG2_Field := 16#0#;
      --  Clock divider factor This value used to configure an internal
      --  programmable divider (from 1 to 16) acting on the incoming RNG clock.
      --  These bits can be written only when the core is disabled (RNGEN=0).
      --  ... Writing these bits is taken into account only if the CONDRST bit
      --  is set to 1 in the same access, while CONFIGLOCK remains at 0.
      --  Writing to this bit is ignored if CONFIGLOCK=1.
      CLKDIV         : RNG_CR_CLKDIV_Field := 16#0#;
      --  RNG configuration 1 Reserved to the RNG configuration (bit field 1).
      --  Must be initialized using the recommended value documented in
      --  Section57.6: RNG entropy source validation. Writing any bit of
      --  RNG_CONFIG1 is taken into account only if the CONDRST bit is set to 1
      --  in the same access, while CONFIGLOCK remains at 0. Writing to this
      --  bit is ignored if CONFIGLOCK=1.
      RNG_CONFIG1    : RNG_CR_RNG_CONFIG1_Field := 16#8#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  Conditioning soft reset Write 1 and then write 0 to reset the
      --  conditioning logic, clear all the FIFOs and start a new RNG
      --  initialization process, with RNG_SR cleared. Registers RNG_CR,
      --  RNG_NSCR and RNG_HTCR are not changed by CONDRST. This bit must be
      --  set to 1 in the same access that set any configuration bits [29:4].
      --  In other words, when CONDRST bit is set to 1 correct configuration in
      --  bits [29:4] must also be written. When CONDRST is set to 0 by the
      --  software, its value goes to 0 when the reset process is done. It
      --  takes about 2 AHB clock cycles + 2 RNG clock cycles.
      CONDRST        : Boolean := False;
      --  RNG Config lock Once set, this bit can only be cleared when RNG is
      --  reset (set once bit).
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
      --  Read-only. Data ready Once the output buffer becomes empty (after
      --  reading the RNG_DR register), this bit returns to 0 until a new
      --  random value is generated. Note: The DRDY bit can rise when the
      --  peripheral is disabled (RNGEN=0 in the RNG_CR register). If IE=1 in
      --  the RNG_CR register, an interrupt is generated when DRDY=1.
      DRDY          : Boolean := False;
      --  Read-only. Clock error current status Note: CECS bit is valid only if
      --  the CED bit in the RNG_CR register is set to 0.
      CECS          : Boolean := False;
      --  Read-only. Seed error current status Runtime repetition count test
      --  failed (noise source has provided more than 24 consecutive bits at a
      --  constant value 0 or 1, or more than 32 consecutive occurrence of two
      --  bits patterns 01 or 10) Startup or continuous adaptive proportion
      --  test on noise source failed. Startup post-processing/conditioning
      --  sanity check failed.
      SECS          : Boolean := False;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Clock error interrupt status This bit is set at the same time as
      --  CECS. It is cleared by writing 0. Writing 1 has no effect. An
      --  interrupt is pending if IE = 1 in the RNG_CR register.
      CEIS          : Boolean := False;
      --  Seed error interrupt status This bit is set at the same time as SECS.
      --  It is cleared by writing 0 (unless CONDRST is used). Writing 1 has no
      --  effect. An interrupt is pending if IE = 1 in the RNG_CR register.
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
      Reserved_3_4  at 0 range 3 .. 4;
      CEIS          at 0 range 5 .. 5;
      SEIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RNG_NSCR_EN_OSC array element
   subtype RNG_NSCR_EN_OSC_Element is HAL.UInt3;

   --  RNG_NSCR_EN_OSC array
   type RNG_NSCR_EN_OSC_Field_Array is array (1 .. 6)
     of RNG_NSCR_EN_OSC_Element
     with Component_Size => 3, Size => 18;

   --  Type definition for RNG_NSCR_EN_OSC
   type RNG_NSCR_EN_OSC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EN_OSC as a value
            Val : HAL.UInt18;
         when True =>
            --  EN_OSC as an array
            Arr : RNG_NSCR_EN_OSC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for RNG_NSCR_EN_OSC_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  RNG noise source control register
   type RNG_NSCR_Register is record
      --  Each bit drives one oscillator enable signal input of instance number
      --  1, gated with the RNGEN bit in RNG_CR (set bit to enable the
      --  oscillator). Bit is ignored otherwise.
      EN_OSC         : RNG_NSCR_EN_OSC_Field :=
                        (As_Array => False, Val => 16#7#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_NSCR_Register use record
      EN_OSC         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RNG_HWCFGR_CFG array element
   subtype RNG_HWCFGR_CFG_Element is HAL.UInt8;

   --  RNG_HWCFGR_CFG array
   type RNG_HWCFGR_CFG_Field_Array is array (1 .. 2)
     of RNG_HWCFGR_CFG_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for RNG_HWCFGR_CFG
   type RNG_HWCFGR_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt16;
         when True =>
            --  CFG as an array
            Arr : RNG_HWCFGR_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RNG_HWCFGR_CFG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  RNG hardware configuration register
   type RNG_HWCFGR_Register is record
      --  Read-only. Hardware generic 1 This field returns the
      --  triple_oscillator_nb generic value (0x6).
      CFG            : RNG_HWCFGR_CFG_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_HWCFGR_Register use record
      CFG            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RNG_VERR_MINREV_Field is HAL.UInt4;
   subtype RNG_VERR_MAJREV_Field is HAL.UInt4;

   --  RNG version register
   type RNG_VERR_Register is record
      --  Read-only. RNG minor revision
      MINREV        : RNG_VERR_MINREV_Field;
      --  Read-only. RNG major revision
      MAJREV        : RNG_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RNG address block description
   type RNG_Peripheral is record
      --  RNG control register
      RNG_CR     : aliased RNG_CR_Register;
      --  RNG status register
      RNG_SR     : aliased RNG_SR_Register;
      --  RNG data register
      RNG_DR     : aliased HAL.UInt32;
      --  RNG noise source control register
      RNG_NSCR   : aliased RNG_NSCR_Register;
      --  RNG health test control register
      RNG_HTCR   : aliased HAL.UInt32;
      --  RNG hardware configuration register
      RNG_HWCFGR : aliased RNG_HWCFGR_Register;
      --  RNG version register
      RNG_VERR   : aliased RNG_VERR_Register;
      --  RNG identification register
      RNG_IPIDR  : aliased HAL.UInt32;
      --  RNG size identification register
      RNG_SIDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for RNG_Peripheral use record
      RNG_CR     at 16#0# range 0 .. 31;
      RNG_SR     at 16#4# range 0 .. 31;
      RNG_DR     at 16#8# range 0 .. 31;
      RNG_NSCR   at 16#C# range 0 .. 31;
      RNG_HTCR   at 16#10# range 0 .. 31;
      RNG_HWCFGR at 16#3F0# range 0 .. 31;
      RNG_VERR   at 16#3F4# range 0 .. 31;
      RNG_IPIDR  at 16#3F8# range 0 .. 31;
      RNG_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  RNG address block description
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_Base;

   --  RNG address block description
   RNG_S_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_S_Base;

end STM32_SVD.RNG;
