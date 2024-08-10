--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

--  This is a version for the STM32U5xx MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt      : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt          : constant Interrupt_ID := 0;

   --  Power voltage monitor/Analog voltage monitor
   PDV_AVD_Interrupt       : constant Interrupt_ID := 1;

   --  RTC global non-secure interrupts
   RTC_Interrupt           : constant Interrupt_ID := 2;

   --  RTC secure global secure interrupts
   RTC_S_Interrupt         : constant Interrupt_ID := 3;

   --  Tamper global interrupts
   TAMP_Interrupt          : constant Interrupt_ID := 4;

   --  RAM configuration global interrupt
   RAMCFG_Interrupt        : constant Interrupt_ID := 5;

   --  Flash memory non-secure global interrupt
   FLASH_Interrupt         : constant Interrupt_ID := 6;

   --  Flash memory secure global interrupt
   FLASH_S_Interrupt       : constant Interrupt_ID := 7;

   --  RCC secure global interrupt
   RCC_Interrupt           : constant Interrupt_ID := 9;

   --  RCC SECURE GLOBAL INTERRUPT
   RCC_S_Interrupt         : constant Interrupt_ID := 10;

   --  EXTI line0 interrupt
   EXTI0_Interrupt         : constant Interrupt_ID := 11;

   --  EXTI line1 interrupt
   EXTI1_Interrupt         : constant Interrupt_ID := 12;

   --  EXTI line2 interrupt
   EXTI2_Interrupt         : constant Interrupt_ID := 13;

   --  EXTI line3 interrupt
   EXTI3_Interrupt         : constant Interrupt_ID := 14;

   --  EXTI line4 interrupt
   EXTI4_Interrupt         : constant Interrupt_ID := 15;

   --  EXTI line5 interrupt
   EXTI5_Interrupt         : constant Interrupt_ID := 16;

   --  EXTI line6 interrupt
   EXTI6_Interrupt         : constant Interrupt_ID := 17;

   --  EXTI line7 interrupt
   EXTI7_Interrupt         : constant Interrupt_ID := 18;

   --  EXTI line8 interrupt
   EXTI8_Interrupt         : constant Interrupt_ID := 19;

   --  EXTI line9 interrupt
   EXTI9_Interrupt         : constant Interrupt_ID := 20;

   --  EXTI line10 interrupt
   EXTI10_Interrupt        : constant Interrupt_ID := 21;

   --  EXTI line11 interrupt
   EXTI11_Interrupt        : constant Interrupt_ID := 22;

   --  EXTI line12 interrupt
   EXTI12_Interrupt        : constant Interrupt_ID := 23;

   --  EXTI line13 interrupt
   EXTI13_Interrupt        : constant Interrupt_ID := 24;

   --  EXTI line14 interrupt
   EXTI14_Interrupt        : constant Interrupt_ID := 25;

   --  EXTI line15 interrupt
   EXTI15_Interrupt        : constant Interrupt_ID := 26;

   --  SAES global interrupt
   SAES_Interrupt          : constant Interrupt_ID := 28;

   --  GPDMA1 channel 0 global interrupt
   GPDMA1_CH0_Interrupt    : constant Interrupt_ID := 29;

   --  GPDMA1 channel 1 global interrupt
   GPDMA1_CH1_Interrupt    : constant Interrupt_ID := 30;

   --  GPDMA1 channel 2 global interrupt
   GPDMA1_CH2_Interrupt    : constant Interrupt_ID := 31;

   --  GPDMA1 channel 3 global interrupt
   GPDMA1_CH3_Interrupt    : constant Interrupt_ID := 32;

   --  GPDMA1 channel 4 global interrupt
   GPDMA1_CH4_Interrupt    : constant Interrupt_ID := 33;

   --  GPDMA1 channel 5 global interrupt
   GPDMA1_CH5_Interrupt    : constant Interrupt_ID := 34;

   --  GPDMA1 channel 6 global interrupt
   GPDMA1_CH6_Interrupt    : constant Interrupt_ID := 35;

   --  GPDMA1 channel 7 global interrupt
   GPDMA1_CH7_Interrupt    : constant Interrupt_ID := 36;

   --  ADC1 (16 bits) global interrupt
   ADC1_Interrupt          : constant Interrupt_ID := 37;

   --  DAC1 global interrupt
   DAC1_Interrupt          : constant Interrupt_ID := 38;

   --  FDCAN1 Interrupt 0
   FDCAN1_IT0_Interrupt    : constant Interrupt_ID := 39;

   --  FDCAN1 Interrupt 1
   FDCAN1_IT1_Interrupt    : constant Interrupt_ID := 40;

   --  TIM1 Break - transition error -index error
   TIM1_BRK_Interrupt      : constant Interrupt_ID := 41;

   --  TIM1 Update
   TIM1_UP_Interrupt       : constant Interrupt_ID := 42;

   --  TIM1 Trigger and Commutation - direction change interrupt -index
   TIM1_TRG_COM_Interrupt  : constant Interrupt_ID := 43;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt       : constant Interrupt_ID := 44;

   --  TIM2 global interrupt
   TIM2_Interrupt          : constant Interrupt_ID := 45;

   --  TIM3 global interrupt
   TIM3_Interrupt          : constant Interrupt_ID := 46;

   --  TIM4 global interrupt
   TIM4_Interrupt          : constant Interrupt_ID := 47;

   --  TIM5 global interrupt
   TIM5_Interrupt          : constant Interrupt_ID := 48;

   --  TIM6 global interrupt
   TIM6_Interrupt          : constant Interrupt_ID := 49;

   --  TIM7 global interrupt
   TIM7_Interrupt          : constant Interrupt_ID := 50;

   --  TIM8 Break Interrupt
   TIM8_BRK_Interrupt      : constant Interrupt_ID := 51;

   --  TIM8 Update Interrupt
   TIM8_UP_Interrupt       : constant Interrupt_ID := 52;

   --  TIM8 Trigger and Commutation Interrupt
   TIM8_TRG_COM_Interrupt  : constant Interrupt_ID := 53;

   --  TIM8 Capture Compare Interrupt
   TIM8_CC_Interrupt       : constant Interrupt_ID := 54;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt       : constant Interrupt_ID := 55;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt       : constant Interrupt_ID := 56;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt       : constant Interrupt_ID := 57;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt       : constant Interrupt_ID := 58;

   --  SPI1 global interrupt
   SPI1_Interrupt          : constant Interrupt_ID := 59;

   --  SPI2 global interrupt
   SPI2_Interrupt          : constant Interrupt_ID := 60;

   --  USART1 global interrupt
   USART1_Interrupt        : constant Interrupt_ID := 61;

   --  USART2 global interrupt
   USART2_Interrupt        : constant Interrupt_ID := 62;

   --  USART3 global interrupt
   USART3_Interrupt        : constant Interrupt_ID := 63;

   --  UART4 global interrupt
   UART4_Interrupt         : constant Interrupt_ID := 64;

   --  UART5 global interrupt
   UART5_Interrupt         : constant Interrupt_ID := 65;

   --  LPUART1 global interrupt
   LPUART1_Interrupt       : constant Interrupt_ID := 66;

   --  LPTIM1 global interrupt
   LPTIM1_Interrupt        : constant Interrupt_ID := 67;

   --  LPTIM2 global interrupt
   LPTIM2_Interrupt        : constant Interrupt_ID := 68;

   --  TIM15 global interrupt
   TIM15_Interrupt         : constant Interrupt_ID := 69;

   --  TIM16 global interrupt
   TIM16_Interrupt         : constant Interrupt_ID := 70;

   --  TIM17 global interrupt
   TIM17_Interrupt         : constant Interrupt_ID := 71;

   --  COMP1 and COMP2 interrupts
   COMP_Interrupt          : constant Interrupt_ID := 72;

   --  USB OTG FS global interrupt
   OTG_FS_Interrupt        : constant Interrupt_ID := 73;

   --  FMC global interrupt
   FMC_Interrupt           : constant Interrupt_ID := 75;

   --  OCTOSPI1 global interrupt
   OCTOSPI1_Interrupt      : constant Interrupt_ID := 76;

   --  PWR wakeup from Stop 3 interrupt
   PWR_S3WU_Interrupt      : constant Interrupt_ID := 77;

   --  SDMMC1 global interrupt
   SDMMC1_Interrupt        : constant Interrupt_ID := 78;

   --  SDMMC2 global interrupt
   SDMMC2_Interrupt        : constant Interrupt_ID := 79;

   --  FPU global interrupt
   FPU_Interrupt           : constant Interrupt_ID := 81;

   --  I2C3 event interrupt
   I2C3_EV_Interrupt       : constant Interrupt_ID := 88;

   --  I2C3 error interrupt
   I2C3_ER_Interrupt       : constant Interrupt_ID := 89;

   --  SAI1 global interrupt
   SAI1_Interrupt          : constant Interrupt_ID := 90;

   --  SAI2 global interrupt
   SAI2_Interrupt          : constant Interrupt_ID := 91;

   --  TSC global interrupt
   TSC_Interrupt           : constant Interrupt_ID := 92;

   --  AES global interrupt
   AES_Interrupt           : constant Interrupt_ID := 93;

   --  RNG global interrupt
   RNG_Interrupt           : constant Interrupt_ID := 94;

   --  HASH interrupt
   HASH_Interrupt          : constant Interrupt_ID := 96;

   --  PKA global interrupt
   PKA_Interrupt           : constant Interrupt_ID := 97;

   --  LPTIM3 global interrupt
   LPTIM3_Interrupt        : constant Interrupt_ID := 98;

   --  SPI3 global interrupt
   SPI3_Interrupt          : constant Interrupt_ID := 99;

   --  I2C4 error interrupt
   I2C4_ER_Interrupt       : constant Interrupt_ID := 100;

   --  I2C4 event interrupt
   I2C4_EV_Interrupt       : constant Interrupt_ID := 101;

   --  MDF1 filter 0 global interrupt
   MDF1_FLT0_Interrupt     : constant Interrupt_ID := 102;

   --  MDF1 filter 1 global interrupt
   MDF1_FLT1_Interrupt     : constant Interrupt_ID := 103;

   --  MDF1 filter 2 global interrupt
   MDF1_FLT2_Interrupt     : constant Interrupt_ID := 104;

   --  MDF1 filter 3 global interrupt
   MDF1_FLT3_Interrupt     : constant Interrupt_ID := 105;

   --  UCPD1 global interrupt
   UCPD1_Interrupt         : constant Interrupt_ID := 106;

   --  Instruction cache global interrupt
   ICACHE_Interrupt        : constant Interrupt_ID := 107;

   --  OTFDEC1 interrupt
   OTFDEC1_Interrupt       : constant Interrupt_ID := 108;

   --  OTFDEC2 interrupt
   OTFDEC2_Interrupt       : constant Interrupt_ID := 109;

   --  LPTIM4 global interrupt
   LPTIM4_Interrupt        : constant Interrupt_ID := 110;

   --  Data cache global interrupt
   DCACHE_Interrupt        : constant Interrupt_ID := 111;

   --  ADF1 filter 0 global interrupt
   ADF1_FLT0_Interrupt     : constant Interrupt_ID := 112;

   --  ADC4 (12 bits) global interrupt
   ADC4_Interrupt          : constant Interrupt_ID := 113;

   --  LPDMA1 SmartRun channel 0 global interrupt
   LPDMA1_CH0_Interrupt    : constant Interrupt_ID := 114;

   --  LPDMA1 SmartRun channel 1 global interrupt
   LPDMA1_CH1_Interrupt    : constant Interrupt_ID := 115;

   --  LPDMA1 SmartRun channel 2 global interrupt
   LPDMA1_CH2_Interrupt    : constant Interrupt_ID := 116;

   --  LPDMA1 SmartRun channel 3 global interrupt
   LPDMA1_CH3_Interrupt    : constant Interrupt_ID := 117;

   --  DMA2D global interrupt
   DMA2D_Interrupt         : constant Interrupt_ID := 118;

   --  Digital camera interface
   DCMI_Interrupt          : constant Interrupt_ID := 119;

   --  OCTOSPI2 global interrupt
   OCTOSPI2_Interrupt      : constant Interrupt_ID := 120;

   --  MDF1 filter 4 global interrupt
   MDF1_FLT4_Interrupt     : constant Interrupt_ID := 121;

   --  MDF1 filter 5 global interrupt
   MDF1_FLT5_Interrupt     : constant Interrupt_ID := 122;

   --  Cordic interrupt
   Cordic_Interrupt        : constant Interrupt_ID := 123;

   --  FMAC interrupt
   FMAC_Interrupt          : constant Interrupt_ID := 124;

end Ada.Interrupts.Names;
