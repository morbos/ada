--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32L4x3.svd

--  This is a version for the STM32L4x3 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt       : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt           : constant Interrupt_ID := 0;

   --  PVD through EXTI line detection
   PVD_Interrupt            : constant Interrupt_ID := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP_Interrupt     : constant Interrupt_ID := 2;

   --  RTC Tamper or TimeStamp /CSS on LSE through EXTI line 19 interrupts
   RTC_WKUP_Interrupt       : constant Interrupt_ID := 3;

   --  Flash global interrupt
   FLASH_Interrupt          : constant Interrupt_ID := 4;

   --  RCC global interrupt
   RCC_Interrupt            : constant Interrupt_ID := 5;

   --  EXTI Line 0 interrupt
   EXTI0_Interrupt          : constant Interrupt_ID := 6;

   --  EXTI Line 1 interrupt
   EXTI1_Interrupt          : constant Interrupt_ID := 7;

   --  EXTI Line 2 interrupt
   EXTI2_Interrupt          : constant Interrupt_ID := 8;

   --  EXTI Line 3 interrupt
   EXTI3_Interrupt          : constant Interrupt_ID := 9;

   --  EXTI Line4 interrupt
   EXTI4_Interrupt          : constant Interrupt_ID := 10;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1_Interrupt  : constant Interrupt_ID := 11;

   --  DMA1 Channel2 global interrupt
   DMA1_Channel2_Interrupt  : constant Interrupt_ID := 12;

   --  DMA1 Channel3 interrupt
   DMA1_Channel3_Interrupt  : constant Interrupt_ID := 13;

   --  DMA1 Channel4 interrupt
   DMA1_Channel4_Interrupt  : constant Interrupt_ID := 14;

   --  DMA1 Channel5 interrupt
   DMA1_Channel5_Interrupt  : constant Interrupt_ID := 15;

   --  DMA1 Channel6 interrupt
   DMA1_Channel6_Interrupt  : constant Interrupt_ID := 16;

   --  DMA1 Channel 7 interrupt
   DMA1_Channel7_Interrupt  : constant Interrupt_ID := 17;

   --  ADC1 and ADC2 global interrupt
   ADC1_Interrupt           : constant Interrupt_ID := 18;

   --  CAN1 TX interrupts
   CAN1_TX_Interrupt        : constant Interrupt_ID := 19;

   --  CAN1 RX0 interrupts
   CAN1_RX0_Interrupt       : constant Interrupt_ID := 20;

   --  CAN1 RX1 interrupts
   CAN1_RX1_Interrupt       : constant Interrupt_ID := 21;

   --  CAN1 SCE interrupt
   CAN1_SCE_Interrupt       : constant Interrupt_ID := 22;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5_Interrupt        : constant Interrupt_ID := 23;

   --  Timer 15 global interrupt
   TIM15_Interrupt          : constant Interrupt_ID := 24;

   --  Timer 16 global interrupt
   TIM16_Interrupt          : constant Interrupt_ID := 25;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt        : constant Interrupt_ID := 27;

   --  TIM2 global interrupt
   TIM2_Interrupt           : constant Interrupt_ID := 28;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt        : constant Interrupt_ID := 31;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt        : constant Interrupt_ID := 32;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt        : constant Interrupt_ID := 33;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt        : constant Interrupt_ID := 34;

   --  SPI1 global interrupt
   SPI1_Interrupt           : constant Interrupt_ID := 35;

   --  SPI2 global interrupt
   SPI2_Interrupt           : constant Interrupt_ID := 36;

   --  USART1 global interrupt
   USART1_Interrupt         : constant Interrupt_ID := 37;

   --  USART2 global interrupt
   USART2_Interrupt         : constant Interrupt_ID := 38;

   --  USART3 global interrupt
   USART3_Interrupt         : constant Interrupt_ID := 39;

   --  EXTI Lines 10 to 15 interrupts
   EXTI15_10_Interrupt      : constant Interrupt_ID := 40;

   --  RTC alarms through EXTI line 18 interrupts
   RTC_ALARM_Interrupt      : constant Interrupt_ID := 41;

   --  ADC3 global Interrupt
   ADC3_Interrupt           : constant Interrupt_ID := 47;

   --  SDMMC global Interrupt
   SDMMC_Interrupt          : constant Interrupt_ID := 49;

   --  SPI3 global Interrupt
   SPI3_Interrupt           : constant Interrupt_ID := 51;

   --  TIM6 global and DAC1 and 2 underrun error interrupts
   TIM6_DAC_Interrupt       : constant Interrupt_ID := 54;

   --  TIM7 global interrupt
   TIM7_Interrupt           : constant Interrupt_ID := 55;

   --  DMA2 Channel 1 global Interrupt
   DMA2_Channel1_Interrupt  : constant Interrupt_ID := 56;

   --  DMA2 Channel 2 global Interrupt
   DMA2_Channel2_Interrupt  : constant Interrupt_ID := 57;

   --  DMA2 Channel 3 global Interrupt
   DMA2_Channel3_Interrupt  : constant Interrupt_ID := 58;

   --  DMA2 Channel 4 global Interrupt
   DMA2_Channel4_Interrupt  : constant Interrupt_ID := 59;

   --  DMA2 Channel 5 global Interrupt
   DMA2_Channel5_Interrupt  : constant Interrupt_ID := 60;

   --  COMP1 and COMP2 interrupts
   COMP_Interrupt           : constant Interrupt_ID := 64;

   --  LP TIM1 interrupt
   LPTIM1_Interrupt         : constant Interrupt_ID := 65;

   --  LP TIM2 interrupt
   LPTIM2_Interrupt         : constant Interrupt_ID := 66;

   --  DMA2 Channel 6 global Interrupt
   DMA2_Channel6_Interrupt  : constant Interrupt_ID := 68;

   --  DMA2 Channel 7 global Interrupt
   DMA2_Channel7_Interrupt  : constant Interrupt_ID := 69;

   --  I2C3 event interrupt
   I2C3_EV_Interrupt        : constant Interrupt_ID := 72;

   --  I2C3 error interrupt
   I2C3_ER_Interrupt        : constant Interrupt_ID := 73;

   --  SAI1 global interrupt
   SAI1_Interrupt           : constant Interrupt_ID := 74;

   --  SWPMI1 global interrupt
   SWPMI1_Interrupt         : constant Interrupt_ID := 76;

   --  TSC global interrupt
   TSC_Interrupt            : constant Interrupt_ID := 77;

   --  LCD global interrupt
   LCD_Interrupt            : constant Interrupt_ID := 78;

   --  RNG global interrupt
   RNG_Interrupt            : constant Interrupt_ID := 79;

   --  CRS global interrupt
   CRS_Interrupt            : constant Interrupt_ID := 80;

   --  FPU global interrupt
   FPU_Interrupt            : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
