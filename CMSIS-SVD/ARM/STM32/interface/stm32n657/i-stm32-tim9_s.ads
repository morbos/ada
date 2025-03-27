--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose timers
package Interfaces.STM32.TIM9_S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype TIM9_CR1_CKD_Field is Interfaces.Bit_Types.UInt2;

   --  TIM9 control register 1
   type TIM9_CR1_Register is record
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
      --  Clock division
      CKD            : TIM9_CR1_CKD_Field := 16#0#;
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

   for TIM9_CR1_Register use record
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

   subtype TIM9_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;

   --  TIM12 control register 2
   type TIM9_CR2_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM9_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  unspecified
      Reserved_8_27  : Interfaces.Bit_Types.UInt20 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      Reserved_8_27  at 0 range 8 .. 27;
      ADSYNC         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM9_SMCR_SMS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM9_SMCR_TS_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM9_SMCR_TS_1_Field is Interfaces.Bit_Types.UInt2;

   --  TIM9 slave mode control register
   type TIM9_SMCR_Register is record
      --  SMS[0]: Slave mode selection
      SMS            : TIM9_SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TS[0]: Trigger selection
      TS             : TIM9_SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  SMS[3]
      SMS_1          : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TS[4:3]
      TS_1           : TIM9_SMCR_TS_1_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_SMCR_Register use record
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

   --  TIM9 Interrupt enable register
   type TIM9_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE         : Boolean := False;
      --  unspecified
      Reserved_3_5  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Trigger interrupt enable
      TIE           : Boolean := False;
      --  unspecified
      Reserved_7_15 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM9_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      CC2IE         at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      TIE           at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   --  TIM9 status register
   type TIM9_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM9_SR_Register use record
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

   --  TIM9 event generation register
   type TIM9_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC2G          : Boolean := False;
      --  unspecified
      Reserved_3_5  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  unspecified
      Reserved_7_15 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM9_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM9_CCMR1_Input_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM9_CCMR1_Input_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM9_CCMR1_Input_IC1F_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM9_CCMR1_Input_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM9_CCMR1_Input_IC2PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM9_CCMR1_Input_IC2F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM9 capture/compare mode register 1 [alternate]
   type TIM9_CCMR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM9_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : TIM9_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : TIM9_CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : TIM9_CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM9_CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM9_CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM9_CCMR1_Output_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM9_CCMR1_Output_OC1M_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM9_CCMR1_Output_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM9_CCMR1_Output_OC2M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM9 capture/compare mode register 1 [alternate]
   type TIM9_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM9_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode (refer to bit 16 for OC1M[3])
      OC1M           : TIM9_CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : TIM9_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  OC2M[2:0]: Output compare 2 mode
      OC2M           : TIM9_CCMR1_Output_OC2M_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
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

   for TIM9_CCMR1_Output_Register use record
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

   --  TIM9 capture/compare enable register
   type TIM9_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity
      CC1NP         : Boolean := False;
      --  Capture/Compare 2 output enable
      CC2E          : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC2P          : Boolean := False;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity
      CC2NP         : Boolean := False;
      --  unspecified
      Reserved_8_15 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM9_CCER_Register use record
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

   subtype TIM9_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM9 counter
   type TIM9_CNT_Register is record
      --  Counter value
      CNT            : TIM9_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM9_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM9 auto-reload register
   type TIM9_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM9_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM9_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt20;

   --  TIM9 capture/compare register 1
   type TIM9_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM9_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM9_CCR2_CCR2_Field is Interfaces.Bit_Types.UInt20;

   --  TIM9 capture/compare register 2
   type TIM9_CCR2_Register is record
      --  Capture/compare 2 value
      CCR2           : TIM9_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM9_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM9_TISEL_TI1SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM9_TISEL_TI2SEL_Field is Interfaces.Bit_Types.UInt4;

   --  TIM9 timer input selection register
   type TIM9_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL         : TIM9_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  selects tim_ti2_in[15:0] input
      TI2SEL         : TIM9_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM9_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM9_S_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM9_S_Peripheral
     (Discriminent : TIM9_S_Disc := Input)
   is record
      --  TIM9 control register 1
      TIM9_CR1          : aliased TIM9_CR1_Register;
      --  TIM12 control register 2
      TIM9_CR2          : aliased TIM9_CR2_Register;
      --  TIM9 slave mode control register
      TIM9_SMCR         : aliased TIM9_SMCR_Register;
      --  TIM9 Interrupt enable register
      TIM9_DIER         : aliased TIM9_DIER_Register;
      --  TIM9 status register
      TIM9_SR           : aliased TIM9_SR_Register;
      --  TIM9 event generation register
      TIM9_EGR          : aliased TIM9_EGR_Register;
      --  TIM9 capture/compare enable register
      TIM9_CCER         : aliased TIM9_CCER_Register;
      --  TIM9 counter
      TIM9_CNT          : aliased TIM9_CNT_Register;
      --  TIM9 prescaler
      TIM9_PSC          : aliased Interfaces.Bit_Types.UInt16;
      --  TIM9 auto-reload register
      TIM9_ARR          : aliased TIM9_ARR_Register;
      --  TIM9 capture/compare register 1
      TIM9_CCR1         : aliased TIM9_CCR1_Register;
      --  TIM9 capture/compare register 2
      TIM9_CCR2         : aliased TIM9_CCR2_Register;
      --  TIM9 timer input selection register
      TIM9_TISEL        : aliased TIM9_TISEL_Register;
      case Discriminent is
         when Input =>
            --  TIM9 capture/compare mode register 1 [alternate]
            TIM9_CCMR1_Input : aliased TIM9_CCMR1_Input_Register;
         when Output =>
            --  TIM9 capture/compare mode register 1 [alternate]
            TIM9_CCMR1_Output : aliased TIM9_CCMR1_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM9_S_Peripheral use record
      TIM9_CR1          at 16#0# range 0 .. 15;
      TIM9_CR2          at 16#4# range 0 .. 31;
      TIM9_SMCR         at 16#8# range 0 .. 31;
      TIM9_DIER         at 16#C# range 0 .. 15;
      TIM9_SR           at 16#10# range 0 .. 15;
      TIM9_EGR          at 16#14# range 0 .. 15;
      TIM9_CCER         at 16#20# range 0 .. 15;
      TIM9_CNT          at 16#24# range 0 .. 31;
      TIM9_PSC          at 16#28# range 0 .. 15;
      TIM9_ARR          at 16#2C# range 0 .. 31;
      TIM9_CCR1         at 16#34# range 0 .. 31;
      TIM9_CCR2         at 16#38# range 0 .. 31;
      TIM9_TISEL        at 16#5C# range 0 .. 15;
      TIM9_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM9_CCMR1_Output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM9_S_Periph : aliased TIM9_S_Peripheral
     with Import, Address => TIM9_S_Base;

end Interfaces.STM32.TIM9_S;
