--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM16 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

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

   subtype TIM16_CCMR1_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_IC1PSC_Field is HAL.UInt2;
   subtype TIM16_CCMR1_IC1F_Field is HAL.UInt4;

   --  TIM16 capture/compare mode register 1
   type TIM16_CCMR1_Register is record
      --  Capture/Compare 1 selection
      CC1S          : TIM16_CCMR1_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC        : TIM16_CCMR1_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F          : TIM16_CCMR1_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM16_CCMR1_ALTERNATE1_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_ALTERNATE1_OC1M_Field is HAL.UInt3;

   --  TIM16 capture/compare mode register 1
   type TIM16_CCMR1_ALTERNATE1_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM16_CCMR1_ALTERNATE1_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output Compare 1 mode
      OC1M           : TIM16_CCMR1_ALTERNATE1_OC1M_Field := 16#0#;
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

   for TIM16_CCMR1_ALTERNATE1_Register use record
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

   --  TIM16 auto-reautoreload register
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

   --  TIM16 option register 1
   type TIM16_OR1_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  HSE Divided by 32 enable
      HSE32EN       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_OR1_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      HSE32EN       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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

   -----------------
   -- Peripherals --
   -----------------

   type SEC_TIM16_Disc is
     (Default,
      Alternate1);

   --  TIM16 address block description
   type TIM16_Peripheral
     (Discriminent : SEC_TIM16_Disc := Default)
   is record
      --  TIM16 control register 1
      TIM16_CR1              : aliased TIM16_CR1_Register;
      --  TIM16 control register 2
      TIM16_CR2              : aliased TIM16_CR2_Register;
      --  TIM16 DMA/interrupt enable register
      TIM16_DIER             : aliased TIM16_DIER_Register;
      --  TIM16 status register
      TIM16_SR               : aliased TIM16_SR_Register;
      --  TIM16 event generation register
      TIM16_EGR              : aliased TIM16_EGR_Register;
      --  TIM16 capture/compare enable register
      TIM16_CCER             : aliased TIM16_CCER_Register;
      --  TIM16 counter
      TIM16_CNT              : aliased TIM16_CNT_Register;
      --  TIM16 prescaler
      TIM16_PSC              : aliased HAL.UInt16;
      --  TIM16 auto-reautoreload register
      TIM16_ARR              : aliased TIM16_ARR_Register;
      --  TIM16 repetition counter register
      TIM16_RCR              : aliased TIM16_RCR_Register;
      --  TIM16 capture/compare register 1
      TIM16_CCR1             : aliased TIM16_CCR1_Register;
      --  TIM16 break and dead-time register
      TIM16_BDTR             : aliased TIM16_BDTR_Register;
      --  TIM16 timer deadtime register 2
      TIM16_DTR2             : aliased TIM16_DTR2_Register;
      --  TIM16 input selection register
      TIM16_TISEL            : aliased TIM16_TISEL_Register;
      --  TIM16 alternate function register 1
      TIM16_AF1              : aliased TIM16_AF1_Register;
      --  TIM16 alternate function register 2
      TIM16_AF2              : aliased TIM16_AF2_Register;
      --  TIM16 option register 1
      TIM16_OR1              : aliased TIM16_OR1_Register;
      --  TIM16 DMA control register
      TIM16_DCR              : aliased TIM16_DCR_Register;
      --  TIM16/TIM17 DMA address for full transfer
      TIM16_DMAR             : aliased HAL.UInt32;
      case Discriminent is
         when Default =>
            --  TIM16 capture/compare mode register 1
            TIM16_CCMR1 : aliased TIM16_CCMR1_Register;
         when Alternate1 =>
            --  TIM16 capture/compare mode register 1
            TIM16_CCMR1_ALTERNATE1 : aliased TIM16_CCMR1_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM16_Peripheral use record
      TIM16_CR1              at 16#0# range 0 .. 15;
      TIM16_CR2              at 16#4# range 0 .. 15;
      TIM16_DIER             at 16#C# range 0 .. 15;
      TIM16_SR               at 16#10# range 0 .. 15;
      TIM16_EGR              at 16#14# range 0 .. 15;
      TIM16_CCER             at 16#20# range 0 .. 15;
      TIM16_CNT              at 16#24# range 0 .. 31;
      TIM16_PSC              at 16#28# range 0 .. 15;
      TIM16_ARR              at 16#2C# range 0 .. 31;
      TIM16_RCR              at 16#30# range 0 .. 15;
      TIM16_CCR1             at 16#34# range 0 .. 31;
      TIM16_BDTR             at 16#44# range 0 .. 31;
      TIM16_DTR2             at 16#54# range 0 .. 31;
      TIM16_TISEL            at 16#5C# range 0 .. 31;
      TIM16_AF1              at 16#60# range 0 .. 31;
      TIM16_AF2              at 16#64# range 0 .. 31;
      TIM16_OR1              at 16#68# range 0 .. 31;
      TIM16_DCR              at 16#3DC# range 0 .. 31;
      TIM16_DMAR             at 16#3E0# range 0 .. 31;
      TIM16_CCMR1            at 16#18# range 0 .. 31;
      TIM16_CCMR1_ALTERNATE1 at 16#18# range 0 .. 31;
   end record;

   --  TIM16 address block description
   SEC_TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => SEC_TIM16_Base;

   --  TIM16 address block description
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_Base;

end STM32_SVD.TIM16;
