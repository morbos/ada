--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.LPTIM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  LPTIM1 interrupt and status register [alternate]
   type LPTIM1_ISR_OUTPUT_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  Read-only. Compare register 1 update OK
      CMP1OK         : Boolean;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  Read-only. Compare 2 interrupt flag
      CC2IF          : Boolean;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9;
      --  Read-only. Compare register 2 update OK
      CMP2OK         : Boolean;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ISR_OUTPUT_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      CMP1OK         at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      CC2IF          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OK         at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM1 interrupt and status register [alternate]
   type LPTIM1_ISR_INPUT_Register is record
      --  Read-only. capture 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  Read-only. Capture 2 interrupt flag
      CC2IF          : Boolean;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Capture 1 over-capture flag
      CC1OF          : Boolean;
      --  Read-only. Capture 2 over-capture flag
      CC2OF          : Boolean;
      --  unspecified
      Reserved_14_23 : Interfaces.Bit_Types.UInt10;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ISR_INPUT_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      CC2IF          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OF          at 0 range 12 .. 12;
      CC2OF          at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM1 interrupt clear register [alternate]
   type LPTIM1_ICR_OUTPUT_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  Write-only. Compare register 1 update OK clear flag
      CMP1OKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  Write-only. Capture/compare 2 clear flag
      CC2CF          : Boolean := False;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. Compare register 2 update OK clear flag
      CMP2OKCF       : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ICR_OUTPUT_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      CMP1OKCF       at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      CC2CF          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OKCF       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM1 interrupt clear register [alternate]
   type LPTIM1_ICR_INPUT_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  Write-only. Capture/compare 2 clear flag
      CC2CF          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Capture/compare 1 over-capture clear flag
      CC1OCF         : Boolean := False;
      --  Write-only. Capture/compare 2 over-capture clear flag
      CC2OCF         : Boolean := False;
      --  unspecified
      Reserved_14_23 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ICR_INPUT_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      CC2CF          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OCF         at 0 range 12 .. 12;
      CC2OCF         at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM1 interrupt enable register [alternate]
   type LPTIM1_DIER_OUTPUT_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE      : Boolean := False;
      --  Compare register 1 update OK interrupt enable
      CMP1OKIE       : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE        : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE           : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE         : Boolean := False;
      --  Update event interrupt enable
      UEIE           : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE        : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Compare register 2 update OK interrupt enable
      CMP2OKIE       : Boolean := False;
      --  unspecified
      Reserved_20_22 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_DIER_OUTPUT_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      EXTTRIGIE      at 0 range 2 .. 2;
      CMP1OKIE       at 0 range 3 .. 3;
      ARROKIE        at 0 range 4 .. 4;
      UPIE           at 0 range 5 .. 5;
      DOWNIE         at 0 range 6 .. 6;
      UEIE           at 0 range 7 .. 7;
      REPOKIE        at 0 range 8 .. 8;
      CC2IE          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OKIE       at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      UEDE           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  LPTIM1 interrupt enable register [alternate]
   type LPTIM1_DIER_INPUT_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE        : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE           : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE         : Boolean := False;
      --  Update event interrupt enable
      UEIE           : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE        : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 1 over-capture interrupt enable
      CC1OIE         : Boolean := False;
      --  Capture/compare 2 over-capture interrupt enable
      CC2OIE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_17_22 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_DIER_INPUT_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      EXTTRIGIE      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROKIE        at 0 range 4 .. 4;
      UPIE           at 0 range 5 .. 5;
      DOWNIE         at 0 range 6 .. 6;
      UEIE           at 0 range 7 .. 7;
      REPOKIE        at 0 range 8 .. 8;
      CC2IE          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OIE         at 0 range 12 .. 12;
      CC2OIE         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC1DE          at 0 range 16 .. 16;
      Reserved_17_22 at 0 range 17 .. 22;
      UEDE           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CC2DE          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LPTIM1_CFGR_CKPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CFGR_CKFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CFGR_TRGFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CFGR_PRESC_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM1_CFGR_TRIGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM1_CFGR_TRIGEN_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM1 configuration register
   type LPTIM1_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM1_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM1_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM1_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM1_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM1_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger enable and polarity
      TRIGEN         : LPTIM1_CFGR_TRIGEN_Field := 16#0#;
      --  Timeout enable
      TIMOUT         : Boolean := False;
      --  Waveform shape
      WAVE           : Boolean := False;
      --  Waveform shape polarity
      WAVPOL         : Boolean := False;
      --  Registers update mode
      PRELOAD        : Boolean := False;
      --  counter mode enabled
      COUNTMODE      : Boolean := False;
      --  Encoder mode enable
      ENC            : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CFGR_Register use record
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

   --  LPTIM1 control register
   type LPTIM1_CR_Register is record
      --  LPTIM enable
      ENABLE        : Boolean := False;
      --  LPTIM start in Single mode
      SNGSTRT       : Boolean := False;
      --  Timer start in Continuous mode
      CNTSTRT       : Boolean := False;
      --  Counter reset
      COUNTRST      : Boolean := False;
      --  Reset after read enable
      RSTARE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LPTIM1_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM1 compare register 1
   type LPTIM1_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM1_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_ARR_ARR_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM1 autoreload register
   type LPTIM1_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM1_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM1 counter register
   type LPTIM1_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM1_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_CFGR2_IN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CFGR2_IN2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CFGR2_IC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CFGR2_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM1 configuration register 2
   type LPTIM1_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM1_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM1_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM1_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM1_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CFGR2_Register use record
      IN1SEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IN2SEL         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IC1SEL         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IC2SEL         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype LPTIM1_RCR_REP_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM1 repetition register
   type LPTIM1_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM1_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM1_CCMR1_CC1P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CCMR1_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CCMR1_IC1F_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CCMR1_CC2P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CCMR1_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM1_CCMR1_IC2F_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM1 capture/compare mode register 1
   type LPTIM1_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM1_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM1_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM1_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM1_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM1_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM1_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CCMR1_Register use record
      CC1SEL         at 0 range 0 .. 0;
      CC1E           at 0 range 1 .. 1;
      CC1P           at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IC1PSC         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      IC1F           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC2SEL         at 0 range 16 .. 16;
      CC2E           at 0 range 17 .. 17;
      CC2P           at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IC2PSC         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      IC2F           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPTIM1_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM1 compare register 2
   type LPTIM1_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM1_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM2 interrupt and status register [alternate]
   type LPTIM2_ISR_OUTPUT_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  Read-only. Compare register 1 update OK
      CMP1OK         : Boolean;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  Read-only. Compare 2 interrupt flag
      CC2IF          : Boolean;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9;
      --  Read-only. Compare register 2 update OK
      CMP2OK         : Boolean;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ISR_OUTPUT_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      CMP1OK         at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      CC2IF          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OK         at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM2 interrupt and status register [alternate]
   type LPTIM2_ISR_INPUT_Register is record
      --  Read-only. capture 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  Read-only. Capture 2 interrupt flag
      CC2IF          : Boolean;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Capture 1 over-capture flag
      CC1OF          : Boolean;
      --  Read-only. Capture 2 over-capture flag
      CC2OF          : Boolean;
      --  unspecified
      Reserved_14_23 : Interfaces.Bit_Types.UInt10;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ISR_INPUT_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      CC2IF          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OF          at 0 range 12 .. 12;
      CC2OF          at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM2 interrupt clear register [alternate]
   type LPTIM2_ICR_OUTPUT_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  Write-only. Compare register 1 update OK clear flag
      CMP1OKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  Write-only. Capture/compare 2 clear flag
      CC2CF          : Boolean := False;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. Compare register 2 update OK clear flag
      CMP2OKCF       : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ICR_OUTPUT_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      CMP1OKCF       at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      CC2CF          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OKCF       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM2 interrupt clear register [alternate]
   type LPTIM2_ICR_INPUT_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  Write-only. Capture/compare 2 clear flag
      CC2CF          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Capture/compare 1 over-capture clear flag
      CC1OCF         : Boolean := False;
      --  Write-only. Capture/compare 2 over-capture clear flag
      CC2OCF         : Boolean := False;
      --  unspecified
      Reserved_14_23 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ICR_INPUT_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      CC2CF          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OCF         at 0 range 12 .. 12;
      CC2OCF         at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM2 interrupt enable register [alternate]
   type LPTIM2_DIER_OUTPUT_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE      : Boolean := False;
      --  Compare register 1 update OK interrupt enable
      CMP1OKIE       : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE        : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE           : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE         : Boolean := False;
      --  Update event interrupt enable
      UEIE           : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE        : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Compare register 2 update OK interrupt enable
      CMP2OKIE       : Boolean := False;
      --  unspecified
      Reserved_20_22 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_DIER_OUTPUT_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      EXTTRIGIE      at 0 range 2 .. 2;
      CMP1OKIE       at 0 range 3 .. 3;
      ARROKIE        at 0 range 4 .. 4;
      UPIE           at 0 range 5 .. 5;
      DOWNIE         at 0 range 6 .. 6;
      UEIE           at 0 range 7 .. 7;
      REPOKIE        at 0 range 8 .. 8;
      CC2IE          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OKIE       at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      UEDE           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  LPTIM1 interrupt enable register [alternate]
   type LPTIM2_DIER_INPUT_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE        : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE           : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE         : Boolean := False;
      --  Update event interrupt enable
      UEIE           : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE        : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 1 over-capture interrupt enable
      CC1OIE         : Boolean := False;
      --  Capture/compare 2 over-capture interrupt enable
      CC2OIE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_17_22 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_DIER_INPUT_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      EXTTRIGIE      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROKIE        at 0 range 4 .. 4;
      UPIE           at 0 range 5 .. 5;
      DOWNIE         at 0 range 6 .. 6;
      UEIE           at 0 range 7 .. 7;
      REPOKIE        at 0 range 8 .. 8;
      CC2IE          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OIE         at 0 range 12 .. 12;
      CC2OIE         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC1DE          at 0 range 16 .. 16;
      Reserved_17_22 at 0 range 17 .. 22;
      UEDE           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CC2DE          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LPTIM2_CFGR_CKPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CFGR_CKFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CFGR_TRGFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CFGR_PRESC_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM2_CFGR_TRIGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM2_CFGR_TRIGEN_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM2 configuration register
   type LPTIM2_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM2_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM2_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM2_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM2_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM2_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger enable and polarity
      TRIGEN         : LPTIM2_CFGR_TRIGEN_Field := 16#0#;
      --  Timeout enable
      TIMOUT         : Boolean := False;
      --  Waveform shape
      WAVE           : Boolean := False;
      --  Waveform shape polarity
      WAVPOL         : Boolean := False;
      --  Registers update mode
      PRELOAD        : Boolean := False;
      --  counter mode enabled
      COUNTMODE      : Boolean := False;
      --  Encoder mode enable
      ENC            : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CFGR_Register use record
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

   --  LPTIM2 control register
   type LPTIM2_CR_Register is record
      --  LPTIM enable
      ENABLE        : Boolean := False;
      --  LPTIM start in Single mode
      SNGSTRT       : Boolean := False;
      --  Timer start in Continuous mode
      CNTSTRT       : Boolean := False;
      --  Counter reset
      COUNTRST      : Boolean := False;
      --  Reset after read enable
      RSTARE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LPTIM2_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM2 compare register 1
   type LPTIM2_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM2_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM2_ARR_ARR_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM2 autoreload register
   type LPTIM2_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM2_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM2_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM2 counter register
   type LPTIM2_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM2_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM2_CFGR2_IN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CFGR2_IN2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CFGR2_IC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CFGR2_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM2 configuration register 2
   type LPTIM2_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM2_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM2_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM2_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM2_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CFGR2_Register use record
      IN1SEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IN2SEL         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IC1SEL         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IC2SEL         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype LPTIM2_RCR_REP_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM2 repetition register
   type LPTIM2_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM2_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM2_CCMR1_CC1P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CCMR1_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CCMR1_IC1F_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CCMR1_CC2P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CCMR1_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM2_CCMR1_IC2F_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM2 capture/compare mode register 1
   type LPTIM2_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM2_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM2_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM2_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM2_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM2_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM2_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CCMR1_Register use record
      CC1SEL         at 0 range 0 .. 0;
      CC1E           at 0 range 1 .. 1;
      CC1P           at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IC1PSC         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      IC1F           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC2SEL         at 0 range 16 .. 16;
      CC2E           at 0 range 17 .. 17;
      CC2P           at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IC2PSC         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      IC2F           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPTIM2_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM2 compare register 2
   type LPTIM2_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM2_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM3 interrupt and status register [alternate]
   type LPTIM3_ISR_OUTPUT_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  Read-only. Compare register 1 update OK
      CMP1OK         : Boolean;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  Read-only. Compare 2 interrupt flag
      CC2IF          : Boolean;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9;
      --  Read-only. Compare register 2 update OK
      CMP2OK         : Boolean;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ISR_OUTPUT_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      CMP1OK         at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      CC2IF          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OK         at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM3 interrupt and status register [alternate]
   type LPTIM3_ISR_INPUT_Register is record
      --  Read-only. capture 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  Read-only. Capture 2 interrupt flag
      CC2IF          : Boolean;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Capture 1 over-capture flag
      CC1OF          : Boolean;
      --  Read-only. Capture 2 over-capture flag
      CC2OF          : Boolean;
      --  unspecified
      Reserved_14_23 : Interfaces.Bit_Types.UInt10;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ISR_INPUT_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      CC2IF          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OF          at 0 range 12 .. 12;
      CC2OF          at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM3 interrupt clear register [alternate]
   type LPTIM3_ICR_OUTPUT_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  Write-only. Compare register 1 update OK clear flag
      CMP1OKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  Write-only. Capture/compare 2 clear flag
      CC2CF          : Boolean := False;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. Compare register 2 update OK clear flag
      CMP2OKCF       : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ICR_OUTPUT_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      CMP1OKCF       at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      CC2CF          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OKCF       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM3 interrupt clear register [alternate]
   type LPTIM3_ICR_INPUT_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  Write-only. Capture/compare 2 clear flag
      CC2CF          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Capture/compare 1 over-capture clear flag
      CC1OCF         : Boolean := False;
      --  Write-only. Capture/compare 2 over-capture clear flag
      CC2OCF         : Boolean := False;
      --  unspecified
      Reserved_14_23 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ICR_INPUT_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      CC2CF          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OCF         at 0 range 12 .. 12;
      CC2OCF         at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM3 interrupt enable register [alternate]
   type LPTIM3_DIER_OUTPUT_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE      : Boolean := False;
      --  Compare register 1 update OK interrupt enable
      CMP1OKIE       : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE        : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE           : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE         : Boolean := False;
      --  Update event interrupt enable
      UEIE           : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE        : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_10_18 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Compare register 2 update OK interrupt enable
      CMP2OKIE       : Boolean := False;
      --  unspecified
      Reserved_20_22 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_DIER_OUTPUT_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      EXTTRIGIE      at 0 range 2 .. 2;
      CMP1OKIE       at 0 range 3 .. 3;
      ARROKIE        at 0 range 4 .. 4;
      UPIE           at 0 range 5 .. 5;
      DOWNIE         at 0 range 6 .. 6;
      UEIE           at 0 range 7 .. 7;
      REPOKIE        at 0 range 8 .. 8;
      CC2IE          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      CMP2OKIE       at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      UEDE           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  LPTIM3 interrupt enable register [alternate]
   type LPTIM3_DIER_INPUT_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE        : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE           : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE         : Boolean := False;
      --  Update event interrupt enable
      UEIE           : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE        : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 1 over-capture interrupt enable
      CC1OIE         : Boolean := False;
      --  Capture/compare 2 over-capture interrupt enable
      CC2OIE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_17_22 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_DIER_INPUT_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      EXTTRIGIE      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ARROKIE        at 0 range 4 .. 4;
      UPIE           at 0 range 5 .. 5;
      DOWNIE         at 0 range 6 .. 6;
      UEIE           at 0 range 7 .. 7;
      REPOKIE        at 0 range 8 .. 8;
      CC2IE          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC1OIE         at 0 range 12 .. 12;
      CC2OIE         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC1DE          at 0 range 16 .. 16;
      Reserved_17_22 at 0 range 17 .. 22;
      UEDE           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CC2DE          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LPTIM3_CFGR_CKPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CFGR_CKFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CFGR_TRGFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CFGR_PRESC_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM3_CFGR_TRIGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM3_CFGR_TRIGEN_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM3 configuration register
   type LPTIM3_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM3_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM3_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM3_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM3_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM3_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger enable and polarity
      TRIGEN         : LPTIM3_CFGR_TRIGEN_Field := 16#0#;
      --  Timeout enable
      TIMOUT         : Boolean := False;
      --  Waveform shape
      WAVE           : Boolean := False;
      --  Waveform shape polarity
      WAVPOL         : Boolean := False;
      --  Registers update mode
      PRELOAD        : Boolean := False;
      --  counter mode enabled
      COUNTMODE      : Boolean := False;
      --  Encoder mode enable
      ENC            : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CFGR_Register use record
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

   --  LPTIM3 control register
   type LPTIM3_CR_Register is record
      --  LPTIM enable
      ENABLE        : Boolean := False;
      --  LPTIM start in Single mode
      SNGSTRT       : Boolean := False;
      --  Timer start in Continuous mode
      CNTSTRT       : Boolean := False;
      --  Counter reset
      COUNTRST      : Boolean := False;
      --  Reset after read enable
      RSTARE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LPTIM3_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM3 compare register 1
   type LPTIM3_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM3_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM3_ARR_ARR_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM3 autoreload register
   type LPTIM3_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM3_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM3_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM3 counter register
   type LPTIM3_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM3_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM3_CFGR2_IN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CFGR2_IN2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CFGR2_IC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CFGR2_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM3 configuration register 2
   type LPTIM3_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM3_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM3_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM3_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM3_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CFGR2_Register use record
      IN1SEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IN2SEL         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IC1SEL         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IC2SEL         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype LPTIM3_RCR_REP_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM3 repetition register
   type LPTIM3_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM3_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM3_CCMR1_CC1P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CCMR1_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CCMR1_IC1F_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CCMR1_CC2P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CCMR1_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM3_CCMR1_IC2F_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM3 capture/compare mode register 1
   type LPTIM3_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM3_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM3_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM3_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM3_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM3_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM3_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CCMR1_Register use record
      CC1SEL         at 0 range 0 .. 0;
      CC1E           at 0 range 1 .. 1;
      CC1P           at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IC1PSC         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      IC1F           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC2SEL         at 0 range 16 .. 16;
      CC2E           at 0 range 17 .. 17;
      CC2P           at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IC2PSC         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      IC2F           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPTIM3_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM3 compare register 2
   type LPTIM3_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM3_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM4 interrupt and status register
   type LPTIM4_ISR_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  Read-only. Compare register 1 update OK
      CMP1OK         : Boolean;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      CMP1OK         at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM4 interrupt clear register
   type LPTIM4_ICR_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  Write-only. Compare register 1 update OK clear flag
      CMP1OKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      CMP1OKCF       at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM4 interrupt enable register
   type LPTIM4_DIER_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE        : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE     : Boolean := False;
      --  Compare register 1 update OK interrupt enable
      CMP1OKIE      : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE       : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE          : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE        : Boolean := False;
      --  Update event interrupt enable
      UEIE          : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE       : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_DIER_Register use record
      CC1IE         at 0 range 0 .. 0;
      ARRMIE        at 0 range 1 .. 1;
      EXTTRIGIE     at 0 range 2 .. 2;
      CMP1OKIE      at 0 range 3 .. 3;
      ARROKIE       at 0 range 4 .. 4;
      UPIE          at 0 range 5 .. 5;
      DOWNIE        at 0 range 6 .. 6;
      UEIE          at 0 range 7 .. 7;
      REPOKIE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LPTIM4_CFGR_CKPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CFGR_CKFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CFGR_TRGFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CFGR_PRESC_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM4_CFGR_TRIGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM4_CFGR_TRIGEN_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM4 configuration register
   type LPTIM4_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM4_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM4_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM4_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM4_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM4_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger enable and polarity
      TRIGEN         : LPTIM4_CFGR_TRIGEN_Field := 16#0#;
      --  Timeout enable
      TIMOUT         : Boolean := False;
      --  Waveform shape
      WAVE           : Boolean := False;
      --  Waveform shape polarity
      WAVPOL         : Boolean := False;
      --  Registers update mode
      PRELOAD        : Boolean := False;
      --  counter mode enabled
      COUNTMODE      : Boolean := False;
      --  Encoder mode enable
      ENC            : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CFGR_Register use record
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

   --  LPTIM4 control register
   type LPTIM4_CR_Register is record
      --  LPTIM enable
      ENABLE        : Boolean := False;
      --  LPTIM start in Single mode
      SNGSTRT       : Boolean := False;
      --  Timer start in Continuous mode
      CNTSTRT       : Boolean := False;
      --  Counter reset
      COUNTRST      : Boolean := False;
      --  Reset after read enable
      RSTARE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LPTIM4_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM4 compare register 1
   type LPTIM4_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM4_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM4_ARR_ARR_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM4 autoreload register
   type LPTIM4_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM4_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM4_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM4 counter register
   type LPTIM4_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM4_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM4_CFGR2_IN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CFGR2_IN2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CFGR2_IC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CFGR2_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM4 configuration register 2
   type LPTIM4_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM4_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM4_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM4_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM4_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CFGR2_Register use record
      IN1SEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IN2SEL         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IC1SEL         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IC2SEL         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype LPTIM4_RCR_REP_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM4 repetition register
   type LPTIM4_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM4_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM4_CCMR1_CC1P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CCMR1_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CCMR1_IC1F_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CCMR1_CC2P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CCMR1_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM4_CCMR1_IC2F_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM4 capture/compare mode register 1
   type LPTIM4_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM4_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM4_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM4_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM4_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM4_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM4_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CCMR1_Register use record
      CC1SEL         at 0 range 0 .. 0;
      CC1E           at 0 range 1 .. 1;
      CC1P           at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IC1PSC         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      IC1F           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC2SEL         at 0 range 16 .. 16;
      CC2E           at 0 range 17 .. 17;
      CC2P           at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IC2PSC         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      IC2F           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPTIM4_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM4 compare register 2
   type LPTIM4_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM4_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM5 interrupt and status register
   type LPTIM5_ISR_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      EXTTRIG        : Boolean;
      --  Read-only. Compare register 1 update OK
      CMP1OK         : Boolean;
      --  Read-only. Autoreload register update OK
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up
      UP             : Boolean;
      --  Read-only. Counter direction change up to down
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred
      UE             : Boolean;
      --  Read-only. Repetition register update OK
      REPOK          : Boolean;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      CMP1OK         at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM5 interrupt clear register
   type LPTIM5_ICR_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      EXTTRIGCF      : Boolean := False;
      --  Write-only. Compare register 1 update OK clear flag
      CMP1OKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK clear flag
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag
      REPOKCF        : Boolean := False;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      CMP1OKCF       at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM5 interrupt enable register
   type LPTIM5_DIER_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE        : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE     : Boolean := False;
      --  Compare register 1 update OK interrupt enable
      CMP1OKIE      : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE       : Boolean := False;
      --  Direction change to UP Interrupt Enable
      UPIE          : Boolean := False;
      --  Direction change to down Interrupt Enable
      DOWNIE        : Boolean := False;
      --  Update event interrupt enable
      UEIE          : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE       : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_DIER_Register use record
      CC1IE         at 0 range 0 .. 0;
      ARRMIE        at 0 range 1 .. 1;
      EXTTRIGIE     at 0 range 2 .. 2;
      CMP1OKIE      at 0 range 3 .. 3;
      ARROKIE       at 0 range 4 .. 4;
      UPIE          at 0 range 5 .. 5;
      DOWNIE        at 0 range 6 .. 6;
      UEIE          at 0 range 7 .. 7;
      REPOKIE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LPTIM5_CFGR_CKPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CFGR_CKFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CFGR_TRGFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CFGR_PRESC_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM5_CFGR_TRIGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM5_CFGR_TRIGEN_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM5 configuration register
   type LPTIM5_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM5_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM5_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM5_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM5_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM5_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger enable and polarity
      TRIGEN         : LPTIM5_CFGR_TRIGEN_Field := 16#0#;
      --  Timeout enable
      TIMOUT         : Boolean := False;
      --  Waveform shape
      WAVE           : Boolean := False;
      --  Waveform shape polarity
      WAVPOL         : Boolean := False;
      --  Registers update mode
      PRELOAD        : Boolean := False;
      --  counter mode enabled
      COUNTMODE      : Boolean := False;
      --  Encoder mode enable
      ENC            : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CFGR_Register use record
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

   --  LPTIM5 control register
   type LPTIM5_CR_Register is record
      --  LPTIM enable
      ENABLE        : Boolean := False;
      --  LPTIM start in Single mode
      SNGSTRT       : Boolean := False;
      --  Timer start in Continuous mode
      CNTSTRT       : Boolean := False;
      --  Counter reset
      COUNTRST      : Boolean := False;
      --  Reset after read enable
      RSTARE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LPTIM5_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM5 compare register 1
   type LPTIM5_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM5_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM5_ARR_ARR_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM5 autoreload register
   type LPTIM5_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM5_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM5_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM5 counter register
   type LPTIM5_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM5_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM5_CFGR2_IN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CFGR2_IN2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CFGR2_IC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CFGR2_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM5 configuration register 2
   type LPTIM5_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM5_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM5_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM5_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM5_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CFGR2_Register use record
      IN1SEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IN2SEL         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IC1SEL         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IC2SEL         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype LPTIM5_RCR_REP_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM5 repetition register
   type LPTIM5_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM5_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM5_CCMR1_CC1P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CCMR1_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CCMR1_IC1F_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CCMR1_CC2P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CCMR1_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM5_CCMR1_IC2F_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM5 capture/compare mode register 1
   type LPTIM5_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM5_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM5_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM5_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM5_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM5_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM5_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CCMR1_Register use record
      CC1SEL         at 0 range 0 .. 0;
      CC1E           at 0 range 1 .. 1;
      CC1P           at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IC1PSC         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      IC1F           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC2SEL         at 0 range 16 .. 16;
      CC2E           at 0 range 17 .. 17;
      CC2P           at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IC2PSC         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      IC2F           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPTIM5_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM5 compare register 2
   type LPTIM5_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM5_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LPTIM1_Disc is
     (Output,
      Input);

   --  Low-power timer
   type LPTIM1_Peripheral
     (Discriminent : LPTIM1_Disc := Output)
   is record
      --  LPTIM1 configuration register
      LPTIM1_CFGR        : aliased LPTIM1_CFGR_Register;
      --  LPTIM1 control register
      LPTIM1_CR          : aliased LPTIM1_CR_Register;
      --  LPTIM1 compare register 1
      LPTIM1_CCR1        : aliased LPTIM1_CCR1_Register;
      --  LPTIM1 autoreload register
      LPTIM1_ARR         : aliased LPTIM1_ARR_Register;
      --  LPTIM1 counter register
      LPTIM1_CNT         : aliased LPTIM1_CNT_Register;
      --  LPTIM1 configuration register 2
      LPTIM1_CFGR2       : aliased LPTIM1_CFGR2_Register;
      --  LPTIM1 repetition register
      LPTIM1_RCR         : aliased LPTIM1_RCR_Register;
      --  LPTIM1 capture/compare mode register 1
      LPTIM1_CCMR1       : aliased LPTIM1_CCMR1_Register;
      --  LPTIM1 compare register 2
      LPTIM1_CCR2        : aliased LPTIM1_CCR2_Register;
      case Discriminent is
         when Output =>
            --  LPTIM1 interrupt and status register [alternate]
            LPTIM1_ISR_OUTPUT : aliased LPTIM1_ISR_OUTPUT_Register;
            --  LPTIM1 interrupt clear register [alternate]
            LPTIM1_ICR_OUTPUT : aliased LPTIM1_ICR_OUTPUT_Register;
            --  LPTIM1 interrupt enable register [alternate]
            LPTIM1_DIER_OUTPUT : aliased LPTIM1_DIER_OUTPUT_Register;
         when Input =>
            --  LPTIM1 interrupt and status register [alternate]
            LPTIM1_ISR_INPUT : aliased LPTIM1_ISR_INPUT_Register;
            --  LPTIM1 interrupt clear register [alternate]
            LPTIM1_ICR_INPUT : aliased LPTIM1_ICR_INPUT_Register;
            --  LPTIM1 interrupt enable register [alternate]
            LPTIM1_DIER_INPUT : aliased LPTIM1_DIER_INPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPTIM1_Peripheral use record
      LPTIM1_CFGR        at 16#C# range 0 .. 31;
      LPTIM1_CR          at 16#10# range 0 .. 31;
      LPTIM1_CCR1        at 16#14# range 0 .. 31;
      LPTIM1_ARR         at 16#18# range 0 .. 31;
      LPTIM1_CNT         at 16#1C# range 0 .. 31;
      LPTIM1_CFGR2       at 16#24# range 0 .. 31;
      LPTIM1_RCR         at 16#28# range 0 .. 31;
      LPTIM1_CCMR1       at 16#2C# range 0 .. 31;
      LPTIM1_CCR2        at 16#34# range 0 .. 31;
      LPTIM1_ISR_OUTPUT  at 16#0# range 0 .. 31;
      LPTIM1_ICR_OUTPUT  at 16#4# range 0 .. 31;
      LPTIM1_DIER_OUTPUT at 16#8# range 0 .. 31;
      LPTIM1_ISR_INPUT   at 16#0# range 0 .. 31;
      LPTIM1_ICR_INPUT   at 16#4# range 0 .. 31;
      LPTIM1_DIER_INPUT  at 16#8# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM1_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM1_Base;

   --  Low-power timer
   LPTIM1_S_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM1_S_Base;

   type LPTIM2_Disc is
     (Output,
      Input);

   --  Low-power timer
   type LPTIM2_Peripheral
     (Discriminent : LPTIM2_Disc := Output)
   is record
      --  LPTIM2 configuration register
      LPTIM2_CFGR        : aliased LPTIM2_CFGR_Register;
      --  LPTIM2 control register
      LPTIM2_CR          : aliased LPTIM2_CR_Register;
      --  LPTIM2 compare register 1
      LPTIM2_CCR1        : aliased LPTIM2_CCR1_Register;
      --  LPTIM2 autoreload register
      LPTIM2_ARR         : aliased LPTIM2_ARR_Register;
      --  LPTIM2 counter register
      LPTIM2_CNT         : aliased LPTIM2_CNT_Register;
      --  LPTIM2 configuration register 2
      LPTIM2_CFGR2       : aliased LPTIM2_CFGR2_Register;
      --  LPTIM2 repetition register
      LPTIM2_RCR         : aliased LPTIM2_RCR_Register;
      --  LPTIM2 capture/compare mode register 1
      LPTIM2_CCMR1       : aliased LPTIM2_CCMR1_Register;
      --  LPTIM2 compare register 2
      LPTIM2_CCR2        : aliased LPTIM2_CCR2_Register;
      case Discriminent is
         when Output =>
            --  LPTIM2 interrupt and status register [alternate]
            LPTIM2_ISR_OUTPUT : aliased LPTIM2_ISR_OUTPUT_Register;
            --  LPTIM2 interrupt clear register [alternate]
            LPTIM2_ICR_OUTPUT : aliased LPTIM2_ICR_OUTPUT_Register;
            --  LPTIM2 interrupt enable register [alternate]
            LPTIM2_DIER_OUTPUT : aliased LPTIM2_DIER_OUTPUT_Register;
         when Input =>
            --  LPTIM2 interrupt and status register [alternate]
            LPTIM2_ISR_INPUT : aliased LPTIM2_ISR_INPUT_Register;
            --  LPTIM2 interrupt clear register [alternate]
            LPTIM2_ICR_INPUT : aliased LPTIM2_ICR_INPUT_Register;
            --  LPTIM1 interrupt enable register [alternate]
            LPTIM2_DIER_INPUT : aliased LPTIM2_DIER_INPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPTIM2_Peripheral use record
      LPTIM2_CFGR        at 16#C# range 0 .. 31;
      LPTIM2_CR          at 16#10# range 0 .. 31;
      LPTIM2_CCR1        at 16#14# range 0 .. 31;
      LPTIM2_ARR         at 16#18# range 0 .. 31;
      LPTIM2_CNT         at 16#1C# range 0 .. 31;
      LPTIM2_CFGR2       at 16#24# range 0 .. 31;
      LPTIM2_RCR         at 16#28# range 0 .. 31;
      LPTIM2_CCMR1       at 16#2C# range 0 .. 31;
      LPTIM2_CCR2        at 16#34# range 0 .. 31;
      LPTIM2_ISR_OUTPUT  at 16#0# range 0 .. 31;
      LPTIM2_ICR_OUTPUT  at 16#4# range 0 .. 31;
      LPTIM2_DIER_OUTPUT at 16#8# range 0 .. 31;
      LPTIM2_ISR_INPUT   at 16#0# range 0 .. 31;
      LPTIM2_ICR_INPUT   at 16#4# range 0 .. 31;
      LPTIM2_DIER_INPUT  at 16#8# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM2_Periph : aliased LPTIM2_Peripheral
     with Import, Address => LPTIM2_Base;

   --  Low-power timer
   LPTIM2_S_Periph : aliased LPTIM2_Peripheral
     with Import, Address => LPTIM2_S_Base;

   type LPTIM3_Disc is
     (Output,
      Input);

   --  Low-power timer
   type LPTIM3_Peripheral
     (Discriminent : LPTIM3_Disc := Output)
   is record
      --  LPTIM3 configuration register
      LPTIM3_CFGR        : aliased LPTIM3_CFGR_Register;
      --  LPTIM3 control register
      LPTIM3_CR          : aliased LPTIM3_CR_Register;
      --  LPTIM3 compare register 1
      LPTIM3_CCR1        : aliased LPTIM3_CCR1_Register;
      --  LPTIM3 autoreload register
      LPTIM3_ARR         : aliased LPTIM3_ARR_Register;
      --  LPTIM3 counter register
      LPTIM3_CNT         : aliased LPTIM3_CNT_Register;
      --  LPTIM3 configuration register 2
      LPTIM3_CFGR2       : aliased LPTIM3_CFGR2_Register;
      --  LPTIM3 repetition register
      LPTIM3_RCR         : aliased LPTIM3_RCR_Register;
      --  LPTIM3 capture/compare mode register 1
      LPTIM3_CCMR1       : aliased LPTIM3_CCMR1_Register;
      --  LPTIM3 compare register 2
      LPTIM3_CCR2        : aliased LPTIM3_CCR2_Register;
      case Discriminent is
         when Output =>
            --  LPTIM3 interrupt and status register [alternate]
            LPTIM3_ISR_OUTPUT : aliased LPTIM3_ISR_OUTPUT_Register;
            --  LPTIM3 interrupt clear register [alternate]
            LPTIM3_ICR_OUTPUT : aliased LPTIM3_ICR_OUTPUT_Register;
            --  LPTIM3 interrupt enable register [alternate]
            LPTIM3_DIER_OUTPUT : aliased LPTIM3_DIER_OUTPUT_Register;
         when Input =>
            --  LPTIM3 interrupt and status register [alternate]
            LPTIM3_ISR_INPUT : aliased LPTIM3_ISR_INPUT_Register;
            --  LPTIM3 interrupt clear register [alternate]
            LPTIM3_ICR_INPUT : aliased LPTIM3_ICR_INPUT_Register;
            --  LPTIM3 interrupt enable register [alternate]
            LPTIM3_DIER_INPUT : aliased LPTIM3_DIER_INPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPTIM3_Peripheral use record
      LPTIM3_CFGR        at 16#C# range 0 .. 31;
      LPTIM3_CR          at 16#10# range 0 .. 31;
      LPTIM3_CCR1        at 16#14# range 0 .. 31;
      LPTIM3_ARR         at 16#18# range 0 .. 31;
      LPTIM3_CNT         at 16#1C# range 0 .. 31;
      LPTIM3_CFGR2       at 16#24# range 0 .. 31;
      LPTIM3_RCR         at 16#28# range 0 .. 31;
      LPTIM3_CCMR1       at 16#2C# range 0 .. 31;
      LPTIM3_CCR2        at 16#34# range 0 .. 31;
      LPTIM3_ISR_OUTPUT  at 16#0# range 0 .. 31;
      LPTIM3_ICR_OUTPUT  at 16#4# range 0 .. 31;
      LPTIM3_DIER_OUTPUT at 16#8# range 0 .. 31;
      LPTIM3_ISR_INPUT   at 16#0# range 0 .. 31;
      LPTIM3_ICR_INPUT   at 16#4# range 0 .. 31;
      LPTIM3_DIER_INPUT  at 16#8# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM3_Periph : aliased LPTIM3_Peripheral
     with Import, Address => LPTIM3_Base;

   --  Low-power timer
   LPTIM3_S_Periph : aliased LPTIM3_Peripheral
     with Import, Address => LPTIM3_S_Base;

   --  Low-power timer
   type LPTIM4_Peripheral is record
      --  LPTIM4 interrupt and status register
      LPTIM4_ISR   : aliased LPTIM4_ISR_Register;
      --  LPTIM4 interrupt clear register
      LPTIM4_ICR   : aliased LPTIM4_ICR_Register;
      --  LPTIM4 interrupt enable register
      LPTIM4_DIER  : aliased LPTIM4_DIER_Register;
      --  LPTIM4 configuration register
      LPTIM4_CFGR  : aliased LPTIM4_CFGR_Register;
      --  LPTIM4 control register
      LPTIM4_CR    : aliased LPTIM4_CR_Register;
      --  LPTIM4 compare register 1
      LPTIM4_CCR1  : aliased LPTIM4_CCR1_Register;
      --  LPTIM4 autoreload register
      LPTIM4_ARR   : aliased LPTIM4_ARR_Register;
      --  LPTIM4 counter register
      LPTIM4_CNT   : aliased LPTIM4_CNT_Register;
      --  LPTIM4 configuration register 2
      LPTIM4_CFGR2 : aliased LPTIM4_CFGR2_Register;
      --  LPTIM4 repetition register
      LPTIM4_RCR   : aliased LPTIM4_RCR_Register;
      --  LPTIM4 capture/compare mode register 1
      LPTIM4_CCMR1 : aliased LPTIM4_CCMR1_Register;
      --  LPTIM4 compare register 2
      LPTIM4_CCR2  : aliased LPTIM4_CCR2_Register;
   end record
     with Volatile;

   for LPTIM4_Peripheral use record
      LPTIM4_ISR   at 16#0# range 0 .. 31;
      LPTIM4_ICR   at 16#4# range 0 .. 31;
      LPTIM4_DIER  at 16#8# range 0 .. 31;
      LPTIM4_CFGR  at 16#C# range 0 .. 31;
      LPTIM4_CR    at 16#10# range 0 .. 31;
      LPTIM4_CCR1  at 16#14# range 0 .. 31;
      LPTIM4_ARR   at 16#18# range 0 .. 31;
      LPTIM4_CNT   at 16#1C# range 0 .. 31;
      LPTIM4_CFGR2 at 16#24# range 0 .. 31;
      LPTIM4_RCR   at 16#28# range 0 .. 31;
      LPTIM4_CCMR1 at 16#2C# range 0 .. 31;
      LPTIM4_CCR2  at 16#34# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM4_Periph : aliased LPTIM4_Peripheral
     with Import, Address => LPTIM4_Base;

   --  Low-power timer
   LPTIM4_S_Periph : aliased LPTIM4_Peripheral
     with Import, Address => LPTIM4_S_Base;

   --  Low-power timer
   type LPTIM5_Peripheral is record
      --  LPTIM5 interrupt and status register
      LPTIM5_ISR   : aliased LPTIM5_ISR_Register;
      --  LPTIM5 interrupt clear register
      LPTIM5_ICR   : aliased LPTIM5_ICR_Register;
      --  LPTIM5 interrupt enable register
      LPTIM5_DIER  : aliased LPTIM5_DIER_Register;
      --  LPTIM5 configuration register
      LPTIM5_CFGR  : aliased LPTIM5_CFGR_Register;
      --  LPTIM5 control register
      LPTIM5_CR    : aliased LPTIM5_CR_Register;
      --  LPTIM5 compare register 1
      LPTIM5_CCR1  : aliased LPTIM5_CCR1_Register;
      --  LPTIM5 autoreload register
      LPTIM5_ARR   : aliased LPTIM5_ARR_Register;
      --  LPTIM5 counter register
      LPTIM5_CNT   : aliased LPTIM5_CNT_Register;
      --  LPTIM5 configuration register 2
      LPTIM5_CFGR2 : aliased LPTIM5_CFGR2_Register;
      --  LPTIM5 repetition register
      LPTIM5_RCR   : aliased LPTIM5_RCR_Register;
      --  LPTIM5 capture/compare mode register 1
      LPTIM5_CCMR1 : aliased LPTIM5_CCMR1_Register;
      --  LPTIM5 compare register 2
      LPTIM5_CCR2  : aliased LPTIM5_CCR2_Register;
   end record
     with Volatile;

   for LPTIM5_Peripheral use record
      LPTIM5_ISR   at 16#0# range 0 .. 31;
      LPTIM5_ICR   at 16#4# range 0 .. 31;
      LPTIM5_DIER  at 16#8# range 0 .. 31;
      LPTIM5_CFGR  at 16#C# range 0 .. 31;
      LPTIM5_CR    at 16#10# range 0 .. 31;
      LPTIM5_CCR1  at 16#14# range 0 .. 31;
      LPTIM5_ARR   at 16#18# range 0 .. 31;
      LPTIM5_CNT   at 16#1C# range 0 .. 31;
      LPTIM5_CFGR2 at 16#24# range 0 .. 31;
      LPTIM5_RCR   at 16#28# range 0 .. 31;
      LPTIM5_CCMR1 at 16#2C# range 0 .. 31;
      LPTIM5_CCR2  at 16#34# range 0 .. 31;
   end record;

   --  Low-power timer
   LPTIM5_Periph : aliased LPTIM5_Peripheral
     with Import, Address => LPTIM5_Base;

   --  Low-power timer
   LPTIM5_S_Periph : aliased LPTIM5_Peripheral
     with Import, Address => LPTIM5_S_Base;

end Interfaces.STM32.LPTIM;
