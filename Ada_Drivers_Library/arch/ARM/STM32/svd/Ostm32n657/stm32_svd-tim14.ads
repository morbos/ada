--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose timers
package STM32_SVD.TIM14 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TIM14_CR1_CKD_Field is HAL.UInt2;

   --  TIM14 control register 1
   type TIM14_CR1_Register is record
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
      CKD            : TIM14_CR1_CKD_Field := 16#0#;
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

   for TIM14_CR1_Register use record
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

   --  TIM14 Interrupt enable register
   type TIM14_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  TIM14 status register
   type TIM14_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM14 event generation register
   type TIM14_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype TIM14_CCMR1_Input_CC1S_Field is HAL.UInt2;
   subtype TIM14_CCMR1_Input_IC1PSC_Field is HAL.UInt2;
   subtype TIM14_CCMR1_Input_IC1F_Field is HAL.UInt4;

   --  TIM14 capture/compare mode register 1
   type TIM14_CCMR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S          : TIM14_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC        : TIM14_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F          : TIM14_CCMR1_Input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCMR1_Input_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM14_CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype TIM14_CCMR1_Output_OC1M_Field is HAL.UInt3;

   --  TIM14 capture/compare mode register 1 [alternate]
   type TIM14_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM14_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode (refer to bit 16 for OC1M[3])
      OC1M           : TIM14_CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM14 capture/compare enable register
   type TIM14_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity.
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM14_CNT_CNT_Field is HAL.UInt16;

   --  TIM14 counter
   type TIM14_CNT_Register is record
      --  Counter value
      CNT            : TIM14_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM14_ARR_ARR_Field is HAL.UInt20;

   --  TIM14 auto-reload register
   type TIM14_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM14_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM14_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM14 capture/compare register 1
   type TIM14_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM14_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM14_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM14 timer input selection register
   type TIM14_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL        : TIM14_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM14_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM14_Peripheral
     (Discriminent : TIM14_Disc := Input)
   is record
      --  TIM14 control register 1
      TIM14_CR1          : aliased TIM14_CR1_Register;
      --  TIM14 Interrupt enable register
      TIM14_DIER         : aliased TIM14_DIER_Register;
      --  TIM14 status register
      TIM14_SR           : aliased TIM14_SR_Register;
      --  TIM14 event generation register
      TIM14_EGR          : aliased TIM14_EGR_Register;
      --  TIM14 capture/compare enable register
      TIM14_CCER         : aliased TIM14_CCER_Register;
      --  TIM14 counter
      TIM14_CNT          : aliased TIM14_CNT_Register;
      --  TIM14 prescaler
      TIM14_PSC          : aliased HAL.UInt16;
      --  TIM14 auto-reload register
      TIM14_ARR          : aliased TIM14_ARR_Register;
      --  TIM14 capture/compare register 1
      TIM14_CCR1         : aliased TIM14_CCR1_Register;
      --  TIM14 timer input selection register
      TIM14_TISEL        : aliased TIM14_TISEL_Register;
      case Discriminent is
         when Input =>
            --  TIM14 capture/compare mode register 1
            TIM14_CCMR1_Input : aliased TIM14_CCMR1_Input_Register;
         when Output =>
            --  TIM14 capture/compare mode register 1 [alternate]
            TIM14_CCMR1_Output : aliased TIM14_CCMR1_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM14_Peripheral use record
      TIM14_CR1          at 16#0# range 0 .. 15;
      TIM14_DIER         at 16#C# range 0 .. 15;
      TIM14_SR           at 16#10# range 0 .. 15;
      TIM14_EGR          at 16#14# range 0 .. 15;
      TIM14_CCER         at 16#20# range 0 .. 15;
      TIM14_CNT          at 16#24# range 0 .. 31;
      TIM14_PSC          at 16#28# range 0 .. 15;
      TIM14_ARR          at 16#2C# range 0 .. 31;
      TIM14_CCR1         at 16#34# range 0 .. 31;
      TIM14_TISEL        at 16#5C# range 0 .. 15;
      TIM14_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM14_CCMR1_Output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM14_Periph : aliased TIM14_Peripheral
     with Import, Address => TIM14_Base;

end STM32_SVD.TIM14;
