--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM is
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
      --  SMS[0]: Slave mode selection
      SMS            : TIM15_SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TS[0]: Trigger selection
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
      --  Capture/Compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
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
      CC2DE          at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
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

   subtype TIM15_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM15_CCMR1_INPUT_IC1F_Field is HAL.UInt4;
   subtype TIM15_CCMR1_INPUT_CC2S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_INPUT_IC2PSC_Field is HAL.UInt2;
   subtype TIM15_CCMR1_INPUT_IC2F_Field is HAL.UInt4;

   --  TIM15 capture/compare mode register 1
   type TIM15_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM15_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM15_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM15_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : TIM15_CCMR1_INPUT_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM15_CCMR1_INPUT_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM15_CCMR1_INPUT_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCMR1_INPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM15_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;
   subtype TIM15_CCMR1_OUTPUT_CC2S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_OUTPUT_OC2M_Field is HAL.UInt3;

   --  TIM15 capture/compare mode register 1
   type TIM15_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM15_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM15_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM15_CCMR1_OUTPUT_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM15_CCMR1_OUTPUT_OC2M_Field := 16#0#;
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

   for TIM15_CCMR1_OUTPUT_Register use record
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

   --  TIM15 auto-reload register
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

   subtype TIM16_CR1_CKD_Field is HAL.UInt2;

   --  TIM16 control register 1
   type TIM16_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM16_CR1_CKD_Field := 16#0#;
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

   for TIM16_CR1_Register use record
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

   --  TIM16 control register 2
   type TIM16_CR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Output Idle state 1 (tim_oc1 output)
      OIS1           : Boolean := False;
      --  Output Idle state 1 (tim_oc1n output)
      OIS1N          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM16 DMA/interrupt enable register
   type TIM16_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIE          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM16 status register
   type TIM16_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt flag
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM16 event generation register
   type TIM16_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  Write-only. Capture/Compare control update generation
      COMG          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Break generation
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM16_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM16_CCMR1_INPUT_IC1F_Field is HAL.UInt4;

   --  TIM16 capture/compare mode register 1
   type TIM16_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S          : TIM16_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC        : TIM16_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F          : TIM16_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_INPUT_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM16_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;

   --  TIM16 capture/compare mode register 1
   type TIM16_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM16_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output Compare 1 mode
      OC1M           : TIM16_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output Compare 1 clear enable
      OC1CE          : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_OUTPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM16 capture/compare enable register
   type TIM16_CCER_Register is record
      --  Capture/Compare 1 output enable
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output polarity
      CC1P          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output polarity
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM16_CNT_CNT_Field is HAL.UInt16;

   --  TIM16 counter
   type TIM16_CNT_Register is record
      --  Counter value
      CNT            : TIM16_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM16_ARR_ARR_Field is HAL.UInt20;

   --  TIM16 auto-reload register
   type TIM16_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM16_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM16_RCR_REP_Field is HAL.UInt8;

   --  TIM16 repetition counter register
   type TIM16_RCR_Register is record
      --  Repetition counter reload value
      REP           : TIM16_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM16_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM16 capture/compare register 1
   type TIM16_CCR1_Register is record
      --  Capture/Compare 1 value
      CCR1           : TIM16_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM16_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM16_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM16_BDTR_BKF_Field is HAL.UInt4;

   --  TIM16 break and dead-time register
   type TIM16_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM16_BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : TIM16_BDTR_LOCK_Field := 16#0#;
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
      BKF            : TIM16_BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break Disarm
      BKDSRM         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break Bidirectional
      BKBID          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_BDTR_Register use record
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

   subtype TIM16_DTR2_DTGF_Field is HAL.UInt8;

   --  TIM16 timer deadtime register 2
   type TIM16_DTR2_Register is record
      --  Dead-time falling edge generator setup
      DTGF           : TIM16_DTR2_DTGF_Field := 16#0#;
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

   for TIM16_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM16_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM16 input selection register
   type TIM16_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL        : TIM16_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  TIM16 alternate function register 1
   type TIM16_AF1_Register is record
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

   for TIM16_AF1_Register use record
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

   subtype TIM16_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM16 alternate function register 2
   type TIM16_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  tim_ocref_clr source selection
      OCRSEL         : TIM16_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM16_DCR_DBA_Field is HAL.UInt5;
   subtype TIM16_DCR_DBL_Field is HAL.UInt5;
   subtype TIM16_DCR_DBSS_Field is HAL.UInt4;

   --  TIM16 DMA control register
   type TIM16_DCR_Register is record
      --  DMA base address
      DBA            : TIM16_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM16_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM16_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM17_CR1_CKD_Field is HAL.UInt2;

   --  TIM17 control register 1
   type TIM17_CR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM17_CR1_CKD_Field := 16#0#;
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

   for TIM17_CR1_Register use record
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

   --  TIM17 control register 2
   type TIM17_CR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Output Idle state 1 (tim_oc1 output)
      OIS1           : Boolean := False;
      --  Output Idle state 1 (tim_oc1n output)
      OIS1N          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM17 DMA/interrupt enable register
   type TIM17_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIE          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM17 status register
   type TIM17_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt flag
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM17 event generation register
   type TIM17_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  Write-only. Capture/Compare control update generation
      COMG          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Break generation
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM17_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM17_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM17_CCMR1_INPUT_IC1F_Field is HAL.UInt4;

   --  TIM17 capture/compare mode register 1
   type TIM17_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S          : TIM17_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC        : TIM17_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F          : TIM17_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCMR1_INPUT_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM17_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM17_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;

   --  TIM17 capture/compare mode register 1
   type TIM17_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM17_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output Compare 1 mode
      OC1M           : TIM17_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output Compare 1 clear enable
      OC1CE          : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCMR1_OUTPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM17 capture/compare enable register
   type TIM17_CCER_Register is record
      --  Capture/Compare 1 output enable
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output polarity
      CC1P          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output polarity
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM17_CNT_CNT_Field is HAL.UInt16;

   --  TIM17 counter
   type TIM17_CNT_Register is record
      --  Counter value
      CNT            : TIM17_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM17_ARR_ARR_Field is HAL.UInt20;

   --  TIM17 auto-reload register
   type TIM17_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM17_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM17_RCR_REP_Field is HAL.UInt8;

   --  TIM17 repetition counter register
   type TIM17_RCR_Register is record
      --  Repetition counter reload value
      REP           : TIM17_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM17_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM17 capture/compare register 1
   type TIM17_CCR1_Register is record
      --  Capture/Compare 1 value
      CCR1           : TIM17_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM17_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM17_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM17_BDTR_BKF_Field is HAL.UInt4;

   --  TIM17 break and dead-time register
   type TIM17_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM17_BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : TIM17_BDTR_LOCK_Field := 16#0#;
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
      BKF            : TIM17_BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break Disarm
      BKDSRM         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break Bidirectional
      BKBID          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_BDTR_Register use record
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

   subtype TIM17_DTR2_DTGF_Field is HAL.UInt8;

   --  TIM17 timer deadtime register 2
   type TIM17_DTR2_Register is record
      --  Dead-time falling edge generator setup
      DTGF           : TIM17_DTR2_DTGF_Field := 16#0#;
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

   for TIM17_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM17_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM17 input selection register
   type TIM17_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL        : TIM17_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  TIM17 alternate function register 1
   type TIM17_AF1_Register is record
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

   for TIM17_AF1_Register use record
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

   subtype TIM17_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM17 alternate function register 2
   type TIM17_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  tim_ocref_clr source selection
      OCRSEL         : TIM17_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM17_DCR_DBA_Field is HAL.UInt5;
   subtype TIM17_DCR_DBL_Field is HAL.UInt5;
   subtype TIM17_DCR_DBSS_Field is HAL.UInt4;

   --  TIM17 DMA control register
   type TIM17_DCR_Register is record
      --  DMA base address
      DBA            : TIM17_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM17_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM17_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM2_CR1_CMS_Field is HAL.UInt2;
   subtype TIM2_CR1_CKD_Field is HAL.UInt2;

   --  TIM2 control register 1
   type TIM2_CR1_Register is record
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
      CMS            : TIM2_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM2_CR1_CKD_Field := 16#0#;
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

   for TIM2_CR1_Register use record
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

   subtype TIM2_CR2_MMS_Field is HAL.UInt3;

   --  TIM2 control register 2
   type TIM2_CR2_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  MMS[0]: Master mode selection
      MMS            : TIM2_CR2_MMS_Field := 16#0#;
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

   for TIM2_CR2_Register use record
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

   subtype TIM2_SMCR_SMS_Field is HAL.UInt3;
   subtype TIM2_SMCR_TS_Field is HAL.UInt3;
   subtype TIM2_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM2_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM2_SMCR_TS_1_Field is HAL.UInt2;

   --  TIM2 slave mode control register
   type TIM2_SMCR_Register is record
      --  SMS[0]: Slave mode selection
      SMS            : TIM2_SMCR_SMS_Field := 16#0#;
      --  OCREF clear selection
      OCCS           : Boolean := False;
      --  TS[0]: Trigger selection
      TS             : TIM2_SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : TIM2_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : TIM2_SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  External trigger polarity
      ETP            : Boolean := False;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM2_SMCR_TS_1_Field := 16#0#;
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

   for TIM2_SMCR_Register use record
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

   --  TIM2 DMA/Interrupt enable register
   type TIM2_DIER_Register is record
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
      IDXIE          : Boolean := False;
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

   for TIM2_DIER_Register use record
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
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM2 status register
   type TIM2_SR_Register is record
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
      IDXF           : Boolean := False;
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

   for TIM2_SR_Register use record
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
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM2 event generation register
   type TIM2_EGR_Register is record
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

   for TIM2_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM2_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR1_INPUT_IC1F_Field is HAL.UInt4;
   subtype TIM2_CCMR1_INPUT_CC2S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_INPUT_IC2PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR1_INPUT_IC2F_Field is HAL.UInt4;

   --  TIM2 capture/compare mode register 1
   type TIM2_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM2_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM2_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM2_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM2_CCMR1_INPUT_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM2_CCMR1_INPUT_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM2_CCMR1_INPUT_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_CCMR1_INPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM2_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;
   subtype TIM2_CCMR1_OUTPUT_CC2S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_OUTPUT_OC2M_Field is HAL.UInt3;

   --  TIM2 capture/compare mode register 1
   type TIM2_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM2_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM2_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM2_CCMR1_OUTPUT_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM2_CCMR1_OUTPUT_OC2M_Field := 16#0#;
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

   for TIM2_CCMR1_OUTPUT_Register use record
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

   subtype TIM2_CCMR2_INPUT_CC3S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_INPUT_IC3PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR2_INPUT_IC3F_Field is HAL.UInt4;
   subtype TIM2_CCMR2_INPUT_CC4S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_INPUT_IC4PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR2_INPUT_IC4F_Field is HAL.UInt4;

   --  TIM2 capture/compare mode register 2
   type TIM2_CCMR2_INPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM2_CCMR2_INPUT_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM2_CCMR2_INPUT_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM2_CCMR2_INPUT_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : TIM2_CCMR2_INPUT_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM2_CCMR2_INPUT_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM2_CCMR2_INPUT_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_CCMR2_INPUT_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM2_CCMR2_OUTPUT_CC3S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_OUTPUT_OC3M_Field is HAL.UInt3;
   subtype TIM2_CCMR2_OUTPUT_CC4S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_OUTPUT_OC4M_Field is HAL.UInt3;

   --  TIM2 capture/compare mode register 2
   type TIM2_CCMR2_OUTPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM2_CCMR2_OUTPUT_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM2_CCMR2_OUTPUT_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection
      CC4S           : TIM2_CCMR2_OUTPUT_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM2_CCMR2_OUTPUT_OC4M_Field := 16#0#;
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

   for TIM2_CCMR2_OUTPUT_Register use record
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

   --  TIM2 capture/compare enable register
   type TIM2_CCER_Register is record
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

   for TIM2_CCER_Register use record
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

   subtype TIM2_CNT_CNT_Field is HAL.UInt31;

   --  TIM2 counter
   type TIM2_CNT_Register is record
      --  Least significant part of counter value
      CNT        : TIM2_CNT_CNT_Field := 16#0#;
      --  Value depends on IUFREMAP in TIMx_CR1.
      UIFCPY_CNT : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_CNT_Register use record
      CNT        at 0 range 0 .. 30;
      UIFCPY_CNT at 0 range 31 .. 31;
   end record;

   subtype TIM2_ECR_IDIR_Field is HAL.UInt2;
   subtype TIM2_ECR_IBLK_Field is HAL.UInt2;
   subtype TIM2_ECR_IPOS_Field is HAL.UInt2;
   subtype TIM2_ECR_PW_Field is HAL.UInt8;
   subtype TIM2_ECR_PWPRSC_Field is HAL.UInt3;

   --  TIM2 timer encoder control register
   type TIM2_ECR_Register is record
      --  Index enable
      IE             : Boolean := False;
      --  Index direction
      IDIR           : TIM2_ECR_IDIR_Field := 16#0#;
      --  Index blanking
      IBLK           : TIM2_ECR_IBLK_Field := 16#0#;
      --  First index
      FIDX           : Boolean := False;
      --  Index positioning
      IPOS           : TIM2_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pulse width
      PW             : TIM2_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler
      PWPRSC         : TIM2_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_ECR_Register use record
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

   subtype TIM2_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM2 timer input selection register
   type TIM2_TISEL_Register is record
      --  Selects tim_ti1[15:0] input
      TI1SEL         : TIM2_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects tim_ti2[15:0] input
      TI2SEL         : TIM2_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti3[15:0] input
      TI3SEL         : TIM2_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti4[15:0] input
      TI4SEL         : TIM2_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM2_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM2 alternate function register 1
   type TIM2_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  etr_in source selection
      ETRSEL         : TIM2_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_AF1_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM2_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM2 alternate function register 2
   type TIM2_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM2_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM2_DCR_DBA_Field is HAL.UInt5;
   subtype TIM2_DCR_DBL_Field is HAL.UInt5;
   subtype TIM2_DCR_DBSS_Field is HAL.UInt4;

   --  TIM2 DMA control register
   type TIM2_DCR_Register is record
      --  DMA base address
      DBA            : TIM2_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM2_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM2_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM3_CR1_CMS_Field is HAL.UInt2;
   subtype TIM3_CR1_CKD_Field is HAL.UInt2;

   --  TIM3 control register 1
   type TIM3_CR1_Register is record
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
      CMS            : TIM3_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM3_CR1_CKD_Field := 16#0#;
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

   for TIM3_CR1_Register use record
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

   subtype TIM3_CR2_MMS_Field is HAL.UInt3;

   --  TIM3 control register 2
   type TIM3_CR2_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  MMS[0]: Master mode selection
      MMS            : TIM3_CR2_MMS_Field := 16#0#;
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

   for TIM3_CR2_Register use record
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

   subtype TIM3_SMCR_SMS_Field is HAL.UInt3;
   subtype TIM3_SMCR_TS_Field is HAL.UInt3;
   subtype TIM3_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM3_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM3_SMCR_TS_1_Field is HAL.UInt2;

   --  TIM3 slave mode control register
   type TIM3_SMCR_Register is record
      --  SMS[0]: Slave mode selection
      SMS            : TIM3_SMCR_SMS_Field := 16#0#;
      --  OCREF clear selection
      OCCS           : Boolean := False;
      --  TS[0]: Trigger selection
      TS             : TIM3_SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : TIM3_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : TIM3_SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  External trigger polarity
      ETP            : Boolean := False;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM3_SMCR_TS_1_Field := 16#0#;
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

   for TIM3_SMCR_Register use record
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

   --  TIM3 DMA/Interrupt enable register
   type TIM3_DIER_Register is record
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
      IDXIE          : Boolean := False;
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

   for TIM3_DIER_Register use record
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
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM3 status register
   type TIM3_SR_Register is record
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
      IDXF           : Boolean := False;
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

   for TIM3_SR_Register use record
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
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM3 event generation register
   type TIM3_EGR_Register is record
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

   for TIM3_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM3_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR1_INPUT_IC1F_Field is HAL.UInt4;
   subtype TIM3_CCMR1_INPUT_CC2S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_INPUT_IC2PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR1_INPUT_IC2F_Field is HAL.UInt4;

   --  TIM3 capture/compare mode register 1
   type TIM3_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM3_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM3_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM3_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM3_CCMR1_INPUT_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM3_CCMR1_INPUT_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM3_CCMR1_INPUT_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCMR1_INPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;
   subtype TIM3_CCMR1_OUTPUT_CC2S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_OUTPUT_OC2M_Field is HAL.UInt3;

   --  TIM3 capture/compare mode register 1
   type TIM3_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM3_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM3_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM3_CCMR1_OUTPUT_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM3_CCMR1_OUTPUT_OC2M_Field := 16#0#;
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

   for TIM3_CCMR1_OUTPUT_Register use record
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

   subtype TIM3_CCMR2_INPUT_CC3S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_INPUT_IC3PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR2_INPUT_IC3F_Field is HAL.UInt4;
   subtype TIM3_CCMR2_INPUT_CC4S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_INPUT_IC4PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR2_INPUT_IC4F_Field is HAL.UInt4;

   --  TIM3 capture/compare mode register 2
   type TIM3_CCMR2_INPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM3_CCMR2_INPUT_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM3_CCMR2_INPUT_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM3_CCMR2_INPUT_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : TIM3_CCMR2_INPUT_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM3_CCMR2_INPUT_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM3_CCMR2_INPUT_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCMR2_INPUT_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCMR2_OUTPUT_CC3S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_OUTPUT_OC3M_Field is HAL.UInt3;
   subtype TIM3_CCMR2_OUTPUT_CC4S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_OUTPUT_OC4M_Field is HAL.UInt3;

   --  TIM3 capture/compare mode register 2
   type TIM3_CCMR2_OUTPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM3_CCMR2_OUTPUT_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM3_CCMR2_OUTPUT_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection
      CC4S           : TIM3_CCMR2_OUTPUT_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM3_CCMR2_OUTPUT_OC4M_Field := 16#0#;
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

   for TIM3_CCMR2_OUTPUT_Register use record
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

   --  TIM3 capture/compare enable register
   type TIM3_CCER_Register is record
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

   for TIM3_CCER_Register use record
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

   subtype TIM3_CNT_CNT_Field is HAL.UInt31;

   --  TIM3 counter
   type TIM3_CNT_Register is record
      --  Least significant part of counter value
      CNT        : TIM3_CNT_CNT_Field := 16#0#;
      --  Value depends on IUFREMAP in TIMx_CR1.
      UIFCPY_CNT : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CNT_Register use record
      CNT        at 0 range 0 .. 30;
      UIFCPY_CNT at 0 range 31 .. 31;
   end record;

   subtype TIM3_ECR_IDIR_Field is HAL.UInt2;
   subtype TIM3_ECR_IBLK_Field is HAL.UInt2;
   subtype TIM3_ECR_IPOS_Field is HAL.UInt2;
   subtype TIM3_ECR_PW_Field is HAL.UInt8;
   subtype TIM3_ECR_PWPRSC_Field is HAL.UInt3;

   --  TIM3 timer encoder control register
   type TIM3_ECR_Register is record
      --  Index enable
      IE             : Boolean := False;
      --  Index direction
      IDIR           : TIM3_ECR_IDIR_Field := 16#0#;
      --  Index blanking
      IBLK           : TIM3_ECR_IBLK_Field := 16#0#;
      --  First index
      FIDX           : Boolean := False;
      --  Index positioning
      IPOS           : TIM3_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pulse width
      PW             : TIM3_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler
      PWPRSC         : TIM3_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_ECR_Register use record
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

   subtype TIM3_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM3_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM3_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM3_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM3 timer input selection register
   type TIM3_TISEL_Register is record
      --  Selects tim_ti1[15:0] input
      TI1SEL         : TIM3_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects tim_ti2[15:0] input
      TI2SEL         : TIM3_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti3[15:0] input
      TI3SEL         : TIM3_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti4[15:0] input
      TI4SEL         : TIM3_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM3_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM3 alternate function register 1
   type TIM3_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  etr_in source selection
      ETRSEL         : TIM3_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_AF1_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM3_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM3 alternate function register 2
   type TIM3_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM3_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM3_DCR_DBA_Field is HAL.UInt5;
   subtype TIM3_DCR_DBL_Field is HAL.UInt5;
   subtype TIM3_DCR_DBSS_Field is HAL.UInt4;

   --  TIM3 DMA control register
   type TIM3_DCR_Register is record
      --  DMA base address
      DBA            : TIM3_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM3_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM3_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

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
      --  Auto-reload preload enable
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
      --  MMS[0]: Master mode selection
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
      --  SMS[0]: Slave mode selection
      SMS            : TIM4_SMCR_SMS_Field := 16#0#;
      --  OCREF clear selection
      OCCS           : Boolean := False;
      --  TS[0]: Trigger selection
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
      IDXIE          : Boolean := False;
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
      IDXIE          at 0 range 20 .. 20;
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
      IDXF           : Boolean := False;
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
      IDXF           at 0 range 20 .. 20;
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

   subtype TIM4_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR1_INPUT_IC1F_Field is HAL.UInt4;
   subtype TIM4_CCMR1_INPUT_CC2S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_INPUT_IC2PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR1_INPUT_IC2F_Field is HAL.UInt4;

   --  TIM4 capture/compare mode register 1
   type TIM4_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM4_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM4_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM4_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM4_CCMR1_INPUT_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM4_CCMR1_INPUT_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM4_CCMR1_INPUT_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCMR1_INPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM4_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;
   subtype TIM4_CCMR1_OUTPUT_CC2S_Field is HAL.UInt2;
   subtype TIM4_CCMR1_OUTPUT_OC2M_Field is HAL.UInt3;

   --  TIM4 capture/compare mode register 1
   type TIM4_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM4_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM4_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM4_CCMR1_OUTPUT_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM4_CCMR1_OUTPUT_OC2M_Field := 16#0#;
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

   for TIM4_CCMR1_OUTPUT_Register use record
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

   subtype TIM4_CCMR2_INPUT_CC3S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_INPUT_IC3PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR2_INPUT_IC3F_Field is HAL.UInt4;
   subtype TIM4_CCMR2_INPUT_CC4S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_INPUT_IC4PSC_Field is HAL.UInt2;
   subtype TIM4_CCMR2_INPUT_IC4F_Field is HAL.UInt4;

   --  TIM4 capture/compare mode register 2
   type TIM4_CCMR2_INPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM4_CCMR2_INPUT_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM4_CCMR2_INPUT_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM4_CCMR2_INPUT_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : TIM4_CCMR2_INPUT_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM4_CCMR2_INPUT_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM4_CCMR2_INPUT_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM4_CCMR2_INPUT_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM4_CCMR2_OUTPUT_CC3S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_OUTPUT_OC3M_Field is HAL.UInt3;
   subtype TIM4_CCMR2_OUTPUT_CC4S_Field is HAL.UInt2;
   subtype TIM4_CCMR2_OUTPUT_OC4M_Field is HAL.UInt3;

   --  TIM4 capture/compare mode register 2
   type TIM4_CCMR2_OUTPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM4_CCMR2_OUTPUT_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM4_CCMR2_OUTPUT_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection
      CC4S           : TIM4_CCMR2_OUTPUT_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM4_CCMR2_OUTPUT_OC4M_Field := 16#0#;
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

   for TIM4_CCMR2_OUTPUT_Register use record
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
      FIDX           : Boolean := False;
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
      FIDX           at 0 range 5 .. 5;
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

   subtype TIM5_CR1_CMS_Field is HAL.UInt2;
   subtype TIM5_CR1_CKD_Field is HAL.UInt2;

   --  TIM5 control register 1
   type TIM5_CR1_Register is record
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
      CMS            : TIM5_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : TIM5_CR1_CKD_Field := 16#0#;
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

   for TIM5_CR1_Register use record
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

   subtype TIM5_CR2_MMS_Field is HAL.UInt3;

   --  TIM5 control register 2
   type TIM5_CR2_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  MMS[0]: Master mode selection
      MMS            : TIM5_CR2_MMS_Field := 16#0#;
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

   for TIM5_CR2_Register use record
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

   subtype TIM5_SMCR_SMS_Field is HAL.UInt3;
   subtype TIM5_SMCR_TS_Field is HAL.UInt3;
   subtype TIM5_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM5_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM5_SMCR_TS_1_Field is HAL.UInt2;

   --  TIM5 slave mode control register
   type TIM5_SMCR_Register is record
      --  SMS[0]: Slave mode selection
      SMS            : TIM5_SMCR_SMS_Field := 16#0#;
      --  OCREF clear selection
      OCCS           : Boolean := False;
      --  TS[0]: Trigger selection
      TS             : TIM5_SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : TIM5_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : TIM5_SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  External trigger polarity
      ETP            : Boolean := False;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM5_SMCR_TS_1_Field := 16#0#;
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

   for TIM5_SMCR_Register use record
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

   --  TIM5 DMA/Interrupt enable register
   type TIM5_DIER_Register is record
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
      IDXIE          : Boolean := False;
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

   for TIM5_DIER_Register use record
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
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM5 status register
   type TIM5_SR_Register is record
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
      IDXF           : Boolean := False;
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

   for TIM5_SR_Register use record
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
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM5 event generation register
   type TIM5_EGR_Register is record
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

   for TIM5_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM5_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM5_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM5_CCMR1_INPUT_IC1F_Field is HAL.UInt4;
   subtype TIM5_CCMR1_INPUT_CC2S_Field is HAL.UInt2;
   subtype TIM5_CCMR1_INPUT_IC2PSC_Field is HAL.UInt2;
   subtype TIM5_CCMR1_INPUT_IC2F_Field is HAL.UInt4;

   --  TIM5 capture/compare mode register 1
   type TIM5_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM5_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM5_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM5_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM5_CCMR1_INPUT_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM5_CCMR1_INPUT_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM5_CCMR1_INPUT_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_CCMR1_INPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM5_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM5_CCMR1_OUTPUT_OC1M_Field is HAL.UInt3;
   subtype TIM5_CCMR1_OUTPUT_CC2S_Field is HAL.UInt2;
   subtype TIM5_CCMR1_OUTPUT_OC2M_Field is HAL.UInt3;

   --  TIM5 capture/compare mode register 1
   type TIM5_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM5_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode
      OC1M           : TIM5_CCMR1_OUTPUT_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : TIM5_CCMR1_OUTPUT_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM5_CCMR1_OUTPUT_OC2M_Field := 16#0#;
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

   for TIM5_CCMR1_OUTPUT_Register use record
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

   subtype TIM5_CCMR2_INPUT_CC3S_Field is HAL.UInt2;
   subtype TIM5_CCMR2_INPUT_IC3PSC_Field is HAL.UInt2;
   subtype TIM5_CCMR2_INPUT_IC3F_Field is HAL.UInt4;
   subtype TIM5_CCMR2_INPUT_CC4S_Field is HAL.UInt2;
   subtype TIM5_CCMR2_INPUT_IC4PSC_Field is HAL.UInt2;
   subtype TIM5_CCMR2_INPUT_IC4F_Field is HAL.UInt4;

   --  TIM5 capture/compare mode register 2
   type TIM5_CCMR2_INPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM5_CCMR2_INPUT_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM5_CCMR2_INPUT_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM5_CCMR2_INPUT_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : TIM5_CCMR2_INPUT_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM5_CCMR2_INPUT_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM5_CCMR2_INPUT_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_CCMR2_INPUT_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM5_CCMR2_OUTPUT_CC3S_Field is HAL.UInt2;
   subtype TIM5_CCMR2_OUTPUT_OC3M_Field is HAL.UInt3;
   subtype TIM5_CCMR2_OUTPUT_CC4S_Field is HAL.UInt2;
   subtype TIM5_CCMR2_OUTPUT_OC4M_Field is HAL.UInt3;

   --  TIM5 capture/compare mode register 2
   type TIM5_CCMR2_OUTPUT_Register is record
      --  Capture/Compare 3 selection
      CC3S           : TIM5_CCMR2_OUTPUT_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  OC3M[2:0]: Output compare 3 mode
      OC3M           : TIM5_CCMR2_OUTPUT_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection
      CC4S           : TIM5_CCMR2_OUTPUT_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  OC4M[2:0]: Output compare 4 mode
      OC4M           : TIM5_CCMR2_OUTPUT_OC4M_Field := 16#0#;
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

   for TIM5_CCMR2_OUTPUT_Register use record
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

   --  TIM5 capture/compare enable register
   type TIM5_CCER_Register is record
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

   for TIM5_CCER_Register use record
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

   subtype TIM5_CNT_CNT_Field is HAL.UInt31;

   --  TIM5 counter
   type TIM5_CNT_Register is record
      --  Least significant part of counter value
      CNT        : TIM5_CNT_CNT_Field := 16#0#;
      --  Value depends on IUFREMAP in TIMx_CR1.
      UIFCPY_CNT : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_CNT_Register use record
      CNT        at 0 range 0 .. 30;
      UIFCPY_CNT at 0 range 31 .. 31;
   end record;

   subtype TIM5_ECR_IDIR_Field is HAL.UInt2;
   subtype TIM5_ECR_IBLK_Field is HAL.UInt2;
   subtype TIM5_ECR_IPOS_Field is HAL.UInt2;
   subtype TIM5_ECR_PW_Field is HAL.UInt8;
   subtype TIM5_ECR_PWPRSC_Field is HAL.UInt3;

   --  TIM5 timer encoder control register
   type TIM5_ECR_Register is record
      --  Index enable
      IE             : Boolean := False;
      --  Index direction
      IDIR           : TIM5_ECR_IDIR_Field := 16#0#;
      --  Index blanking
      IBLK           : TIM5_ECR_IBLK_Field := 16#0#;
      --  First index
      FIDX           : Boolean := False;
      --  Index positioning
      IPOS           : TIM5_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pulse width
      PW             : TIM5_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler
      PWPRSC         : TIM5_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_ECR_Register use record
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

   subtype TIM5_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM5_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM5_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM5_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM5 timer input selection register
   type TIM5_TISEL_Register is record
      --  Selects tim_ti1[15:0] input
      TI1SEL         : TIM5_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects tim_ti2[15:0] input
      TI2SEL         : TIM5_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti3[15:0] input
      TI3SEL         : TIM5_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti4[15:0] input
      TI4SEL         : TIM5_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM5_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM5 alternate function register 1
   type TIM5_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  etr_in source selection
      ETRSEL         : TIM5_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_AF1_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM5_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM5 alternate function register 2
   type TIM5_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection
      OCRSEL         : TIM5_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM5_DCR_DBA_Field is HAL.UInt5;
   subtype TIM5_DCR_DBL_Field is HAL.UInt5;
   subtype TIM5_DCR_DBSS_Field is HAL.UInt4;

   --  TIM5 DMA control register
   type TIM5_DCR_Register is record
      --  DMA base address
      DBA            : TIM5_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : TIM5_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection
      DBSS           : TIM5_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM5_DCR_Register use record
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

   type TIM15_Disc is
     (Input,
      Output);

   --  General purpose timers
   type TIM15_Peripheral
     (Discriminent : TIM15_Disc := Input)
   is record
      --  TIM15 control register 1
      TIM15_CR1          : aliased TIM15_CR1_Register;
      --  TIM15 control register 2
      TIM15_CR2          : aliased TIM15_CR2_Register;
      --  TIM15 slave mode control register
      TIM15_SMCR         : aliased TIM15_SMCR_Register;
      --  TIM15 DMA/interrupt enable register
      TIM15_DIER         : aliased TIM15_DIER_Register;
      --  TIM15 status register
      TIM15_SR           : aliased TIM15_SR_Register;
      --  TIM15 event generation register
      TIM15_EGR          : aliased TIM15_EGR_Register;
      --  TIM15 capture/compare enable register
      TIM15_CCER         : aliased TIM15_CCER_Register;
      --  TIM15 counter
      TIM15_CNT          : aliased TIM15_CNT_Register;
      --  TIM15 prescaler
      TIM15_PSC          : aliased HAL.UInt16;
      --  TIM15 auto-reload register
      TIM15_ARR          : aliased TIM15_ARR_Register;
      --  TIM15 repetition counter register
      TIM15_RCR          : aliased TIM15_RCR_Register;
      --  TIM15 capture/compare register 1
      TIM15_CCR1         : aliased TIM15_CCR1_Register;
      --  TIM15 capture/compare register 2
      TIM15_CCR2         : aliased TIM15_CCR2_Register;
      --  TIM15 break and dead-time register
      TIM15_BDTR         : aliased TIM15_BDTR_Register;
      --  TIM15 timer deadtime register 2
      TIM15_DTR2         : aliased TIM15_DTR2_Register;
      --  TIM15 input selection register
      TIM15_TISEL        : aliased TIM15_TISEL_Register;
      --  TIM15 alternate function register 1
      TIM15_AF1          : aliased TIM15_AF1_Register;
      --  TIM15 alternate function register 2
      TIM15_AF2          : aliased TIM15_AF2_Register;
      --  TIM15 DMA control register
      TIM15_DCR          : aliased TIM15_DCR_Register;
      --  TIM15 DMA address for full transfer
      TIM15_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM15 capture/compare mode register 1
            TIM15_CCMR1_INPUT : aliased TIM15_CCMR1_INPUT_Register;
         when Output =>
            --  TIM15 capture/compare mode register 1
            TIM15_CCMR1_OUTPUT : aliased TIM15_CCMR1_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM15_Peripheral use record
      TIM15_CR1          at 16#0# range 0 .. 15;
      TIM15_CR2          at 16#4# range 0 .. 31;
      TIM15_SMCR         at 16#8# range 0 .. 31;
      TIM15_DIER         at 16#C# range 0 .. 15;
      TIM15_SR           at 16#10# range 0 .. 15;
      TIM15_EGR          at 16#14# range 0 .. 15;
      TIM15_CCER         at 16#20# range 0 .. 15;
      TIM15_CNT          at 16#24# range 0 .. 31;
      TIM15_PSC          at 16#28# range 0 .. 15;
      TIM15_ARR          at 16#2C# range 0 .. 31;
      TIM15_RCR          at 16#30# range 0 .. 15;
      TIM15_CCR1         at 16#34# range 0 .. 31;
      TIM15_CCR2         at 16#38# range 0 .. 31;
      TIM15_BDTR         at 16#44# range 0 .. 31;
      TIM15_DTR2         at 16#54# range 0 .. 31;
      TIM15_TISEL        at 16#5C# range 0 .. 31;
      TIM15_AF1          at 16#60# range 0 .. 31;
      TIM15_AF2          at 16#64# range 0 .. 31;
      TIM15_DCR          at 16#3DC# range 0 .. 31;
      TIM15_DMAR         at 16#3E0# range 0 .. 31;
      TIM15_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM15_CCMR1_OUTPUT at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM15_Periph : aliased TIM15_Peripheral
     with Import, Address => TIM15_Base;

   --  General purpose timers
   TIM15_S_Periph : aliased TIM15_Peripheral
     with Import, Address => TIM15_S_Base;

   type TIM16_Disc is
     (Input,
      Output);

   --  General purpose timers
   type TIM16_Peripheral
     (Discriminent : TIM16_Disc := Input)
   is record
      --  TIM16 control register 1
      TIM16_CR1          : aliased TIM16_CR1_Register;
      --  TIM16 control register 2
      TIM16_CR2          : aliased TIM16_CR2_Register;
      --  TIM16 DMA/interrupt enable register
      TIM16_DIER         : aliased TIM16_DIER_Register;
      --  TIM16 status register
      TIM16_SR           : aliased TIM16_SR_Register;
      --  TIM16 event generation register
      TIM16_EGR          : aliased TIM16_EGR_Register;
      --  TIM16 capture/compare enable register
      TIM16_CCER         : aliased TIM16_CCER_Register;
      --  TIM16 counter
      TIM16_CNT          : aliased TIM16_CNT_Register;
      --  TIM16 prescaler
      TIM16_PSC          : aliased HAL.UInt16;
      --  TIM16 auto-reload register
      TIM16_ARR          : aliased TIM16_ARR_Register;
      --  TIM16 repetition counter register
      TIM16_RCR          : aliased TIM16_RCR_Register;
      --  TIM16 capture/compare register 1
      TIM16_CCR1         : aliased TIM16_CCR1_Register;
      --  TIM16 break and dead-time register
      TIM16_BDTR         : aliased TIM16_BDTR_Register;
      --  TIM16 timer deadtime register 2
      TIM16_DTR2         : aliased TIM16_DTR2_Register;
      --  TIM16 input selection register
      TIM16_TISEL        : aliased TIM16_TISEL_Register;
      --  TIM16 alternate function register 1
      TIM16_AF1          : aliased TIM16_AF1_Register;
      --  TIM16 alternate function register 2
      TIM16_AF2          : aliased TIM16_AF2_Register;
      --  TIM16 DMA control register
      TIM16_DCR          : aliased TIM16_DCR_Register;
      --  TIM16/TIM17 DMA address for full transfer
      TIM16_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM16 capture/compare mode register 1
            TIM16_CCMR1_INPUT : aliased TIM16_CCMR1_INPUT_Register;
         when Output =>
            --  TIM16 capture/compare mode register 1
            TIM16_CCMR1_OUTPUT : aliased TIM16_CCMR1_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM16_Peripheral use record
      TIM16_CR1          at 16#0# range 0 .. 15;
      TIM16_CR2          at 16#4# range 0 .. 15;
      TIM16_DIER         at 16#C# range 0 .. 15;
      TIM16_SR           at 16#10# range 0 .. 15;
      TIM16_EGR          at 16#14# range 0 .. 15;
      TIM16_CCER         at 16#20# range 0 .. 15;
      TIM16_CNT          at 16#24# range 0 .. 31;
      TIM16_PSC          at 16#28# range 0 .. 15;
      TIM16_ARR          at 16#2C# range 0 .. 31;
      TIM16_RCR          at 16#30# range 0 .. 15;
      TIM16_CCR1         at 16#34# range 0 .. 31;
      TIM16_BDTR         at 16#44# range 0 .. 31;
      TIM16_DTR2         at 16#54# range 0 .. 31;
      TIM16_TISEL        at 16#5C# range 0 .. 31;
      TIM16_AF1          at 16#60# range 0 .. 31;
      TIM16_AF2          at 16#64# range 0 .. 31;
      TIM16_DCR          at 16#3DC# range 0 .. 31;
      TIM16_DMAR         at 16#3E0# range 0 .. 31;
      TIM16_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM16_CCMR1_OUTPUT at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_Base;

   --  General purpose timers
   TIM16_S_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_S_Base;

   type TIM17_S_Disc is
     (Input,
      Output);

   --  General purpose timers
   type TIM17_S_Peripheral
     (Discriminent : TIM17_S_Disc := Input)
   is record
      --  TIM17 control register 1
      TIM17_CR1          : aliased TIM17_CR1_Register;
      --  TIM17 control register 2
      TIM17_CR2          : aliased TIM17_CR2_Register;
      --  TIM17 DMA/interrupt enable register
      TIM17_DIER         : aliased TIM17_DIER_Register;
      --  TIM17 status register
      TIM17_SR           : aliased TIM17_SR_Register;
      --  TIM17 event generation register
      TIM17_EGR          : aliased TIM17_EGR_Register;
      --  TIM17 capture/compare enable register
      TIM17_CCER         : aliased TIM17_CCER_Register;
      --  TIM17 counter
      TIM17_CNT          : aliased TIM17_CNT_Register;
      --  TIM17 prescaler
      TIM17_PSC          : aliased HAL.UInt16;
      --  TIM17 auto-reload register
      TIM17_ARR          : aliased TIM17_ARR_Register;
      --  TIM17 repetition counter register
      TIM17_RCR          : aliased TIM17_RCR_Register;
      --  TIM17 capture/compare register 1
      TIM17_CCR1         : aliased TIM17_CCR1_Register;
      --  TIM17 break and dead-time register
      TIM17_BDTR         : aliased TIM17_BDTR_Register;
      --  TIM17 timer deadtime register 2
      TIM17_DTR2         : aliased TIM17_DTR2_Register;
      --  TIM17 input selection register
      TIM17_TISEL        : aliased TIM17_TISEL_Register;
      --  TIM17 alternate function register 1
      TIM17_AF1          : aliased TIM17_AF1_Register;
      --  TIM17 alternate function register 2
      TIM17_AF2          : aliased TIM17_AF2_Register;
      --  TIM17 DMA control register
      TIM17_DCR          : aliased TIM17_DCR_Register;
      --  TIM16/TIM17 DMA address for full transfer
      TIM17_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM17 capture/compare mode register 1
            TIM17_CCMR1_INPUT : aliased TIM17_CCMR1_INPUT_Register;
         when Output =>
            --  TIM17 capture/compare mode register 1
            TIM17_CCMR1_OUTPUT : aliased TIM17_CCMR1_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM17_S_Peripheral use record
      TIM17_CR1          at 16#0# range 0 .. 15;
      TIM17_CR2          at 16#4# range 0 .. 15;
      TIM17_DIER         at 16#C# range 0 .. 15;
      TIM17_SR           at 16#10# range 0 .. 15;
      TIM17_EGR          at 16#14# range 0 .. 15;
      TIM17_CCER         at 16#20# range 0 .. 15;
      TIM17_CNT          at 16#24# range 0 .. 31;
      TIM17_PSC          at 16#28# range 0 .. 15;
      TIM17_ARR          at 16#2C# range 0 .. 31;
      TIM17_RCR          at 16#30# range 0 .. 15;
      TIM17_CCR1         at 16#34# range 0 .. 31;
      TIM17_BDTR         at 16#44# range 0 .. 31;
      TIM17_DTR2         at 16#54# range 0 .. 31;
      TIM17_TISEL        at 16#5C# range 0 .. 31;
      TIM17_AF1          at 16#60# range 0 .. 31;
      TIM17_AF2          at 16#64# range 0 .. 31;
      TIM17_DCR          at 16#3DC# range 0 .. 31;
      TIM17_DMAR         at 16#3E0# range 0 .. 31;
      TIM17_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM17_CCMR1_OUTPUT at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM17_S_Periph : aliased TIM17_S_Peripheral
     with Import, Address => TIM17_S_Base;

   --  General purpose timers
   TIM17_Periph : aliased TIM17_S_Peripheral
     with Import, Address => TIM17_Base;

   type TIM2_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM2_Peripheral
     (Discriminent : TIM2_Disc := Input)
   is record
      --  TIM2 control register 1
      TIM2_CR1          : aliased TIM2_CR1_Register;
      --  TIM2 control register 2
      TIM2_CR2          : aliased TIM2_CR2_Register;
      --  TIM2 slave mode control register
      TIM2_SMCR         : aliased TIM2_SMCR_Register;
      --  TIM2 DMA/Interrupt enable register
      TIM2_DIER         : aliased TIM2_DIER_Register;
      --  TIM2 status register
      TIM2_SR           : aliased TIM2_SR_Register;
      --  TIM2 event generation register
      TIM2_EGR          : aliased TIM2_EGR_Register;
      --  TIM2 capture/compare enable register
      TIM2_CCER         : aliased TIM2_CCER_Register;
      --  TIM2 counter
      TIM2_CNT          : aliased TIM2_CNT_Register;
      --  TIM2 prescaler
      TIM2_PSC          : aliased HAL.UInt16;
      --  TIM2 auto-reload register
      TIM2_ARR          : aliased HAL.UInt32;
      --  TIM2 capture/compare register 1
      TIM2_CCR1         : aliased HAL.UInt32;
      --  TIM2 capture/compare register 2
      TIM2_CCR2         : aliased HAL.UInt32;
      --  TIM2 capture/compare register 3
      TIM2_CCR3         : aliased HAL.UInt32;
      --  TIM2 capture/compare register 4
      TIM2_CCR4         : aliased HAL.UInt32;
      --  TIM2 timer encoder control register
      TIM2_ECR          : aliased TIM2_ECR_Register;
      --  TIM2 timer input selection register
      TIM2_TISEL        : aliased TIM2_TISEL_Register;
      --  TIM2 alternate function register 1
      TIM2_AF1          : aliased TIM2_AF1_Register;
      --  TIM2 alternate function register 2
      TIM2_AF2          : aliased TIM2_AF2_Register;
      --  TIM2 DMA control register
      TIM2_DCR          : aliased TIM2_DCR_Register;
      --  TIM2 DMA address for full transfer
      TIM2_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM2 capture/compare mode register 1
            TIM2_CCMR1_INPUT : aliased TIM2_CCMR1_INPUT_Register;
            --  TIM2 capture/compare mode register 2
            TIM2_CCMR2_INPUT : aliased TIM2_CCMR2_INPUT_Register;
         when Output =>
            --  TIM2 capture/compare mode register 1
            TIM2_CCMR1_OUTPUT : aliased TIM2_CCMR1_OUTPUT_Register;
            --  TIM2 capture/compare mode register 2
            TIM2_CCMR2_OUTPUT : aliased TIM2_CCMR2_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM2_Peripheral use record
      TIM2_CR1          at 16#0# range 0 .. 15;
      TIM2_CR2          at 16#4# range 0 .. 31;
      TIM2_SMCR         at 16#8# range 0 .. 31;
      TIM2_DIER         at 16#C# range 0 .. 31;
      TIM2_SR           at 16#10# range 0 .. 31;
      TIM2_EGR          at 16#14# range 0 .. 15;
      TIM2_CCER         at 16#20# range 0 .. 15;
      TIM2_CNT          at 16#24# range 0 .. 31;
      TIM2_PSC          at 16#28# range 0 .. 15;
      TIM2_ARR          at 16#2C# range 0 .. 31;
      TIM2_CCR1         at 16#34# range 0 .. 31;
      TIM2_CCR2         at 16#38# range 0 .. 31;
      TIM2_CCR3         at 16#3C# range 0 .. 31;
      TIM2_CCR4         at 16#40# range 0 .. 31;
      TIM2_ECR          at 16#58# range 0 .. 31;
      TIM2_TISEL        at 16#5C# range 0 .. 31;
      TIM2_AF1          at 16#60# range 0 .. 31;
      TIM2_AF2          at 16#64# range 0 .. 31;
      TIM2_DCR          at 16#3DC# range 0 .. 31;
      TIM2_DMAR         at 16#3E0# range 0 .. 31;
      TIM2_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM2_CCMR2_INPUT  at 16#1C# range 0 .. 31;
      TIM2_CCMR1_OUTPUT at 16#18# range 0 .. 31;
      TIM2_CCMR2_OUTPUT at 16#1C# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM2_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_Base;

   --  General-purpose timers
   TIM2_S_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_S_Base;

   type TIM3_Disc is
     (Input,
      Output);

   --  General purpose timers
   type TIM3_Peripheral
     (Discriminent : TIM3_Disc := Input)
   is record
      --  TIM3 control register 1
      TIM3_CR1          : aliased TIM3_CR1_Register;
      --  TIM3 control register 2
      TIM3_CR2          : aliased TIM3_CR2_Register;
      --  TIM3 slave mode control register
      TIM3_SMCR         : aliased TIM3_SMCR_Register;
      --  TIM3 DMA/Interrupt enable register
      TIM3_DIER         : aliased TIM3_DIER_Register;
      --  TIM3 status register
      TIM3_SR           : aliased TIM3_SR_Register;
      --  TIM3 event generation register
      TIM3_EGR          : aliased TIM3_EGR_Register;
      --  TIM3 capture/compare enable register
      TIM3_CCER         : aliased TIM3_CCER_Register;
      --  TIM3 counter
      TIM3_CNT          : aliased TIM3_CNT_Register;
      --  TIM3 prescaler
      TIM3_PSC          : aliased HAL.UInt16;
      --  TIM3 auto-reload register
      TIM3_ARR          : aliased HAL.UInt32;
      --  TIM3 capture/compare register 1
      TIM3_CCR1         : aliased HAL.UInt32;
      --  TIM3 capture/compare register 2
      TIM3_CCR2         : aliased HAL.UInt32;
      --  TIM3 capture/compare register 3
      TIM3_CCR3         : aliased HAL.UInt32;
      --  TIM3 capture/compare register 4
      TIM3_CCR4         : aliased HAL.UInt32;
      --  TIM3 timer encoder control register
      TIM3_ECR          : aliased TIM3_ECR_Register;
      --  TIM3 timer input selection register
      TIM3_TISEL        : aliased TIM3_TISEL_Register;
      --  TIM3 alternate function register 1
      TIM3_AF1          : aliased TIM3_AF1_Register;
      --  TIM3 alternate function register 2
      TIM3_AF2          : aliased TIM3_AF2_Register;
      --  TIM3 DMA control register
      TIM3_DCR          : aliased TIM3_DCR_Register;
      --  TIM3 DMA address for full transfer
      TIM3_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM3 capture/compare mode register 1
            TIM3_CCMR1_INPUT : aliased TIM3_CCMR1_INPUT_Register;
            --  TIM3 capture/compare mode register 2
            TIM3_CCMR2_INPUT : aliased TIM3_CCMR2_INPUT_Register;
         when Output =>
            --  TIM3 capture/compare mode register 1
            TIM3_CCMR1_OUTPUT : aliased TIM3_CCMR1_OUTPUT_Register;
            --  TIM3 capture/compare mode register 2
            TIM3_CCMR2_OUTPUT : aliased TIM3_CCMR2_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM3_Peripheral use record
      TIM3_CR1          at 16#0# range 0 .. 15;
      TIM3_CR2          at 16#4# range 0 .. 31;
      TIM3_SMCR         at 16#8# range 0 .. 31;
      TIM3_DIER         at 16#C# range 0 .. 31;
      TIM3_SR           at 16#10# range 0 .. 31;
      TIM3_EGR          at 16#14# range 0 .. 15;
      TIM3_CCER         at 16#20# range 0 .. 15;
      TIM3_CNT          at 16#24# range 0 .. 31;
      TIM3_PSC          at 16#28# range 0 .. 15;
      TIM3_ARR          at 16#2C# range 0 .. 31;
      TIM3_CCR1         at 16#34# range 0 .. 31;
      TIM3_CCR2         at 16#38# range 0 .. 31;
      TIM3_CCR3         at 16#3C# range 0 .. 31;
      TIM3_CCR4         at 16#40# range 0 .. 31;
      TIM3_ECR          at 16#58# range 0 .. 31;
      TIM3_TISEL        at 16#5C# range 0 .. 31;
      TIM3_AF1          at 16#60# range 0 .. 31;
      TIM3_AF2          at 16#64# range 0 .. 31;
      TIM3_DCR          at 16#3DC# range 0 .. 31;
      TIM3_DMAR         at 16#3E0# range 0 .. 31;
      TIM3_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM3_CCMR2_INPUT  at 16#1C# range 0 .. 31;
      TIM3_CCMR1_OUTPUT at 16#18# range 0 .. 31;
      TIM3_CCMR2_OUTPUT at 16#1C# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM3_Periph : aliased TIM3_Peripheral
     with Import, Address => TIM3_Base;

   --  General purpose timers
   TIM3_S_Periph : aliased TIM3_Peripheral
     with Import, Address => TIM3_S_Base;

   type TIM4_Disc is
     (Input,
      Output);

   --  General purpose timers
   type TIM4_Peripheral
     (Discriminent : TIM4_Disc := Input)
   is record
      --  TIM4 control register 1
      TIM4_CR1          : aliased TIM4_CR1_Register;
      --  TIM4 control register 2
      TIM4_CR2          : aliased TIM4_CR2_Register;
      --  TIM4 slave mode control register
      TIM4_SMCR         : aliased TIM4_SMCR_Register;
      --  TIM4 DMA/Interrupt enable register
      TIM4_DIER         : aliased TIM4_DIER_Register;
      --  TIM4 status register
      TIM4_SR           : aliased TIM4_SR_Register;
      --  TIM4 event generation register
      TIM4_EGR          : aliased TIM4_EGR_Register;
      --  TIM4 capture/compare enable register
      TIM4_CCER         : aliased TIM4_CCER_Register;
      --  TIM4 counter
      TIM4_CNT          : aliased TIM4_CNT_Register;
      --  TIM4 prescaler
      TIM4_PSC          : aliased HAL.UInt16;
      --  TIM4 auto-reload register
      TIM4_ARR          : aliased HAL.UInt32;
      --  TIM4 capture/compare register 1
      TIM4_CCR1         : aliased HAL.UInt32;
      --  TIM4 capture/compare register 2
      TIM4_CCR2         : aliased HAL.UInt32;
      --  TIM4 capture/compare register 3
      TIM4_CCR3         : aliased HAL.UInt32;
      --  TIM4 capture/compare register 4
      TIM4_CCR4         : aliased HAL.UInt32;
      --  TIM4 timer encoder control register
      TIM4_ECR          : aliased TIM4_ECR_Register;
      --  TIM4 timer input selection register
      TIM4_TISEL        : aliased TIM4_TISEL_Register;
      --  TIM4 alternate function register 1
      TIM4_AF1          : aliased TIM4_AF1_Register;
      --  TIM4 alternate function register 2
      TIM4_AF2          : aliased TIM4_AF2_Register;
      --  TIM4 DMA control register
      TIM4_DCR          : aliased TIM4_DCR_Register;
      --  TIM4 DMA address for full transfer
      TIM4_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM4 capture/compare mode register 1
            TIM4_CCMR1_INPUT : aliased TIM4_CCMR1_INPUT_Register;
            --  TIM4 capture/compare mode register 2
            TIM4_CCMR2_INPUT : aliased TIM4_CCMR2_INPUT_Register;
         when Output =>
            --  TIM4 capture/compare mode register 1
            TIM4_CCMR1_OUTPUT : aliased TIM4_CCMR1_OUTPUT_Register;
            --  TIM4 capture/compare mode register 2
            TIM4_CCMR2_OUTPUT : aliased TIM4_CCMR2_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM4_Peripheral use record
      TIM4_CR1          at 16#0# range 0 .. 15;
      TIM4_CR2          at 16#4# range 0 .. 31;
      TIM4_SMCR         at 16#8# range 0 .. 31;
      TIM4_DIER         at 16#C# range 0 .. 31;
      TIM4_SR           at 16#10# range 0 .. 31;
      TIM4_EGR          at 16#14# range 0 .. 15;
      TIM4_CCER         at 16#20# range 0 .. 15;
      TIM4_CNT          at 16#24# range 0 .. 31;
      TIM4_PSC          at 16#28# range 0 .. 15;
      TIM4_ARR          at 16#2C# range 0 .. 31;
      TIM4_CCR1         at 16#34# range 0 .. 31;
      TIM4_CCR2         at 16#38# range 0 .. 31;
      TIM4_CCR3         at 16#3C# range 0 .. 31;
      TIM4_CCR4         at 16#40# range 0 .. 31;
      TIM4_ECR          at 16#58# range 0 .. 31;
      TIM4_TISEL        at 16#5C# range 0 .. 31;
      TIM4_AF1          at 16#60# range 0 .. 31;
      TIM4_AF2          at 16#64# range 0 .. 31;
      TIM4_DCR          at 16#3DC# range 0 .. 31;
      TIM4_DMAR         at 16#3E0# range 0 .. 31;
      TIM4_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM4_CCMR2_INPUT  at 16#1C# range 0 .. 31;
      TIM4_CCMR1_OUTPUT at 16#18# range 0 .. 31;
      TIM4_CCMR2_OUTPUT at 16#1C# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM4_Periph : aliased TIM4_Peripheral
     with Import, Address => TIM4_Base;

   --  General purpose timers
   TIM4_S_Periph : aliased TIM4_Peripheral
     with Import, Address => TIM4_S_Base;

   type TIM5_Disc is
     (Input,
      Output);

   --  General purpose timers
   type TIM5_Peripheral
     (Discriminent : TIM5_Disc := Input)
   is record
      --  TIM5 control register 1
      TIM5_CR1          : aliased TIM5_CR1_Register;
      --  TIM5 control register 2
      TIM5_CR2          : aliased TIM5_CR2_Register;
      --  TIM5 slave mode control register
      TIM5_SMCR         : aliased TIM5_SMCR_Register;
      --  TIM5 DMA/Interrupt enable register
      TIM5_DIER         : aliased TIM5_DIER_Register;
      --  TIM5 status register
      TIM5_SR           : aliased TIM5_SR_Register;
      --  TIM5 event generation register
      TIM5_EGR          : aliased TIM5_EGR_Register;
      --  TIM5 capture/compare enable register
      TIM5_CCER         : aliased TIM5_CCER_Register;
      --  TIM5 counter
      TIM5_CNT          : aliased TIM5_CNT_Register;
      --  TIM5 prescaler
      TIM5_PSC          : aliased HAL.UInt16;
      --  TIM5 auto-reload register
      TIM5_ARR          : aliased HAL.UInt32;
      --  TIM5 capture/compare register 1
      TIM5_CCR1         : aliased HAL.UInt32;
      --  TIM5 capture/compare register 2
      TIM5_CCR2         : aliased HAL.UInt32;
      --  TIM5 capture/compare register 3
      TIM5_CCR3         : aliased HAL.UInt32;
      --  TIM5 capture/compare register 4
      TIM5_CCR4         : aliased HAL.UInt32;
      --  TIM5 timer encoder control register
      TIM5_ECR          : aliased TIM5_ECR_Register;
      --  TIM5 timer input selection register
      TIM5_TISEL        : aliased TIM5_TISEL_Register;
      --  TIM5 alternate function register 1
      TIM5_AF1          : aliased TIM5_AF1_Register;
      --  TIM5 alternate function register 2
      TIM5_AF2          : aliased TIM5_AF2_Register;
      --  TIM5 DMA control register
      TIM5_DCR          : aliased TIM5_DCR_Register;
      --  TIM5 DMA address for full transfer
      TIM5_DMAR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM5 capture/compare mode register 1
            TIM5_CCMR1_INPUT : aliased TIM5_CCMR1_INPUT_Register;
            --  TIM5 capture/compare mode register 2
            TIM5_CCMR2_INPUT : aliased TIM5_CCMR2_INPUT_Register;
         when Output =>
            --  TIM5 capture/compare mode register 1
            TIM5_CCMR1_OUTPUT : aliased TIM5_CCMR1_OUTPUT_Register;
            --  TIM5 capture/compare mode register 2
            TIM5_CCMR2_OUTPUT : aliased TIM5_CCMR2_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM5_Peripheral use record
      TIM5_CR1          at 16#0# range 0 .. 15;
      TIM5_CR2          at 16#4# range 0 .. 31;
      TIM5_SMCR         at 16#8# range 0 .. 31;
      TIM5_DIER         at 16#C# range 0 .. 31;
      TIM5_SR           at 16#10# range 0 .. 31;
      TIM5_EGR          at 16#14# range 0 .. 15;
      TIM5_CCER         at 16#20# range 0 .. 15;
      TIM5_CNT          at 16#24# range 0 .. 31;
      TIM5_PSC          at 16#28# range 0 .. 15;
      TIM5_ARR          at 16#2C# range 0 .. 31;
      TIM5_CCR1         at 16#34# range 0 .. 31;
      TIM5_CCR2         at 16#38# range 0 .. 31;
      TIM5_CCR3         at 16#3C# range 0 .. 31;
      TIM5_CCR4         at 16#40# range 0 .. 31;
      TIM5_ECR          at 16#58# range 0 .. 31;
      TIM5_TISEL        at 16#5C# range 0 .. 31;
      TIM5_AF1          at 16#60# range 0 .. 31;
      TIM5_AF2          at 16#64# range 0 .. 31;
      TIM5_DCR          at 16#3DC# range 0 .. 31;
      TIM5_DMAR         at 16#3E0# range 0 .. 31;
      TIM5_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM5_CCMR2_INPUT  at 16#1C# range 0 .. 31;
      TIM5_CCMR1_OUTPUT at 16#18# range 0 .. 31;
      TIM5_CCMR2_OUTPUT at 16#1C# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM5_Periph : aliased TIM5_Peripheral
     with Import, Address => TIM5_Base;

   --  General purpose timers
   TIM5_S_Periph : aliased TIM5_Peripheral
     with Import, Address => TIM5_S_Base;

end STM32_SVD.TIM;
