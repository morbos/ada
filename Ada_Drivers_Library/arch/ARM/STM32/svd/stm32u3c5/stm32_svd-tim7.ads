--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM7 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

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

   subtype TIM7_CR2_MMS_Field is HAL.UInt3;

   --  TIM7 control register 2
   type TIM7_CR2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Master mode selection
      MMS            : TIM7_CR2_MMS_Field := 16#0#;
      --  unspecified
      Reserved_7_27  : HAL.UInt21 := 16#0#;
      --  ADC synchronization
      ADSYNC         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
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
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Update DMA request enable
      UDE           : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
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
      Reserved_1_15 : HAL.UInt15 := 16#0#;
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
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM7_EGR_Register use record
      UG            at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TIM7_CNT_CNT_Field is HAL.UInt16;

   --  TIM7 counter
   type TIM7_CNT_Register is record
      --  Counter value
      CNT            : TIM7_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
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

   subtype TIM7_ARR_ARR_Field is HAL.UInt20;

   --  TIM7 autoreload register
   type TIM7_ARR_Register is record
      --  Auto-reload value
      ARR            : TIM7_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM7_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TIM7 address block description
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
      TIM7_PSC  : aliased HAL.UInt16;
      --  TIM7 autoreload register
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

   --  TIM7 address block description
   SEC_TIM7_Periph : aliased TIM7_Peripheral
     with Import, Address => SEC_TIM7_Base;

   --  TIM7 address block description
   TIM7_Periph : aliased TIM7_Peripheral
     with Import, Address => TIM7_Base;

end STM32_SVD.TIM7;
