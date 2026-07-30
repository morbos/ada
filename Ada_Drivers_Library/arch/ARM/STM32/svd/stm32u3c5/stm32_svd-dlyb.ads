--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DLYB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DLYB control register
   type DLYB_CR_Register is record
      --  0: DLYB disabled. 1: DLYB enabled.
      DEN           : Boolean := False;
      --  0: Sampler length and register access to UNIT[6:0] and SEL[3:0]
      --  disabled, output clock enabled. 1: Sampler length and register access
      --  to UNIT[6:0] and SEL[3:0] enabled, output clock disabled.
      SEN           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYB_CR_Register use record
      DEN           at 0 range 0 .. 0;
      SEN           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DLYB_CFGR_SEL_Field is HAL.UInt4;
   subtype DLYB_CFGR_UNIT_Field is HAL.UInt7;
   subtype DLYB_CFGR_LNG_Field is HAL.UInt12;

   --  DLYB configuration register
   type DLYB_CFGR_Register is record
      --  These bits can only be written when SEN = 1. Output clock phase =
      --  input clock + SEL[3:0] x unit delay
      SEL            : DLYB_CFGR_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  These bits can only be written when SEN = 1. Unit delay = initial
      --  delay + UNIT[6:0] x delay step
      UNIT           : DLYB_CFGR_UNIT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. These bits reflect the 12 unit delay values sampled at the
      --  rising edge of the input clock. The value is only valid when LNGF =
      --  1.
      LNG            : DLYB_CFGR_LNG_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Read-only. This flag indicates when the delay line length value
      --  contained in LNG[11:0] is valid after UNIT[6:0] bits changed. 0:
      --  Length value in LNG is not valid. 1: Length value in LNG is valid.
      LNGF           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYB_CFGR_Register use record
      SEL            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      UNIT           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LNG            at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LNGF           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DLYB Address block
   type DLYB_Peripheral is record
      --  DLYB control register
      DLYB_CR   : aliased DLYB_CR_Register;
      --  DLYB configuration register
      DLYB_CFGR : aliased DLYB_CFGR_Register;
   end record
     with Volatile;

   for DLYB_Peripheral use record
      DLYB_CR   at 16#0# range 0 .. 31;
      DLYB_CFGR at 16#4# range 0 .. 31;
   end record;

   --  DLYB Address block
   DLYBOS1_Periph : aliased DLYB_Peripheral
     with Import, Address => DLYBOS1_Base;

   --  DLYB Address block
   DLYBSD1_Periph : aliased DLYB_Peripheral
     with Import, Address => DLYBSD1_Base;

   --  DLYB Address block
   SEC_DLYBOS1_Periph : aliased DLYB_Peripheral
     with Import, Address => SEC_DLYBOS1_Base;

   --  DLYB Address block
   SEC_DLYBSD1_Periph : aliased DLYB_Peripheral
     with Import, Address => SEC_DLYBSD1_Base;

end STM32_SVD.DLYB;
