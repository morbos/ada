--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.VREFBUF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype VREFBUF_CSR_VRS_Field is Interfaces.Bit_Types.UInt3;

   --  VREFBUF control and status register
   type VREFBUF_CSR_Register is record
      --  Voltage reference buffer mode enable
      ENVR          : Boolean := False;
      --  High impedance mode
      HIZ           : Boolean := True;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Voltage reference buffer ready
      VRR           : Boolean := False;
      --  Voltage reference scale
      VRS           : VREFBUF_CSR_VRS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREFBUF_CSR_Register use record
      ENVR          at 0 range 0 .. 0;
      HIZ           at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      VRR           at 0 range 3 .. 3;
      VRS           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype VREFBUF_CCR_TRIM_Field is Interfaces.Bit_Types.UInt6;

   --  VREFBUF calibration control register
   type VREFBUF_CCR_Register is record
      --  Trimming code
      TRIM          : VREFBUF_CCR_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREFBUF_CCR_Register use record
      TRIM          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Voltage reference buffer
   type VREFBUF_Peripheral is record
      --  VREFBUF control and status register
      VREFBUF_CSR : aliased VREFBUF_CSR_Register;
      --  VREFBUF calibration control register
      VREFBUF_CCR : aliased VREFBUF_CCR_Register;
   end record
     with Volatile;

   for VREFBUF_Peripheral use record
      VREFBUF_CSR at 16#0# range 0 .. 31;
      VREFBUF_CCR at 16#4# range 0 .. 31;
   end record;

   --  Voltage reference buffer
   VREFBUF_Periph : aliased VREFBUF_Peripheral
     with Import, Address => VREFBUF_Base;

   --  Voltage reference buffer
   VREFBUF_S_Periph : aliased VREFBUF_Peripheral
     with Import, Address => VREFBUF_S_Base;

end Interfaces.STM32.VREFBUF;
