--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose timers
package STM32_SVD.TIM12 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TIM12_CR1_CKD_Field is HAL.UInt2;

   --  TIM12 control register 1
   type TIM12_CR1_Register is record
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
      CKD            : TIM12_CR1_CKD_Field := 16#0#;
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

   for TIM12_CR1_Register use record
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

   subtype TIM12_CR2_MMS_Field is HAL.UInt3;

   --  TIM12 control register 2
   type TIM12_CR2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM12_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  unspecified
      Reserved_8_27  : HAL.UInt20 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      Reserved_8_27  at 0 range 8 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM12_SMCR_SMS_Field is HAL.UInt3;
   subtype TIM12_SMCR_TS_Field is HAL.UInt3;
   subtype TIM12_SMCR_TS_1_Field is HAL.UInt2;

   --  TIM12 slave mode control register
   type TIM12_SMCR_Register is record
      --  SMS[0]: Slave mode selection
      SMS            : TIM12_SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TS[0]: Trigger selection
      TS             : TIM12_SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM12_SMCR_TS_1_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SMS_1          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS_1           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TIM12 Interrupt enable register
   type TIM12_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE         : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Trigger interrupt enable
      TIE           : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      CC2IE         at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      TIE           at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   --  TIM12 status register
   type TIM12_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TIF            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  TIM12 event generation register
   type TIM12_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC2G          : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM12_CCMR1_Input_CC1S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_Input_IC1PSC_Field is HAL.UInt2;
   subtype TIM12_CCMR1_Input_IC1F_Field is HAL.UInt4;
   subtype TIM12_CCMR1_Input_CC2S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_Input_IC2PSC_Field is HAL.UInt2;
   subtype TIM12_CCMR1_Input_IC2F_Field is HAL.UInt4;

   --  TIM12 capture/compare mode register 1 [alternate]
   type TIM12_CCMR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM12_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM12_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM12_CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM12_CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM12_CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM12_CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM12_CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_Output_OC1M_Field is HAL.UInt3;
   subtype TIM12_CCMR1_Output_CC2S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_Output_OC2M_Field is HAL.UInt3;

   --  TIM12 capture/compare mode register 1 [alternate]
   type TIM12_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM12_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode (refer to bit 16 for OC1M[3])
      OC1M           : TIM12_CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : TIM12_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM12_CCMR1_Output_OC2M_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
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

   for TIM12_CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_1         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  TIM12 capture/compare enable register
   type TIM12_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity
      CC1NP         : Boolean := False;
      --  Capture/Compare 2 output enable
      CC2E          : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC2P          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity
      CC2NP         : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      CC2E          at 0 range 4 .. 4;
      CC2P          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CC2NP         at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM12_CNT_CNT_Field is HAL.UInt16;

   --  TIM12 counter
   type TIM12_CNT_Register is record
      --  Counter value
      CNT            : TIM12_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM12_ARR_ARR_Field is HAL.UInt20;

   --  TIM12 auto-reload register
   type TIM12_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM12_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM12_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM12 capture/compare register 1
   type TIM12_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM12_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM12_CCR2_CCR2_Field is HAL.UInt20;

   --  TIM12 capture/compare register 2
   type TIM12_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : TIM12_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM12_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM12_TISEL_TI2SEL_Field is HAL.UInt4;

   --  TIM12 timer input selection register
   type TIM12_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL         : TIM12_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  selects tim_ti2_in[15:0] input
      TI2SEL         : TIM12_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM12_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM12_Peripheral
     (Discriminent : TIM12_Disc := Input)
   is record
      --  TIM12 control register 1
      TIM12_CR1          : aliased TIM12_CR1_Register;
      --  TIM12 control register 2
      TIM12_CR2          : aliased TIM12_CR2_Register;
      --  TIM12 slave mode control register
      TIM12_SMCR         : aliased TIM12_SMCR_Register;
      --  TIM12 Interrupt enable register
      TIM12_DIER         : aliased TIM12_DIER_Register;
      --  TIM12 status register
      TIM12_SR           : aliased TIM12_SR_Register;
      --  TIM12 event generation register
      TIM12_EGR          : aliased TIM12_EGR_Register;
      --  TIM12 capture/compare enable register
      TIM12_CCER         : aliased TIM12_CCER_Register;
      --  TIM12 counter
      TIM12_CNT          : aliased TIM12_CNT_Register;
      --  TIM12 prescaler
      TIM12_PSC          : aliased HAL.UInt16;
      --  TIM12 auto-reload register
      TIM12_ARR          : aliased TIM12_ARR_Register;
      --  TIM12 capture/compare register 1
      TIM12_CCR1         : aliased TIM12_CCR1_Register;
      --  TIM12 capture/compare register 2
      TIM12_CCR2         : aliased TIM12_CCR2_Register;
      --  TIM12 timer input selection register
      TIM12_TISEL        : aliased TIM12_TISEL_Register;
      case Discriminent is
         when Input =>
            --  TIM12 capture/compare mode register 1 [alternate]
            TIM12_CCMR1_Input : aliased TIM12_CCMR1_Input_Register;
         when Output =>
            --  TIM12 capture/compare mode register 1 [alternate]
            TIM12_CCMR1_Output : aliased TIM12_CCMR1_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM12_Peripheral use record
      TIM12_CR1          at 16#0# range 0 .. 15;
      TIM12_CR2          at 16#4# range 0 .. 31;
      TIM12_SMCR         at 16#8# range 0 .. 31;
      TIM12_DIER         at 16#C# range 0 .. 15;
      TIM12_SR           at 16#10# range 0 .. 15;
      TIM12_EGR          at 16#14# range 0 .. 15;
      TIM12_CCER         at 16#20# range 0 .. 15;
      TIM12_CNT          at 16#24# range 0 .. 31;
      TIM12_PSC          at 16#28# range 0 .. 15;
      TIM12_ARR          at 16#2C# range 0 .. 31;
      TIM12_CCR1         at 16#34# range 0 .. 31;
      TIM12_CCR2         at 16#38# range 0 .. 31;
      TIM12_TISEL        at 16#5C# range 0 .. 15;
      TIM12_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM12_CCMR1_Output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM12_Periph : aliased TIM12_Peripheral
     with Import, Address => TIM12_Base;

end STM32_SVD.TIM12;
