--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from STM32U3C5.svd

--  This is a version for the STM32U3C5 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt              : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt                  : constant Interrupt_ID := 0;

   --  Programmable voltage detector/peripheral voltage
   --  monitor-ExTI16/19/20/21/22
   PVD_PVM_Interrupt               : constant Interrupt_ID := 1;

   --  RTC global non-secure interrupts
   RTC_Interrupt                   : constant Interrupt_ID := 2;

   --  RTC global secure interrupts
   RTC_S_Interrupt                 : constant Interrupt_ID := 3;

   --  Tamper global interrupts
   TAMP_Interrupt                  : constant Interrupt_ID := 4;

   --  RAM configuration global interrupt
   RAMCFG_Interrupt                : constant Interrupt_ID := 5;

   --  Flash non-secure global interrupt
   FLASH_Interrupt                 : constant Interrupt_ID := 6;

   --  Flash memory secure global interrupt
   FLASH_S_Interrupt               : constant Interrupt_ID := 7;

   --  GTZC1/GTZC2 global interrupt
   GTZC_Interrupt                  : constant Interrupt_ID := 8;

   --  RCC non-secure global interrupt
   RCC_Interrupt                   : constant Interrupt_ID := 9;

   --  RCC secure global interrupt
   RCC_S_Interrupt                 : constant Interrupt_ID := 10;

   --  EXTI Line0 interrupt
   EXTI0_Interrupt                 : constant Interrupt_ID := 11;

   --  EXTI Line1 interrupt
   EXTI1_Interrupt                 : constant Interrupt_ID := 12;

   --  EXTI Line2 interrupt
   EXTI2_Interrupt                 : constant Interrupt_ID := 13;

   --  EXTI Line3 interrupt
   EXTI3_Interrupt                 : constant Interrupt_ID := 14;

   --  EXTI Line4 interrupt
   EXTI4_Interrupt                 : constant Interrupt_ID := 15;

   --  EXTI Line5 interrupt
   EXTI5_Interrupt                 : constant Interrupt_ID := 16;

   --  EXTI Line6 interrupt
   EXTI6_Interrupt                 : constant Interrupt_ID := 17;

   --  EXTI Line7 interrupt
   EXTI7_Interrupt                 : constant Interrupt_ID := 18;

   --  EXTI Line8 interrupt
   EXTI8_Interrupt                 : constant Interrupt_ID := 19;

   --  EXTI Line9 interrupt
   EXTI9_Interrupt                 : constant Interrupt_ID := 20;

   --  EXTI Line10 interrupt
   EXTI10_Interrupt                : constant Interrupt_ID := 21;

   --  EXTI Line11 interrupt
   EXTI11_Interrupt                : constant Interrupt_ID := 22;

   --  EXTI Line12 interrupt
   EXTI12_Interrupt                : constant Interrupt_ID := 23;

   --  EXTI Line13 interrupt
   EXTI13_Interrupt                : constant Interrupt_ID := 24;

   --  EXTI Line14 interrupt
   EXTI14_Interrupt                : constant Interrupt_ID := 25;

   --  EXTI Line15 interrupt
   EXTI15_Interrupt                : constant Interrupt_ID := 26;

   --  Independent watchdog interrupt
   IWDG_Interrupt                  : constant Interrupt_ID := 27;

   --  Secure AES
   SAES_Interrupt                  : constant Interrupt_ID := 28;

   --  GPDMA1 channel 0 global interrupt
   GPDMA1_CHannel0_Interrupt       : constant Interrupt_ID := 29;

   --  GPDMA1 channel 1 global interrupt
   GPDMA1_CHannel1_Interrupt       : constant Interrupt_ID := 30;

   --  GPDMA1 channel 2 global interrupt
   GPDMA1_CHannel2_Interrupt       : constant Interrupt_ID := 31;

   --  GPDMA1 channel 3 global interrupt
   GPDMA1_CHannel3_Interrupt       : constant Interrupt_ID := 32;

   --  GPDMA1 channel 4 global interrupt
   GPDMA1_CHannel4_Interrupt       : constant Interrupt_ID := 33;

   --  GPDMA1 channel 5 global interrupt
   GPDMA1_CHannel5_Interrupt       : constant Interrupt_ID := 34;

   --  GPDMA1 channel 6 global interrupt
   GPDMA1_CHannel6_Interrupt       : constant Interrupt_ID := 35;

   --  GPDMA1 channel 7 global interrupt
   GPDMA1_CHannel7_Interrupt       : constant Interrupt_ID := 36;

   --  ADC1 global interrupt
   ADC1_Interrupt                  : constant Interrupt_ID := 37;

   --  DAC1 global interrupt
   DAC1_Interrupt                  : constant Interrupt_ID := 38;

   --  FDCAN1 Interrupt 0
   FDCAN1_IT0_Interrupt            : constant Interrupt_ID := 39;

   --  FDCAN1 Interrupt 1
   FDCAN1_IT1_Interrupt            : constant Interrupt_ID := 40;

   --  TIM1 Break-transition error -index error
   TIM1_BRK_Interrupt              : constant Interrupt_ID := 41;

   --  TIM1 Update
   TIM1_UP_Interrupt               : constant Interrupt_ID := 42;

   --  TIM1 Trigger and Commutation-direction change interrupt -index
   TIM1_TRG_COM_Interrupt          : constant Interrupt_ID := 43;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt               : constant Interrupt_ID := 44;

   --  TIM2 global interrupt
   TIM2_Interrupt                  : constant Interrupt_ID := 45;

   --  TIM3 global interrupt
   TIM3_Interrupt                  : constant Interrupt_ID := 46;

   --  TIM4 global interrupt
   TIM4_Interrupt                  : constant Interrupt_ID := 47;

   --  TIM6 global interrupt
   TIM6_Interrupt                  : constant Interrupt_ID := 49;

   --  TIM7 global interrupt
   TIM7_Interrupt                  : constant Interrupt_ID := 50;

   --  TIM12 global interrupt
   TIM12_Interrupt                 : constant Interrupt_ID := 51;

   --  I3C1 error interrupt
   I3C1_ER_Interrupt               : constant Interrupt_ID := 53;

   --  I3C1 event interrupt
   I3C1_EV_Interrupt               : constant Interrupt_ID := 54;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt               : constant Interrupt_ID := 55;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt               : constant Interrupt_ID := 56;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt               : constant Interrupt_ID := 57;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt               : constant Interrupt_ID := 58;

   --  SPI1 global interrupt
   SPI1_Interrupt                  : constant Interrupt_ID := 59;

   --  SPI2 global interrupt
   SPI2_Interrupt                  : constant Interrupt_ID := 60;

   --  USART1 global interrupt
   USART1_Interrupt                : constant Interrupt_ID := 61;

   --  USART2 global interrupt
   USART2_Interrupt                : constant Interrupt_ID := 62;

   --  USART3 global interrupt
   USART3_Interrupt                : constant Interrupt_ID := 63;

   --  USART4 global interrupt
   UART4_Interrupt                 : constant Interrupt_ID := 64;

   --  USART5 global interrupt
   UART5_Interrupt                 : constant Interrupt_ID := 65;

   --  LPUART1 global interrupt
   LPUART1_Interrupt               : constant Interrupt_ID := 66;

   --  LPTIM1 global interrupt
   LPTIM1_Interrupt                : constant Interrupt_ID := 67;

   --  LPTIM2 global interrupt
   LPTIM2_Interrupt                : constant Interrupt_ID := 68;

   --  TIM15 global interrupt
   TIM15_Interrupt                 : constant Interrupt_ID := 69;

   --  TIM16 global interrupt
   TIM16_Interrupt                 : constant Interrupt_ID := 70;

   --  TIM17 global interrupt
   TIM17_Interrupt                 : constant Interrupt_ID := 71;

   --  COMP1 and COMP2 interrupts
   COMP_Interrupt                  : constant Interrupt_ID := 72;

   --  USB FS global interrupt
   USB_FS_Interrupt                : constant Interrupt_ID := 73;

   --  Clock recovery system global interrupt
   CRS_Interrupt                   : constant Interrupt_ID := 74;

   --  OCTOSPI1 global interrupt
   OCTOSPI1_Interrupt              : constant Interrupt_ID := 76;

   --  HSP1 global interrupt
   HSP1_Interrupt                  : constant Interrupt_ID := 77;

   --  SDMMC1 global interrupt
   SDMMC1_Interrupt                : constant Interrupt_ID := 78;

   --  GPDMA1 channel 8 global interrupt
   GPDMA1_CHannel8_Interrupt       : constant Interrupt_ID := 80;

   --  FPU global interrupt
   FPU_Interrupt                   : constant Interrupt_ID := 81;

   --  GPDMA1 channel 9 global interrupt
   GPDMA1_CHannel9_Interrupt       : constant Interrupt_ID := 81;

   --  GPDMA1 channel 10 global interrupt
   GPDMA1_CHannel10_Interrupt      : constant Interrupt_ID := 82;

   --  GPDMA1 channel 11 global interrupt
   GPDMA1_CHannel11_Interrupt      : constant Interrupt_ID := 83;

   --  I2C3 event interrupt
   I2C3_EV_Interrupt               : constant Interrupt_ID := 88;

   --  I2C3 error interrupt
   I2C3_ER_Interrupt               : constant Interrupt_ID := 89;

   --  SAI1 global interrupt
   SAI1_Interrupt                  : constant Interrupt_ID := 90;

   --  TSC global interrupt
   TSC_Interrupt                   : constant Interrupt_ID := 92;

   --  AES global interrupt
   AES_Interrupt                   : constant Interrupt_ID := 93;

   --  RNG global interrupt
   RNG_Interrupt                   : constant Interrupt_ID := 94;

   --  HASH interrupt
   HASH_Interrupt                  : constant Interrupt_ID := 96;

   --  PKA global interrupt
   PKA_Interrupt                   : constant Interrupt_ID := 97;

   --  LPTIM3 global interrupt
   LPTIM3_Interrupt                : constant Interrupt_ID := 98;

   --  SPI3 global interrupt
   SPI3_Interrupt                  : constant Interrupt_ID := 99;

   --  I3C2 error interrupt
   I3C2_ER_Interrupt               : constant Interrupt_ID := 100;

   --  I3C2 event interrupt
   I3C2_EV_Interrupt               : constant Interrupt_ID := 101;

   --  TIM8 break_transition error_index error
   TIM1_BRK_TERR_IERR_Interrupt    : constant Interrupt_ID := 102;

   --  TIM8 trigger and commutation_direction change interrupt_index
   TIM1_TRG_COM_DIR_IDX_Interrupt  : constant Interrupt_ID := 104;

   --  TIM8 capture compare interrupt
   TIM8_CC_Interrupt               : constant Interrupt_ID := 105;

   --  Instruction cache global interrupt
   ICACHE_Interrupt                : constant Interrupt_ID := 107;

   --  LPTIM4 global interrupt
   LPTIM4_Interrupt                : constant Interrupt_ID := 110;

   --  ADF1 interrupt
   ADF1_Interrupt                  : constant Interrupt_ID := 112;

   --  ADC2 global interrupt
   ADC2_Interrupt                  : constant Interrupt_ID := 113;

   --  FDCAN2 Interrupt 0
   FDCAN2_IT0_Interrupt            : constant Interrupt_ID := 114;

   --  FDCAN2 Interrupt 1
   FDCAN2_IT1_Interrupt            : constant Interrupt_ID := 115;

   --  I2C4 event interrupt
   I2C4_EV_Interrupt               : constant Interrupt_ID := 116;

   --  I2C4 error interrupt
   I2C4_ER_Interrupt               : constant Interrupt_ID := 117;

   --  SPI4 global interrupt
   SPI4_Interrupt                  : constant Interrupt_ID := 119;

   --  PWR non-secure interrupt
   PWR_Interrupt                   : constant Interrupt_ID := 123;

   --  PWR secure interrupt
   PWR_S_Interrupt                 : constant Interrupt_ID := 124;

end Ada.Interrupts.Names;
