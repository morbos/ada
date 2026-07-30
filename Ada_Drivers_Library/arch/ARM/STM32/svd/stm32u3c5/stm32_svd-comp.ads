--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.COMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype COMP1_CSR_INMSEL_Field is HAL.UInt4;
   subtype COMP1_CSR_INPSEL_Field is HAL.UInt2;
   subtype COMP1_CSR_HYST_Field is HAL.UInt2;
   subtype COMP1_CSR_PWRMODE_Field is HAL.UInt2;
   subtype COMP1_CSR_BLANKSEL_Field is HAL.UInt5;

   --  COMP1 control and status register
   type COMP1_CSR_Register is record
      --  Controlled by software (if not locked), enables COMP1. 0: COMP1
      --  disabled 1: COMP1 enabled
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Controlled by software (if not locked), selects the signal for the
      --  inverting input COMP1_INM (see less than xe3
      --  [COMP_pins_and_internal_signals/IDTBL00-15] [number]/> for the
      --  assignment).
      INMSEL         : COMP1_CSR_INMSEL_Field := 16#0#;
      --  Controlled by software (if not locked), selects the signal for the
      --  noninverting input COMP1_INP (see less than xe6
      --  [COMP_pins_and_internal_signals/IDTBL00-3] [number]/> for the
      --  assignment).
      INPSEL         : COMP1_CSR_INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Controlled by software (if not locked), selects the signal for the
      --  COMP1_INP input of the COMP1. 0: Signal selected with INPSEL[1:0] 1:
      --  COMP2_INP signal of COMP2 (required for window mode, see less than
      --  xe5 [Window_comparator/ID00-180] [number]/>)
      WINMODE        : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Controlled by software (if not locked), selects the COMP1 output. 0:
      --  COMP1_VALUE 1: COMP1_VALUE xOR COMP2_VALUE (required for window mode,
      --  see less than xe5 [Window_comparator/ID00-180] [number]/>)
      WINOUT         : Boolean := False;
      --  Controlled by software (if not locked), selects the COMP1 output
      --  polarity. 0: Noninverted 1: Inverted
      POLARITY       : Boolean := False;
      --  Controlled by software (if not locked), selects the COMP1 hysteresis.
      --  00: None 01: Low hysteresis 10: Medium hysteresis 11: High hysteresis
      HYST           : COMP1_CSR_HYST_Field := 16#0#;
      --  Controlled by software (if not locked), selects the power consumption
      --  and, as a consequence, the speed of the COMP1. 00: High speed 01:
      --  Intermediate speed and power 10: Medium speed and power 11:
      --  Ultra-low-power
      PWRMODE        : COMP1_CSR_PWRMODE_Field := 16#0#;
      --  This field is controlled by software (if not locked) and selects the
      --  blanking source: 00000: None (no blanking) 00001: tim1_oc5 00010:
      --  tim2_oc3 Others: Reserved
      BLANKSEL       : COMP1_CSR_BLANKSEL_Field := 16#0#;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  Read-only. This bit is read-only. It reflects the level of the COMP1
      --  output after the polarity selector and blanking (see less than xe2
      --  [Comparator_output_blanking_function/ID00-187] [number]/>).
      VALUE          : Boolean := False;
      --  This bit is set by software and cleared by reset. It locks the whole
      --  content of COMP1_CSR. 0: COMP1_CSR read/write bits can be written by
      --  software. 1: COMP1_CSR bits can be read but not written by software.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 7;
      INPSEL         at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WINMODE        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      WINOUT         at 0 range 14 .. 14;
      POLARITY       at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 17;
      PWRMODE        at 0 range 18 .. 19;
      BLANKSEL       at 0 range 20 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP2_CSR_INMSEL_Field is HAL.UInt4;
   subtype COMP2_CSR_INPSEL_Field is HAL.UInt2;
   subtype COMP2_CSR_HYST_Field is HAL.UInt2;
   subtype COMP2_CSR_PWRMODE_Field is HAL.UInt2;
   subtype COMP2_CSR_BLANKSEL_Field is HAL.UInt5;

   --  COMP2 control and status register
   type COMP2_CSR_Register is record
      --  Controlled by software (if not locked), enables COMP2. 0: COMP2
      --  disabled 1: COMP2 enabled
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Controlled by software (if not locked), selects the signal for the
      --  inverting input COMP2_INM (see less than xe1
      --  [COMP_pins_and_internal_signals/IDTBL00-55] [number]/> for the
      --  assignment).
      INMSEL         : COMP2_CSR_INMSEL_Field := 16#0#;
      --  Controlled by software (if not locked), selects the signal for the
      --  noninverting input COMP2_INP (see less than xe4
      --  [COMP_pins_and_internal_signals/IDTBL00-43] [number]/> for the
      --  assignment).
      INPSEL         : COMP2_CSR_INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Controlled by software (if not locked), selects the signal for the
      --  COMP2_INP input of the COMP2. 0: Signal selected with INPSEL[1:0] 1:
      --  COMP1_INP signal of COMP1 (required for window mode, see less than
      --  xe5 [Window_comparator/ID00-180] [number]/>)
      WINMODE        : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Controlled by software (if not locked), selects the COMP2 output. 0:
      --  COMP2_VALUE 1: COMP1_VALUE xOR COMP2_VALUE (required for window mode,
      --  see less than xe5 [Window_comparator/ID00-180] [number]/>)
      WINOUT         : Boolean := False;
      --  Controlled by software (if not locked), selects the COMP2 output
      --  polarity. 0: Noninverted 1: Inverted
      POLARITY       : Boolean := False;
      --  Controlled by software (if not locked), selects the COMP2 hysteresis.
      --  00: None 01: Low hysteresis 10: Medium hysteresis 11: High hysteresis
      HYST           : COMP2_CSR_HYST_Field := 16#0#;
      --  Controlled by software (if not locked), selects the power consumption
      --  and, as a consequence, the speed of the COMP2. 00: High speed 01:
      --  Intermediate speed and power 10: Medium speed and power 11:
      --  Ultra-low-power
      PWRMODE        : COMP2_CSR_PWRMODE_Field := 16#0#;
      --  Controlled by software (if not locked) and selects the blanking
      --  source: 00000: None (no blanking) 00001: tim3_oc4 Others: Reserved
      BLANKSEL       : COMP2_CSR_BLANKSEL_Field := 16#0#;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  Read-only. This bit is read-only. It reflects the level of the COMP2
      --  output after the polarity selector and blanking (see less than xe2
      --  [Comparator_output_blanking_function/ID00-187] [number]/>).
      VALUE          : Boolean := False;
      --  This bit is set by software and cleared by reset. It locks the whole
      --  content of COMP2_CSR. 0: COMP2_CSR read/write bits can be written by
      --  software. 1: COMP2_CSR bits can be read but not written by software.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP2_CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 7;
      INPSEL         at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WINMODE        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      WINOUT         at 0 range 14 .. 14;
      POLARITY       at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 17;
      PWRMODE        at 0 range 18 .. 19;
      BLANKSEL       at 0 range 20 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  COMP1 Address block
   type COMP_Peripheral is record
      --  COMP1 control and status register
      COMP1_CSR : aliased COMP1_CSR_Register;
      --  COMP2 control and status register
      COMP2_CSR : aliased COMP2_CSR_Register;
   end record
     with Volatile;

   for COMP_Peripheral use record
      COMP1_CSR at 16#0# range 0 .. 31;
      COMP2_CSR at 16#4# range 0 .. 31;
   end record;

   --  COMP1 Address block
   COMP_Periph : aliased COMP_Peripheral
     with Import, Address => COMP_Base;

   --  COMP1 Address block
   SEC_COMP_Periph : aliased COMP_Peripheral
     with Import, Address => SEC_COMP_Base;

end STM32_SVD.COMP;
