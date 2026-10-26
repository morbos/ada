--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.PWR is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTLR_PLS_Field is Interfaces.Bit_Types.UInt3;

   --  Power control register (PWR_CTRL)
   type CTLR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Power Down Deep Sleep
      PDDS          : Boolean := False;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Power Voltage Detector Enable
      PVDE          : Boolean := False;
      --  PVD Level Selection
      PLS           : CTLR_PLS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PDDS          at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PVDE          at 0 range 4 .. 4;
      PLS           at 0 range 5 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Power control state register (PWR_CSR)
   type CSR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. PVD Output
      PVDO          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PVDO          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Automatic wake-up control state register (PWR_AWUCSR)
   type AWUCSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Automatic wake-up enable
      AWUEN         : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWUCSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      AWUEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype AWUAPR_AWUAPR_Field is Interfaces.Bit_Types.UInt6;

   --  Automatic wake window comparison value register (PWR_AWUAPR)
   type AWUAPR_Register is record
      --  AWU window value
      AWUAPR        : AWUAPR_AWUAPR_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWUAPR_Register use record
      AWUAPR        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype AWUPSC_AWUPSC_Field is Interfaces.Bit_Types.UInt4;

   --  Automatic wake-up prescaler register (PWR_AWUPSC)
   type AWUPSC_Register is record
      --  Wake-up prescaler
      AWUPSC        : AWUPSC_AWUPSC_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWUPSC_Register use record
      AWUPSC        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  Power control register (PWR_CTRL)
      CTLR   : aliased CTLR_Register;
      --  Power control state register (PWR_CSR)
      CSR    : aliased CSR_Register;
      --  Automatic wake-up control state register (PWR_AWUCSR)
      AWUCSR : aliased AWUCSR_Register;
      --  Automatic wake window comparison value register (PWR_AWUAPR)
      AWUAPR : aliased AWUAPR_Register;
      --  Automatic wake-up prescaler register (PWR_AWUPSC)
      AWUPSC : aliased AWUPSC_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CTLR   at 16#0# range 0 .. 31;
      CSR    at 16#4# range 0 .. 31;
      AWUCSR at 16#8# range 0 .. 31;
      AWUAPR at 16#C# range 0 .. 31;
      AWUPSC at 16#10# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end Interfaces.CH32.PWR;
