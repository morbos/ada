--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32L5x2.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.VREF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  VREF control and status register
   type CSR_Register is record
      --  Voltage reference buffer enable
      ENVR          : Boolean := False;
      --  High impedance mode
      HIZ           : Boolean := True;
      --  Voltage reference scale
      VRS           : Boolean := False;
      --  Read-only. Voltage reference buffer ready
      VRR           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      ENVR          at 0 range 0 .. 0;
      HIZ           at 0 range 1 .. 1;
      VRS           at 0 range 2 .. 2;
      VRR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CCR_TRIM_Field is Interfaces.Bit_Types.UInt6;

   --  calibration control register
   type CCR_Register is record
      --  Trimming code
      TRIM          : CCR_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      TRIM          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Voltage reference buffer
   type VREF_Peripheral is record
      --  VREF control and status register
      CSR : aliased CSR_Register;
      --  calibration control register
      CCR : aliased CCR_Register;
   end record
     with Volatile;

   for VREF_Peripheral use record
      CSR at 16#0# range 0 .. 31;
      CCR at 16#4# range 0 .. 31;
   end record;

   --  Voltage reference buffer
   SEC_VREFBUF_Periph : aliased VREF_Peripheral
     with Import, Address => System'To_Address (16#50010030#);

   --  Voltage reference buffer
   VREFBUF_Periph : aliased VREF_Peripheral
     with Import, Address => System'To_Address (16#40010030#);

end Interfaces.STM32.VREF;
