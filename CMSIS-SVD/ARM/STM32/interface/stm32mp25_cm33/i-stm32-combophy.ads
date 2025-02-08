--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.COMBOPHY is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype COMBOPHY_MPLL_LOOP_CTL_CR_INT_CNTRL_Field is
     Interfaces.Bit_Types.UInt2;
   subtype COMBOPHY_MPLL_LOOP_CTL_CR_PROP_CNTRL_Field is
     Interfaces.Bit_Types.UInt4;

   --  COMBOPHY MPLL loop control register
   type COMBOPHY_MPLL_LOOP_CTL_CR_Register is record
      --  Measure MPLL master bias voltage
      VMB           : Boolean := False;
      --  Measure MPLL local GD
      GD            : Boolean := False;
      --  Charge pump integrating current setting
      INT_CNTRL     : COMBOPHY_MPLL_LOOP_CTL_CR_INT_CNTRL_Field := 16#0#;
      --  Charge pump proportional current setting Set PROP_CNTRL to 0xe
      --  (0b1110) when the reference clock is 20 or 25MHz. Set PROP_CNTRL to
      --  0x8 (0b1000) when reference clock is 100MHz (default).
      PROP_CNTRL    : COMBOPHY_MPLL_LOOP_CTL_CR_PROP_CNTRL_Field := 16#8#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMBOPHY_MPLL_LOOP_CTL_CR_Register use record
      VMB           at 0 range 0 .. 0;
      GD            at 0 range 1 .. 1;
      INT_CNTRL     at 0 range 2 .. 3;
      PROP_CNTRL    at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  COMBOPHY register block
   type COMBOPHY_Peripheral is record
      --  COMBOPHY MPLL loop control register
      COMBOPHY_MPLL_LOOP_CTL_CR : aliased COMBOPHY_MPLL_LOOP_CTL_CR_Register;
   end record
     with Volatile;

   for COMBOPHY_Peripheral use record
      COMBOPHY_MPLL_LOOP_CTL_CR at 16#C0# range 0 .. 31;
   end record;

   --  COMBOPHY register block
   COMBOPHY_Periph : aliased COMBOPHY_Peripheral
     with Import, Address => COMBOPHY_Base;

   --  COMBOPHY register block
   COMBOPHY_S_Periph : aliased COMBOPHY_Peripheral
     with Import, Address => COMBOPHY_S_Base;

end Interfaces.STM32.COMBOPHY;
