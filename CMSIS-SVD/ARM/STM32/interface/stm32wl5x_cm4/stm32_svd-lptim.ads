--  This spec has been automatically generated from STM32WL5x_CM4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.LPTIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ISR_CMPM_Field is HAL.Bit;
   subtype ISR_ARRM_Field is HAL.Bit;
   subtype ISR_EXTTRIG_Field is HAL.Bit;
   subtype ISR_CMPOK_Field is HAL.Bit;
   subtype ISR_ARROK_Field is HAL.Bit;
   subtype ISR_UP_Field is HAL.Bit;
   subtype ISR_DOWN_Field is HAL.Bit;
   subtype ISR_UE_Field is HAL.Bit;
   subtype ISR_REPOK_Field is HAL.Bit;

   --  interrupt and status register
   type ISR_Register is record
      --  Read-only. Compare match
      CMPM          : ISR_CMPM_Field;
      --  Read-only. Autoreload match
      ARRM          : ISR_ARRM_Field;
      --  Read-only. External trigger edge event
      EXTTRIG       : ISR_EXTTRIG_Field;
      --  Read-only. Compare register update OK
      CMPOK         : ISR_CMPOK_Field;
      --  Read-only. Autoreload register update OK
      ARROK         : ISR_ARROK_Field;
      --  Read-only. Counter direction change down to up
      UP            : ISR_UP_Field;
      --  Read-only. Counter direction change up to down
      DOWN          : ISR_DOWN_Field;
      --  Read-only. LPTIM update event occurred
      UE            : ISR_UE_Field;
      --  Read-only. Repetition register update Ok
      REPOK         : ISR_REPOK_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      CMPM          at 0 range 0 .. 0;
      ARRM          at 0 range 1 .. 1;
      EXTTRIG       at 0 range 2 .. 2;
      CMPOK         at 0 range 3 .. 3;
      ARROK         at 0 range 4 .. 4;
      UP            at 0 range 5 .. 5;
      DOWN          at 0 range 6 .. 6;
      UE            at 0 range 7 .. 7;
      REPOK         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ICR_CMPMCF_Field is HAL.Bit;
   subtype ICR_ARRMCF_Field is HAL.Bit;
   subtype ICR_EXTTRIGCF_Field is HAL.Bit;
   subtype ICR_CMPOKCF_Field is HAL.Bit;
   subtype ICR_ARROKCF_Field is HAL.Bit;
   subtype ICR_UPCF_Field is HAL.Bit;
   subtype ICR_DOWNCF_Field is HAL.Bit;
   subtype ICR_UECF_Field is HAL.Bit;
   subtype ICR_REPOKCF_Field is HAL.Bit;

   --  interrupt clear register
   type ICR_Register is record
      --  Write-only. compare match Clear Flag
      CMPMCF        : ICR_CMPMCF_Field := 16#0#;
      --  Write-only. Autoreload match Clear Flag
      ARRMCF        : ICR_ARRMCF_Field := 16#0#;
      --  Write-only. External trigger valid edge Clear Flag
      EXTTRIGCF     : ICR_EXTTRIGCF_Field := 16#0#;
      --  Write-only. Compare register update OK Clear Flag
      CMPOKCF       : ICR_CMPOKCF_Field := 16#0#;
      --  Write-only. Autoreload register update OK Clear Flag
      ARROKCF       : ICR_ARROKCF_Field := 16#0#;
      --  Write-only. Direction change to UP Clear Flag
      UPCF          : ICR_UPCF_Field := 16#0#;
      --  Write-only. Direction change to down Clear Flag
      DOWNCF        : ICR_DOWNCF_Field := 16#0#;
      --  Write-only. Update event clear flag
      UECF          : ICR_UECF_Field := 16#0#;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF       : ICR_REPOKCF_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      CMPMCF        at 0 range 0 .. 0;
      ARRMCF        at 0 range 1 .. 1;
      EXTTRIGCF     at 0 range 2 .. 2;
      CMPOKCF       at 0 range 3 .. 3;
      ARROKCF       at 0 range 4 .. 4;
      UPCF          at 0 range 5 .. 5;
      DOWNCF        at 0 range 6 .. 6;
      UECF          at 0 range 7 .. 7;
      REPOKCF       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype IER_CMPMIE_Field is HAL.Bit;
   subtype IER_ARRMIE_Field is HAL.Bit;
   subtype IER_EXTTRIGIE_Field is HAL.Bit;
   subtype IER_CMPOKIE_Field is HAL.Bit;
   subtype IER_ARROKIE_Field is HAL.Bit;
   subtype IER_UPIE_Field is HAL.Bit;
   subtype IER_DOWNIE_Field is HAL.Bit;
   subtype IER_UEIE_Field is HAL.Bit;
   subtype IER_REPOKIE_Field is HAL.Bit;

   --  interrupt enable register
   type IER_Register is record
      --  Compare match Interrupt Enable
      CMPMIE        : IER_CMPMIE_Field := 16#0#;
      --  Autoreload match Interrupt Enable
      ARRMIE        : IER_ARRMIE_Field := 16#0#;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE     : IER_EXTTRIGIE_Field := 16#0#;
      --  Compare register update OK Interrupt Enable
      CMPOKIE       : IER_CMPOKIE_Field := 16#0#;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE       : IER_ARROKIE_Field := 16#0#;
      --  Direction change to UP Interrupt Enable
      UPIE          : IER_UPIE_Field := 16#0#;
      --  Direction change to down Interrupt Enable
      DOWNIE        : IER_DOWNIE_Field := 16#0#;
      --  Update event interrupt enable
      UEIE          : IER_UEIE_Field := 16#0#;
      --  Repetition register update OK interrupt Enable
      REPOKIE       : IER_REPOKIE_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      CMPMIE        at 0 range 0 .. 0;
      ARRMIE        at 0 range 1 .. 1;
      EXTTRIGIE     at 0 range 2 .. 2;
      CMPOKIE       at 0 range 3 .. 3;
      ARROKIE       at 0 range 4 .. 4;
      UPIE          at 0 range 5 .. 5;
      DOWNIE        at 0 range 6 .. 6;
      UEIE          at 0 range 7 .. 7;
      REPOKIE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CFGR_CKSEL_Field is HAL.Bit;
   subtype CFGR_CKPOL_Field is HAL.UInt2;
   subtype CFGR_CKFLT_Field is HAL.UInt2;
   subtype CFGR_TRGFLT_Field is HAL.UInt2;
   subtype CFGR_PRESC_Field is HAL.UInt3;
   subtype CFGR_TRIGSEL_Field is HAL.UInt3;
   subtype CFGR_TRIGEN_Field is HAL.UInt2;
   subtype CFGR_TIMOUT_Field is HAL.Bit;
   subtype CFGR_WAVE_Field is HAL.Bit;
   subtype CFGR_WAVPOL_Field is HAL.Bit;
   subtype CFGR_PRELOAD_Field is HAL.Bit;
   subtype CFGR_COUNTMODE_Field is HAL.Bit;
   subtype CFGR_ENC_Field is HAL.Bit;

   --  configuration register
   type CFGR_Register is record
      --  CKSEL
      CKSEL          : CFGR_CKSEL_Field := 16#0#;
      --  CKPOL
      CKPOL          : CFGR_CKPOL_Field := 16#0#;
      --  CKFLT
      CKFLT          : CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  TRGFLT
      TRGFLT         : CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  PRESC
      PRESC          : CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  TRIGSEL
      TRIGSEL        : CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  TRIGEN
      TRIGEN         : CFGR_TRIGEN_Field := 16#0#;
      --  TIMOUT
      TIMOUT         : CFGR_TIMOUT_Field := 16#0#;
      --  WAVE
      WAVE           : CFGR_WAVE_Field := 16#0#;
      --  WAVPOL
      WAVPOL         : CFGR_WAVPOL_Field := 16#0#;
      --  PRELOAD
      PRELOAD        : CFGR_PRELOAD_Field := 16#0#;
      --  COUNTMODE
      COUNTMODE      : CFGR_COUNTMODE_Field := 16#0#;
      --  ENC
      ENC            : CFGR_ENC_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      CKSEL          at 0 range 0 .. 0;
      CKPOL          at 0 range 1 .. 2;
      CKFLT          at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TRGFLT         at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      PRESC          at 0 range 9 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      TRIGSEL        at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TRIGEN         at 0 range 17 .. 18;
      TIMOUT         at 0 range 19 .. 19;
      WAVE           at 0 range 20 .. 20;
      WAVPOL         at 0 range 21 .. 21;
      PRELOAD        at 0 range 22 .. 22;
      COUNTMODE      at 0 range 23 .. 23;
      ENC            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CR_ENABLE_Field is HAL.Bit;
   subtype CR_SNGSTRT_Field is HAL.Bit;
   subtype CR_CNTSTRT_Field is HAL.Bit;
   subtype CR_COUNTRST_Field is HAL.Bit;
   subtype CR_RSTARE_Field is HAL.Bit;

   --  control register
   type CR_Register is record
      --  ENABLE
      ENABLE        : CR_ENABLE_Field := 16#0#;
      --  SNGSTRT
      SNGSTRT       : CR_SNGSTRT_Field := 16#0#;
      --  CNTSTRT
      CNTSTRT       : CR_CNTSTRT_Field := 16#0#;
      --  COUNTRST
      COUNTRST      : CR_COUNTRST_Field := 16#0#;
      --  RSTARE
      RSTARE        : CR_RSTARE_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CMP_CMP_Field is HAL.UInt16;

   --  compare register
   type CMP_Register is record
      --  CMP
      CMP            : CMP_CMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP_Register use record
      CMP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ARR_ARR_Field is HAL.UInt16;

   --  autoreload register
   type ARR_Register is record
      --  Auto reload value
      ARR            : ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  counter register
   type CNT_Register is record
      --  Read-only. Counter value
      CNT            : CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_OR_OR_0_Field is HAL.Bit;
   subtype LPTIM1_OR_OR_1_Field is HAL.Bit;

   --  option register
   type LPTIM1_OR_Register is record
      --  Option register bit 0
      OR_0          : LPTIM1_OR_OR_0_Field := 16#0#;
      --  Option register bit 1
      OR_1          : LPTIM1_OR_OR_1_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_OR_Register use record
      OR_0          at 0 range 0 .. 0;
      OR_1          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RCR_REP_Field is HAL.UInt8;

   --  repetition register
   type RCR_Register is record
      --  Repetition register value
      REP           : RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM2_OR_OR_0_Field is HAL.Bit;
   subtype LPTIM2_OR_OR_1_Field is HAL.Bit;

   --  option register
   type LPTIM2_OR_Register is record
      --  Option register bit 0
      OR_0          : LPTIM2_OR_OR_0_Field := 16#0#;
      --  Option register bit 1
      OR_1          : LPTIM2_OR_OR_1_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_OR_Register use record
      OR_0          at 0 range 0 .. 0;
      OR_1          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LPTIM3_OR_OR_0_Field is HAL.Bit;
   subtype LPTIM3_OR_OR_1_Field is HAL.Bit;

   --  option register
   type LPTIM3_OR_Register is record
      --  Option register bit 0
      OR_0          : LPTIM3_OR_OR_0_Field := 16#0#;
      --  Option register bit 1
      OR_1          : LPTIM3_OR_OR_1_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_OR_Register use record
      OR_0          at 0 range 0 .. 0;
      OR_1          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-power timer
   type LPTIM1_Peripheral is record
      --  interrupt and status register
      ISR       : aliased ISR_Register;
      --  interrupt clear register
      ICR       : aliased ICR_Register;
      --  interrupt enable register
      IER       : aliased IER_Register;
      --  configuration register
      CFGR      : aliased CFGR_Register;
      --  control register
      CR        : aliased CR_Register;
      --  compare register
      CMP       : aliased CMP_Register;
      --  autoreload register
      ARR       : aliased ARR_Register;
      --  counter register
      CNT       : aliased CNT_Register;
      --  option register
      LPTIM1_OR : aliased LPTIM1_OR_Register;
      --  repetition register
      RCR       : aliased RCR_Register;
   end record
     with Volatile;

   for LPTIM1_Peripheral use record
      ISR       at 16#0# range 0 .. 31;
      ICR       at 16#4# range 0 .. 31;
      IER       at 16#8# range 0 .. 31;
      CFGR      at 16#C# range 0 .. 31;
      CR        at 16#10# range 0 .. 31;
      CMP       at 16#14# range 0 .. 31;
      ARR       at 16#18# range 0 .. 31;
      CNT       at 16#1C# range 0 .. 31;
      LPTIM1_OR at 16#20# range 0 .. 31;
      RCR       at 16#28# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM1_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM1_Base;

   --  Low-power timer
   type LPTIM2_Peripheral is record
      --  interrupt and status register
      ISR       : aliased ISR_Register;
      --  interrupt clear register
      ICR       : aliased ICR_Register;
      --  interrupt enable register
      IER       : aliased IER_Register;
      --  configuration register
      CFGR      : aliased CFGR_Register;
      --  control register
      CR        : aliased CR_Register;
      --  compare register
      CMP       : aliased CMP_Register;
      --  autoreload register
      ARR       : aliased ARR_Register;
      --  counter register
      CNT       : aliased CNT_Register;
      --  option register
      LPTIM2_OR : aliased LPTIM2_OR_Register;
      --  repetition register
      RCR       : aliased RCR_Register;
   end record
     with Volatile;

   for LPTIM2_Peripheral use record
      ISR       at 16#0# range 0 .. 31;
      ICR       at 16#4# range 0 .. 31;
      IER       at 16#8# range 0 .. 31;
      CFGR      at 16#C# range 0 .. 31;
      CR        at 16#10# range 0 .. 31;
      CMP       at 16#14# range 0 .. 31;
      ARR       at 16#18# range 0 .. 31;
      CNT       at 16#1C# range 0 .. 31;
      LPTIM2_OR at 16#20# range 0 .. 31;
      RCR       at 16#28# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM2_Periph : aliased LPTIM2_Peripheral
     with Import, Address => LPTIM2_Base;

   --  Low-power timer
   type LPTIM3_Peripheral is record
      --  interrupt and status register
      ISR       : aliased ISR_Register;
      --  interrupt clear register
      ICR       : aliased ICR_Register;
      --  interrupt enable register
      IER       : aliased IER_Register;
      --  configuration register
      CFGR      : aliased CFGR_Register;
      --  control register
      CR        : aliased CR_Register;
      --  compare register
      CMP       : aliased CMP_Register;
      --  autoreload register
      ARR       : aliased ARR_Register;
      --  counter register
      CNT       : aliased CNT_Register;
      --  option register
      LPTIM3_OR : aliased LPTIM3_OR_Register;
      --  repetition register
      RCR       : aliased RCR_Register;
   end record
     with Volatile;

   for LPTIM3_Peripheral use record
      ISR       at 16#0# range 0 .. 31;
      ICR       at 16#4# range 0 .. 31;
      IER       at 16#8# range 0 .. 31;
      CFGR      at 16#C# range 0 .. 31;
      CR        at 16#10# range 0 .. 31;
      CMP       at 16#14# range 0 .. 31;
      ARR       at 16#18# range 0 .. 31;
      CNT       at 16#1C# range 0 .. 31;
      LPTIM3_OR at 16#20# range 0 .. 31;
      RCR       at 16#28# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM3_Periph : aliased LPTIM3_Peripheral
     with Import, Address => LPTIM3_Base;

end STM32_SVD.LPTIM;
