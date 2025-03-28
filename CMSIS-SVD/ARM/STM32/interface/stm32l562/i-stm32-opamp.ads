--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32L562.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.OPAMP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype OPAMP1_CSR_OPAMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype OPAMP1_CSR_PGA_GAIN_Field is Interfaces.Bit_Types.UInt2;
   subtype OPAMP1_CSR_VM_SEL_Field is Interfaces.Bit_Types.UInt2;

   --  OPAMP1 control/status register
   type OPAMP1_CSR_Register is record
      --  Operational amplifier Enable
      OPAEN          : Boolean := False;
      --  Operational amplifier Low Power Mode
      OPALPM         : Boolean := False;
      --  Operational amplifier PGA mode
      OPAMODE        : OPAMP1_CSR_OPAMODE_Field := 16#0#;
      --  Operational amplifier Programmable amplifier gain value
      PGA_GAIN       : OPAMP1_CSR_PGA_GAIN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  inverting input selection
      VM_SEL         : OPAMP1_CSR_VM_SEL_Field := 16#0#;
      --  non inverted input selection
      VP_SEL         : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  calibration mode enable
      CALON          : Boolean := False;
      --  calibration selection
      CALSEL         : Boolean := False;
      --  User trimming enable
      USERTRIM       : Boolean := False;
      --  Operational amplifier calibration output
      CALOUT         : Boolean := False;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Operational amplifier power supply range for stability
      OPA_RANGE      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP1_CSR_Register use record
      OPAEN          at 0 range 0 .. 0;
      OPALPM         at 0 range 1 .. 1;
      OPAMODE        at 0 range 2 .. 3;
      PGA_GAIN       at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VM_SEL         at 0 range 8 .. 9;
      VP_SEL         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CALON          at 0 range 12 .. 12;
      CALSEL         at 0 range 13 .. 13;
      USERTRIM       at 0 range 14 .. 14;
      CALOUT         at 0 range 15 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      OPA_RANGE      at 0 range 31 .. 31;
   end record;

   subtype OPAMP1_OTR_TRIMOFFSETN_Field is Interfaces.Bit_Types.UInt5;
   subtype OPAMP1_OTR_TRIMOFFSETP_Field is Interfaces.Bit_Types.UInt5;

   --  OPAMP1 offset trimming register in normal mode
   type OPAMP1_OTR_Register is record
      --  Trim for NMOS differential pairs
      TRIMOFFSETN    : OPAMP1_OTR_TRIMOFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Trim for PMOS differential pairs
      TRIMOFFSETP    : OPAMP1_OTR_TRIMOFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP1_OTR_Register use record
      TRIMOFFSETN    at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIMOFFSETP    at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OPAMP1_LPOTR_TRIMLPOFFSETN_Field is Interfaces.Bit_Types.UInt5;
   subtype OPAMP1_LPOTR_TRIMLPOFFSETP_Field is Interfaces.Bit_Types.UInt5;

   --  OPAMP1 offset trimming register in low-powe mode
   type OPAMP1_LPOTR_Register is record
      --  Trim for NMOS differential pairs
      TRIMLPOFFSETN  : OPAMP1_LPOTR_TRIMLPOFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Trim for PMOS differential pairs
      TRIMLPOFFSETP  : OPAMP1_LPOTR_TRIMLPOFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP1_LPOTR_Register use record
      TRIMLPOFFSETN  at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIMLPOFFSETP  at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OPAMP2_CRS_OPAMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype OPAMP2_CRS_PGA_GAIN_Field is Interfaces.Bit_Types.UInt2;
   subtype OPAMP2_CRS_VM_SEL_Field is Interfaces.Bit_Types.UInt2;

   --  OPAMP2 control/status register
   type OPAMP2_CRS_Register is record
      --  Operational amplifier Enable
      OPAEN          : Boolean := False;
      --  Operational amplifier Low Power Mode
      OPALPM         : Boolean := False;
      --  Operational amplifier PGA mode
      OPAMODE        : OPAMP2_CRS_OPAMODE_Field := 16#0#;
      --  Operational amplifier Programmable amplifier gain value
      PGA_GAIN       : OPAMP2_CRS_PGA_GAIN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  inverting input selection
      VM_SEL         : OPAMP2_CRS_VM_SEL_Field := 16#0#;
      --  non inverted input selection
      VP_SEL         : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  calibration mode enable
      CALON          : Boolean := False;
      --  calibration selection
      CALSEL         : Boolean := False;
      --  User trimming enable
      USERTRIM       : Boolean := False;
      --  Operational amplifier calibration output
      CALOUT         : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP2_CRS_Register use record
      OPAEN          at 0 range 0 .. 0;
      OPALPM         at 0 range 1 .. 1;
      OPAMODE        at 0 range 2 .. 3;
      PGA_GAIN       at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VM_SEL         at 0 range 8 .. 9;
      VP_SEL         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CALON          at 0 range 12 .. 12;
      CALSEL         at 0 range 13 .. 13;
      USERTRIM       at 0 range 14 .. 14;
      CALOUT         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OPAMP2_OTR_TRIMOFFSETN_Field is Interfaces.Bit_Types.UInt5;
   subtype OPAMP2_OTR_TRIMOFFSETP_Field is Interfaces.Bit_Types.UInt5;

   --  OPAMP2 offset trimming register in normal mode
   type OPAMP2_OTR_Register is record
      --  Trim for NMOS differential pairs
      TRIMOFFSETN    : OPAMP2_OTR_TRIMOFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Trim for PMOS differential pairs
      TRIMOFFSETP    : OPAMP2_OTR_TRIMOFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP2_OTR_Register use record
      TRIMOFFSETN    at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIMOFFSETP    at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OPAMP2_LPOTR_TRIMLPOFFSETN_Field is Interfaces.Bit_Types.UInt5;
   subtype OPAMP2_LPOTR_TRIMLPOFFSETP_Field is Interfaces.Bit_Types.UInt5;

   --  OPAMP2 offset trimming register in low-power mode
   type OPAMP2_LPOTR_Register is record
      --  Trim for NMOS differential pairs
      TRIMLPOFFSETN  : OPAMP2_LPOTR_TRIMLPOFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Trim for PMOS differential pairs
      TRIMLPOFFSETP  : OPAMP2_LPOTR_TRIMLPOFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP2_LPOTR_Register use record
      TRIMLPOFFSETN  at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIMLPOFFSETP  at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Operational amplifiers
   type OPAMP_Peripheral is record
      --  OPAMP1 control/status register
      OPAMP1_CSR   : aliased OPAMP1_CSR_Register;
      --  OPAMP1 offset trimming register in normal mode
      OPAMP1_OTR   : aliased OPAMP1_OTR_Register;
      --  OPAMP1 offset trimming register in low-powe mode
      OPAMP1_LPOTR : aliased OPAMP1_LPOTR_Register;
      --  OPAMP2 control/status register
      OPAMP2_CRS   : aliased OPAMP2_CRS_Register;
      --  OPAMP2 offset trimming register in normal mode
      OPAMP2_OTR   : aliased OPAMP2_OTR_Register;
      --  OPAMP2 offset trimming register in low-power mode
      OPAMP2_LPOTR : aliased OPAMP2_LPOTR_Register;
   end record
     with Volatile;

   for OPAMP_Peripheral use record
      OPAMP1_CSR   at 16#0# range 0 .. 31;
      OPAMP1_OTR   at 16#4# range 0 .. 31;
      OPAMP1_LPOTR at 16#8# range 0 .. 31;
      OPAMP2_CRS   at 16#10# range 0 .. 31;
      OPAMP2_OTR   at 16#14# range 0 .. 31;
      OPAMP2_LPOTR at 16#18# range 0 .. 31;
   end record;

   --  Operational amplifiers
   OPAMP_Periph : aliased OPAMP_Peripheral
     with Import, Address => System'To_Address (16#40007800#);

   --  Operational amplifiers
   SEC_OPAMP_Periph : aliased OPAMP_Peripheral
     with Import, Address => System'To_Address (16#50007800#);

end Interfaces.STM32.OPAMP;
