--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

--  This is a version for the STM32N657 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt          : constant Interrupt_ID := -1;

   --  PVDOUT through the EXTI line
   PVD_PVM_Interrupt           : constant Interrupt_ID := 0;

   --  Thermal sensor interruption
   DTS_Interrupt               : constant Interrupt_ID := 2;

   --  RCC global interrupt
   RCC_Interrupt               : constant Interrupt_ID := 3;

   --  LOCKUP - no overstack in Cortex-M55
   LOCKUP_Interrupt            : constant Interrupt_ID := 4;

   --  Cache ECC error
   CACHE_ECC_Interrupt         : constant Interrupt_ID := 5;

   --  TCM ECC error
   TCM_ECC_Interrupt           : constant Interrupt_ID := 6;

   --  Backup RAM interrupts (SEC and DED)
   BCK_ECC_Interrupt           : constant Interrupt_ID := 7;

   --  RTC secure interrupt
   RTC_S_Interrupt             : constant Interrupt_ID := 10;

   --  TAMP secure and non-secure synchronous interrupt line
   TAMP_Interrupt              : constant Interrupt_ID := 11;

   --  RIF can generate an interrupt when a laser attack is detected
   RIFSC_TAMPER_Interrupt      : constant Interrupt_ID := 12;

   --  IAC global interrupt
   IAC_Interrupt               : constant Interrupt_ID := 13;

   --  RCC global secure interrupt
   RCC_S_Interrupt             : constant Interrupt_ID := 14;

   --  RTC interrupt
   RTC_Interrupt               : constant Interrupt_ID := 16;

   --  Independent watchdog interrupt
   WDGLS_EARLY_Interrupt       : constant Interrupt_ID := 18;

   --  Window watchdog interrupt
   WWDG_EARLY_Interrupt        : constant Interrupt_ID := 19;

   --  EXTI Line 0 interrupt through the EXTI line
   EXTI0_Interrupt             : constant Interrupt_ID := 20;

   --  EXTI Line 1 interrupt through the EXTI line
   EXTI1_Interrupt             : constant Interrupt_ID := 21;

   --  EXTI Line 2 interrupt through the EXTI line
   EXTI2_Interrupt             : constant Interrupt_ID := 22;

   --  EXTI Line 3 interrupt through the EXTI line
   EXTI3_Interrupt             : constant Interrupt_ID := 23;

   --  EXTI Line 4 interrupt through the EXTI line
   EXTI4_Interrupt             : constant Interrupt_ID := 24;

   --  EXTI Line 5 interrupt through the EXTI line
   EXTI5_Interrupt             : constant Interrupt_ID := 25;

   --  EXTI Line 6 interrupt through the EXTI line
   EXTI6_Interrupt             : constant Interrupt_ID := 26;

   --  EXTI Line 7 interrupt through the EXTI line
   EXTI7_Interrupt             : constant Interrupt_ID := 27;

   --  EXTI Line 8 interrupt through the EXTI line
   EXTI8_Interrupt             : constant Interrupt_ID := 28;

   --  EXTI Line 9 interrupt
   EXTI9_Interrupt             : constant Interrupt_ID := 29;

   --  EXTI Line 10 interrupt
   EXTI10_Interrupt            : constant Interrupt_ID := 30;

   --  EXTI Line 11 interrupt
   EXTI11_Interrupt            : constant Interrupt_ID := 31;

   --  EXTI Line 12 interrupt
   EXTI12_Interrupt            : constant Interrupt_ID := 32;

   --  EXTI Line 13 interrupt
   EXTI13_Interrupt            : constant Interrupt_ID := 33;

   --  EXTI Line 14 interrupt
   EXTI14_Interrupt            : constant Interrupt_ID := 34;

   --  EXTI Line 15 interrupt
   EXTI15_Interrupt            : constant Interrupt_ID := 35;

   --  SAES global interrupt
   SAES_Interrupt              : constant Interrupt_ID := 36;

   --  CRYP global interrupt
   CRYP_Interrupt              : constant Interrupt_ID := 37;

   --  PKA global interrupt
   PKA_Interrupt               : constant Interrupt_ID := 38;

   --  HASH global interrupt
   HASH_Interrupt              : constant Interrupt_ID := 39;

   --  RNG global interrupt
   RNG_Interrupt               : constant Interrupt_ID := 40;

   --  MCE1 global interrupt
   MCE1_Interrupt              : constant Interrupt_ID := 42;

   --  MCE2 global interrupt
   MCE2_Interrupt              : constant Interrupt_ID := 43;

   --  MCE3 global interrupt
   MCE3_Interrupt              : constant Interrupt_ID := 44;

   --  MCE4 global interrupt
   MCE4_Interrupt              : constant Interrupt_ID := 45;

   --  ADC1/ADC2 global interrupt
   ADC12_Interrupt             : constant Interrupt_ID := 46;

   --  CSI global interrupt
   CSI_DBG_Interrupt           : constant Interrupt_ID := 47;

   --  DCMIPP global interrupt
   DCMIPP_Interrupt            : constant Interrupt_ID := 48;

   --  Write posting errors on Cortex-M55 PAHB interface
   PAHB_ERR_Interrupt          : constant Interrupt_ID := 52;

   --  NPU mst_ints[0] line
   NPU_end_of_epoch_Interrupt  : constant Interrupt_ID := 53;

   --  NPU mst_ints[1] line
   NPU1_Interrupt              : constant Interrupt_ID := 54;

   --  NPU mst_ints[2] line
   NPU2_Interrupt              : constant Interrupt_ID := 55;

   --  NPU mst_ints[3] line
   NPU3_Interrupt              : constant Interrupt_ID := 56;

   --  ATON interrupt cache
   NPUCACHE_Interrupt          : constant Interrupt_ID := 57;

   --  LCD low-layer global interrupt
   LTDC_LO_Interrupt           : constant Interrupt_ID := 58;

   --  LCD low-layer error interrupt
   LTDC_LO_ERR_Interrupt       : constant Interrupt_ID := 59;

   --  DMA2D global interrupt
   DMA2D_Interrupt             : constant Interrupt_ID := 60;

   --  JPEG global interrupt
   JPEG_Interrupt              : constant Interrupt_ID := 61;

   --  VENC global interrupt
   VENC_Interrupt              : constant Interrupt_ID := 62;

   --  GFXMMU global interrupt
   GFXMMU_Interrupt            : constant Interrupt_ID := 63;

   --  GFXTIM global interrupt
   GFXTIM_Interrupt            : constant Interrupt_ID := 64;

   --  GPU2D global interrupt
   GPU2D_Interrupt             : constant Interrupt_ID := 65;

   --  GPU2D global interrupt
   GPU2D_ERROR_Interrupt       : constant Interrupt_ID := 66;

   --  GPU cache interrupt
   GPU_CACHE_Interrupt         : constant Interrupt_ID := 67;

   --  HPDMA1 Channel 0 interrupt
   HPDMA1_CH0_Interrupt        : constant Interrupt_ID := 68;

   --  HPDMA1 Channel 1 interrupt
   HPDMA1_CH1_Interrupt        : constant Interrupt_ID := 69;

   --  HPDMA1 Channel 2 interrupt
   HPDMA1_CH2_Interrupt        : constant Interrupt_ID := 70;

   --  HPDMA1 Channel 3 interrupt
   HPDMA1_CH3_Interrupt        : constant Interrupt_ID := 71;

   --  HPDMA1 Channel 4 interrupt
   HPDMA1_CH4_Interrupt        : constant Interrupt_ID := 72;

   --  HPDMA1 Channel 5 interrupt
   HPDMA1_CH5_Interrupt        : constant Interrupt_ID := 73;

   --  HPDMA1 Channel 6 interrupt
   HPDMA1_CH6_Interrupt        : constant Interrupt_ID := 74;

   --  HPDMA1 Channel 7 interrupt
   HPDMA1_CH7_Interrupt        : constant Interrupt_ID := 75;

   --  HPDMA1 Channel 8 interrupt
   HPDMA1_CH8_Interrupt        : constant Interrupt_ID := 76;

   --  HPDMA1 Channel 9 interrupt
   HPDMA1_CH9_Interrupt        : constant Interrupt_ID := 77;

   --  HPDMA1 Channel 10 interrupt
   HPDMA1_CH10_Interrupt       : constant Interrupt_ID := 78;

   --  HPDMA1 Channel 11 interrupt
   HPDMA1_CH11_Interrupt       : constant Interrupt_ID := 79;

   --  HPDMA1 Channel 12 interrupt
   HPDMA1_CH12_Interrupt       : constant Interrupt_ID := 80;

   --  FPU global interrupt
   FPU_Interrupt               : constant Interrupt_ID := 81;

   --  HPDMA1 Channel 13 interrupt
   HPDMA1_CH13_Interrupt       : constant Interrupt_ID := 81;

   --  HPDMA1 Channel 14 interrupt
   HPDMA1_CH14_Interrupt       : constant Interrupt_ID := 82;

   --  HPDMA1 Channel 15 interrupt
   HPDMA1_CH15_Interrupt       : constant Interrupt_ID := 83;

   --  GPDMA1 channel 0 interrupt
   GPDMA1_CH0_Interrupt        : constant Interrupt_ID := 84;

   --  GPDMA1 channel 1 interrupt
   GPDMA1_CH1_Interrupt        : constant Interrupt_ID := 85;

   --  GPDMA1 channel 2 interrupt
   GPDMA1_CH2_Interrupt        : constant Interrupt_ID := 86;

   --  GPDMA1 channel 3 interrupt
   GPDMA1_CH3_Interrupt        : constant Interrupt_ID := 87;

   --  GPDMA1 channel 4 interrupt
   GPDMA1_CH4_Interrupt        : constant Interrupt_ID := 88;

   --  GPDMA1 channel 5 interrupt
   GPDMA1_CH5_Interrupt        : constant Interrupt_ID := 89;

   --  GPDMA1 channel 6 interrupt
   GPDMA1_CH6_Interrupt        : constant Interrupt_ID := 90;

   --  GPDMA1 channel 7 interrupt
   GPDMA1_CH7_Interrupt        : constant Interrupt_ID := 91;

   --  GPDMA1 channel 8 interrupt
   GPDMA1_CH8_Interrupt        : constant Interrupt_ID := 92;

   --  GPDMA1 channel 9 interrupt
   GPDMA1_CH9_Interrupt        : constant Interrupt_ID := 93;

   --  GPDMA1 channel 10 interrupt
   GPDMA1_CH10_Interrupt       : constant Interrupt_ID := 94;

   --  GPDMA1 channel 11 interrupt
   GPDMA1_CH11_Interrupt       : constant Interrupt_ID := 95;

   --  GPDMA1 channel 12 interrupt
   GPDMA1_CH12_Interrupt       : constant Interrupt_ID := 96;

   --  GPDMA1 channel 13 interrupt
   GPDMA1_CH13_Interrupt       : constant Interrupt_ID := 97;

   --  GPDMA1 channel 14 interrupt
   GPDMA1_CH14_Interrupt       : constant Interrupt_ID := 98;

   --  GPDMA1 channel 15 interrupt
   GPDMA1_CH15_Interrupt       : constant Interrupt_ID := 99;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt           : constant Interrupt_ID := 100;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt           : constant Interrupt_ID := 101;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt           : constant Interrupt_ID := 102;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt           : constant Interrupt_ID := 103;

   --  I2C3 event interrupt
   I2C3_EV_Interrupt           : constant Interrupt_ID := 104;

   --  I2C3 error interrupt
   I2C3_ER_Interrupt           : constant Interrupt_ID := 105;

   --  I2C4 event interrupt
   I2C4_EV_Interrupt           : constant Interrupt_ID := 106;

   --  I2C4 error interrupt
   I2C4_ER_Interrupt           : constant Interrupt_ID := 107;

   --  I3C1 event interrupt
   I3C1_EV_Interrupt           : constant Interrupt_ID := 108;

   --  I3C1 error interrupt
   I3C1_ER_Interrupt           : constant Interrupt_ID := 109;

   --  I3C2 event interrupt
   I3C2_EV_Interrupt           : constant Interrupt_ID := 110;

   --  I3C2 error interrupt
   I3C2_ER_Interrupt           : constant Interrupt_ID := 111;

   --  TIM1 Break interrupt
   TIM1_BRK_Interrupt          : constant Interrupt_ID := 112;

   --  TIM1 Update interrupt
   TIM1_UP_Interrupt           : constant Interrupt_ID := 113;

   --  TIM1 Trigger and Commutation interrupts
   TIM1_TRG_CCU_Interrupt      : constant Interrupt_ID := 114;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt           : constant Interrupt_ID := 115;

   --  TIM2 global interrupt
   TIM2_Interrupt              : constant Interrupt_ID := 116;

   --  TIM3 global interrupt
   TIM3_Interrupt              : constant Interrupt_ID := 117;

   --  TIM4 global interrupt
   TIM4_Interrupt              : constant Interrupt_ID := 118;

   --  TIM5 global interrupt
   TIM5_Interrupt              : constant Interrupt_ID := 119;

   --  TIM6 Global interrupt
   TIM6_Interrupt              : constant Interrupt_ID := 120;

   --  TIM7 Global interrupt
   TIM7_Interrupt              : constant Interrupt_ID := 121;

   --  TIM8 Break interrupt
   TIM8_BRK_Interrupt          : constant Interrupt_ID := 122;

   --  TIM8 Update interrupt
   TIM8_UP_Interrupt           : constant Interrupt_ID := 123;

   --  TIM8 Trigger and Commutation interrupts
   TIM8_TRG_CCU_Interrupt      : constant Interrupt_ID := 124;

   --  TIM8 Capture Compare interrupt
   TIM8_CC_Interrupt           : constant Interrupt_ID := 125;

   --  TIM9 Global interrupt
   TIM9_Interrupt              : constant Interrupt_ID := 126;

   --  TIM10 Global interrupt
   TIM10_Interrupt             : constant Interrupt_ID := 127;

   --  TIM11 Global interrupt
   TIM11_Interrupt             : constant Interrupt_ID := 128;

   --  TIM12 Global interrupt
   TIM12_Interrupt             : constant Interrupt_ID := 129;

   --  TIM13 Global interrupt
   TIM13_Interrupt             : constant Interrupt_ID := 130;

   --  TIM14 Global interrupt
   TIM14_Interrupt             : constant Interrupt_ID := 131;

   --  TIM15 global interrupt
   TIM15_Interrupt             : constant Interrupt_ID := 132;

   --  TIM16 global interrupt
   TIM16_Interrupt             : constant Interrupt_ID := 133;

   --  TIM17 global interrupt
   TIM17_Interrupt             : constant Interrupt_ID := 134;

   --  TIM18 Global interrupt
   TIM18_Interrupt             : constant Interrupt_ID := 135;

   --  LPTIM1 global interrupt
   LPTIM1_Interrupt            : constant Interrupt_ID := 136;

   --  LPTIM2 global interrupt
   LPTIM2_Interrupt            : constant Interrupt_ID := 137;

   --  LPTIM3 global interrupt
   LPTIM3_Interrupt            : constant Interrupt_ID := 138;

   --  LPTIM4 global interrupt
   LPTIM4_Interrupt            : constant Interrupt_ID := 139;

   --  LPTIM5 global interrupt
   LPTIM5_Interrupt            : constant Interrupt_ID := 140;

   --  ADF1 filter 0 global interrupt
   ADF1_FLT0_Interrupt         : constant Interrupt_ID := 141;

   --  MDF global Interrupt for Filter0
   MDF1_FLT0_Interrupt         : constant Interrupt_ID := 142;

   --  MDF global Interrupt for Filter1
   MDF1_FLT1_Interrupt         : constant Interrupt_ID := 143;

   --  MDF global Interrupt for Filter2
   MDF1_FLT2_Interrupt         : constant Interrupt_ID := 144;

   --  MDF global Interrupt for Filter3
   MDF1_FLT3_Interrupt         : constant Interrupt_ID := 145;

   --  MDF global Interrupt for Filter4
   MDF1_FLT4_Interrupt         : constant Interrupt_ID := 146;

   --  MDF global Interrupt for Filter5
   MDF1_FLT5_Interrupt         : constant Interrupt_ID := 147;

   --  SAI1 global interrupt A
   SAI1_A_Interrupt            : constant Interrupt_ID := 148;

   --  SAI1 global interrupt B
   SAI1_B_Interrupt            : constant Interrupt_ID := 149;

   --  SAI2 global interrupt A
   SAI2_A_Interrupt            : constant Interrupt_ID := 150;

   --  SAI2 global interrupt B
   SAI2_global_B_Interrupt     : constant Interrupt_ID := 151;

   --  SPDIFRX global interrupt
   SPDIFRX_Interrupt           : constant Interrupt_ID := 152;

   --  SPI1 global interrupt A
   SPI1_Interrupt              : constant Interrupt_ID := 153;

   --  SPI2 global interrupt A
   SPI2_Interrupt              : constant Interrupt_ID := 154;

   --  SPI3 global interrupt A
   SPI3_Interrupt              : constant Interrupt_ID := 155;

   --  SPI4 global interrupt A
   SPI4_Interrupt              : constant Interrupt_ID := 156;

   --  SPI5 global interrupt A
   SPI5_Interrupt              : constant Interrupt_ID := 157;

   --  SPI6 global interrupt A
   SPI6_Interrupt              : constant Interrupt_ID := 158;

   --  USART1 Global interrupt
   USART1_Interrupt            : constant Interrupt_ID := 159;

   --  USART2 Global interrupt
   USART2_Interrupt            : constant Interrupt_ID := 160;

   --  USART3 Global interrupt
   USART3_Interrupt            : constant Interrupt_ID := 161;

   --  UART4 Global interrupt
   UART4_Interrupt             : constant Interrupt_ID := 162;

   --  UART5 Global interrupt
   UART5_Interrupt             : constant Interrupt_ID := 163;

   --  USART6 Global interrupt
   USART6_Interrupt            : constant Interrupt_ID := 164;

   --  UART7 Global interrupt
   UART7_Interrupt             : constant Interrupt_ID := 165;

   --  UART8 Global interrupt
   UART8_Interrupt             : constant Interrupt_ID := 166;

   --  UART9 Global interrupt
   UART9_Interrupt             : constant Interrupt_ID := 167;

   --  USART10 Global interrupt
   USART10_Interrupt           : constant Interrupt_ID := 168;

   --  LPUART1 global interrupt
   LPUART1_Interrupt           : constant Interrupt_ID := 169;

   --  XSPI1 global interrupt
   XSPI1_Interrupt             : constant Interrupt_ID := 170;

   --  XSPI2 global interrupt
   XSPI2_Interrupt             : constant Interrupt_ID := 171;

   --  XSPI3 global interrupt
   XSPI3_Interrupt             : constant Interrupt_ID := 172;

   --  FMC global interrupt
   FMC_Interrupt               : constant Interrupt_ID := 173;

   --  SDMMC1 global interrupt
   SDMMC1_Interrupt            : constant Interrupt_ID := 174;

   --  SDMMC2 global interrupt
   SDMMC2_Interrupt            : constant Interrupt_ID := 175;

   --  UCPD global interrupt
   UCPD_Interrupt              : constant Interrupt_ID := 176;

   --  USB OTG1 HS global interrupt
   OTG1_Interrupt              : constant Interrupt_ID := 177;

   --  USB OTG2 HS global interrupt
   OTG2_Interrupt              : constant Interrupt_ID := 178;

   --  Ethernet global interrupt
   ETH1_Interrupt              : constant Interrupt_ID := 179;

   --  FDCAN1 interrupt 0
   FDCAN1_IT0_Interrupt        : constant Interrupt_ID := 180;

   --  FDCAN1 interrupt 1
   FDCAN1_IT1_Interrupt        : constant Interrupt_ID := 181;

   --  FDCAN2 interrupt 0
   FDCAN2_IT0_Interrupt        : constant Interrupt_ID := 182;

   --  FDCAN2 interrupt 1
   FDCAN2_IT1_Interrupt        : constant Interrupt_ID := 183;

   --  FDCAN3 interrupt 0
   FDCAN3_IT0_Interrupt        : constant Interrupt_ID := 184;

   --  FDCAN3 interrupt 1
   FDCAN3_IT1_Interrupt        : constant Interrupt_ID := 185;

   --  Clock calibration unit interrupt line(FDCAN1 only)
   FDCAN_CU_Interrupt          : constant Interrupt_ID := 186;

   --  MDIOS global Interrupt
   MDIOS_Interrupt             : constant Interrupt_ID := 187;

   --  DCMI/PSSI global interrupt
   DCMI_PSSI_Interrupt         : constant Interrupt_ID := 188;

   --  Wake-up pin interrupts
   WAKEUP_PIN_Interrupt        : constant Interrupt_ID := 189;

   --  Debug monitor (Cortex-M55 related)
   CTI0_Interrupt              : constant Interrupt_ID := 190;

   --  Debug monitor (Cortex-M55 related)
   CTI1_Interrupt              : constant Interrupt_ID := 191;

   --  LCD up-layer global interrupt
   LTDC_UP_Interrupt           : constant Interrupt_ID := 193;

   --  LCD up-layer error interrupt
   LTDC_UP_ERR_Interrupt       : constant Interrupt_ID := 194;

end Ada.Interrupts.Names;
