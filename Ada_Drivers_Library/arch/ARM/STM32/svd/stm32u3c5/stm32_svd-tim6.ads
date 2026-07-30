--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM6 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

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
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
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

   subtype TIM6_CR2_MMS_Field is HAL.UInt3;

   --  TIM6 control register 2
   type TIM6_CR2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM6_CR2_MMS_Field := 16#0#;
      --  unspecified
      Reserved_7_27  : HAL.UInt21 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
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
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Update DMA request enable
      UDE           : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
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
      Reserved_1_15 : HAL.UInt15 := 16#0#;
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
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_EGR_Register use record
      UG            at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TIM6_CNT_CNT_Field is HAL.UInt16;

   --  TIM6 counter
   type TIM6_CNT_Register is record
      --  Counter value
      CNT            : TIM6_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
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

   subtype TIM6_ARR_ARR_Field is HAL.UInt20;

   --  TIM6 autoreload register
   type TIM6_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM6_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TIM6 address block description
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
      TIM6_PSC  : aliased HAL.UInt16;
      --  TIM6 autoreload register
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

   --  TIM6 address block description
   SEC_TIM6_Periph : aliased TIM6_Peripheral
     with Import, Address => SEC_TIM6_Base;

   --  TIM6 address block description
   TIM6_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM6_Base;

end STM32_SVD.TIM6;
