--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

--  This is a version for the CH32V00xxx View File MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt       : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt           : constant Interrupt_ID := 16;

   --  PVD through EXTI line detection interrupt
   PVD_Interrupt            : constant Interrupt_ID := 17;

   --  Flash global interrupt
   FLASH_Interrupt          : constant Interrupt_ID := 18;

   --  RCC global interrupt
   RCC_Interrupt            : constant Interrupt_ID := 19;

   --  EXTI Line[7:0] interrupt
   EXTI7_0_Interrupt        : constant Interrupt_ID := 20;

   --  AWU global interrupt
   AWU_Interrupt            : constant Interrupt_ID := 21;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1_Interrupt  : constant Interrupt_ID := 22;

   --  DMA1 Channel2 global interrupt
   DMA1_Channel2_Interrupt  : constant Interrupt_ID := 23;

   --  DMA1 Channel3 global interrupt
   DMA1_Channel3_Interrupt  : constant Interrupt_ID := 24;

   --  DMA1 Channel4 global interrupt
   DMA1_Channel4_Interrupt  : constant Interrupt_ID := 25;

   --  DMA1 Channel5 global interrupt
   DMA1_Channel5_Interrupt  : constant Interrupt_ID := 26;

   --  DMA1 Channel6 global interrupt
   DMA1_Channel6_Interrupt  : constant Interrupt_ID := 27;

   --  DMA1 Channel7 global interrupt
   DMA1_Channel7_Interrupt  : constant Interrupt_ID := 28;

   --  ADC global interrupt
   ADC_Interrupt            : constant Interrupt_ID := 29;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt        : constant Interrupt_ID := 30;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt        : constant Interrupt_ID := 31;

   --  USART1 global interrupt
   USART1_Interrupt         : constant Interrupt_ID := 32;

   --  SPI1 global interrupt
   SPI1_Interrupt           : constant Interrupt_ID := 33;

   --  TIM1 Break interrupt
   TIM1_BRK_Interrupt       : constant Interrupt_ID := 34;

   --  TIM1 Update interrupt
   TIM1_UP_Interrupt        : constant Interrupt_ID := 35;

   --  TIM1 Trigger and Commutation interrupts
   TIM1_TRG_COM_Interrupt   : constant Interrupt_ID := 36;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt        : constant Interrupt_ID := 37;

   --  TIM2 global interrupt
   TIM2_Interrupt           : constant Interrupt_ID := 38;

end Ada.Interrupts.Names;
