--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM15 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TIM15_CR1_CKD_Field is HAL.UInt2;

   --  TIM15 control register 1
   type TIM15_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM15_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM15_CR2_MMS_Field is HAL.UInt3;

   --  TIM15 control register 2
   type TIM15_CR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  Master mode selection
      MMS            : TIM15_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  Output Idle state 1 (tim_oc1 output)
      OIS1           : Boolean := False;
      --  Output Idle state 1 (tim_oc1n output)
      OIS1N          : Boolean := False;
      --  Output idle state 2 (tim_oc2 output)
      OIS2           : Boolean := False;
      --  unspecified
      Reserved_11_27 : HAL.UInt17 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      Reserved_11_27 at 0 range 11 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM15_SMCR_SMS_Field is HAL.UInt3;
   subtype TIM15_SMCR_TS_Field is HAL.UInt3;
   subtype TIM15_SMCR_TS_1_Field is HAL.UInt2;

   --  TIM15 slave mode control register
   type TIM15_SMCR_Register is record
      --  SMS[2:0]: Slave mode selection
      SMS            : TIM15_SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TS[2:0]: Trigger selection
      TS             : TIM15_SMCR_TS_Field := 16#0#;
      --  Master/slave mode
      MSM            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM15_SMCR_TS_1_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  SMS preload enable
      SMSPE          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SMS_1          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS_1           at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SMSPE          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  TIM15 DMA/interrupt enable register
   type TIM15_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  TIM15 status register
   type TIM15_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  Break interrupt flag
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/Compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  TIM15 event generation register
   type TIM15_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/Compare 2 generation
      CC2G          : Boolean := False;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Capture/Compare control update generation
      COMG          : Boolean := False;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  Write-only. Break generation
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM15_CCMR1_CC1S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype TIM15_CCMR1_IC1F_Field is HAL.UInt4;
   subtype TIM15_CCMR1_CC2S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_IC2PSC_Field is HAL.UInt2;
   subtype TIM15_CCMR1_IC2F_Field is HAL.UInt4;

   --  TIM15 capture/compare mode register 1
   type TIM15_CCMR1_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM15_CCMR1_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM15_CCMR1_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM15_CCMR1_IC1F_Field := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : TIM15_CCMR1_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM15_CCMR1_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM15_CCMR1_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCMR1_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM15_CCMR1_ALTERNATE1_CC1S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_ALTERNATE1_OC1M_Field is HAL.UInt3;
   subtype TIM15_CCMR1_ALTERNATE1_CC2S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_ALTERNATE1_OC2M_Field is HAL.UInt3;

   --  TIM15 capture/compare mode register 1
   type TIM15_CCMR1_ALTERNATE1_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM15_CCMR1_ALTERNATE1_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM15_CCMR1_ALTERNATE1_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM15_CCMR1_ALTERNATE1_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM15_CCMR1_ALTERNATE1_OC2M_Field := 16#0#;
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

   for TIM15_CCMR1_ALTERNATE1_Register use record
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

   --  TIM15 capture/compare enable register
   type TIM15_CCER_Register is record
      --  Capture/Compare 1 output enable
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output polarity
      CC1P          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output polarity
      CC1NP         : Boolean := False;
      --  Capture/Compare 2 output enable
      CC2E          : Boolean := False;
      --  Capture/Compare 2 output polarity
      CC2P          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Capture/Compare 2 complementary output polarity
      CC2NP         : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      CC2E          at 0 range 4 .. 4;
      CC2P          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CC2NP         at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM15_CNT_CNT_Field is HAL.UInt16;

   --  TIM15 counter
   type TIM15_CNT_Register is record
      --  Counter value
      CNT            : TIM15_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM15_ARR_ARR_Field is HAL.UInt20;

   --  TIM15 autoreload register
   type TIM15_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM15_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_RCR_REP_Field is HAL.UInt8;

   --  TIM15 repetition counter register
   type TIM15_RCR_Register is record
      --  Repetition counter reload value
      REP           : TIM15_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM15_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM15 capture/compare register 1
   type TIM15_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM15_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_CCR2_CCR2_Field is HAL.UInt20;

   --  TIM15 capture/compare register 2
   type TIM15_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : TIM15_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM15_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM15_BDTR_BKF_Field is HAL.UInt4;

   --  TIM15 break and dead-time register
   type TIM15_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM15_BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : TIM15_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode
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
      BKF            : TIM15_BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break disarm
      BKDSRM         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break bidirectional
      BKBID          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      BKDSRM         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      BKBID          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM15_DTR2_DTGF_Field is HAL.UInt8;

   --  TIM15 timer deadtime register 2
   type TIM15_DTR2_Register is record
      --  Dead-time falling edge generator setup
      DTGF           : TIM15_DTR2_DTGF_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Deadtime asymmetric enable
      DTAE           : Boolean := False;
      --  Deadtime preload enable
      DTPE           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM15_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM15_TISEL_TI2SEL_Field is HAL.UInt4;

   --  TIM15 input selection register
   type TIM15_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL         : TIM15_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  selects tim_ti2_in[15:0] input
      TI2SEL         : TIM15_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  TIM15 alternate function register 1
   type TIM15_AF1_Register is record
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
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_AF1_Register use record
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
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TIM15_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM15 alternate function register 2
   type TIM15_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM15_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM15_DCR_DBA_Field is HAL.UInt5;
   subtype TIM15_DCR_DBL_Field is HAL.UInt5;
   subtype TIM15_DCR_DBSS_Field is HAL.UInt4;

   --  TIM15 DMA control register
   type TIM15_DCR_Register is record
      --  DMA base address
      DBA            : TIM15_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM15_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM15_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_DCR_Register use record
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

   type SEC_TIM15_Disc is
     (Default,
      Alternate1);

   --  TIM15 address block description
   type TIM15_Peripheral
     (Discriminent : SEC_TIM15_Disc := Default)
   is record
      --  TIM15 control register 1
      TIM15_CR1              : aliased TIM15_CR1_Register;
      --  TIM15 control register 2
      TIM15_CR2              : aliased TIM15_CR2_Register;
      --  TIM15 slave mode control register
      TIM15_SMCR             : aliased TIM15_SMCR_Register;
      --  TIM15 DMA/interrupt enable register
      TIM15_DIER             : aliased TIM15_DIER_Register;
      --  TIM15 status register
      TIM15_SR               : aliased TIM15_SR_Register;
      --  TIM15 event generation register
      TIM15_EGR              : aliased TIM15_EGR_Register;
      --  TIM15 capture/compare enable register
      TIM15_CCER             : aliased TIM15_CCER_Register;
      --  TIM15 counter
      TIM15_CNT              : aliased TIM15_CNT_Register;
      --  TIM15 prescaler
      TIM15_PSC              : aliased HAL.UInt16;
      --  TIM15 autoreload register
      TIM15_ARR              : aliased TIM15_ARR_Register;
      --  TIM15 repetition counter register
      TIM15_RCR              : aliased TIM15_RCR_Register;
      --  TIM15 capture/compare register 1
      TIM15_CCR1             : aliased TIM15_CCR1_Register;
      --  TIM15 capture/compare register 2
      TIM15_CCR2             : aliased TIM15_CCR2_Register;
      --  TIM15 break and dead-time register
      TIM15_BDTR             : aliased TIM15_BDTR_Register;
      --  TIM15 timer deadtime register 2
      TIM15_DTR2             : aliased TIM15_DTR2_Register;
      --  TIM15 input selection register
      TIM15_TISEL            : aliased TIM15_TISEL_Register;
      --  TIM15 alternate function register 1
      TIM15_AF1              : aliased TIM15_AF1_Register;
      --  TIM15 alternate function register 2
      TIM15_AF2              : aliased TIM15_AF2_Register;
      --  TIM15 DMA control register
      TIM15_DCR              : aliased TIM15_DCR_Register;
      --  TIM15 DMA address for full transfer
      TIM15_DMAR             : aliased HAL.UInt32;
      case Discriminent is
         when Default =>
            --  TIM15 capture/compare mode register 1
            TIM15_CCMR1 : aliased TIM15_CCMR1_Register;
         when Alternate1 =>
            --  TIM15 capture/compare mode register 1
            TIM15_CCMR1_ALTERNATE1 : aliased TIM15_CCMR1_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM15_Peripheral use record
      TIM15_CR1              at 16#0# range 0 .. 15;
      TIM15_CR2              at 16#4# range 0 .. 31;
      TIM15_SMCR             at 16#8# range 0 .. 31;
      TIM15_DIER             at 16#C# range 0 .. 15;
      TIM15_SR               at 16#10# range 0 .. 15;
      TIM15_EGR              at 16#14# range 0 .. 15;
      TIM15_CCER             at 16#20# range 0 .. 15;
      TIM15_CNT              at 16#24# range 0 .. 31;
      TIM15_PSC              at 16#28# range 0 .. 15;
      TIM15_ARR              at 16#2C# range 0 .. 31;
      TIM15_RCR              at 16#30# range 0 .. 15;
      TIM15_CCR1             at 16#34# range 0 .. 31;
      TIM15_CCR2             at 16#38# range 0 .. 31;
      TIM15_BDTR             at 16#44# range 0 .. 31;
      TIM15_DTR2             at 16#54# range 0 .. 31;
      TIM15_TISEL            at 16#5C# range 0 .. 31;
      TIM15_AF1              at 16#60# range 0 .. 31;
      TIM15_AF2              at 16#64# range 0 .. 31;
      TIM15_DCR              at 16#3DC# range 0 .. 31;
      TIM15_DMAR             at 16#3E0# range 0 .. 31;
      TIM15_CCMR1            at 16#18# range 0 .. 31;
      TIM15_CCMR1_ALTERNATE1 at 16#18# range 0 .. 31;
   end record;

   --  TIM15 address block description
   SEC_TIM15_Periph : aliased TIM15_Peripheral
     with Import, Address => SEC_TIM15_Base;

   --  TIM15 address block description
   TIM15_Periph : aliased TIM15_Peripheral
     with Import, Address => TIM15_Base;

end STM32_SVD.TIM15;
