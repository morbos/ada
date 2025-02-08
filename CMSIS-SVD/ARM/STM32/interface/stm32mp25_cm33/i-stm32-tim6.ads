--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.TIM6 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  TIM6 control register 1
   type TIM6_CR1_Register is record
      --  Counter enable CEN is cleared automatically in one-pulse mode, when
      --  an update event occurs.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable UEV event generation. Counter overflow/underflow
      --  Setting the UG bit Update generation through the slave mode
      --  controller Buffered registers are then loaded with their preload
      --  values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the UEV event sources. Counter overflow/underflow Setting the
      --  UG bit Update generation through the slave mode controller
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
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

   subtype TIM6_CR2_MMS_Field is Interfaces.Bit_Types.UInt3;

   --  TIM6 control register 2
   type TIM6_CR2_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Master mode selection These bits are used to select the information
      --  to be sent in master mode to slave timers for synchronization (TRGO).
      --  The combination is as follows: Note: The clock of the slave timer or
      --  he peripheral receiving the tim_trgo must be enabled prior to receive
      --  events from the master timer, and must not be changed on-the-fly
      --  while triggers are received from the master timer.
      MMS           : TIM6_CR2_MMS_Field := 16#0#;
      --  unspecified
      Reserved_7_15 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_CR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      MMS           at 0 range 4 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   --  TIM6 DMA/Interrupt enable register
   type TIM6_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Update DMA request enable
      UDE           : Boolean := False;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
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
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. On counter overflow if UDIS = 0 in the
      --  TIMx_CR1 register. When CNT is reinitialized by software using the UG
      --  bit in the TIMx_EGR register, if URS=0 and UDIS=0 in the TIMx_CR1
      --  register.
      UIF           : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_SR_Register use record
      UIF           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  TIM6 event generation register
   type TIM6_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  unspecified
      Reserved_1_15 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM6_EGR_Register use record
      UG            at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TIM6_CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  TIM6 counter
   type TIM6_CNT_Register is record
      --  Counter value Non-dithering mode (DITHEN = 0) The register holds the
      --  counter value. Dithering mode (DITHEN = 1) The register only holds
      --  the non-dithered part in CNT[15:0]. The fractional part is not
      --  available.
      CNT            : TIM6_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Read-only. UIF copy This bit is a read-only copy of the UIF bit of
      --  the TIMx_ISR register. If the UIFREMAP bit in TIMx_CR1 is reset, bit
      --  31 is reserved and read as 0.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM6_ARR_ARR_Field is Interfaces.Bit_Types.UInt20;

   --  TIM6 auto-reload register
   type TIM6_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded into the actual
      --  auto-reload register. Refer to Section65.3.4: Time-base unit on
      --  page3789 for more details about ARR update and behavior. The counter
      --  is blocked while the auto-reload value is null. Non-dithering mode
      --  (DITHEN = 0) The register holds the auto-reload value in ARR[15:0].
      --  The ARR[19:16] bits are reserved. Dithering mode (DITHEN = 1) The
      --  register holds the integer part in ARR[19:4]. The ARR[3:0] bit field
      --  contains the dithered part.
      ARR            : TIM6_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM6_HWCFGR2_PSC_LINEAR_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR2_PSC_WIDTH16_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR2_CNT_WIDTH_Field is Interfaces.Bit_Types.Byte;
   subtype TIM6_HWCFGR2_OPTIONREG_OUT_Field is Interfaces.Bit_Types.Byte;

   --  TIM6 hardware configuration 2 register
   type TIM6_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM6_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM6_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM6_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM6_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM6_HWCFGR1_NB_OF_CC_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_NB_OF_DT_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_NB_OF_SM_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_RCR_IMPL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_ETR_IMPL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_BK_IMPL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_DMA_IMPL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_HWCFGR1_CNT_DIR_Field is Interfaces.Bit_Types.UInt4;

   --  TIM6 hardware configuration 1 register
   type TIM6_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM6_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM6_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM6_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM6_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM6_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM6_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM6_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM6_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM6_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype TIM6_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  TIM6 IP version register
   type TIM6_VERR_Register is record
      --  Read-only. Minor revision number. 0x3
      MINREV        : TIM6_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM6_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM6_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TIM6 address block description
   type TIM6_Peripheral is record
      --  TIM6 control register 1
      TIM6_CR1     : aliased TIM6_CR1_Register;
      --  TIM6 control register 2
      TIM6_CR2     : aliased TIM6_CR2_Register;
      --  TIM6 DMA/Interrupt enable register
      TIM6_DIER    : aliased TIM6_DIER_Register;
      --  TIM6 status register
      TIM6_SR      : aliased TIM6_SR_Register;
      --  TIM6 event generation register
      TIM6_EGR     : aliased TIM6_EGR_Register;
      --  TIM6 counter
      TIM6_CNT     : aliased TIM6_CNT_Register;
      --  TIM6 prescaler
      TIM6_PSC     : aliased Interfaces.Bit_Types.UInt16;
      --  TIM6 auto-reload register
      TIM6_ARR     : aliased TIM6_ARR_Register;
      --  TIM6 hardware configuration 2 register
      TIM6_HWCFGR2 : aliased TIM6_HWCFGR2_Register;
      --  TIM6 hardware configuration 1 register
      TIM6_HWCFGR1 : aliased TIM6_HWCFGR1_Register;
      --  TIM6 IP version register
      TIM6_VERR    : aliased TIM6_VERR_Register;
      --  TIM6 IP identification register
      TIM6_IPIDR   : aliased Interfaces.Bit_Types.UInt32;
      --  TIM6 size ID register
      TIM6_SIDR    : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for TIM6_Peripheral use record
      TIM6_CR1     at 16#0# range 0 .. 15;
      TIM6_CR2     at 16#4# range 0 .. 15;
      TIM6_DIER    at 16#C# range 0 .. 15;
      TIM6_SR      at 16#10# range 0 .. 15;
      TIM6_EGR     at 16#14# range 0 .. 15;
      TIM6_CNT     at 16#24# range 0 .. 31;
      TIM6_PSC     at 16#28# range 0 .. 15;
      TIM6_ARR     at 16#2C# range 0 .. 31;
      TIM6_HWCFGR2 at 16#3EC# range 0 .. 31;
      TIM6_HWCFGR1 at 16#3F0# range 0 .. 31;
      TIM6_VERR    at 16#3F4# range 0 .. 31;
      TIM6_IPIDR   at 16#3F8# range 0 .. 31;
      TIM6_SIDR    at 16#3FC# range 0 .. 31;
   end record;

   --  TIM6 address block description
   TIM6_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM6_Base;

   --  TIM6 address block description
   TIM6_S_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM6_S_Base;

   --  TIM6 address block description
   TIM7_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM7_Base;

   --  TIM6 address block description
   TIM7_S_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM7_S_Base;

end Interfaces.STM32.TIM6;
