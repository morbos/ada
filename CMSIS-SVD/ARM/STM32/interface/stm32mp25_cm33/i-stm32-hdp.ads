--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.HDP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  HDP control register
   type HDP_CTRL_Register is record
      --  HDP enable (valid if enabled in BSEC)
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_CTRL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HDP_MUX_MUX array element
   subtype HDP_MUX_MUX_Element is Interfaces.Bit_Types.UInt4;

   --  HDP_MUX_MUX array
   type HDP_MUX_MUX_Field_Array is array (0 .. 7) of HDP_MUX_MUX_Element
     with Component_Size => 4, Size => 32;

   --  HDP multiplexer control register
   type HDP_MUX_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MUX as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MUX as an array
            Arr : HDP_MUX_MUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_MUX_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype HDP_VAL_HDPVAL_Field is Interfaces.Bit_Types.Byte;

   --  HDP read back value register
   type HDP_VAL_Register is record
      --  Read-only. Value of the HDP signals
      HDPVAL        : HDP_VAL_HDPVAL_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_VAL_Register use record
      HDPVAL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HDP_GPOSET_HDPGPOSET_Field is Interfaces.Bit_Types.Byte;

   --  HDP general purpose output set register
   type HDP_GPOSET_Register is record
      --  Write-only. When a bit is written to 1, the corresponding HDP GPO is
      --  set. Writing a bit to 0 has no effect.
      HDPGPOSET     : HDP_GPOSET_HDPGPOSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_GPOSET_Register use record
      HDPGPOSET     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HDP_GPOCLR_HDPGPOCLR_Field is Interfaces.Bit_Types.Byte;

   --  HDP general purpose output clear register
   type HDP_GPOCLR_Register is record
      --  Write-only. When a bit is written to 1, the corresponding HDP GPO is
      --  cleared. Writing a bit to 0 has no effect.
      HDPGPOCLR     : HDP_GPOCLR_HDPGPOCLR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_GPOCLR_Register use record
      HDPGPOCLR     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HDP_GPOVAL_HDPGPOVAL_Field is Interfaces.Bit_Types.Byte;

   --  HDP general purpose output value register
   type HDP_GPOVAL_Register is record
      --  When written, this bit field defines the value of the HDP GPO. When
      --  read, this bit field provides the current GPO value.
      HDPGPOVAL     : HDP_GPOVAL_HDPGPOVAL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_GPOVAL_Register use record
      HDPGPOVAL     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HDP_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype HDP_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  HDP version register
   type HDP_VERR_Register is record
      --  Read-only. HDP minor revision
      MINREV        : HDP_VERR_MINREV_Field;
      --  Read-only. HDP major revision
      MAJREV        : HDP_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDP_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HDP address block description
   type HDP_Peripheral is record
      --  HDP control register
      HDP_CTRL   : aliased HDP_CTRL_Register;
      --  HDP multiplexer control register
      HDP_MUX    : aliased HDP_MUX_Register;
      --  HDP read back value register
      HDP_VAL    : aliased HDP_VAL_Register;
      --  HDP general purpose output set register
      HDP_GPOSET : aliased HDP_GPOSET_Register;
      --  HDP general purpose output clear register
      HDP_GPOCLR : aliased HDP_GPOCLR_Register;
      --  HDP general purpose output value register
      HDP_GPOVAL : aliased HDP_GPOVAL_Register;
      --  HDP version register
      HDP_VERR   : aliased HDP_VERR_Register;
      --  HDP identification register
      HDP_IPIDR  : aliased Interfaces.Bit_Types.UInt32;
      --  HDP size identification register
      HDP_SIDR   : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for HDP_Peripheral use record
      HDP_CTRL   at 16#0# range 0 .. 31;
      HDP_MUX    at 16#4# range 0 .. 31;
      HDP_VAL    at 16#10# range 0 .. 31;
      HDP_GPOSET at 16#14# range 0 .. 31;
      HDP_GPOCLR at 16#18# range 0 .. 31;
      HDP_GPOVAL at 16#1C# range 0 .. 31;
      HDP_VERR   at 16#3F4# range 0 .. 31;
      HDP_IPIDR  at 16#3F8# range 0 .. 31;
      HDP_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  HDP address block description
   HDP_Periph : aliased HDP_Peripheral
     with Import, Address => HDP_Base;

   --  HDP address block description
   HDP_S_Periph : aliased HDP_Peripheral
     with Import, Address => HDP_S_Base;

end Interfaces.STM32.HDP;
