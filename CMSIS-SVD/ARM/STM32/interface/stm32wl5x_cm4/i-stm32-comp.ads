--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.COMP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype COMP1_CSR_PWRMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype COMP1_CSR_INMSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype COMP1_CSR_INPSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype COMP1_CSR_HYST_Field is Interfaces.Bit_Types.UInt2;
   subtype COMP1_CSR_BLANKING_Field is Interfaces.Bit_Types.UInt3;
   subtype COMP1_CSR_INMESEL_Field is Interfaces.Bit_Types.UInt2;

   --  COMP1_CSR
   type COMP1_CSR_Register is record
      --  Comparator 1 enable bit
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Power Mode of the comparator 1
      PWRMODE        : COMP1_CSR_PWRMODE_Field := 16#0#;
      --  Comparator 1 input minus selection bits
      INMSEL         : COMP1_CSR_INMSEL_Field := 16#0#;
      --  Comparator1 input plus selection bit
      INPSEL         : COMP1_CSR_INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Comparator 1 polarity selection bit
      POLARITY       : Boolean := False;
      --  Comparator 1 hysteresis selection bits
      HYST           : COMP1_CSR_HYST_Field := 16#0#;
      --  Comparator 1 blanking source selection bits
      BLANKING       : COMP1_CSR_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Scaler bridge enable
      BRGEN          : Boolean := False;
      --  Voltage scaler enable bit
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  comparator 1 input minus extended selection bits.
      INMESEL        : COMP1_CSR_INMESEL_Field := 16#0#;
      --  unspecified
      Reserved_27_29 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Comparator 1 output status bit
      VALUE          : Boolean := False;
      --  COMP1_CSR register lock bit
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      PWRMODE        at 0 range 2 .. 3;
      INMSEL         at 0 range 4 .. 6;
      INPSEL         at 0 range 7 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POLARITY       at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 17;
      BLANKING       at 0 range 18 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      INMESEL        at 0 range 25 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP2_CSR_PWRMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype COMP2_CSR_INMSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype COMP2_CSR_INPSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype COMP2_CSR_HYST_Field is Interfaces.Bit_Types.UInt2;
   subtype COMP2_CSR_BLANKING_Field is Interfaces.Bit_Types.UInt3;
   subtype COMP2_CSR_INMESEL_Field is Interfaces.Bit_Types.UInt2;

   --  COMP2_CSR
   type COMP2_CSR_Register is record
      --  Comparator 2 enable bit
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Power Mode of the comparator 2
      PWRMODE        : COMP2_CSR_PWRMODE_Field := 16#0#;
      --  Comparator 2 input minus selection bits
      INMSEL         : COMP2_CSR_INMSEL_Field := 16#0#;
      --  Comparator 1 input plus selection bit
      INPSEL         : COMP2_CSR_INPSEL_Field := 16#0#;
      --  Windows mode selection bit
      WINMODE        : Boolean := False;
      --  unspecified
      Reserved_10_14 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Comparator 2 polarity selection bit
      POLARITY       : Boolean := False;
      --  Comparator 2 hysteresis selection bits
      HYST           : COMP2_CSR_HYST_Field := 16#0#;
      --  Comparator 2 blanking source selection bits
      BLANKING       : COMP2_CSR_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Scaler bridge enable
      BRGEN          : Boolean := False;
      --  Voltage scaler enable bit
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  comparator 2 input minus extended selection bits.
      INMESEL        : COMP2_CSR_INMESEL_Field := 16#0#;
      --  unspecified
      Reserved_27_29 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Comparator 2 output status bit
      VALUE          : Boolean := False;
      --  CSR register lock bit
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP2_CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      PWRMODE        at 0 range 2 .. 3;
      INMSEL         at 0 range 4 .. 6;
      INPSEL         at 0 range 7 .. 8;
      WINMODE        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      POLARITY       at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 17;
      BLANKING       at 0 range 18 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      INMESEL        at 0 range 25 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Comparator
   type COMP_Peripheral is record
      --  COMP1_CSR
      COMP1_CSR : aliased COMP1_CSR_Register;
      --  COMP2_CSR
      COMP2_CSR : aliased COMP2_CSR_Register;
   end record
     with Volatile;

   for COMP_Peripheral use record
      COMP1_CSR at 16#0# range 0 .. 31;
      COMP2_CSR at 16#4# range 0 .. 31;
   end record;

   --  Comparator
   COMP_Periph : aliased COMP_Peripheral
     with Import, Address => COMP_Base;

end Interfaces.STM32.COMP;
