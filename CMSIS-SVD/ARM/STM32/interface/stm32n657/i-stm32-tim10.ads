--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose timers
package Interfaces.STM32.TIM10 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype TIM10_CR1_CKD_Field is Interfaces.Bit_Types.UInt2;

   --  TIM10 control register 1
   type TIM10_CR1_Register is record
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
      CKD            : TIM10_CR1_CKD_Field := 16#0#;
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

   for TIM10_CR1_Register use record
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

   --  TIM10 Interrupt enable register
   type TIM10_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  unspecified
      Reserved_2_15 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  TIM10 status register
   type TIM10_SR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_8   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM10 event generation register
   type TIM10_EGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_15 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype TIM10_CCMR1_Input_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM10_CCMR1_Input_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM10_CCMR1_Input_IC1F_Field is Interfaces.Bit_Types.UInt4;

   --  TIM10 capture/compare mode register 1
   type TIM10_CCMR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S          : TIM10_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC        : TIM10_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F          : TIM10_CCMR1_Input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCMR1_Input_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM10_CCMR1_Output_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype TIM10_CCMR1_Output_OC1M_Field is Interfaces.Bit_Types.UInt3;

   --  TIM10 capture/compare mode register 1 [alternate]
   type TIM10_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : TIM10_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable
      OC1PE          : Boolean := False;
      --  OC1M[2:0]: Output compare 1 mode (refer to bit 16 for OC1M[3])
      OC1M           : TIM10_CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  OC1M[3]
      OC1M_1         : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M_1         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM10 capture/compare enable register
   type TIM10_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity.
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM10_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM10 counter
   type TIM10_CNT_Register is record
      --  Counter value
      CNT            : TIM10_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  UIF Copy
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM10_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM10 auto-reload register
   type TIM10_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM10_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM10_CCR1_CCR1_Field is Interfaces.Bit_Types.UInt20;

   --  TIM10 capture/compare register 1
   type TIM10_CCR1_Register is record
      --  Capture/compare 1 value
      CCR1           : TIM10_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM10_TISEL_TI1SEL_Field is Interfaces.Bit_Types.UInt4;

   --  TIM10 timer input selection register
   type TIM10_TISEL_Register is record
      --  selects tim_ti1_in[15:0] input
      TI1SEL        : TIM10_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM10_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM10_Peripheral
     (Discriminent : TIM10_Disc := Input)
   is record
      --  TIM10 control register 1
      TIM10_CR1          : aliased TIM10_CR1_Register;
      --  TIM10 Interrupt enable register
      TIM10_DIER         : aliased TIM10_DIER_Register;
      --  TIM10 status register
      TIM10_SR           : aliased TIM10_SR_Register;
      --  TIM10 event generation register
      TIM10_EGR          : aliased TIM10_EGR_Register;
      --  TIM10 capture/compare enable register
      TIM10_CCER         : aliased TIM10_CCER_Register;
      --  TIM10 counter
      TIM10_CNT          : aliased TIM10_CNT_Register;
      --  TIM10 prescaler
      TIM10_PSC          : aliased Interfaces.Bit_Types.UInt16;
      --  TIM10 auto-reload register
      TIM10_ARR          : aliased TIM10_ARR_Register;
      --  TIM10 capture/compare register 1
      TIM10_CCR1         : aliased TIM10_CCR1_Register;
      --  TIM10 timer input selection register
      TIM10_TISEL        : aliased TIM10_TISEL_Register;
      case Discriminent is
         when Input =>
            --  TIM10 capture/compare mode register 1
            TIM10_CCMR1_Input : aliased TIM10_CCMR1_Input_Register;
         when Output =>
            --  TIM10 capture/compare mode register 1 [alternate]
            TIM10_CCMR1_Output : aliased TIM10_CCMR1_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM10_Peripheral use record
      TIM10_CR1          at 16#0# range 0 .. 15;
      TIM10_DIER         at 16#C# range 0 .. 15;
      TIM10_SR           at 16#10# range 0 .. 15;
      TIM10_EGR          at 16#14# range 0 .. 15;
      TIM10_CCER         at 16#20# range 0 .. 15;
      TIM10_CNT          at 16#24# range 0 .. 31;
      TIM10_PSC          at 16#28# range 0 .. 15;
      TIM10_ARR          at 16#2C# range 0 .. 31;
      TIM10_CCR1         at 16#34# range 0 .. 31;
      TIM10_TISEL        at 16#5C# range 0 .. 15;
      TIM10_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM10_CCMR1_Output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM10_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM10_Base;

end Interfaces.STM32.TIM10;
