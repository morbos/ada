--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM4 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TIM4_CR1_CMS_Field is HAL.UInt2;
   subtype TIM4_CR1_CKD_Field is HAL.UInt2;

   --  TIM4 control register 1
   type TIM4_CR1_Register is record
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
      CMS            : TIM4_CR1_CMS_Field := 16#0#;
      --  Autoreload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM4_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering Enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM4_CR1_Register use record
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

   subtype TIM4_CR2_MMS_Field is HAL.UInt3;

   --  TIM4 control register 2
   type TIM4_CR2_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  MMS[2:0]: Master mode selection
      MMS            : TIM4_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  unspecified
      Reserved_8_24  : HAL.UInt17 := 16#0#;
      --  MMS[3]
      MMS_1          : Boolean := False;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CR2_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      Reserved_8_24  at 0 range 8 .. 24;
      MMS_1          at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM4_SMCR_SMS_Field is HAL.UInt3;
   subtype TIM4_SMCR_TS_Field is HAL.UInt3;
   subtype TIM4_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM4_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM4_SMCR_TS_1_Field is HAL.UInt2;

   --  TIM4 slave mode control register
   type TIM4_SMCR_Register is record
      --  SMS[2:0]: Slave mode selection
      SMS            : TIM4_SMCR_SMS_Field := 16#0#;
      --  OCREF clear selection
      OCCS           : Boolean := False;
      --  TS[2:0]: Trigger selection
      TS             : TIM4_SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : TIM4_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : TIM4_SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  External trigger polarity
      ETP            : Boolean := False;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM4_SMCR_TS_1_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  SMS preload enable
      SMSPE          : Boolean := False;
      --  SMS preload source
      SMSPS          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      OCCS           at 0 range 3 .. 3;
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

   --  TIM4 DMA/Interrupt enable register
   type TIM4_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/Compare 3 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/Compare 4 interrupt enable
      CC4IE          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/Compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/Compare 3 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/Compare 4 DMA request enable
      CC4DE          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Index interrupt enable
      IDxIE          : Boolean := False;
      --  Direction change interrupt enable
      DIRIE          : Boolean := False;
      --  Index error interrupt enable
      IERRIE         : Boolean := False;
      --  Transition error interrupt enable
      TERRIE         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      IDxIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM4 status register
   type TIM4_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag
      CC4IF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag
      CC4OF          : Boolean := False;
      --  unspecified
      Reserved_13_19 : HAL.UInt7 := 16#0#;
      --  Index interrupt flag
      IDxF           : Boolean := False;
      --  Direction change interrupt flag
      DIRF           : Boolean := False;
      --  Index error interrupt flag
      IERRF          : Boolean := False;
      --  Transition error interrupt flag
      TERRF          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      Reserved_13_19 at 0 range 13 .. 19;
      IDxF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM4 event generation register
   type TIM4_EGR_Register is record
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
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM4_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM4_CCMR1_CC1S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR1_IC1F_Field is HAL.UInt4;
   subtype TIM4_CCMR1_CC2S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_IC2PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR1_IC2F_Field is HAL.UInt4;

   --  TIM4 capture/compare mode register 1
   type TIM4_CCMR1_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM4_CCMR1_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM4_CCMR1_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM4_CCMR1_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM4_CCMR1_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM4_CCMR1_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM4_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCMR1_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM4_CCMR1_ALTERNATE1_CC1S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_ALTERNATE1_OC1M_Field is HAL.UInt3;
   subtype TIM4_CCMR1_ALTERNATE1_CC2S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_ALTERNATE1_OC2M_Field is HAL.UInt3;

   --  TIM4 capture/compare mode register 1
   type TIM4_CCMR1_ALTERNATE1_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM4_CCMR1_ALTERNATE1_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM4_CCMR1_ALTERNATE1_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM4_CCMR1_ALTERNATE1_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM4_CCMR1_ALTERNATE1_OC2M_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  OC2M[3]
      OC2M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCMR1_ALTERNATE1_Register use record
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

   subtype TIM4_CCMR2_CC3S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_IC3PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR2_IC3F_Field is HAL.UInt4;
   subtype TIM4_CCMR2_CC4S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_IC4PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR2_IC4F_Field is HAL.UInt4;

   --  TIM4 capture/compare mode register 2
   type TIM4_CCMR2_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM4_CCMR2_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM4_CCMR2_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM4_CCMR2_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : TIM4_CCMR2_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM4_CCMR2_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM4_CCMR2_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCMR2_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM4_CCMR2_ALTERNATE1_CC3S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_ALTERNATE1_OC3M_Field is HAL.UInt3;
   subtype TIM4_CCMR2_ALTERNATE1_CC4S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_ALTERNATE1_OC4M_Field is HAL.UInt3;

   --  TIM4 capture/compare mode register 2
   type TIM4_CCMR2_ALTERNATE1_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM4_CCMR2_ALTERNATE1_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM4_CCMR2_ALTERNATE1_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection
      CC4S           : TIM4_CCMR2_ALTERNATE1_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM4_CCMR2_ALTERNATE1_OC4M_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : Boolean := False;
      --  OC3M[3]
      OC3M_1         : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  OC4M[3]
      OC4M_1         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCMR2_ALTERNATE1_Register use record
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

   --  TIM4 capture/compare enable register
   type TIM4_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output Polarity.
      CC1P           : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 output Polarity.
      CC1NP          : Boolean := False;
      --  Capture/Compare 2 output enable.
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output Polarity.
      CC2P           : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity.
      CC2NP          : Boolean := False;
      --  Capture/Compare 3 output enable.
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output Polarity.
      CC3P           : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Capture/Compare 3 output Polarity.
      CC3NP          : Boolean := False;
      --  Capture/Compare 4 output enable.
      CC4E           : Boolean := False;
      --  Capture/Compare 4 output Polarity.
      CC4P           : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Capture/Compare 4 output Polarity.
      CC4NP          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCER_Register use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC4NP          at 0 range 15 .. 15;
   end record;

   subtype TIM4_CNT_CNT_Field is HAL.UInt31;

   --  TIM4 counter
   type TIM4_CNT_Register is record
      --  Least significant part of counter value
      CNT        : TIM4_CNT_CNT_Field := 16#0#;
      --  Value depends on IUFREMAP in TIMx_CR1.
      UIFCPY_CNT : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CNT_Register use record
      CNT        at 0 range 0 .. 30;
      UIFCPY_CNT at 0 range 31 .. 31;
   end record;

   subtype TIM4_ECR_IDIR_Field is HAL.UInt2;
   subtype TIM4_ECR_IBLK_Field is HAL.UInt2;
   subtype TIM4_ECR_IPOS_Field is HAL.UInt2;
   subtype TIM4_ECR_PW_Field is HAL.UInt8;
   subtype TIM4_ECR_PWPRSC_Field is HAL.UInt3;

   --  TIM4 timer encoder control register
   type TIM4_ECR_Register is record
      --  Index enable
      IE             : Boolean := False;
      --  Index direction
      IDIR           : TIM4_ECR_IDIR_Field := 16#0#;
      --  Index blanking
      IBLK           : TIM4_ECR_IBLK_Field := 16#0#;
      --  First index
      FIDx           : Boolean := False;
      --  Index positioning
      IPOS           : TIM4_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pulse width
      PW             : TIM4_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler
      PWPRSC         : TIM4_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_ECR_Register use record
      IE             at 0 range 0 .. 0;
      IDIR           at 0 range 1 .. 2;
      IBLK           at 0 range 3 .. 4;
      FIDx           at 0 range 5 .. 5;
      IPOS           at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PW             at 0 range 16 .. 23;
      PWPRSC         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TIM4_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM4_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM4_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM4_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM4 timer input selection register
   type TIM4_TISEL_Register is record
      --  Selects tim_ti1[15:0] input
      TI1SEL         : TIM4_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects tim_ti2[15:0] input
      TI2SEL         : TIM4_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti3[15:0] input
      TI3SEL         : TIM4_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti4[15:0] input
      TI4SEL         : TIM4_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM4_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM4 alternate function register 1
   type TIM4_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  etr_in source selection
      ETRSEL         : TIM4_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_AF1_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM4_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM4 alternate function register 2
   type TIM4_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM4_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM4_DCR_DBA_Field is HAL.UInt5;
   subtype TIM4_DCR_DBL_Field is HAL.UInt5;
   subtype TIM4_DCR_DBSS_Field is HAL.UInt4;

   --  TIM4 DMA control register
   type TIM4_DCR_Register is record
      --  DMA base address
      DBA            : TIM4_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM4_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM4_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_DCR_Register use record
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

   type SEC_TIM4_Disc is
     (Default,
      Alternate1);

   --  TIM4 address block description
   type TIM4_Peripheral
     (Discriminent : SEC_TIM4_Disc := Default)
   is record
      --  TIM4 control register 1
      TIM4_CR1              : aliased TIM4_CR1_Register;
      --  TIM4 control register 2
      TIM4_CR2              : aliased TIM4_CR2_Register;
      --  TIM4 slave mode control register
      TIM4_SMCR             : aliased TIM4_SMCR_Register;
      --  TIM4 DMA/Interrupt enable register
      TIM4_DIER             : aliased TIM4_DIER_Register;
      --  TIM4 status register
      TIM4_SR               : aliased TIM4_SR_Register;
      --  TIM4 event generation register
      TIM4_EGR              : aliased TIM4_EGR_Register;
      --  TIM4 capture/compare enable register
      TIM4_CCER             : aliased TIM4_CCER_Register;
      --  TIM4 counter
      TIM4_CNT              : aliased TIM4_CNT_Register;
      --  TIM4 prescaler
      TIM4_PSC              : aliased HAL.UInt16;
      --  TIM4 autoreload register
      TIM4_ARR              : aliased HAL.UInt32;
      --  TIM4 capture/compare register 1
      TIM4_CCR1             : aliased HAL.UInt32;
      --  TIM4 capture/compare register 2
      TIM4_CCR2             : aliased HAL.UInt32;
      --  TIM4 capture/compare register 3
      TIM4_CCR3             : aliased HAL.UInt32;
      --  TIM4 capture/compare register 4
      TIM4_CCR4             : aliased HAL.UInt32;
      --  TIM4 timer encoder control register
      TIM4_ECR              : aliased TIM4_ECR_Register;
      --  TIM4 timer input selection register
      TIM4_TISEL            : aliased TIM4_TISEL_Register;
      --  TIM4 alternate function register 1
      TIM4_AF1              : aliased TIM4_AF1_Register;
      --  TIM4 alternate function register 2
      TIM4_AF2              : aliased TIM4_AF2_Register;
      --  TIM4 DMA control register
      TIM4_DCR              : aliased TIM4_DCR_Register;
      --  TIM4 DMA address for full transfer
      TIM4_DMAR             : aliased HAL.UInt32;
      case Discriminent is
         when Default =>
            --  TIM4 capture/compare mode register 1
            TIM4_CCMR1 : aliased TIM4_CCMR1_Register;
            --  TIM4 capture/compare mode register 2
            TIM4_CCMR2 : aliased TIM4_CCMR2_Register;
         when Alternate1 =>
            --  TIM4 capture/compare mode register 1
            TIM4_CCMR1_ALTERNATE1 : aliased TIM4_CCMR1_ALTERNATE1_Register;
            --  TIM4 capture/compare mode register 2
            TIM4_CCMR2_ALTERNATE1 : aliased TIM4_CCMR2_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM4_Peripheral use record
      TIM4_CR1              at 16#0# range 0 .. 15;
      TIM4_CR2              at 16#4# range 0 .. 31;
      TIM4_SMCR             at 16#8# range 0 .. 31;
      TIM4_DIER             at 16#C# range 0 .. 31;
      TIM4_SR               at 16#10# range 0 .. 31;
      TIM4_EGR              at 16#14# range 0 .. 15;
      TIM4_CCER             at 16#20# range 0 .. 15;
      TIM4_CNT              at 16#24# range 0 .. 31;
      TIM4_PSC              at 16#28# range 0 .. 15;
      TIM4_ARR              at 16#2C# range 0 .. 31;
      TIM4_CCR1             at 16#34# range 0 .. 31;
      TIM4_CCR2             at 16#38# range 0 .. 31;
      TIM4_CCR3             at 16#3C# range 0 .. 31;
      TIM4_CCR4             at 16#40# range 0 .. 31;
      TIM4_ECR              at 16#58# range 0 .. 31;
      TIM4_TISEL            at 16#5C# range 0 .. 31;
      TIM4_AF1              at 16#60# range 0 .. 31;
      TIM4_AF2              at 16#64# range 0 .. 31;
      TIM4_DCR              at 16#3DC# range 0 .. 31;
      TIM4_DMAR             at 16#3E0# range 0 .. 31;
      TIM4_CCMR1            at 16#18# range 0 .. 31;
      TIM4_CCMR2            at 16#1C# range 0 .. 31;
      TIM4_CCMR1_ALTERNATE1 at 16#18# range 0 .. 31;
      TIM4_CCMR2_ALTERNATE1 at 16#1C# range 0 .. 31;
   end record;

   --  TIM4 address block description
   SEC_TIM4_Periph : aliased TIM4_Peripheral
     with Import, Address => SEC_TIM4_Base;

   --  TIM4 address block description
   TIM4_Periph : aliased TIM4_Peripheral
     with Import, Address => TIM4_Base;

end STM32_SVD.TIM4;
