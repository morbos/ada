--  This spec has been automatically generated from STM32U3C5.svd

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

   --  LPTIM1 interrupt and status register [alternate]
   type LPTIM1_ISR_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      ExTTRIG        : Boolean;
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
      Reserved_10_18 : HAL.UInt9;
      --  Read-only. Compare register 2 update OK
      CMP2OK         : Boolean;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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
      ExTTRIG        : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
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
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Capture 1 over-capture flag
      CC1OF          : Boolean;
      --  Read-only. Capture 2 over-capture flag
      CC2OF          : Boolean;
      --  unspecified
      Reserved_14_23 : HAL.UInt10;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ISR_ALTERNATE1_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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
      ExTTRIGCF      : Boolean := False;
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
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Write-only. Compare register 2 update OK clear flag
      CMP2OKCF       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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
      ExTTRIGCF      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
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
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Write-only. Capture/compare 1 over-capture clear flag
      CC1OCF         : Boolean := False;
      --  Write-only. Capture/compare 2 over-capture clear flag
      CC2OCF         : Boolean := False;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ICR_ALTERNATE1_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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
      ExTTRIGIE      : Boolean := False;
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
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Compare register 2 update OK interrupt enable
      CMP2OKIE       : Boolean := False;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_DIER_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      ExTTRIGIE      at 0 range 2 .. 2;
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
      ExTTRIGIE      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
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
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Capture/compare 1 over-capture interrupt enable
      CC1OIE         : Boolean := False;
      --  Capture/compare 2 over-capture interrupt enable
      CC2OIE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_17_22 : HAL.UInt6 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_DIER_ALTERNATE1_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      ExTTRIGIE      at 0 range 2 .. 2;
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

   subtype LPTIM1_CFGR_CKPOL_Field is HAL.UInt2;
   subtype LPTIM1_CFGR_CKFLT_Field is HAL.UInt2;
   subtype LPTIM1_CFGR_TRGFLT_Field is HAL.UInt2;
   subtype LPTIM1_CFGR_PRESC_Field is HAL.UInt3;
   subtype LPTIM1_CFGR_TRIGSEL_Field is HAL.UInt3;
   subtype LPTIM1_CFGR_TRIGEN_Field is HAL.UInt2;

   --  LPTIM configuration register
   type LPTIM1_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM1_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM1_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM1_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM1_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM1_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
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
      Reserved_25_31 : HAL.UInt7 := 16#0#;
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

   --  LPTIM control register
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
      Reserved_5_31 : HAL.UInt27 := 16#0#;
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

   subtype LPTIM1_CCR1_CCR1_Field is HAL.UInt16;

   --  LPTIM compare register 1
   type LPTIM1_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM1_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_ARR_ARR_Field is HAL.UInt16;

   --  LPTIM autoreload register
   type LPTIM1_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM1_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_CNT_CNT_Field is HAL.UInt16;

   --  LPTIM counter register
   type LPTIM1_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM1_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM1_CFGR2_IN1SEL_Field is HAL.UInt2;
   subtype LPTIM1_CFGR2_IN2SEL_Field is HAL.UInt2;
   subtype LPTIM1_CFGR2_IC1SEL_Field is HAL.UInt2;
   subtype LPTIM1_CFGR2_IC2SEL_Field is HAL.UInt2;

   --  LPTIM configuration register 2
   type LPTIM1_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM1_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM1_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM1_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM1_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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

   subtype LPTIM1_RCR_REP_Field is HAL.UInt8;

   --  LPTIM repetition register
   type LPTIM1_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM1_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM1_CCMR1_CC1P_Field is HAL.UInt2;
   subtype LPTIM1_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype LPTIM1_CCMR1_IC1F_Field is HAL.UInt2;
   subtype LPTIM1_CCMR1_CC2P_Field is HAL.UInt2;
   subtype LPTIM1_CCMR1_IC2PSC_Field is HAL.UInt2;
   subtype LPTIM1_CCMR1_IC2F_Field is HAL.UInt2;

   --  LPTIM capture/compare mode register 1
   type LPTIM1_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM1_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM1_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM1_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM1_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM1_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM1_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
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

   subtype LPTIM1_CCR2_CCR2_Field is HAL.UInt16;

   --  LPTIM compare register 2
   type LPTIM1_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM1_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM1_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM2 interrupt and status register [alternate]
   type LPTIM2_ISR_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      ExTTRIG        : Boolean;
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
      Reserved_10_18 : HAL.UInt9;
      --  Read-only. Compare register 2 update OK
      CMP2OK         : Boolean;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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

   --  LPTIM2 interrupt and status register
   type LPTIM2_ISR_ALTERNATE1_Register is record
      --  Read-only. capture 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      ExTTRIG        : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
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
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Capture 1 over-capture flag
      CC1OF          : Boolean;
      --  Read-only. Capture 2 over-capture flag
      CC2OF          : Boolean;
      --  unspecified
      Reserved_14_23 : HAL.UInt10;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ISR_ALTERNATE1_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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
   type LPTIM2_ICR_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      ExTTRIGCF      : Boolean := False;
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
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Write-only. Compare register 2 update OK clear flag
      CMP2OKCF       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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

   --  LPTIM2 interrupt clear register
   type LPTIM2_ICR_ALTERNATE1_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      ExTTRIGCF      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
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
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Write-only. Capture/compare 1 over-capture clear flag
      CC1OCF         : Boolean := False;
      --  Write-only. Capture/compare 2 over-capture clear flag
      CC2OCF         : Boolean := False;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ICR_ALTERNATE1_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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
   type LPTIM2_DIER_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      ExTTRIGIE      : Boolean := False;
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
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Compare register 2 update OK interrupt enable
      CMP2OKIE       : Boolean := False;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_DIER_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      ExTTRIGIE      at 0 range 2 .. 2;
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

   --  LPTIM2 interrupt enable register
   type LPTIM2_DIER_ALTERNATE1_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      ExTTRIGIE      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
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
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Capture/compare 1 over-capture interrupt enable
      CC1OIE         : Boolean := False;
      --  Capture/compare 2 over-capture interrupt enable
      CC2OIE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_17_22 : HAL.UInt6 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_DIER_ALTERNATE1_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      ExTTRIGIE      at 0 range 2 .. 2;
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

   subtype LPTIM2_CFGR_CKPOL_Field is HAL.UInt2;
   subtype LPTIM2_CFGR_CKFLT_Field is HAL.UInt2;
   subtype LPTIM2_CFGR_TRGFLT_Field is HAL.UInt2;
   subtype LPTIM2_CFGR_PRESC_Field is HAL.UInt3;
   subtype LPTIM2_CFGR_TRIGSEL_Field is HAL.UInt3;
   subtype LPTIM2_CFGR_TRIGEN_Field is HAL.UInt2;

   --  LPTIM configuration register
   type LPTIM2_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM2_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM2_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM2_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM2_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM2_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
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
      Reserved_25_31 : HAL.UInt7 := 16#0#;
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

   --  LPTIM control register
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
      Reserved_5_31 : HAL.UInt27 := 16#0#;
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

   subtype LPTIM2_CCR1_CCR1_Field is HAL.UInt16;

   --  LPTIM compare register 1
   type LPTIM2_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM2_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM2_ARR_ARR_Field is HAL.UInt16;

   --  LPTIM autoreload register
   type LPTIM2_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM2_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM2_CNT_CNT_Field is HAL.UInt16;

   --  LPTIM counter register
   type LPTIM2_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM2_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM2_CFGR2_IN1SEL_Field is HAL.UInt2;
   subtype LPTIM2_CFGR2_IN2SEL_Field is HAL.UInt2;
   subtype LPTIM2_CFGR2_IC1SEL_Field is HAL.UInt2;
   subtype LPTIM2_CFGR2_IC2SEL_Field is HAL.UInt2;

   --  LPTIM configuration register 2
   type LPTIM2_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM2_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM2_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM2_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM2_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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

   subtype LPTIM2_RCR_REP_Field is HAL.UInt8;

   --  LPTIM repetition register
   type LPTIM2_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM2_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM2_CCMR1_CC1P_Field is HAL.UInt2;
   subtype LPTIM2_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype LPTIM2_CCMR1_IC1F_Field is HAL.UInt2;
   subtype LPTIM2_CCMR1_CC2P_Field is HAL.UInt2;
   subtype LPTIM2_CCMR1_IC2PSC_Field is HAL.UInt2;
   subtype LPTIM2_CCMR1_IC2F_Field is HAL.UInt2;

   --  LPTIM capture/compare mode register 1
   type LPTIM2_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM2_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM2_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM2_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM2_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM2_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM2_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
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

   subtype LPTIM2_CCR2_CCR2_Field is HAL.UInt16;

   --  LPTIM compare register 2
   type LPTIM2_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM2_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM2_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LPTIM3 interrupt and status register [alternate]
   type LPTIM3_ISR_Register is record
      --  Read-only. Compare 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      ExTTRIG        : Boolean;
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
      Reserved_10_18 : HAL.UInt9;
      --  Read-only. Compare register 2 update OK
      CMP2OK         : Boolean;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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

   --  LPTIM3 interrupt and status register
   type LPTIM3_ISR_ALTERNATE1_Register is record
      --  Read-only. capture 1 interrupt flag
      CC1IF          : Boolean;
      --  Read-only. Autoreload match
      ARRM           : Boolean;
      --  Read-only. External trigger edge event
      ExTTRIG        : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
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
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Capture 1 over-capture flag
      CC1OF          : Boolean;
      --  Read-only. Capture 2 over-capture flag
      CC2OF          : Boolean;
      --  unspecified
      Reserved_14_23 : HAL.UInt10;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ISR_ALTERNATE1_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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
   type LPTIM3_ICR_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      ExTTRIGCF      : Boolean := False;
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
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Write-only. Compare register 2 update OK clear flag
      CMP2OKCF       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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

   --  LPTIM3 interrupt clear register
   type LPTIM3_ICR_ALTERNATE1_Register is record
      --  Write-only. Capture/compare 1 clear flag
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag
      ExTTRIGCF      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
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
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Write-only. Capture/compare 1 over-capture clear flag
      CC1OCF         : Boolean := False;
      --  Write-only. Capture/compare 2 over-capture clear flag
      CC2OCF         : Boolean := False;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ICR_ALTERNATE1_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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
   type LPTIM3_DIER_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      ExTTRIGIE      : Boolean := False;
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
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Compare register 2 update OK interrupt enable
      CMP2OKIE       : Boolean := False;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_DIER_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      ExTTRIGIE      at 0 range 2 .. 2;
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

   --  LPTIM3 interrupt enable register
   type LPTIM3_DIER_ALTERNATE1_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE         : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      ExTTRIGIE      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
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
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Capture/compare 1 over-capture interrupt enable
      CC1OIE         : Boolean := False;
      --  Capture/compare 2 over-capture interrupt enable
      CC2OIE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_17_22 : HAL.UInt6 := 16#0#;
      --  Update event DMA request enable
      UEDE           : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_DIER_ALTERNATE1_Register use record
      CC1IE          at 0 range 0 .. 0;
      ARRMIE         at 0 range 1 .. 1;
      ExTTRIGIE      at 0 range 2 .. 2;
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

   subtype LPTIM3_CFGR_CKPOL_Field is HAL.UInt2;
   subtype LPTIM3_CFGR_CKFLT_Field is HAL.UInt2;
   subtype LPTIM3_CFGR_TRGFLT_Field is HAL.UInt2;
   subtype LPTIM3_CFGR_PRESC_Field is HAL.UInt3;
   subtype LPTIM3_CFGR_TRIGSEL_Field is HAL.UInt3;
   subtype LPTIM3_CFGR_TRIGEN_Field is HAL.UInt2;

   --  LPTIM configuration register
   type LPTIM3_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM3_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM3_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM3_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM3_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM3_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
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
      Reserved_25_31 : HAL.UInt7 := 16#0#;
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

   --  LPTIM control register
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
      Reserved_5_31 : HAL.UInt27 := 16#0#;
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

   subtype LPTIM3_CCR1_CCR1_Field is HAL.UInt16;

   --  LPTIM compare register 1
   type LPTIM3_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM3_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM3_ARR_ARR_Field is HAL.UInt16;

   --  LPTIM autoreload register
   type LPTIM3_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM3_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM3_CNT_CNT_Field is HAL.UInt16;

   --  LPTIM counter register
   type LPTIM3_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM3_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM3_CFGR2_IN1SEL_Field is HAL.UInt2;
   subtype LPTIM3_CFGR2_IN2SEL_Field is HAL.UInt2;
   subtype LPTIM3_CFGR2_IC1SEL_Field is HAL.UInt2;
   subtype LPTIM3_CFGR2_IC2SEL_Field is HAL.UInt2;

   --  LPTIM configuration register 2
   type LPTIM3_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM3_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM3_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM3_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM3_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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

   subtype LPTIM3_RCR_REP_Field is HAL.UInt8;

   --  LPTIM repetition register
   type LPTIM3_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM3_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM3_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM3_CCMR1_CC1P_Field is HAL.UInt2;
   subtype LPTIM3_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype LPTIM3_CCMR1_IC1F_Field is HAL.UInt2;
   subtype LPTIM3_CCMR1_CC2P_Field is HAL.UInt2;
   subtype LPTIM3_CCMR1_IC2PSC_Field is HAL.UInt2;
   subtype LPTIM3_CCMR1_IC2F_Field is HAL.UInt2;

   --  LPTIM capture/compare mode register 1
   type LPTIM3_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM3_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM3_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM3_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM3_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM3_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM3_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
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

   subtype LPTIM3_CCR2_CCR2_Field is HAL.UInt16;

   --  LPTIM compare register 2
   type LPTIM3_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM3_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
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
      ExTTRIG        : Boolean;
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
      Reserved_9_23  : HAL.UInt15;
      --  Read-only. Interrupt enable register update OK
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      ExTTRIG        at 0 range 2 .. 2;
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
      ExTTRIGCF      : Boolean := False;
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
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      ExTTRIGCF      at 0 range 2 .. 2;
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
      ExTTRIGIE     : Boolean := False;
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
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_DIER_Register use record
      CC1IE         at 0 range 0 .. 0;
      ARRMIE        at 0 range 1 .. 1;
      ExTTRIGIE     at 0 range 2 .. 2;
      CMP1OKIE      at 0 range 3 .. 3;
      ARROKIE       at 0 range 4 .. 4;
      UPIE          at 0 range 5 .. 5;
      DOWNIE        at 0 range 6 .. 6;
      UEIE          at 0 range 7 .. 7;
      REPOKIE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LPTIM4_CFGR_CKPOL_Field is HAL.UInt2;
   subtype LPTIM4_CFGR_CKFLT_Field is HAL.UInt2;
   subtype LPTIM4_CFGR_TRGFLT_Field is HAL.UInt2;
   subtype LPTIM4_CFGR_PRESC_Field is HAL.UInt3;
   subtype LPTIM4_CFGR_TRIGSEL_Field is HAL.UInt3;
   subtype LPTIM4_CFGR_TRIGEN_Field is HAL.UInt2;

   --  LPTIM configuration register
   type LPTIM4_CFGR_Register is record
      --  Clock selector
      CKSEL          : Boolean := False;
      --  Clock Polarity
      CKPOL          : LPTIM4_CFGR_CKPOL_Field := 16#0#;
      --  Configurable digital filter for external clock
      CKFLT          : LPTIM4_CFGR_CKFLT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Configurable digital filter for trigger
      TRGFLT         : LPTIM4_CFGR_TRGFLT_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Clock prescaler
      PRESC          : LPTIM4_CFGR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Trigger selector
      TRIGSEL        : LPTIM4_CFGR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
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
      Reserved_25_31 : HAL.UInt7 := 16#0#;
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

   --  LPTIM control register
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
      Reserved_5_31 : HAL.UInt27 := 16#0#;
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

   subtype LPTIM4_CCR1_CCR1_Field is HAL.UInt16;

   --  LPTIM compare register 1
   type LPTIM4_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : LPTIM4_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM4_ARR_ARR_Field is HAL.UInt16;

   --  LPTIM autoreload register
   type LPTIM4_ARR_Register is record
      --  Auto reload value
      ARR            : LPTIM4_ARR_ARR_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM4_CNT_CNT_Field is HAL.UInt16;

   --  LPTIM counter register
   type LPTIM4_CNT_Register is record
      --  Read-only. Counter value
      CNT            : LPTIM4_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTIM4_CFGR2_IN1SEL_Field is HAL.UInt2;
   subtype LPTIM4_CFGR2_IN2SEL_Field is HAL.UInt2;
   subtype LPTIM4_CFGR2_IC1SEL_Field is HAL.UInt2;
   subtype LPTIM4_CFGR2_IC2SEL_Field is HAL.UInt2;

   --  LPTIM configuration register 2
   type LPTIM4_CFGR2_Register is record
      --  LPTIM input 1 selection
      IN1SEL         : LPTIM4_CFGR2_IN1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  LPTIM input 2 selection
      IN2SEL         : LPTIM4_CFGR2_IN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  LPTIM input capture 1 selection
      IC1SEL         : LPTIM4_CFGR2_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  LPTIM input capture 2 selection
      IC2SEL         : LPTIM4_CFGR2_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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

   subtype LPTIM4_RCR_REP_Field is HAL.UInt8;

   --  LPTIM repetition register
   type LPTIM4_RCR_Register is record
      --  Repetition register value
      REP           : LPTIM4_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPTIM4_CCMR1_CC1P_Field is HAL.UInt2;
   subtype LPTIM4_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype LPTIM4_CCMR1_IC1F_Field is HAL.UInt2;
   subtype LPTIM4_CCMR1_CC2P_Field is HAL.UInt2;
   subtype LPTIM4_CCMR1_IC2PSC_Field is HAL.UInt2;
   subtype LPTIM4_CCMR1_IC2F_Field is HAL.UInt2;

   --  LPTIM capture/compare mode register 1
   type LPTIM4_CCMR1_Register is record
      --  Capture/compare 1 selection
      CC1SEL         : Boolean := False;
      --  Capture/compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity.
      CC1P           : LPTIM4_CCMR1_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : LPTIM4_CCMR1_IC1PSC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Input capture 1 filter
      IC1F           : LPTIM4_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Capture/compare 2 selection
      CC2SEL         : Boolean := False;
      --  Capture/compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity.
      CC2P           : LPTIM4_CCMR1_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : LPTIM4_CCMR1_IC2PSC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Input capture 2 filter
      IC2F           : LPTIM4_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
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

   subtype LPTIM4_CCR2_CCR2_Field is HAL.UInt16;

   --  LPTIM compare register 2
   type LPTIM4_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : LPTIM4_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM4_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LPTIM1_Disc is
     (Default,
      Alternate1);

   --  LPTIM1 Address block
   type LPTIM1_Peripheral
     (Discriminent : LPTIM1_Disc := Default)
   is record
      --  LPTIM configuration register
      LPTIM1_CFGR            : aliased LPTIM1_CFGR_Register;
      --  LPTIM control register
      LPTIM1_CR              : aliased LPTIM1_CR_Register;
      --  LPTIM compare register 1
      LPTIM1_CCR1            : aliased LPTIM1_CCR1_Register;
      --  LPTIM autoreload register
      LPTIM1_ARR             : aliased LPTIM1_ARR_Register;
      --  LPTIM counter register
      LPTIM1_CNT             : aliased LPTIM1_CNT_Register;
      --  LPTIM configuration register 2
      LPTIM1_CFGR2           : aliased LPTIM1_CFGR2_Register;
      --  LPTIM repetition register
      LPTIM1_RCR             : aliased LPTIM1_RCR_Register;
      --  LPTIM capture/compare mode register 1
      LPTIM1_CCMR1           : aliased LPTIM1_CCMR1_Register;
      --  LPTIM compare register 2
      LPTIM1_CCR2            : aliased LPTIM1_CCR2_Register;
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
      LPTIM1_CFGR            at 16#C# range 0 .. 31;
      LPTIM1_CR              at 16#10# range 0 .. 31;
      LPTIM1_CCR1            at 16#14# range 0 .. 31;
      LPTIM1_ARR             at 16#18# range 0 .. 31;
      LPTIM1_CNT             at 16#1C# range 0 .. 31;
      LPTIM1_CFGR2           at 16#24# range 0 .. 31;
      LPTIM1_RCR             at 16#28# range 0 .. 31;
      LPTIM1_CCMR1           at 16#2C# range 0 .. 31;
      LPTIM1_CCR2            at 16#34# range 0 .. 31;
      LPTIM1_ISR             at 16#0# range 0 .. 31;
      LPTIM1_ICR             at 16#4# range 0 .. 31;
      LPTIM1_DIER            at 16#8# range 0 .. 31;
      LPTIM1_ISR_ALTERNATE1  at 16#0# range 0 .. 31;
      LPTIM1_ICR_ALTERNATE1  at 16#4# range 0 .. 31;
      LPTIM1_DIER_ALTERNATE1 at 16#8# range 0 .. 31;
   end record;

   --  LPTIM1 Address block
   LPTIM1_Periph : aliased LPTIM1_Peripheral
     with Import, Address => LPTIM1_Base;

   --  LPTIM1 Address block
   SEC_LPTIM1_Periph : aliased LPTIM1_Peripheral
     with Import, Address => SEC_LPTIM1_Base;

   type LPTIM2_Disc is
     (Default,
      Alternate1);

   --  LPTIM2 Address block
   type LPTIM2_Peripheral
     (Discriminent : LPTIM2_Disc := Default)
   is record
      --  LPTIM configuration register
      LPTIM2_CFGR            : aliased LPTIM2_CFGR_Register;
      --  LPTIM control register
      LPTIM2_CR              : aliased LPTIM2_CR_Register;
      --  LPTIM compare register 1
      LPTIM2_CCR1            : aliased LPTIM2_CCR1_Register;
      --  LPTIM autoreload register
      LPTIM2_ARR             : aliased LPTIM2_ARR_Register;
      --  LPTIM counter register
      LPTIM2_CNT             : aliased LPTIM2_CNT_Register;
      --  LPTIM configuration register 2
      LPTIM2_CFGR2           : aliased LPTIM2_CFGR2_Register;
      --  LPTIM repetition register
      LPTIM2_RCR             : aliased LPTIM2_RCR_Register;
      --  LPTIM capture/compare mode register 1
      LPTIM2_CCMR1           : aliased LPTIM2_CCMR1_Register;
      --  LPTIM compare register 2
      LPTIM2_CCR2            : aliased LPTIM2_CCR2_Register;
      case Discriminent is
         when Default =>
            --  LPTIM2 interrupt and status register [alternate]
            LPTIM2_ISR : aliased LPTIM2_ISR_Register;
            --  LPTIM2 interrupt clear register [alternate]
            LPTIM2_ICR : aliased LPTIM2_ICR_Register;
            --  LPTIM2 interrupt enable register [alternate]
            LPTIM2_DIER : aliased LPTIM2_DIER_Register;
         when Alternate1 =>
            --  LPTIM2 interrupt and status register
            LPTIM2_ISR_ALTERNATE1 : aliased LPTIM2_ISR_ALTERNATE1_Register;
            --  LPTIM2 interrupt clear register
            LPTIM2_ICR_ALTERNATE1 : aliased LPTIM2_ICR_ALTERNATE1_Register;
            --  LPTIM2 interrupt enable register
            LPTIM2_DIER_ALTERNATE1 : aliased LPTIM2_DIER_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPTIM2_Peripheral use record
      LPTIM2_CFGR            at 16#C# range 0 .. 31;
      LPTIM2_CR              at 16#10# range 0 .. 31;
      LPTIM2_CCR1            at 16#14# range 0 .. 31;
      LPTIM2_ARR             at 16#18# range 0 .. 31;
      LPTIM2_CNT             at 16#1C# range 0 .. 31;
      LPTIM2_CFGR2           at 16#24# range 0 .. 31;
      LPTIM2_RCR             at 16#28# range 0 .. 31;
      LPTIM2_CCMR1           at 16#2C# range 0 .. 31;
      LPTIM2_CCR2            at 16#34# range 0 .. 31;
      LPTIM2_ISR             at 16#0# range 0 .. 31;
      LPTIM2_ICR             at 16#4# range 0 .. 31;
      LPTIM2_DIER            at 16#8# range 0 .. 31;
      LPTIM2_ISR_ALTERNATE1  at 16#0# range 0 .. 31;
      LPTIM2_ICR_ALTERNATE1  at 16#4# range 0 .. 31;
      LPTIM2_DIER_ALTERNATE1 at 16#8# range 0 .. 31;
   end record;

   --  LPTIM2 Address block
   LPTIM2_Periph : aliased LPTIM2_Peripheral
     with Import, Address => LPTIM2_Base;

   --  LPTIM2 Address block
   SEC_LPTIM2_Periph : aliased LPTIM2_Peripheral
     with Import, Address => SEC_LPTIM2_Base;

   type LPTIM3_Disc is
     (Default,
      Alternate1);

   --  LPTIM3 Address block
   type LPTIM3_Peripheral
     (Discriminent : LPTIM3_Disc := Default)
   is record
      --  LPTIM configuration register
      LPTIM3_CFGR            : aliased LPTIM3_CFGR_Register;
      --  LPTIM control register
      LPTIM3_CR              : aliased LPTIM3_CR_Register;
      --  LPTIM compare register 1
      LPTIM3_CCR1            : aliased LPTIM3_CCR1_Register;
      --  LPTIM autoreload register
      LPTIM3_ARR             : aliased LPTIM3_ARR_Register;
      --  LPTIM counter register
      LPTIM3_CNT             : aliased LPTIM3_CNT_Register;
      --  LPTIM configuration register 2
      LPTIM3_CFGR2           : aliased LPTIM3_CFGR2_Register;
      --  LPTIM repetition register
      LPTIM3_RCR             : aliased LPTIM3_RCR_Register;
      --  LPTIM capture/compare mode register 1
      LPTIM3_CCMR1           : aliased LPTIM3_CCMR1_Register;
      --  LPTIM compare register 2
      LPTIM3_CCR2            : aliased LPTIM3_CCR2_Register;
      case Discriminent is
         when Default =>
            --  LPTIM3 interrupt and status register [alternate]
            LPTIM3_ISR : aliased LPTIM3_ISR_Register;
            --  LPTIM3 interrupt clear register [alternate]
            LPTIM3_ICR : aliased LPTIM3_ICR_Register;
            --  LPTIM3 interrupt enable register [alternate]
            LPTIM3_DIER : aliased LPTIM3_DIER_Register;
         when Alternate1 =>
            --  LPTIM3 interrupt and status register
            LPTIM3_ISR_ALTERNATE1 : aliased LPTIM3_ISR_ALTERNATE1_Register;
            --  LPTIM3 interrupt clear register
            LPTIM3_ICR_ALTERNATE1 : aliased LPTIM3_ICR_ALTERNATE1_Register;
            --  LPTIM3 interrupt enable register
            LPTIM3_DIER_ALTERNATE1 : aliased LPTIM3_DIER_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPTIM3_Peripheral use record
      LPTIM3_CFGR            at 16#C# range 0 .. 31;
      LPTIM3_CR              at 16#10# range 0 .. 31;
      LPTIM3_CCR1            at 16#14# range 0 .. 31;
      LPTIM3_ARR             at 16#18# range 0 .. 31;
      LPTIM3_CNT             at 16#1C# range 0 .. 31;
      LPTIM3_CFGR2           at 16#24# range 0 .. 31;
      LPTIM3_RCR             at 16#28# range 0 .. 31;
      LPTIM3_CCMR1           at 16#2C# range 0 .. 31;
      LPTIM3_CCR2            at 16#34# range 0 .. 31;
      LPTIM3_ISR             at 16#0# range 0 .. 31;
      LPTIM3_ICR             at 16#4# range 0 .. 31;
      LPTIM3_DIER            at 16#8# range 0 .. 31;
      LPTIM3_ISR_ALTERNATE1  at 16#0# range 0 .. 31;
      LPTIM3_ICR_ALTERNATE1  at 16#4# range 0 .. 31;
      LPTIM3_DIER_ALTERNATE1 at 16#8# range 0 .. 31;
   end record;

   --  LPTIM3 Address block
   LPTIM3_Periph : aliased LPTIM3_Peripheral
     with Import, Address => LPTIM3_Base;

   --  LPTIM3 Address block
   SEC_LPTIM3_Periph : aliased LPTIM3_Peripheral
     with Import, Address => SEC_LPTIM3_Base;

   --  LPTIM4 Address block
   type LPTIM4_Peripheral is record
      --  LPTIM4 interrupt and status register
      LPTIM4_ISR   : aliased LPTIM4_ISR_Register;
      --  LPTIM4 interrupt clear register
      LPTIM4_ICR   : aliased LPTIM4_ICR_Register;
      --  LPTIM4 interrupt enable register
      LPTIM4_DIER  : aliased LPTIM4_DIER_Register;
      --  LPTIM configuration register
      LPTIM4_CFGR  : aliased LPTIM4_CFGR_Register;
      --  LPTIM control register
      LPTIM4_CR    : aliased LPTIM4_CR_Register;
      --  LPTIM compare register 1
      LPTIM4_CCR1  : aliased LPTIM4_CCR1_Register;
      --  LPTIM autoreload register
      LPTIM4_ARR   : aliased LPTIM4_ARR_Register;
      --  LPTIM counter register
      LPTIM4_CNT   : aliased LPTIM4_CNT_Register;
      --  LPTIM configuration register 2
      LPTIM4_CFGR2 : aliased LPTIM4_CFGR2_Register;
      --  LPTIM repetition register
      LPTIM4_RCR   : aliased LPTIM4_RCR_Register;
      --  LPTIM capture/compare mode register 1
      LPTIM4_CCMR1 : aliased LPTIM4_CCMR1_Register;
      --  LPTIM compare register 2
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

   --  LPTIM4 Address block
   LPTIM4_Periph : aliased LPTIM4_Peripheral
     with Import, Address => LPTIM4_Base;

   --  LPTIM4 Address block
   SEC_LPTIM4_Periph : aliased LPTIM4_Peripheral
     with Import, Address => SEC_LPTIM4_Base;

end STM32_SVD.LPTIM;
