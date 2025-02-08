--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.LPTIM1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  LPTIM1 interrupt and status register [alternate]
   type LPTIM1_ISR_Register is record
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

   for LPTIM1_ISR_Register use record
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

   --  LPTIM1 interrupt and status register
   type LPTIM1_ISR_ALTERNATE1_Register is record
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

   for LPTIM1_ISR_ALTERNATE1_Register use record
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
   type LPTIM1_ICR_Register is record
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

   for LPTIM1_ICR_Register use record
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

   --  LPTIM1 interrupt clear register
   type LPTIM1_ICR_ALTERNATE1_Register is record
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

   for LPTIM1_ICR_ALTERNATE1_Register use record
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
   type LPTIM1_DIER_Register is record
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

   for LPTIM1_DIER_Register use record
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

   --  LPTIM1 interrupt enable register
   type LPTIM1_DIER_ALTERNATE1_Register is record
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

   for LPTIM1_DIER_ALTERNATE1_Register use record
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

   subtype LPTIM_CFGR_CKPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CFGR_CKFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CFGR_TRGFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CFGR_PRESC_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM_CFGR_TRIGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype LPTIM_CFGR_TRIGEN_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM configuration register
   type LPTIM_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger enable and polarity
      TRIGEN         : LPTIM_CFGR_TRIGEN_Field := 16#0#;
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

   for LPTIM_CFGR_Register use record
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

   --  LPTIM control register
   type LPTIM_CR_Register is record
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

   for LPTIM_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      COUNTRST      at 0 range 3 .. 3;
      RSTARE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LPTIM_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM compare register 1
   type LPTIM_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM_ARR_ARR_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM autoreload register
   type LPTIM_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM counter register
   type LPTIM_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM1 option register
   type LPTIM1_OR_Register is record
      --  Option register bit 0
      OR_0          : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_OR_Register use record
      OR_0          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LPTIM_CFGR2_IN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CFGR2_IN2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CFGR2_IC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CFGR2_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM configuration register 2
   type LPTIM_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_CFGR2_Register use record
      IN1SEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IN2SEL         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IC1SEL         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IC2SEL         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype LPTIM_RCR_REP_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM repetition register
   type LPTIM_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM_CCMR1_CC1P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CCMR1_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CCMR1_IC1F_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CCMR1_CC2P_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CCMR1_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype LPTIM_CCMR1_IC2F_Field is Interfaces.Bit_Types.UInt2;

   --  LPTIM capture/compare mode register 1
   type LPTIM_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_CCMR1_Register use record
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

   subtype LPTIM_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt16;

   --  LPTIM compare register 2
   type LPTIM_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM_HWCFGR2_CFG1_Field is Interfaces.Bit_Types.UInt4;
   subtype LPTIM_HWCFGR2_CFG2_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM peripheral hardware configuration register 2
   type LPTIM_HWCFGR2_Register is record
      --  Read-only. peripheral hardware configuration 1
      CFG1           : LPTIM_HWCFGR2_CFG1_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. peripheral hardware configuration 2
      CFG2           : LPTIM_HWCFGR2_CFG2_Field;
      --  Read-only. peripheral hardware configuration 3
      CFG3           : Boolean;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_HWCFGR2_Register use record
      CFG1           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CFG2           at 0 range 8 .. 15;
      CFG3           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  LPTIM_HWCFGR1_CFG array element
   subtype LPTIM_HWCFGR1_CFG_Element is Interfaces.Bit_Types.Byte;

   --  LPTIM_HWCFGR1_CFG array
   type LPTIM_HWCFGR1_CFG_Field_Array is array (1 .. 2)
     of LPTIM_HWCFGR1_CFG_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for LPTIM_HWCFGR1_CFG
   type LPTIM_HWCFGR1_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  CFG as an array
            Arr : LPTIM_HWCFGR1_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for LPTIM_HWCFGR1_CFG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype LPTIM_HWCFGR1_CFG3_Field is Interfaces.Bit_Types.UInt4;
   subtype LPTIM_HWCFGR1_CFG4_Field is Interfaces.Bit_Types.Byte;

   --  LPTIM peripheral hardware configuration register 1
   type LPTIM_HWCFGR1_Register is record
      --  Read-only. peripheral hardware configuration 1
      CFG            : LPTIM_HWCFGR1_CFG_Field;
      --  Read-only. peripheral hardware configuration 3
      CFG3           : LPTIM_HWCFGR1_CFG3_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. peripheral hardware configuration 4
      CFG4           : LPTIM_HWCFGR1_CFG4_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_HWCFGR1_Register use record
      CFG            at 0 range 0 .. 15;
      CFG3           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CFG4           at 0 range 24 .. 31;
   end record;

   subtype LPTIM_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype LPTIM_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  LPTIM peripheral version identification register
   type LPTIM_VERR_Register is record
      --  Read-only. Minor revision
      MINREV        : LPTIM_VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : LPTIM_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LPTIM1_Disc is
     (Default,
      Alternate1);

   --  LPTIM1 address block description
   type LPTIM1_Peripheral
     (Discriminent : LPTIM1_Disc := Default)
   is record
      --  LPTIM configuration register
      LPTIM_CFGR             : aliased LPTIM_CFGR_Register;
      --  LPTIM control register
      LPTIM_CR               : aliased LPTIM_CR_Register;
      --  LPTIM compare register 1
      LPTIM_CCR1             : aliased LPTIM_CCR1_Register;
      --  LPTIM autoreload register
      LPTIM_ARR              : aliased LPTIM_ARR_Register;
      --  LPTIM counter register
      LPTIM_CNT              : aliased LPTIM_CNT_Register;
      --  LPTIM1 option register
      LPTIM1_OR              : aliased LPTIM1_OR_Register;
      --  LPTIM configuration register 2
      LPTIM_CFGR2            : aliased LPTIM_CFGR2_Register;
      --  LPTIM repetition register
      LPTIM_RCR              : aliased LPTIM_RCR_Register;
      --  LPTIM capture/compare mode register 1
      LPTIM_CCMR1            : aliased LPTIM_CCMR1_Register;
      --  LPTIM compare register 2
      LPTIM_CCR2             : aliased LPTIM_CCR2_Register;
      --  LPTIM peripheral hardware configuration register 2
      LPTIM_HWCFGR2          : aliased LPTIM_HWCFGR2_Register;
      --  LPTIM peripheral hardware configuration register 1
      LPTIM_HWCFGR1          : aliased LPTIM_HWCFGR1_Register;
      --  LPTIM peripheral version identification register
      LPTIM_VERR             : aliased LPTIM_VERR_Register;
      --  LPTIM peripheral type identification register
      LPTIM_PIDR             : aliased Interfaces.Bit_Types.UInt32;
      --  LPTIM registers map size identification register
      LPTIM_SIDR             : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Default =>
            --  LPTIM1 interrupt and status register [alternate]
            LPTIM1_ISR : aliased LPTIM1_ISR_Register;
            --  LPTIM1 interrupt clear register [alternate]
            LPTIM1_ICR : aliased LPTIM1_ICR_Register;
            --  LPTIM1 interrupt enable register [alternate]
            LPTIM1_DIER : aliased LPTIM1_DIER_Register;
         when Alternate1 =>
            --  LPTIM1 interrupt and status register
            LPTIM1_ISR_ALTERNATE1 : aliased LPTIM1_ISR_ALTERNATE1_Register;
            --  LPTIM1 interrupt clear register
            LPTIM1_ICR_ALTERNATE1 : aliased LPTIM1_ICR_ALTERNATE1_Register;
            --  LPTIM1 interrupt enable register
            LPTIM1_DIER_ALTERNATE1 : aliased LPTIM1_DIER_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPTIM1_Peripheral use record
      LPTIM_CFGR             at 16#C# range 0 .. 31;
      LPTIM_CR               at 16#10# range 0 .. 31;
      LPTIM_CCR1             at 16#14# range 0 .. 31;
      LPTIM_ARR              at 16#18# range 0 .. 31;
      LPTIM_CNT              at 16#1C# range 0 .. 31;
      LPTIM1_OR              at 16#20# range 0 .. 31;
      LPTIM_CFGR2            at 16#24# range 0 .. 31;
      LPTIM_RCR              at 16#28# range 0 .. 31;
      LPTIM_CCMR1            at 16#2C# range 0 .. 31;
      LPTIM_CCR2             at 16#34# range 0 .. 31;
      LPTIM_HWCFGR2          at 16#3EC# range 0 .. 31;
      LPTIM_HWCFGR1          at 16#3F0# range 0 .. 31;
      LPTIM_VERR             at 16#3F4# range 0 .. 31;
      LPTIM_PIDR             at 16#3F8# range 0 .. 31;
      LPTIM_SIDR             at 16#3FC# range 0 .. 31;
      LPTIM1_ISR             at 16#0# range 0 .. 31;
      LPTIM1_ICR             at 16#4# range 0 .. 31;
      LPTIM1_DIER            at 16#8# range 0 .. 31;
      LPTIM1_ISR_ALTERNATE1  at 16#0# range 0 .. 31;
      LPTIM1_ICR_ALTERNATE1  at 16#4# range 0 .. 31;
      LPTIM1_DIER_ALTERNATE1 at 16#8# range 0 .. 31;
   end record;

   --  LPTIM1 address block description
   LPTIM1_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM1_Base;

   --  LPTIM1 address block description
   LPTIM1_S_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM1_S_Base;

   --  LPTIM1 address block description
   LPTIM2_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM2_Base;

   --  LPTIM1 address block description
   LPTIM2_S_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM2_S_Base;

   --  LPTIM1 address block description
   LPTIM3_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM3_Base;

   --  LPTIM1 address block description
   LPTIM3_S_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM3_S_Base;

   --  LPTIM1 address block description
   LPTIM4_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM4_Base;

   --  LPTIM1 address block description
   LPTIM4_S_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM4_S_Base;

end Interfaces.STM32.LPTIM1;
