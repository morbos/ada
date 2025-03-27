--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.TIMx is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype TIM1_CR1_CMS_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CR1_CKD_Field is Interfaces.Bit_Types.UInt2;

   --  TIM1 control register 1
   type TIM1_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  Direction
      DIR            : Boolean := False;
      --  Center-aligned mode selection
      CMS            : TIM1_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM1_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM1_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CMS            at 0 range 5 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM1_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM1_CR2_MMS2_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 control register 2
   type TIM1_CR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  MMS[2:0]: Master mode selection
      MMS            : TIM1_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  Output idle state 1 (tim_oc1 output)
      OIS1           : Boolean := False;
      --  Output idle state 1 (tim_oc1n output)
      OIS1N          : Boolean := False;
      --  Output idle state 2 (tim_oc2 output)
      OIS2           : Boolean := False;
      --  Output idle state 2 (tim_oc2n output)
      OIS2N          : Boolean := False;
      --  Output idle state 3 (tim_oc3n output)
      OIS3           : Boolean := False;
      --  Output idle state 3 (tim_oc3n output)
      OIS3N          : Boolean := False;
      --  Output idle state 4 (tim_oc4 output)
      OIS4           : Boolean := False;
      --  Output idle state 4 (tim_oc4n output)
      OIS4N          : Boolean := False;
      --  Output idle state 5 (tim_oc5 output)
      OIS5           : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Output idle state 6 (tim_oc6 output)
      OIS6           : Boolean := False;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Master mode selection 2
      MMS2           : TIM1_CR2_MMS2_Field := 16#0#;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  MMS[3]
      MMS_1          : Boolean := False;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      OIS2N          at 0 range 11 .. 11;
      OIS3           at 0 range 12 .. 12;
      OIS3N          at 0 range 13 .. 13;
      OIS4           at 0 range 14 .. 14;
      OIS4N          at 0 range 15 .. 15;
      OIS5           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      OIS6           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MMS2           at 0 range 20 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      MMS_1          at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM1_SMCR_SMS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM1_SMCR_TS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM1_SMCR_ETF_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_SMCR_ETPS_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_SMCR_TS_1_Field is Interfaces.Bit_Types.UInt2;

   --  TIM1 slave mode control register
   type TIM1_SMCR_Register is record
      --  SMS[2:0]: Slave mode selection
      SMS            : TIM1_SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TS[2:0]: Trigger selection
      TS             : TIM1_SMCR_TS_Field := 16#0#;
      --  Master/slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : TIM1_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : TIM1_SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  External trigger polarity
      ETP            : Boolean := False;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM1_SMCR_TS_1_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SMS preload enable
      SMSPE          : Boolean := False;
      --  SMS preload source
      SMSPS          : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      SMS_1          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS_1           at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SMSPE          at 0 range 24 .. 24;
      SMSPS          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TIM1 DMA/interrupt enable register
   type TIM1_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/compare 3 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/compare 4 interrupt enable
      CC4IE          : Boolean := False;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/compare 3 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/compare 4 DMA request enable
      CC4DE          : Boolean := False;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_19 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Index interrupt enable
      IDXIE          : Boolean := False;
      --  Direction change interrupt enable
      DIRIE          : Boolean := False;
      --  Index error interrupt enable
      IERRIE         : Boolean := False;
      --  Transition error interrupt enable
      TERRIE         : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM1 status register
   type TIM1_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/compare 3 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/compare 4 interrupt flag
      CC4IF          : Boolean := False;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  Break interrupt flag
      BIF            : Boolean := False;
      --  Break 2 interrupt flag
      B2IF           : Boolean := False;
      --  Capture/compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/compare 3 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/compare 4 overcapture flag
      CC4OF          : Boolean := False;
      --  System break interrupt flag
      SBIF           : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Compare 5 interrupt flag
      CC5IF          : Boolean := False;
      --  Compare 6 interrupt flag
      CC6IF          : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Index interrupt flag
      IDXF           : Boolean := False;
      --  Direction change interrupt flag
      DIRF           : Boolean := False;
      --  Index error interrupt flag
      IERRF          : Boolean := False;
      --  Transition error interrupt flag
      TERRF          : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      B2IF           at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      SBIF           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC5IF          at 0 range 16 .. 16;
      CC6IF          at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM1 event generation register
   type TIM1_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation
      CC4G          : Boolean := False;
      --  Write-only. Capture/compare control update generation
      COMG          : Boolean := False;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  Write-only. Break generation
      BG            : Boolean := False;
      --  Write-only. Break 2 generation
      B2G           : Boolean := False;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM1_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      B2G           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype TIM1_CCMR1_Input_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR1_Input_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR1_Input_IC1F_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_CCMR1_Input_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR1_Input_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR1_Input_IC2F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 capture/compare mode register 1 [alternate]
   type TIM1_CCMR1_Input_Register is record
      --  Capture/compare 1 Selection
      CC1S           : TIM1_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM1_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM1_CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM1_CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM1_CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM1_CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM1_CCMR1_Output_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR1_Output_OC1M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM1_CCMR1_Output_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR1_Output_OC2M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM1 capture/compare mode register 1 [alternate]
   type TIM1_CCMR1_Output_Register is record
      --  Capture/compare 1 selection
      CC1S           : TIM1_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM1_CCMR1_Output_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/compare 2 selection
      CC2S           : TIM1_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM1_CCMR1_Output_OC2M_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  OC2M[3]
      OC2M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M           at 0 range 12 .. 14;
      OC2CE          at 0 range 15 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM1_CCMR2_Input_CC3S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR2_Input_IC3PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR2_Input_IC3F_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_CCMR2_Input_CC4S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR2_Input_IC4PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR2_Input_IC4F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 capture/compare mode register 2 [alternate]
   type TIM1_CCMR2_Input_Register is record
      --  Capture/compare 3 selection
      CC3S           : TIM1_CCMR2_Input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM1_CCMR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM1_CCMR2_Input_IC3F_Field := 16#0#;
      --  Capture/compare 4 selection
      CC4S           : TIM1_CCMR2_Input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM1_CCMR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM1_CCMR2_Input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM1_CCMR2_Output_CC3S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR2_Output_OC3M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM1_CCMR2_Output_CC4S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_CCMR2_Output_OC4M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM1 capture/compare mode register 2 [alternate]
   type TIM1_CCMR2_Output_Register is record
      --  Capture/compare 3 selection
      CC3S           : TIM1_CCMR2_Output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM1_CCMR2_Output_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/compare 4 selection
      CC4S           : TIM1_CCMR2_Output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM1_CCMR2_Output_OC4M_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : Boolean := False;
      --  OC3M[3]
      OC3M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  OC4M[3]
      OC4M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR2_Output_Register use record
      CC3S           at 0 range 0 .. 1;
      OC3FE          at 0 range 2 .. 2;
      OC3PE          at 0 range 3 .. 3;
      OC3M           at 0 range 4 .. 6;
      OC3CE          at 0 range 7 .. 7;
      CC4S           at 0 range 8 .. 9;
      OC4FE          at 0 range 10 .. 10;
      OC4PE          at 0 range 11 .. 11;
      OC4M           at 0 range 12 .. 14;
      OC4CE          at 0 range 15 .. 15;
      OC3M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC4M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  TIM1 capture/compare enable register
   type TIM1_CCER_Register is record
      --  Capture/compare 1 output enable
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity
      CC1P           : Boolean := False;
      --  Capture/compare 1 complementary output enable
      CC1NE          : Boolean := False;
      --  Capture/compare 1 complementary output polarity
      CC1NP          : Boolean := False;
      --  Capture/compare 2 output enable
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity
      CC2P           : Boolean := False;
      --  Capture/compare 2 complementary output enable
      CC2NE          : Boolean := False;
      --  Capture/compare 2 complementary output polarity
      CC2NP          : Boolean := False;
      --  Capture/compare 3 output enable
      CC3E           : Boolean := False;
      --  Capture/compare 3 output polarity
      CC3P           : Boolean := False;
      --  Capture/compare 3 complementary output enable
      CC3NE          : Boolean := False;
      --  Capture/compare 3 complementary output polarity
      CC3NP          : Boolean := False;
      --  Capture/compare 4 output enable
      CC4E           : Boolean := False;
      --  Capture/compare 4 output polarity
      CC4P           : Boolean := False;
      --  Capture/compare 4 complementary output enable
      CC4NE          : Boolean := False;
      --  Capture/compare 4 complementary output polarity
      CC4NP          : Boolean := False;
      --  Capture/compare 5 output enable
      CC5E           : Boolean := False;
      --  Capture/compare 5 output polarity
      CC5P           : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 6 output enable
      CC6E           : Boolean := False;
      --  Capture/compare 6 output polarity
      CC6P           : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCER_Register use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      CC1NE          at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      CC2NE          at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      CC3NE          at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      CC4NE          at 0 range 14 .. 14;
      CC4NP          at 0 range 15 .. 15;
      CC5E           at 0 range 16 .. 16;
      CC5P           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CC6E           at 0 range 20 .. 20;
      CC6P           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TIM1_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM1 counter
   type TIM1_CNT_Register is record
      --  Counter value
      CNT            : TIM1_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Read-only. UIF copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM1_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1 auto-reload register
   type TIM1_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM1_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1 capture/compare register 1
   type TIM1_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM1_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1 capture/compare register 2
   type TIM1_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : TIM1_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR3_CCR3_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1 capture/compare register 3
   type TIM1_CCR3_Register is record
      --  Capture/compare value
      CCR3           : TIM1_CCR3_CCR3_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR3_Register use record
      CCR3           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR4_CCR4_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1 capture/compare register 4
   type TIM1_CCR4_Register is record
      --  Capture/compare value
      CCR4           : TIM1_CCR4_CCR4_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR4_Register use record
      CCR4           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_BDTR_DTG_Field is Interfaces.Bit_Types.Byte;
   subtype TIM1_BDTR_LOCK_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_BDTR_BKF_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_BDTR_BK2F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 break and dead-time register
   type TIM1_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM1_BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : TIM1_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for idle mode
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode
      OSSR           : Boolean := False;
      --  Break enable
      BKE            : Boolean := False;
      --  Break polarity
      BKP            : Boolean := False;
      --  Automatic output enable
      AOE            : Boolean := False;
      --  Main output enable
      MOE            : Boolean := False;
      --  Break filter
      BKF            : TIM1_BDTR_BKF_Field := 16#0#;
      --  Break 2 filter
      BK2F           : TIM1_BDTR_BK2F_Field := 16#0#;
      --  Break 2 enable
      BK2E           : Boolean := False;
      --  Break 2 polarity
      BK2P           : Boolean := False;
      --  Break disarm
      BKDSRM         : Boolean := False;
      --  Break2 disarm
      BK2DSRM        : Boolean := False;
      --  Break bidirectional
      BKBID          : Boolean := False;
      --  Break2 bidirectional
      BK2BID         : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      BK2F           at 0 range 20 .. 23;
      BK2E           at 0 range 24 .. 24;
      BK2P           at 0 range 25 .. 25;
      BKDSRM         at 0 range 26 .. 26;
      BK2DSRM        at 0 range 27 .. 27;
      BKBID          at 0 range 28 .. 28;
      BK2BID         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TIM1_CCR5_CCR5_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1_CCR5_GC5C array
   type TIM1_CCR5_GC5C_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for TIM1_CCR5_GC5C
   type TIM1_CCR5_GC5C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GC5C as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  GC5C as an array
            Arr : TIM1_CCR5_GC5C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for TIM1_CCR5_GC5C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TIM1 capture/compare register 5
   type TIM1_CCR5_Register is record
      --  Capture/compare 5 value
      CCR5           : TIM1_CCR5_CCR5_Field := 16#0#;
      --  unspecified
      Reserved_20_28 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Group channel 5 and channel 1
      GC5C           : TIM1_CCR5_GC5C_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR5_Register use record
      CCR5           at 0 range 0 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      GC5C           at 0 range 29 .. 31;
   end record;

   subtype TIM1_CCR6_CCR6_Field is Interfaces.Bit_Types.UInt20;

   --  TIM1 capture/compare register 6
   type TIM1_CCR6_Register is record
      --  Capture/compare 6 value
      CCR6           : TIM1_CCR6_CCR6_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR6_Register use record
      CCR6           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCMR3_OC5M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM1_CCMR3_OC6M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM1 capture/compare mode register 3
   type TIM1_CCMR3_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Output compare 5 fast enable
      OC5FE          : Boolean := False;
      --  Output compare 5 preload enable
      OC5PE          : Boolean := False;
      --  OC5M[2:0]: Output compare 5 mode
      OC5M           : TIM1_CCMR3_OC5M_Field := 16#0#;
      --  Output compare 5 clear enable
      OC5CE          : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Output compare 6 fast enable
      OC6FE          : Boolean := False;
      --  Output compare 6 preload enable
      OC6PE          : Boolean := False;
      --  OC6M[2:0]: Output compare 6 mode
      OC6M           : TIM1_CCMR3_OC6M_Field := 16#0#;
      --  Output compare 6 clear enable
      OC6CE          : Boolean := False;
      --  OC5M[3]
      OC5M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  OC6M[3]
      OC6M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      OC5FE          at 0 range 2 .. 2;
      OC5PE          at 0 range 3 .. 3;
      OC5M           at 0 range 4 .. 6;
      OC5CE          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      OC6FE          at 0 range 10 .. 10;
      OC6PE          at 0 range 11 .. 11;
      OC6M           at 0 range 12 .. 14;
      OC6CE          at 0 range 15 .. 15;
      OC5M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC6M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM1_DTR2_DTGF_Field is Interfaces.Bit_Types.Byte;

   --  TIM1 timer deadtime register 2
   type TIM1_DTR2_Register is record
      --  Dead-time falling edge generator setup
      DTGF           : TIM1_DTR2_DTGF_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Deadtime asymmetric enable
      DTAE           : Boolean := False;
      --  Deadtime preload enable
      DTPE           : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM1_ECR_IDIR_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_ECR_IBLK_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_ECR_IPOS_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM1_ECR_PW_Field is Interfaces.Bit_Types.Byte;
   subtype TIM1_ECR_PWPRSC_Field is Interfaces.Bit_Types.UInt3;

   --  TIM1 timer encoder control register
   type TIM1_ECR_Register is record
      --  Index enable
      IE             : Boolean := False;
      --  Index direction
      IDIR           : TIM1_ECR_IDIR_Field := 16#0#;
      --  Index blanking
      IBLK           : TIM1_ECR_IBLK_Field := 16#0#;
      --  First index
      FIDX           : Boolean := False;
      --  Index positioning
      IPOS           : TIM1_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Pulse width
      PW             : TIM1_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler
      PWPRSC         : TIM1_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_ECR_Register use record
      IE             at 0 range 0 .. 0;
      IDIR           at 0 range 1 .. 2;
      IBLK           at 0 range 3 .. 4;
      FIDX           at 0 range 5 .. 5;
      IPOS           at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PW             at 0 range 16 .. 23;
      PWPRSC         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TIM1_TISEL_TI1SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_TISEL_TI2SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_TISEL_TI3SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM1_TISEL_TI4SEL_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 timer input selection register
   type TIM1_TISEL_Register is record
      --  Selects tim_ti1[15:0] input
      TI1SEL         : TIM1_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Selects tim_ti2[15:0] input
      TI2SEL         : TIM1_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Selects tim_ti3[15:0] input
      TI3SEL         : TIM1_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Selects tim_ti4[15:0] input
      TI4SEL         : TIM1_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM1_AF1_ETRSEL_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 alternate function option register 1
   type TIM1_AF1_Register is record
      --  TIMx_BKIN input enable
      BKINE          : Boolean := True;
      --  tim_brk_cmp1 enable
      BKCMP1E        : Boolean := False;
      --  tim_brk_cmp2 enable
      BKCMP2E        : Boolean := False;
      --  tim_brk_cmp3 enable
      BKCMP3E        : Boolean := False;
      --  tim_brk_cmp4 enable
      BKCMP4E        : Boolean := False;
      --  tim_brk_cmp5 enable
      BKCMP5E        : Boolean := False;
      --  tim_brk_cmp6 enable
      BKCMP6E        : Boolean := False;
      --  tim_brk_cmp7 enable
      BKCMP7E        : Boolean := False;
      --  tim_brk_cmp8 enable
      BKCMP8E        : Boolean := False;
      --  TIMx_BKIN input polarity
      BKINP          : Boolean := False;
      --  tim_brk_cmp1 input polarity
      BKCMP1P        : Boolean := False;
      --  tim_brk_cmp2 input polarity
      BKCMP2P        : Boolean := False;
      --  tim_brk_cmp3 input polarity
      BKCMP3P        : Boolean := False;
      --  tim_brk_cmp4 input polarity
      BKCMP4P        : Boolean := False;
      --  etr_in source selection
      ETRSEL         : TIM1_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      BKCMP3E        at 0 range 3 .. 3;
      BKCMP4E        at 0 range 4 .. 4;
      BKCMP5E        at 0 range 5 .. 5;
      BKCMP6E        at 0 range 6 .. 6;
      BKCMP7E        at 0 range 7 .. 7;
      BKCMP8E        at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      BKCMP3P        at 0 range 12 .. 12;
      BKCMP4P        at 0 range 13 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM1_AF2_OCRSEL_Field is Interfaces.Bit_Types.UInt3;

   --  TIM1 alternate function register 2
   type TIM1_AF2_Register is record
      --  TIMx_BKIN2 input enable
      BK2INE         : Boolean := True;
      --  tim_brk2_cmp1 enable
      BK2CMP1E       : Boolean := False;
      --  tim_brk2_cmp2 enable
      BK2CMP2E       : Boolean := False;
      --  tim_brk2_cmp3 enable
      BK2CMP3E       : Boolean := False;
      --  tim_brk2_cmp4 enable
      BK2CMP4E       : Boolean := False;
      --  tim_brk2_cmp5 enable
      BK2CMP5E       : Boolean := False;
      --  tim_brk2_cmp6 enable
      BK2CMP6E       : Boolean := False;
      --  tim_brk2_cmp7 enable
      BK2CMP7E       : Boolean := False;
      --  tim_brk2_cmp8 enable
      BK2CMP8E       : Boolean := False;
      --  TIMx_BKIN2 input polarity
      BK2INP         : Boolean := False;
      --  tim_brk2_cmp1 input polarity
      BK2CMP1P       : Boolean := False;
      --  tim_brk2_cmp2 input polarity
      BK2CMP2P       : Boolean := False;
      --  tim_brk2_cmp3 input polarity
      BK2CMP3P       : Boolean := False;
      --  tim_brk2_cmp4 input polarity
      BK2CMP4P       : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM1_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_AF2_Register use record
      BK2INE         at 0 range 0 .. 0;
      BK2CMP1E       at 0 range 1 .. 1;
      BK2CMP2E       at 0 range 2 .. 2;
      BK2CMP3E       at 0 range 3 .. 3;
      BK2CMP4E       at 0 range 4 .. 4;
      BK2CMP5E       at 0 range 5 .. 5;
      BK2CMP6E       at 0 range 6 .. 6;
      BK2CMP7E       at 0 range 7 .. 7;
      BK2CMP8E       at 0 range 8 .. 8;
      BK2INP         at 0 range 9 .. 9;
      BK2CMP1P       at 0 range 10 .. 10;
      BK2CMP2P       at 0 range 11 .. 11;
      BK2CMP3P       at 0 range 12 .. 12;
      BK2CMP4P       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM1_DCR_DBA_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM1_DCR_DBL_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM1_DCR_DBSS_Field is Interfaces.Bit_Types.UInt4;

   --  TIM1 DMA control register
   type TIM1_DCR_Register is record
      --  DMA base address
      DBA            : TIM1_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM1_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM1_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  TIM18 control register 1
   type TIM18_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM18_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM18_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;

   --  TIM18 control register 2
   type TIM18_CR2_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM18_CR2_MMS_Field := 16#0#;
      --  unspecified
      Reserved_7_27  : Interfaces.Bit_Types.UInt21 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM18_CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MMS            at 0 range 4 .. 6;
      Reserved_7_27  at 0 range 7 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TIM18 DMA/Interrupt enable register
   type TIM18_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Update DMA request enable
      UDE           : Boolean := False;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM18_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      UDE           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  TIM18 status register
   type TIM18_SR_Register is record
      --  Update interrupt flag
      UIF           : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM18_SR_Register use record
      UIF           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  TIM18 event generation register
   type TIM18_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM18_EGR_Register use record
      UG            at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TIM18_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM18 counter
   type TIM18_CNT_Register is record
      --  Counter value
      CNT            : TIM18_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Read-only. UIF copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM18_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM18_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM18 auto-reload register
   type TIM18_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM18_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM18_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  TIM6 control register 1
   type TIM6_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM6_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;

   --  TIM6 control register 2
   type TIM6_CR2_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM6_CR2_MMS_Field := 16#0#;
      --  unspecified
      Reserved_7_27  : Interfaces.Bit_Types.UInt21 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MMS            at 0 range 4 .. 6;
      Reserved_7_27  at 0 range 7 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TIM6 DMA/Interrupt enable register
   type TIM6_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Update DMA request enable
      UDE           : Boolean := False;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      UDE           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  TIM6 status register
   type TIM6_SR_Register is record
      --  Update interrupt flag
      UIF           : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_SR_Register use record
      UIF           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  TIM6 event generation register
   type TIM6_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_EGR_Register use record
      UG            at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TIM6_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM6 counter
   type TIM6_CNT_Register is record
      --  Counter value
      CNT            : TIM6_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Read-only. UIF copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM6_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM6 auto-reload register
   type TIM6_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM6_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  TIM7 control register 1
   type TIM7_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM7_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM7_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;

   --  TIM7 control register 2
   type TIM7_CR2_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM7_CR2_MMS_Field := 16#0#;
      --  unspecified
      Reserved_7_27  : Interfaces.Bit_Types.UInt21 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM7_CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MMS            at 0 range 4 .. 6;
      Reserved_7_27  at 0 range 7 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TIM7 DMA/Interrupt enable register
   type TIM7_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Update DMA request enable
      UDE           : Boolean := False;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM7_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      UDE           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  TIM7 status register
   type TIM7_SR_Register is record
      --  Update interrupt flag
      UIF           : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM7_SR_Register use record
      UIF           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  TIM7 event generation register
   type TIM7_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM7_EGR_Register use record
      UG            at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TIM7_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM7 counter
   type TIM7_CNT_Register is record
      --  Counter value
      CNT            : TIM7_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Read-only. UIF copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM7_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM7_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM7 auto-reload register
   type TIM7_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM7_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM7_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_CR1_CMS_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CR1_CKD_Field is Interfaces.Bit_Types.UInt2;

   --  TIM8 control register 1
   type TIM8_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  Direction
      DIR            : Boolean := False;
      --  Center-aligned mode selection
      CMS            : TIM8_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM8_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM8_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CMS            at 0 range 5 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM8_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM8_CR2_MMS2_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 control register 2
   type TIM8_CR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  MMS[2:0]: Master mode selection
      MMS            : TIM8_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  Output idle state 1 (tim_oc1 output)
      OIS1           : Boolean := False;
      --  Output idle state 1 (tim_oc1n output)
      OIS1N          : Boolean := False;
      --  Output idle state 2 (tim_oc2 output)
      OIS2           : Boolean := False;
      --  Output idle state 2 (tim_oc2n output)
      OIS2N          : Boolean := False;
      --  Output idle state 3 (tim_oc3n output)
      OIS3           : Boolean := False;
      --  Output idle state 3 (tim_oc3n output)
      OIS3N          : Boolean := False;
      --  Output idle state 4 (tim_oc4 output)
      OIS4           : Boolean := False;
      --  Output idle state 4 (tim_oc4n output)
      OIS4N          : Boolean := False;
      --  Output idle state 5 (tim_oc5 output)
      OIS5           : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Output idle state 6 (tim_oc6 output)
      OIS6           : Boolean := False;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Master mode selection 2
      MMS2           : TIM8_CR2_MMS2_Field := 16#0#;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  MMS[3]
      MMS_1          : Boolean := False;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      OIS2N          at 0 range 11 .. 11;
      OIS3           at 0 range 12 .. 12;
      OIS3N          at 0 range 13 .. 13;
      OIS4           at 0 range 14 .. 14;
      OIS4N          at 0 range 15 .. 15;
      OIS5           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      OIS6           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MMS2           at 0 range 20 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      MMS_1          at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM8_SMCR_SMS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM8_SMCR_TS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM8_SMCR_ETF_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_SMCR_ETPS_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_SMCR_TS_1_Field is Interfaces.Bit_Types.UInt2;

   --  TIM8 slave mode control register
   type TIM8_SMCR_Register is record
      --  SMS[2:0]: Slave mode selection
      SMS            : TIM8_SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TS[2:0]: Trigger selection
      TS             : TIM8_SMCR_TS_Field := 16#0#;
      --  Master/slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : TIM8_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : TIM8_SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  External trigger polarity
      ETP            : Boolean := False;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM8_SMCR_TS_1_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SMS preload enable
      SMSPE          : Boolean := False;
      --  SMS preload source
      SMSPS          : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      SMS_1          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS_1           at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SMSPE          at 0 range 24 .. 24;
      SMSPS          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TIM8 DMA/interrupt enable register
   type TIM8_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/compare 3 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/compare 4 interrupt enable
      CC4IE          : Boolean := False;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/compare 3 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/compare 4 DMA request enable
      CC4DE          : Boolean := False;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_19 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Index interrupt enable
      IDXIE          : Boolean := False;
      --  Direction change interrupt enable
      DIRIE          : Boolean := False;
      --  Index error interrupt enable
      IERRIE         : Boolean := False;
      --  Transition error interrupt enable
      TERRIE         : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM8 status register
   type TIM8_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/compare 3 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/compare 4 interrupt flag
      CC4IF          : Boolean := False;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  Break interrupt flag
      BIF            : Boolean := False;
      --  Break 2 interrupt flag
      B2IF           : Boolean := False;
      --  Capture/compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/compare 3 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/compare 4 overcapture flag
      CC4OF          : Boolean := False;
      --  System break interrupt flag
      SBIF           : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Compare 5 interrupt flag
      CC5IF          : Boolean := False;
      --  Compare 6 interrupt flag
      CC6IF          : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Index interrupt flag
      IDXF           : Boolean := False;
      --  Direction change interrupt flag
      DIRF           : Boolean := False;
      --  Index error interrupt flag
      IERRF          : Boolean := False;
      --  Transition error interrupt flag
      TERRF          : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      B2IF           at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      SBIF           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC5IF          at 0 range 16 .. 16;
      CC6IF          at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM8 event generation register
   type TIM8_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation
      CC4G          : Boolean := False;
      --  Write-only. Capture/compare control update generation
      COMG          : Boolean := False;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  Write-only. Break generation
      BG            : Boolean := False;
      --  Write-only. Break 2 generation
      B2G           : Boolean := False;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM8_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      B2G           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype TIM8_CCMR1_Input_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR1_Input_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR1_Input_IC1F_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_CCMR1_Input_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR1_Input_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR1_Input_IC2F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 capture/compare mode register 1 [alternate]
   type TIM8_CCMR1_Input_Register is record
      --  Capture/compare 1 Selection
      CC1S           : TIM8_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM8_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM8_CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM8_CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM8_CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM8_CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM8_CCMR1_Output_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR1_Output_OC1M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM8_CCMR1_Output_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR1_Output_OC2M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM8 capture/compare mode register 1 [alternate]
   type TIM8_CCMR1_Output_Register is record
      --  Capture/compare 1 selection
      CC1S           : TIM8_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM8_CCMR1_Output_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/compare 2 selection
      CC2S           : TIM8_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM8_CCMR1_Output_OC2M_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  OC2M[3]
      OC2M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M           at 0 range 12 .. 14;
      OC2CE          at 0 range 15 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM8_CCMR2_Input_CC3S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR2_Input_IC3PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR2_Input_IC3F_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_CCMR2_Input_CC4S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR2_Input_IC4PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR2_Input_IC4F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 capture/compare mode register 2 [alternate]
   type TIM8_CCMR2_Input_Register is record
      --  Capture/compare 3 selection
      CC3S           : TIM8_CCMR2_Input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM8_CCMR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM8_CCMR2_Input_IC3F_Field := 16#0#;
      --  Capture/compare 4 selection
      CC4S           : TIM8_CCMR2_Input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM8_CCMR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM8_CCMR2_Input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCMR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM8_CCMR2_Output_CC3S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR2_Output_OC3M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM8_CCMR2_Output_CC4S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_CCMR2_Output_OC4M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM8 capture/compare mode register 2 [alternate]
   type TIM8_CCMR2_Output_Register is record
      --  Capture/compare 3 selection
      CC3S           : TIM8_CCMR2_Output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM8_CCMR2_Output_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/compare 4 selection
      CC4S           : TIM8_CCMR2_Output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM8_CCMR2_Output_OC4M_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : Boolean := False;
      --  OC3M[3]
      OC3M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  OC4M[3]
      OC4M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCMR2_Output_Register use record
      CC3S           at 0 range 0 .. 1;
      OC3FE          at 0 range 2 .. 2;
      OC3PE          at 0 range 3 .. 3;
      OC3M           at 0 range 4 .. 6;
      OC3CE          at 0 range 7 .. 7;
      CC4S           at 0 range 8 .. 9;
      OC4FE          at 0 range 10 .. 10;
      OC4PE          at 0 range 11 .. 11;
      OC4M           at 0 range 12 .. 14;
      OC4CE          at 0 range 15 .. 15;
      OC3M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC4M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  TIM8 capture/compare enable register
   type TIM8_CCER_Register is record
      --  Capture/compare 1 output enable
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity
      CC1P           : Boolean := False;
      --  Capture/compare 1 complementary output enable
      CC1NE          : Boolean := False;
      --  Capture/compare 1 complementary output polarity
      CC1NP          : Boolean := False;
      --  Capture/compare 2 output enable
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity
      CC2P           : Boolean := False;
      --  Capture/compare 2 complementary output enable
      CC2NE          : Boolean := False;
      --  Capture/compare 2 complementary output polarity
      CC2NP          : Boolean := False;
      --  Capture/compare 3 output enable
      CC3E           : Boolean := False;
      --  Capture/compare 3 output polarity
      CC3P           : Boolean := False;
      --  Capture/compare 3 complementary output enable
      CC3NE          : Boolean := False;
      --  Capture/compare 3 complementary output polarity
      CC3NP          : Boolean := False;
      --  Capture/compare 4 output enable
      CC4E           : Boolean := False;
      --  Capture/compare 4 output polarity
      CC4P           : Boolean := False;
      --  Capture/compare 4 complementary output enable
      CC4NE          : Boolean := False;
      --  Capture/compare 4 complementary output polarity
      CC4NP          : Boolean := False;
      --  Capture/compare 5 output enable
      CC5E           : Boolean := False;
      --  Capture/compare 5 output polarity
      CC5P           : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/compare 6 output enable
      CC6E           : Boolean := False;
      --  Capture/compare 6 output polarity
      CC6P           : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCER_Register use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      CC1NE          at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      CC2NE          at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      CC3NE          at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      CC4NE          at 0 range 14 .. 14;
      CC4NP          at 0 range 15 .. 15;
      CC5E           at 0 range 16 .. 16;
      CC5P           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CC6E           at 0 range 20 .. 20;
      CC6P           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TIM8_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM8 counter
   type TIM8_CNT_Register is record
      --  Counter value
      CNT            : TIM8_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Read-only. UIF copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM8_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8 auto-reload register
   type TIM8_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM8_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8 capture/compare register 1
   type TIM8_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM8_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8 capture/compare register 2
   type TIM8_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : TIM8_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_CCR3_CCR3_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8 capture/compare register 3
   type TIM8_CCR3_Register is record
      --  Capture/compare value
      CCR3           : TIM8_CCR3_CCR3_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCR3_Register use record
      CCR3           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_CCR4_CCR4_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8 capture/compare register 4
   type TIM8_CCR4_Register is record
      --  Capture/compare value
      CCR4           : TIM8_CCR4_CCR4_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCR4_Register use record
      CCR4           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_BDTR_DTG_Field is Interfaces.Bit_Types.Byte;
   subtype TIM8_BDTR_LOCK_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_BDTR_BKF_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_BDTR_BK2F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 break and dead-time register
   type TIM8_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM8_BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : TIM8_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for idle mode
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode
      OSSR           : Boolean := False;
      --  Break enable
      BKE            : Boolean := False;
      --  Break polarity
      BKP            : Boolean := False;
      --  Automatic output enable
      AOE            : Boolean := False;
      --  Main output enable
      MOE            : Boolean := False;
      --  Break filter
      BKF            : TIM8_BDTR_BKF_Field := 16#0#;
      --  Break 2 filter
      BK2F           : TIM8_BDTR_BK2F_Field := 16#0#;
      --  Break 2 enable
      BK2E           : Boolean := False;
      --  Break 2 polarity
      BK2P           : Boolean := False;
      --  Break disarm
      BKDSRM         : Boolean := False;
      --  Break2 disarm
      BK2DSRM        : Boolean := False;
      --  Break bidirectional
      BKBID          : Boolean := False;
      --  Break2 bidirectional
      BK2BID         : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      BK2F           at 0 range 20 .. 23;
      BK2E           at 0 range 24 .. 24;
      BK2P           at 0 range 25 .. 25;
      BKDSRM         at 0 range 26 .. 26;
      BK2DSRM        at 0 range 27 .. 27;
      BKBID          at 0 range 28 .. 28;
      BK2BID         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TIM8_CCR5_CCR5_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8_CCR5_GC5C array
   type TIM8_CCR5_GC5C_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for TIM8_CCR5_GC5C
   type TIM8_CCR5_GC5C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GC5C as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  GC5C as an array
            Arr : TIM8_CCR5_GC5C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for TIM8_CCR5_GC5C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TIM8 capture/compare register 5
   type TIM8_CCR5_Register is record
      --  Capture/compare 5 value
      CCR5           : TIM8_CCR5_CCR5_Field := 16#0#;
      --  unspecified
      Reserved_20_28 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Group channel 5 and channel 1
      GC5C           : TIM8_CCR5_GC5C_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCR5_Register use record
      CCR5           at 0 range 0 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      GC5C           at 0 range 29 .. 31;
   end record;

   subtype TIM8_CCR6_CCR6_Field is Interfaces.Bit_Types.UInt20;

   --  TIM8 capture/compare register 6
   type TIM8_CCR6_Register is record
      --  Capture/compare 6 value
      CCR6           : TIM8_CCR6_CCR6_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCR6_Register use record
      CCR6           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM8_CCMR3_OC5M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM8_CCMR3_OC6M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM8 capture/compare mode register 3
   type TIM8_CCMR3_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Output compare 5 fast enable
      OC5FE          : Boolean := False;
      --  Output compare 5 preload enable
      OC5PE          : Boolean := False;
      --  OC5M[2:0]: Output compare 5 mode
      OC5M           : TIM8_CCMR3_OC5M_Field := 16#0#;
      --  Output compare 5 clear enable
      OC5CE          : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Output compare 6 fast enable
      OC6FE          : Boolean := False;
      --  Output compare 6 preload enable
      OC6PE          : Boolean := False;
      --  OC6M[2:0]: Output compare 6 mode
      OC6M           : TIM8_CCMR3_OC6M_Field := 16#0#;
      --  Output compare 6 clear enable
      OC6CE          : Boolean := False;
      --  OC5M[3]
      OC5M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  OC6M[3]
      OC6M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_CCMR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      OC5FE          at 0 range 2 .. 2;
      OC5PE          at 0 range 3 .. 3;
      OC5M           at 0 range 4 .. 6;
      OC5CE          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      OC6FE          at 0 range 10 .. 10;
      OC6PE          at 0 range 11 .. 11;
      OC6M           at 0 range 12 .. 14;
      OC6CE          at 0 range 15 .. 15;
      OC5M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC6M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM8_DTR2_DTGF_Field is Interfaces.Bit_Types.Byte;

   --  TIM8 timer deadtime register 2
   type TIM8_DTR2_Register is record
      --  Dead-time falling edge generator setup
      DTGF           : TIM8_DTR2_DTGF_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Deadtime asymmetric enable
      DTAE           : Boolean := False;
      --  Deadtime preload enable
      DTPE           : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM8_ECR_IDIR_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_ECR_IBLK_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_ECR_IPOS_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM8_ECR_PW_Field is Interfaces.Bit_Types.Byte;
   subtype TIM8_ECR_PWPRSC_Field is Interfaces.Bit_Types.UInt3;

   --  TIM8 timer encoder control register
   type TIM8_ECR_Register is record
      --  Index enable
      IE             : Boolean := False;
      --  Index direction
      IDIR           : TIM8_ECR_IDIR_Field := 16#0#;
      --  Index blanking
      IBLK           : TIM8_ECR_IBLK_Field := 16#0#;
      --  First index
      FIDX           : Boolean := False;
      --  Index positioning
      IPOS           : TIM8_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Pulse width
      PW             : TIM8_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler
      PWPRSC         : TIM8_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_ECR_Register use record
      IE             at 0 range 0 .. 0;
      IDIR           at 0 range 1 .. 2;
      IBLK           at 0 range 3 .. 4;
      FIDX           at 0 range 5 .. 5;
      IPOS           at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PW             at 0 range 16 .. 23;
      PWPRSC         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TIM8_TISEL_TI1SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_TISEL_TI2SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_TISEL_TI3SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM8_TISEL_TI4SEL_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 timer input selection register
   type TIM8_TISEL_Register is record
      --  Selects tim_ti1[15:0] input
      TI1SEL         : TIM8_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Selects tim_ti2[15:0] input
      TI2SEL         : TIM8_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Selects tim_ti3[15:0] input
      TI3SEL         : TIM8_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Selects tim_ti4[15:0] input
      TI4SEL         : TIM8_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM8_AF1_ETRSEL_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 alternate function option register 1
   type TIM8_AF1_Register is record
      --  TIMx_BKIN input enable
      BKINE          : Boolean := True;
      --  tim_brk_cmp1 enable
      BKCMP1E        : Boolean := False;
      --  tim_brk_cmp2 enable
      BKCMP2E        : Boolean := False;
      --  tim_brk_cmp3 enable
      BKCMP3E        : Boolean := False;
      --  tim_brk_cmp4 enable
      BKCMP4E        : Boolean := False;
      --  tim_brk_cmp5 enable
      BKCMP5E        : Boolean := False;
      --  tim_brk_cmp6 enable
      BKCMP6E        : Boolean := False;
      --  tim_brk_cmp7 enable
      BKCMP7E        : Boolean := False;
      --  tim_brk_cmp8 enable
      BKCMP8E        : Boolean := False;
      --  TIMx_BKIN input polarity
      BKINP          : Boolean := False;
      --  tim_brk_cmp1 input polarity
      BKCMP1P        : Boolean := False;
      --  tim_brk_cmp2 input polarity
      BKCMP2P        : Boolean := False;
      --  tim_brk_cmp3 input polarity
      BKCMP3P        : Boolean := False;
      --  tim_brk_cmp4 input polarity
      BKCMP4P        : Boolean := False;
      --  etr_in source selection
      ETRSEL         : TIM8_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      BKCMP3E        at 0 range 3 .. 3;
      BKCMP4E        at 0 range 4 .. 4;
      BKCMP5E        at 0 range 5 .. 5;
      BKCMP6E        at 0 range 6 .. 6;
      BKCMP7E        at 0 range 7 .. 7;
      BKCMP8E        at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      BKCMP3P        at 0 range 12 .. 12;
      BKCMP4P        at 0 range 13 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM8_AF2_OCRSEL_Field is Interfaces.Bit_Types.UInt3;

   --  TIM8 alternate function register 2
   type TIM8_AF2_Register is record
      --  TIMx_BKIN2 input enable
      BK2INE         : Boolean := True;
      --  tim_brk2_cmp1 enable
      BK2CMP1E       : Boolean := False;
      --  tim_brk2_cmp2 enable
      BK2CMP2E       : Boolean := False;
      --  tim_brk2_cmp3 enable
      BK2CMP3E       : Boolean := False;
      --  tim_brk2_cmp4 enable
      BK2CMP4E       : Boolean := False;
      --  tim_brk2_cmp5 enable
      BK2CMP5E       : Boolean := False;
      --  tim_brk2_cmp6 enable
      BK2CMP6E       : Boolean := False;
      --  tim_brk2_cmp7 enable
      BK2CMP7E       : Boolean := False;
      --  tim_brk2_cmp8 enable
      BK2CMP8E       : Boolean := False;
      --  TIMx_BKIN2 input polarity
      BK2INP         : Boolean := False;
      --  tim_brk2_cmp1 input polarity
      BK2CMP1P       : Boolean := False;
      --  tim_brk2_cmp2 input polarity
      BK2CMP2P       : Boolean := False;
      --  tim_brk2_cmp3 input polarity
      BK2CMP3P       : Boolean := False;
      --  tim_brk2_cmp4 input polarity
      BK2CMP4P       : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM8_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_AF2_Register use record
      BK2INE         at 0 range 0 .. 0;
      BK2CMP1E       at 0 range 1 .. 1;
      BK2CMP2E       at 0 range 2 .. 2;
      BK2CMP3E       at 0 range 3 .. 3;
      BK2CMP4E       at 0 range 4 .. 4;
      BK2CMP5E       at 0 range 5 .. 5;
      BK2CMP6E       at 0 range 6 .. 6;
      BK2CMP7E       at 0 range 7 .. 7;
      BK2CMP8E       at 0 range 8 .. 8;
      BK2INP         at 0 range 9 .. 9;
      BK2CMP1P       at 0 range 10 .. 10;
      BK2CMP2P       at 0 range 11 .. 11;
      BK2CMP3P       at 0 range 12 .. 12;
      BK2CMP4P       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM8_DCR_DBA_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM8_DCR_DBL_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM8_DCR_DBSS_Field is Interfaces.Bit_Types.UInt4;

   --  TIM8 DMA control register
   type TIM8_DCR_Register is record
      --  DMA base address
      DBA            : TIM8_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM8_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM8_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM8_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM1_Disc is
     (Input,
      Output);

   --  Advanced-control timers
   type TIM1_Peripheral
     (Discriminent : TIM1_Disc := Input)
   is record
      --  TIM1 control register 1
      TIM1_CR1          : aliased TIM1_CR1_Register;
      --  TIM1 control register 2
      TIM1_CR2          : aliased TIM1_CR2_Register;
      --  TIM1 slave mode control register
      TIM1_SMCR         : aliased TIM1_SMCR_Register;
      --  TIM1 DMA/interrupt enable register
      TIM1_DIER         : aliased TIM1_DIER_Register;
      --  TIM1 status register
      TIM1_SR           : aliased TIM1_SR_Register;
      --  TIM1 event generation register
      TIM1_EGR          : aliased TIM1_EGR_Register;
      --  TIM1 capture/compare enable register
      TIM1_CCER         : aliased TIM1_CCER_Register;
      --  TIM1 counter
      TIM1_CNT          : aliased TIM1_CNT_Register;
      --  TIM1 prescaler
      TIM1_PSC          : aliased Interfaces.Bit_Types.UInt16;
      --  TIM1 auto-reload register
      TIM1_ARR          : aliased TIM1_ARR_Register;
      --  TIM1 repetition counter register
      TIM1_RCR          : aliased Interfaces.Bit_Types.UInt16;
      --  TIM1 capture/compare register 1
      TIM1_CCR1         : aliased TIM1_CCR1_Register;
      --  TIM1 capture/compare register 2
      TIM1_CCR2         : aliased TIM1_CCR2_Register;
      --  TIM1 capture/compare register 3
      TIM1_CCR3         : aliased TIM1_CCR3_Register;
      --  TIM1 capture/compare register 4
      TIM1_CCR4         : aliased TIM1_CCR4_Register;
      --  TIM1 break and dead-time register
      TIM1_BDTR         : aliased TIM1_BDTR_Register;
      --  TIM1 capture/compare register 5
      TIM1_CCR5         : aliased TIM1_CCR5_Register;
      --  TIM1 capture/compare register 6
      TIM1_CCR6         : aliased TIM1_CCR6_Register;
      --  TIM1 capture/compare mode register 3
      TIM1_CCMR3        : aliased TIM1_CCMR3_Register;
      --  TIM1 timer deadtime register 2
      TIM1_DTR2         : aliased TIM1_DTR2_Register;
      --  TIM1 timer encoder control register
      TIM1_ECR          : aliased TIM1_ECR_Register;
      --  TIM1 timer input selection register
      TIM1_TISEL        : aliased TIM1_TISEL_Register;
      --  TIM1 alternate function option register 1
      TIM1_AF1          : aliased TIM1_AF1_Register;
      --  TIM1 alternate function register 2
      TIM1_AF2          : aliased TIM1_AF2_Register;
      --  TIM1 DMA control register
      TIM1_DCR          : aliased TIM1_DCR_Register;
      --  TIM1 DMA address for full transfer
      TIM1_DMAR         : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Input =>
            --  TIM1 capture/compare mode register 1 [alternate]
            TIM1_CCMR1_Input : aliased TIM1_CCMR1_Input_Register;
            --  TIM1 capture/compare mode register 2 [alternate]
            TIM1_CCMR2_Input : aliased TIM1_CCMR2_Input_Register;
         when Output =>
            --  TIM1 capture/compare mode register 1 [alternate]
            TIM1_CCMR1_Output : aliased TIM1_CCMR1_Output_Register;
            --  TIM1 capture/compare mode register 2 [alternate]
            TIM1_CCMR2_Output : aliased TIM1_CCMR2_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM1_Peripheral use record
      TIM1_CR1          at 16#0# range 0 .. 15;
      TIM1_CR2          at 16#4# range 0 .. 31;
      TIM1_SMCR         at 16#8# range 0 .. 31;
      TIM1_DIER         at 16#C# range 0 .. 31;
      TIM1_SR           at 16#10# range 0 .. 31;
      TIM1_EGR          at 16#14# range 0 .. 15;
      TIM1_CCER         at 16#20# range 0 .. 31;
      TIM1_CNT          at 16#24# range 0 .. 31;
      TIM1_PSC          at 16#28# range 0 .. 15;
      TIM1_ARR          at 16#2C# range 0 .. 31;
      TIM1_RCR          at 16#30# range 0 .. 15;
      TIM1_CCR1         at 16#34# range 0 .. 31;
      TIM1_CCR2         at 16#38# range 0 .. 31;
      TIM1_CCR3         at 16#3C# range 0 .. 31;
      TIM1_CCR4         at 16#40# range 0 .. 31;
      TIM1_BDTR         at 16#44# range 0 .. 31;
      TIM1_CCR5         at 16#48# range 0 .. 31;
      TIM1_CCR6         at 16#4C# range 0 .. 31;
      TIM1_CCMR3        at 16#50# range 0 .. 31;
      TIM1_DTR2         at 16#54# range 0 .. 31;
      TIM1_ECR          at 16#58# range 0 .. 31;
      TIM1_TISEL        at 16#5C# range 0 .. 31;
      TIM1_AF1          at 16#60# range 0 .. 31;
      TIM1_AF2          at 16#64# range 0 .. 31;
      TIM1_DCR          at 16#3DC# range 0 .. 31;
      TIM1_DMAR         at 16#3E0# range 0 .. 31;
      TIM1_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM1_CCMR2_Input  at 16#1C# range 0 .. 31;
      TIM1_CCMR1_Output at 16#18# range 0 .. 31;
      TIM1_CCMR2_Output at 16#1C# range 0 .. 31;
   end record;

   --  Advanced-control timers
   TIM1_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_Base;

   --  Advanced-control timers
   TIM1_S_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_S_Base;

   --  Basic timers
   type TIM18_S_Peripheral is record
      --  TIM18 control register 1
      TIM18_CR1  : aliased TIM18_CR1_Register;
      --  TIM18 control register 2
      TIM18_CR2  : aliased TIM18_CR2_Register;
      --  TIM18 DMA/Interrupt enable register
      TIM18_DIER : aliased TIM18_DIER_Register;
      --  TIM18 status register
      TIM18_SR   : aliased TIM18_SR_Register;
      --  TIM18 event generation register
      TIM18_EGR  : aliased TIM18_EGR_Register;
      --  TIM18 counter
      TIM18_CNT  : aliased TIM18_CNT_Register;
      --  TIM18 prescaler
      TIM18_PSC  : aliased Interfaces.Bit_Types.UInt16;
      --  TIM18 auto-reload register
      TIM18_ARR  : aliased TIM18_ARR_Register;
   end record
     with Volatile;

   for TIM18_S_Peripheral use record
      TIM18_CR1  at 16#0# range 0 .. 15;
      TIM18_CR2  at 16#4# range 0 .. 31;
      TIM18_DIER at 16#C# range 0 .. 15;
      TIM18_SR   at 16#10# range 0 .. 15;
      TIM18_EGR  at 16#14# range 0 .. 15;
      TIM18_CNT  at 16#24# range 0 .. 31;
      TIM18_PSC  at 16#28# range 0 .. 15;
      TIM18_ARR  at 16#2C# range 0 .. 31;
   end record;

   --  Basic timers
   TIM18_S_Periph : aliased TIM18_S_Peripheral
     with Import, Address => TIM18_S_Base;

   --  Basic timers
   TIM18_Periph : aliased TIM18_S_Peripheral
     with Import, Address => TIM18_Base;

   --  Basic timers
   type TIM6_Peripheral is record
      --  TIM6 control register 1
      TIM6_CR1  : aliased TIM6_CR1_Register;
      --  TIM6 control register 2
      TIM6_CR2  : aliased TIM6_CR2_Register;
      --  TIM6 DMA/Interrupt enable register
      TIM6_DIER : aliased TIM6_DIER_Register;
      --  TIM6 status register
      TIM6_SR   : aliased TIM6_SR_Register;
      --  TIM6 event generation register
      TIM6_EGR  : aliased TIM6_EGR_Register;
      --  TIM6 counter
      TIM6_CNT  : aliased TIM6_CNT_Register;
      --  TIM6 prescaler
      TIM6_PSC  : aliased Interfaces.Bit_Types.UInt16;
      --  TIM6 auto-reload register
      TIM6_ARR  : aliased TIM6_ARR_Register;
   end record
     with Volatile;

   for TIM6_Peripheral use record
      TIM6_CR1  at 16#0# range 0 .. 15;
      TIM6_CR2  at 16#4# range 0 .. 31;
      TIM6_DIER at 16#C# range 0 .. 15;
      TIM6_SR   at 16#10# range 0 .. 15;
      TIM6_EGR  at 16#14# range 0 .. 15;
      TIM6_CNT  at 16#24# range 0 .. 31;
      TIM6_PSC  at 16#28# range 0 .. 15;
      TIM6_ARR  at 16#2C# range 0 .. 31;
   end record;

   --  Basic timers
   TIM6_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM6_Base;

   --  Basic timers
   TIM6_S_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM6_S_Base;

   --  Basic timers
   TIM7_S_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM7_S_Base;

   --  Basic timers
   type TIM7_Peripheral is record
      --  TIM7 control register 1
      TIM7_CR1  : aliased TIM7_CR1_Register;
      --  TIM7 control register 2
      TIM7_CR2  : aliased TIM7_CR2_Register;
      --  TIM7 DMA/Interrupt enable register
      TIM7_DIER : aliased TIM7_DIER_Register;
      --  TIM7 status register
      TIM7_SR   : aliased TIM7_SR_Register;
      --  TIM7 event generation register
      TIM7_EGR  : aliased TIM7_EGR_Register;
      --  TIM7 counter
      TIM7_CNT  : aliased TIM7_CNT_Register;
      --  TIM7 prescaler
      TIM7_PSC  : aliased Interfaces.Bit_Types.UInt16;
      --  TIM7 auto-reload register
      TIM7_ARR  : aliased TIM7_ARR_Register;
   end record
     with Volatile;

   for TIM7_Peripheral use record
      TIM7_CR1  at 16#0# range 0 .. 15;
      TIM7_CR2  at 16#4# range 0 .. 31;
      TIM7_DIER at 16#C# range 0 .. 15;
      TIM7_SR   at 16#10# range 0 .. 15;
      TIM7_EGR  at 16#14# range 0 .. 15;
      TIM7_CNT  at 16#24# range 0 .. 31;
      TIM7_PSC  at 16#28# range 0 .. 15;
      TIM7_ARR  at 16#2C# range 0 .. 31;
   end record;

   --  Basic timers
   TIM7_Periph : aliased TIM7_Peripheral
     with Import, Address => TIM7_Base;

   type TIM8_Disc is
     (Input,
      Output);

   --  Advanced-control timers
   type TIM8_Peripheral
     (Discriminent : TIM8_Disc := Input)
   is record
      --  TIM8 control register 1
      TIM8_CR1          : aliased TIM8_CR1_Register;
      --  TIM8 control register 2
      TIM8_CR2          : aliased TIM8_CR2_Register;
      --  TIM8 slave mode control register
      TIM8_SMCR         : aliased TIM8_SMCR_Register;
      --  TIM8 DMA/interrupt enable register
      TIM8_DIER         : aliased TIM8_DIER_Register;
      --  TIM8 status register
      TIM8_SR           : aliased TIM8_SR_Register;
      --  TIM8 event generation register
      TIM8_EGR          : aliased TIM8_EGR_Register;
      --  TIM8 capture/compare enable register
      TIM8_CCER         : aliased TIM8_CCER_Register;
      --  TIM8 counter
      TIM8_CNT          : aliased TIM8_CNT_Register;
      --  TIM8 prescaler
      TIM8_PSC          : aliased Interfaces.Bit_Types.UInt16;
      --  TIM8 auto-reload register
      TIM8_ARR          : aliased TIM8_ARR_Register;
      --  TIM8 repetition counter register
      TIM8_RCR          : aliased Interfaces.Bit_Types.UInt16;
      --  TIM8 capture/compare register 1
      TIM8_CCR1         : aliased TIM8_CCR1_Register;
      --  TIM8 capture/compare register 2
      TIM8_CCR2         : aliased TIM8_CCR2_Register;
      --  TIM8 capture/compare register 3
      TIM8_CCR3         : aliased TIM8_CCR3_Register;
      --  TIM8 capture/compare register 4
      TIM8_CCR4         : aliased TIM8_CCR4_Register;
      --  TIM8 break and dead-time register
      TIM8_BDTR         : aliased TIM8_BDTR_Register;
      --  TIM8 capture/compare register 5
      TIM8_CCR5         : aliased TIM8_CCR5_Register;
      --  TIM8 capture/compare register 6
      TIM8_CCR6         : aliased TIM8_CCR6_Register;
      --  TIM8 capture/compare mode register 3
      TIM8_CCMR3        : aliased TIM8_CCMR3_Register;
      --  TIM8 timer deadtime register 2
      TIM8_DTR2         : aliased TIM8_DTR2_Register;
      --  TIM8 timer encoder control register
      TIM8_ECR          : aliased TIM8_ECR_Register;
      --  TIM8 timer input selection register
      TIM8_TISEL        : aliased TIM8_TISEL_Register;
      --  TIM8 alternate function option register 1
      TIM8_AF1          : aliased TIM8_AF1_Register;
      --  TIM8 alternate function register 2
      TIM8_AF2          : aliased TIM8_AF2_Register;
      --  TIM8 DMA control register
      TIM8_DCR          : aliased TIM8_DCR_Register;
      --  TIM8 DMA address for full transfer
      TIM8_DMAR         : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Input =>
            --  TIM8 capture/compare mode register 1 [alternate]
            TIM8_CCMR1_Input : aliased TIM8_CCMR1_Input_Register;
            --  TIM8 capture/compare mode register 2 [alternate]
            TIM8_CCMR2_Input : aliased TIM8_CCMR2_Input_Register;
         when Output =>
            --  TIM8 capture/compare mode register 1 [alternate]
            TIM8_CCMR1_Output : aliased TIM8_CCMR1_Output_Register;
            --  TIM8 capture/compare mode register 2 [alternate]
            TIM8_CCMR2_Output : aliased TIM8_CCMR2_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM8_Peripheral use record
      TIM8_CR1          at 16#0# range 0 .. 15;
      TIM8_CR2          at 16#4# range 0 .. 31;
      TIM8_SMCR         at 16#8# range 0 .. 31;
      TIM8_DIER         at 16#C# range 0 .. 31;
      TIM8_SR           at 16#10# range 0 .. 31;
      TIM8_EGR          at 16#14# range 0 .. 15;
      TIM8_CCER         at 16#20# range 0 .. 31;
      TIM8_CNT          at 16#24# range 0 .. 31;
      TIM8_PSC          at 16#28# range 0 .. 15;
      TIM8_ARR          at 16#2C# range 0 .. 31;
      TIM8_RCR          at 16#30# range 0 .. 15;
      TIM8_CCR1         at 16#34# range 0 .. 31;
      TIM8_CCR2         at 16#38# range 0 .. 31;
      TIM8_CCR3         at 16#3C# range 0 .. 31;
      TIM8_CCR4         at 16#40# range 0 .. 31;
      TIM8_BDTR         at 16#44# range 0 .. 31;
      TIM8_CCR5         at 16#48# range 0 .. 31;
      TIM8_CCR6         at 16#4C# range 0 .. 31;
      TIM8_CCMR3        at 16#50# range 0 .. 31;
      TIM8_DTR2         at 16#54# range 0 .. 31;
      TIM8_ECR          at 16#58# range 0 .. 31;
      TIM8_TISEL        at 16#5C# range 0 .. 31;
      TIM8_AF1          at 16#60# range 0 .. 31;
      TIM8_AF2          at 16#64# range 0 .. 31;
      TIM8_DCR          at 16#3DC# range 0 .. 31;
      TIM8_DMAR         at 16#3E0# range 0 .. 31;
      TIM8_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM8_CCMR2_Input  at 16#1C# range 0 .. 31;
      TIM8_CCMR1_Output at 16#18# range 0 .. 31;
      TIM8_CCMR2_Output at 16#1C# range 0 .. 31;
   end record;

   --  Advanced-control timers
   TIM8_Periph : aliased TIM8_Peripheral
     with Import, Address => TIM8_Base;

   --  Advanced-control timers
   TIM8_S_Periph : aliased TIM8_Peripheral
     with Import, Address => TIM8_S_Base;

end Interfaces.STM32.TIMx;
