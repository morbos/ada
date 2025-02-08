--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

--  This is a version for the STM32MP25_CM33 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt           : constant Interrupt_ID := -1;

   --  PVD detector through EXTI
   PVD_Interrupt                : constant Interrupt_ID := 0;

   --  PVM detector through EXTI
   PVM_Interrupt                : constant Interrupt_ID := 1;

   --  Independent watchdog 3 early wake interrupt
   IWDG3_Interrupt              : constant Interrupt_ID := 2;

   --  Independent watchdog 4 early wake interrupt
   IWDG4_Interrupt              : constant Interrupt_ID := 3;

   --  Independent watchdog 1 reset through EXTI
   IWDG1_RST_Interrupt          : constant Interrupt_ID := 4;

   --  Independent Watchdog 2 Reset through EXTI
   IWDG2_RST_Interrupt          : constant Interrupt_ID := 5;

   --  Independent Watchdog 4 Reset through EXTI
   IWDG4_RST_Interrupt          : constant Interrupt_ID := 6;

   --  Independent Watchdog 5 Reset through EXTI
   IWDG5_RST_Interrupt          : constant Interrupt_ID := 7;

   --  Window watchdog 1 early wake-up interrupt
   WWDG1_Interrupt              : constant Interrupt_ID := 8;

   --  Window watchdog 2 reset through EXTI
   WWDG2_RST_Interrupt          : constant Interrupt_ID := 11;

   --  Tamper interrupt (include LSECSS interrupts)
   TAMP_Interrupt               : constant Interrupt_ID := 12;

   --  RTC global interrupt
   RTC_Interrupt                : constant Interrupt_ID := 13;

   --  Tamper secure interrupt (include LSECSS interrupts)
   TAMP_S_Interrupt             : constant Interrupt_ID := 14;

   --  RTC global secure interrupt
   RTC_S_Interrupt              : constant Interrupt_ID := 15;

   --  RCC global interrupt
   RCC_Interrupt                : constant Interrupt_ID := 16;

   --  EXTI2 line 0 interrupt
   EXTI2_0_Interrupt            : constant Interrupt_ID := 17;

   --  EXTI2 line 1 interrupt
   EXTI2_1_Interrupt            : constant Interrupt_ID := 18;

   --  EXTI2 line 2 interrupt
   EXTI2_2_Interrupt            : constant Interrupt_ID := 19;

   --  EXTI2 line 3 interrupt
   EXTI2_3_Interrupt            : constant Interrupt_ID := 20;

   --  EXTI2 line 4 interrupt
   EXTI2_4_Interrupt            : constant Interrupt_ID := 21;

   --  EXTI2 line 5 interrupt
   EXTI2_5_Interrupt            : constant Interrupt_ID := 22;

   --  EXTI2 line 6 interrupt
   EXTI2_6_Interrupt            : constant Interrupt_ID := 23;

   --  EXTI2 line 7 interrupt
   EXTI2_7_Interrupt            : constant Interrupt_ID := 24;

   --  EXTI2 line 8 interrupt
   EXTI2_8_Interrupt            : constant Interrupt_ID := 25;

   --  EXTI2 line 9 interrupt
   EXTI2_9_Interrupt            : constant Interrupt_ID := 26;

   --  EXTI2 line 10 interrupt
   EXTI2_10_Interrupt           : constant Interrupt_ID := 27;

   --  EXTI2 line 11 interrupt
   EXTI2_11_Interrupt           : constant Interrupt_ID := 28;

   --  EXTI2 line 12 interrupt
   EXTI2_12_Interrupt           : constant Interrupt_ID := 29;

   --  EXTI2 line 13 interrupt
   EXTI2_13_Interrupt           : constant Interrupt_ID := 30;

   --  EXTI2 line 14 interrupt
   EXTI2_14_Interrupt           : constant Interrupt_ID := 31;

   --  EXTI2 line 15 interrupt
   EXTI2_15_Interrupt           : constant Interrupt_ID := 32;

   --  HPDMA1 Channel0 interrupt
   HPDMA1_Channel0_Interrupt    : constant Interrupt_ID := 33;

   --  HPDMA1 Channel1 interrupt
   HPDMA1_Channel1_Interrupt    : constant Interrupt_ID := 34;

   --  HPDMA1 Channel2 interrupt
   HPDMA1_Channel2_Interrupt    : constant Interrupt_ID := 35;

   --  HPDMA1 Channel3 interrupt
   HPDMA1_Channel3_Interrupt    : constant Interrupt_ID := 36;

   --  HPDMA1 Channel4 interrupt
   HPDMA1_Channel4_Interrupt    : constant Interrupt_ID := 37;

   --  HPDMA1 Channel5 interrupt
   HPDMA1_Channel5_Interrupt    : constant Interrupt_ID := 38;

   --  HPDMA1 Channel6 interrupt
   HPDMA1_Channel6_Interrupt    : constant Interrupt_ID := 39;

   --  HPDMA1 Channel7 interrupt
   HPDMA1_Channel7_Interrupt    : constant Interrupt_ID := 40;

   --  HPDMA1 Channel8 interrupt
   HPDMA1_Channel8_Interrupt    : constant Interrupt_ID := 41;

   --  HPDMA1 Channel9 interrupt
   HPDMA1_Channel9_Interrupt    : constant Interrupt_ID := 42;

   --  HPDMA1 Channel10 interrupt
   HPDMA1_Channel10_Interrupt   : constant Interrupt_ID := 43;

   --  HPDMA1 Channel11 interrupt
   HPDMA1_Channel11_Interrupt   : constant Interrupt_ID := 44;

   --  HPDMA1 Channel12 interrupt
   HPDMA1_Channel12_Interrupt   : constant Interrupt_ID := 45;

   --  HPDMA1 Channel13 interrupt
   HPDMA1_Channel13_Interrupt   : constant Interrupt_ID := 46;

   --  HPDMA1 Channel14 interrupt
   HPDMA1_Channel14_Interrupt   : constant Interrupt_ID := 47;

   --  HPDMA1 Channel15 interrupt
   HPDMA1_Channel15_Interrupt   : constant Interrupt_ID := 48;

   --  HPDMA2 Channel0 interrupt
   HPDMA2_Channel0_Interrupt    : constant Interrupt_ID := 49;

   --  HPDMA2 Channel1 interrupt
   HPDMA2_Channel1_Interrupt    : constant Interrupt_ID := 50;

   --  HPDMA2 Channel2 interrupt
   HPDMA2_Channel2_Interrupt    : constant Interrupt_ID := 51;

   --  HPDMA2 Channel3 interrupt
   HPDMA2_Channel3_Interrupt    : constant Interrupt_ID := 52;

   --  HPDMA2 Channel4 interrupt
   HPDMA2_Channel4_Interrupt    : constant Interrupt_ID := 53;

   --  HPDMA2 Channel5 interrupt
   HPDMA2_Channel5_Interrupt    : constant Interrupt_ID := 54;

   --  HPDMA2 Channel6 interrupt
   HPDMA2_Channel6_Interrupt    : constant Interrupt_ID := 55;

   --  HPDMA2 Channel7 interrupt
   HPDMA2_Channel7_Interrupt    : constant Interrupt_ID := 56;

   --  HPDMA2 Channel8 interrupt
   HPDMA2_Channel8_Interrupt    : constant Interrupt_ID := 57;

   --  HPDMA2 Channel9 interrupt
   HPDMA2_Channel9_Interrupt    : constant Interrupt_ID := 58;

   --  HPDMA2 Channel10 interrupt
   HPDMA2_Channel10_Interrupt   : constant Interrupt_ID := 59;

   --  HPDMA2 Channel11 interrupt
   HPDMA2_Channel11_Interrupt   : constant Interrupt_ID := 60;

   --  HPDMA2 Channel12 interrupt
   HPDMA2_Channel12_Interrupt   : constant Interrupt_ID := 61;

   --  HPDMA2 Channel13 interrupt
   HPDMA2_Channel13_Interrupt   : constant Interrupt_ID := 62;

   --  HPDMA2 Channel14 interrupt
   HPDMA2_Channel14_Interrupt   : constant Interrupt_ID := 63;

   --  HPDMA2 Channel15 interrupt
   HPDMA2_Channel15_Interrupt   : constant Interrupt_ID := 64;

   --  HPDMA3 Channel0 interrupt
   HPDMA3_Channel0_Interrupt    : constant Interrupt_ID := 65;

   --  HPDMA3 Channel1 interrupt
   HPDMA3_Channel1_Interrupt    : constant Interrupt_ID := 66;

   --  HPDMA3 Channel2 interrupt
   HPDMA3_Channel2_Interrupt    : constant Interrupt_ID := 67;

   --  HPDMA3 Channel3 interrupt
   HPDMA3_Channel3_Interrupt    : constant Interrupt_ID := 68;

   --  HPDMA3 Channel4 interrupt
   HPDMA3_Channel4_Interrupt    : constant Interrupt_ID := 69;

   --  HPDMA3 Channel5 interrupt
   HPDMA3_Channel5_Interrupt    : constant Interrupt_ID := 70;

   --  HPDMA3 Channel6 interrupt
   HPDMA3_Channel6_Interrupt    : constant Interrupt_ID := 71;

   --  HPDMA3 Channel7 interrupt
   HPDMA3_Channel7_Interrupt    : constant Interrupt_ID := 72;

   --  HPDMA3 Channel8 interrupt
   HPDMA3_Channel8_Interrupt    : constant Interrupt_ID := 73;

   --  HPDMA3 Channel9 interrupt
   HPDMA3_Channel9_Interrupt    : constant Interrupt_ID := 74;

   --  HPDMA3 Channel10 interrupt
   HPDMA3_Channel10_Interrupt   : constant Interrupt_ID := 75;

   --  HPDMA3 Channel11 interrupt
   HPDMA3_Channel11_Interrupt   : constant Interrupt_ID := 76;

   --  HPDMA3 Channel12 interrupt
   HPDMA3_Channel12_Interrupt   : constant Interrupt_ID := 77;

   --  HPDMA3 Channel13 interrupt
   HPDMA3_Channel13_Interrupt   : constant Interrupt_ID := 78;

   --  HPDMA3 Channel14 interrupt
   HPDMA3_Channel14_Interrupt   : constant Interrupt_ID := 79;

   --  HPDMA3 Channel15 interrupt
   HPDMA3_Channel15_Interrupt   : constant Interrupt_ID := 80;

   --  FPU global interrupt
   FPU_Interrupt                : constant Interrupt_ID := 81;

   --  LPDMA1 channel 0 interrupt
   LPDMA1_Channel0_Interrupt    : constant Interrupt_ID := 81;

   --  LPDMA1 channel 1 interrupt
   LPDMA1_Channel1_Interrupt    : constant Interrupt_ID := 82;

   --  LPDMA1 channel 2 interrupt
   LPDMA1_Channel2_Interrupt    : constant Interrupt_ID := 83;

   --  LPDMA1 channel 3 interrupt
   LPDMA1_Channel3_Interrupt    : constant Interrupt_ID := 84;

   --  ICACHE interrupt
   ICACHE_Interrupt             : constant Interrupt_ID := 85;

   --  DCACHE interrupt
   DCACHE_Interrupt             : constant Interrupt_ID := 86;

   --  ADC1 interrupt
   ADC1_Interrupt               : constant Interrupt_ID := 87;

   --  ADC2 interrupt
   ADC2_Interrupt               : constant Interrupt_ID := 88;

   --  ADC3 interrupt
   ADC3_Interrupt               : constant Interrupt_ID := 89;

   --  FDCAN CCU interrupt
   FDCAN_CAL_Interrupt          : constant Interrupt_ID := 90;

   --  FDCAN1 interrupt 0
   FDCAN1_IT0_Interrupt         : constant Interrupt_ID := 91;

   --  FDCAN2 interrupt 0
   FDCAN2_IT0_Interrupt         : constant Interrupt_ID := 92;

   --  FDCAN3 interrupt 0
   FDCAN3_IT0_Interrupt         : constant Interrupt_ID := 93;

   --  FDCAN1 interrupt 1
   FDCAN1_IT1_Interrupt         : constant Interrupt_ID := 94;

   --  FDCAN2 interrupt 1
   FDCAN2_IT1_Interrupt         : constant Interrupt_ID := 95;

   --  FDCAN3 interrupt 1
   FDCAN3_IT1_Interrupt         : constant Interrupt_ID := 96;

   --  TIM1 Break interrupt
   TIM1_BRK_Interrupt           : constant Interrupt_ID := 97;

   --  TIM1 Update interrupt
   TIM1_UP_Interrupt            : constant Interrupt_ID := 98;

   --  TIM1 Trigger and Commutation interrupts
   TIM1_TRG_COM_Interrupt       : constant Interrupt_ID := 99;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt            : constant Interrupt_ID := 100;

   --  TIM20 Break interrupt
   TIM20_BRK_Interrupt          : constant Interrupt_ID := 101;

   --  TIM20 Update interrupt
   TIM20_UP_Interrupt           : constant Interrupt_ID := 102;

   --  TIM20 Trigger and Commutation interrupts
   TIM20_TRG_COM_Interrupt      : constant Interrupt_ID := 103;

   --  TIM20 Capture Compare interrupt
   TIM20_CC_Interrupt           : constant Interrupt_ID := 104;

   --  TIM2 Global interrupt
   TIM2_Interrupt               : constant Interrupt_ID := 105;

   --  TIM3 Global interrupt
   TIM3_Interrupt               : constant Interrupt_ID := 106;

   --  TIM4 Global interrupt
   TIM4_Interrupt               : constant Interrupt_ID := 107;

   --  I2C1 global interrupt
   I2C1_Interrupt               : constant Interrupt_ID := 108;

   --  I3C1 global interrupt
   I3C1_Interrupt               : constant Interrupt_ID := 109;

   --  I2C2 global interrupt
   I2C2_Interrupt               : constant Interrupt_ID := 110;

   --  I3C2 global interrupt
   I3C2_Interrupt               : constant Interrupt_ID := 111;

   --  SPI1 global interrupt
   SPI1_Interrupt               : constant Interrupt_ID := 112;

   --  SPI2 global interrupt
   SPI2_Interrupt               : constant Interrupt_ID := 113;

   --  USART1 Global interrupt
   USART1_Interrupt             : constant Interrupt_ID := 114;

   --  USART2 Global interrupt
   USART2_Interrupt             : constant Interrupt_ID := 115;

   --  USART3 Global interrupt
   USART3_Interrupt             : constant Interrupt_ID := 116;

   --  VDEC Global interrupt
   VDEC_Interrupt               : constant Interrupt_ID := 117;

   --  TIM8 Break interrupt
   TIM8_BRK_Interrupt           : constant Interrupt_ID := 118;

   --  TIM8 Update interrupt
   TIM8_UP_Interrupt            : constant Interrupt_ID := 119;

   --  TIM8 Trigger and Commutation interrupts
   TIM8_TRG_COM_Interrupt       : constant Interrupt_ID := 120;

   --  TIM8 Capture Compare interrupt
   TIM8_CC_Interrupt            : constant Interrupt_ID := 121;

   --  FMC Global interrupt
   FMC_Interrupt                : constant Interrupt_ID := 122;

   --  SDMMC1 global interrupt
   SDMMC1_Interrupt             : constant Interrupt_ID := 123;

   --  TIM5 Global interrupt
   TIM5_Interrupt               : constant Interrupt_ID := 124;

   --  SPI3 global interrupt
   SPI3_Interrupt               : constant Interrupt_ID := 125;

   --  UART4 Global interrupt
   UART4_Interrupt              : constant Interrupt_ID := 126;

   --  UART5 Global interrupt
   UART5_Interrupt              : constant Interrupt_ID := 127;

   --  TIM6 Global interrupt
   TIM6_Interrupt               : constant Interrupt_ID := 128;

   --  TIM7 Global interrupt
   TIM7_Interrupt               : constant Interrupt_ID := 129;

   --  ETH1 global interrupt
   ETH1_SBD_Interrupt           : constant Interrupt_ID := 130;

   --  ETH1 wakeup interrupt (PMT)
   ETH1_PMT_Interrupt           : constant Interrupt_ID := 131;

   --  ETH1 LPI interrupt
   ETH1_LPI_Interrupt           : constant Interrupt_ID := 132;

   --  ETH2 global interrupt
   ETH2_SBD_Interrupt           : constant Interrupt_ID := 133;

   --  ETH2 wakeup interrupt (PMT)
   ETH2_PMT_Interrupt           : constant Interrupt_ID := 134;

   --  ETH2 LPI interrupt
   ETH2_LPI_Interrupt           : constant Interrupt_ID := 135;

   --  USART6 Global interrupt
   USART6_Interrupt             : constant Interrupt_ID := 136;

   --  I2C3 global interrupt
   I2C3_Interrupt               : constant Interrupt_ID := 137;

   --  I3C3 global interrupt
   I3C3_Interrupt               : constant Interrupt_ID := 138;

   --  USB Host EHCI interrupt
   USBH_EHCI_Interrupt          : constant Interrupt_ID := 139;

   --  USB Host OHCI interrupt
   USBH_OHCI_Interrupt          : constant Interrupt_ID := 140;

   --  DCACHE interrupt
   DCMI_PSSI_Interrupt          : constant Interrupt_ID := 141;

   --  CSI2 Host controller interrupt
   CSI2HOST_Interrupt           : constant Interrupt_ID := 142;

   --  DSI Host controller global interrupt
   DSI_Interrupt                : constant Interrupt_ID := 143;

   --  Crypto1 interrupt
   CRYP1_Interrupt              : constant Interrupt_ID := 144;

   --  HASH interrupt
   HASH_Interrupt               : constant Interrupt_ID := 145;

   --  PKA interrupt
   PKA_Interrupt                : constant Interrupt_ID := 146;

   --  UART7 Global interrupt
   UART7_Interrupt              : constant Interrupt_ID := 148;

   --  UART8 Global interrupt
   UART8_Interrupt              : constant Interrupt_ID := 149;

   --  UART9 Global interrupt
   UART9_Interrupt              : constant Interrupt_ID := 150;

   --  LPUART1 Global interrupt
   LPUART1_Interrupt            : constant Interrupt_ID := 151;

   --  SPI4 global interrupt
   SPI4_Interrupt               : constant Interrupt_ID := 152;

   --  SPI5 global interrupt
   SPI5_Interrupt               : constant Interrupt_ID := 153;

   --  SPI6 global interrupt
   SPI6_Interrupt               : constant Interrupt_ID := 154;

   --  SPI7 global interrupt
   SPI7_Interrupt               : constant Interrupt_ID := 155;

   --  SPI8 global interrupt
   SPI8_Interrupt               : constant Interrupt_ID := 156;

   --  SAI1 global interrupt
   SAI1_Interrupt               : constant Interrupt_ID := 157;

   --  LTDC global interrupt
   LTDC_Interrupt               : constant Interrupt_ID := 158;

   --  LTDC global error interrupt
   LTDC_ER_Interrupt            : constant Interrupt_ID := 159;

   --  LTDC security global interrupt
   LTDC_SEC_Interrupt           : constant Interrupt_ID := 160;

   --  LTDC security global error interrupt
   LTDC_SEC_ER_Interrupt        : constant Interrupt_ID := 161;

   --  SAI2 global interrupt
   SAI2_Interrupt               : constant Interrupt_ID := 162;

   --  OCTOSPI1 global interrupt
   OCTOSPI1_Interrupt           : constant Interrupt_ID := 163;

   --  OCTOSPI2 global interrupt
   OCTOSPI2_Interrupt           : constant Interrupt_ID := 164;

   --  OTFDEC1 interrupt
   OTFDEC1_Interrupt            : constant Interrupt_ID := 165;

   --  LPTIMER1 global interrupt
   LPTIM1_Interrupt             : constant Interrupt_ID := 166;

   --  VENC Global interrupt
   VENC_Interrupt               : constant Interrupt_ID := 167;

   --  I2C4 global interrupt
   I2C4_Interrupt               : constant Interrupt_ID := 168;

   --  USBH remote wake-up from USB2PHY1
   USBH_WAKEUP_Interrupt        : constant Interrupt_ID := 169;

   --  SPDIFRX global interrupt
   SPDIFRX_Interrupt            : constant Interrupt_ID := 170;

   --  Mailbox 1 Rx Occupied interrupt
   IPCC1_RX_Interrupt           : constant Interrupt_ID := 171;

   --  Mailbox 1 Tx Free interrupt
   IPCC1_TX_Interrupt           : constant Interrupt_ID := 172;

   --  Mailbox 1 Rx Occupied secure interrupt
   IPCC1_RX_S_Interrupt         : constant Interrupt_ID := 173;

   --  Mailbox 1 Tx Free secure interrupt
   IPCC1_TX_S_Interrupt         : constant Interrupt_ID := 174;

   --  Mailbox 2 Rx Occupied interrupt
   IPCC2_RX_Interrupt           : constant Interrupt_ID := 175;

   --  Mailbox 2 Tx Free interrupt
   IPCC2_TX_Interrupt           : constant Interrupt_ID := 176;

   --  Mailbox 2 Rx Occupied secure interrupt
   IPCC2_RX_S_Interrupt         : constant Interrupt_ID := 177;

   --  Mailbox 2 Tx Free secure interrupt
   IPCC2_TX_S_Interrupt         : constant Interrupt_ID := 178;

   --  Secure AES
   SAES_Interrupt               : constant Interrupt_ID := 179;

   --  Crypto2 interrupt
   CRYP2_Interrupt              : constant Interrupt_ID := 180;

   --  I2C5 global interrupt
   I2C5_Interrupt               : constant Interrupt_ID := 181;

   --  USB3DR remote wake-up from USB2PHY2
   USB3DR_WAKEUP_Interrupt      : constant Interrupt_ID := 182;

   --  GPU Global interrupt
   GPU_Interrupt                : constant Interrupt_ID := 183;

   --  MDF1 Filter0 Interrupt
   MDF1_FLT0_Interrupt          : constant Interrupt_ID := 184;

   --  MDF1 Filter1 Interrupt
   MDF1_FLT1_Interrupt          : constant Interrupt_ID := 185;

   --  MDF1 Filter2 Interrupt
   MDF1_FLT2_Interrupt          : constant Interrupt_ID := 186;

   --  MDF1 Filter3 Interrupt
   MDF1_FLT3_Interrupt          : constant Interrupt_ID := 187;

   --  MDF1 Filter4 Interrupt
   MDF1_FLT4_Interrupt          : constant Interrupt_ID := 188;

   --  MDF1 Filter5 Interrupt
   MDF1_FLT5_Interrupt          : constant Interrupt_ID := 189;

   --  MDF1 Filter6 Interrupt
   MDF1_FLT6_Interrupt          : constant Interrupt_ID := 190;

   --  MDF1 Filter7 Interrupt
   MDF1_FLT7_Interrupt          : constant Interrupt_ID := 191;

   --  SAI3 global interrupt
   SAI3_Interrupt               : constant Interrupt_ID := 192;

   --  TIM15 Global interrupt
   TIM15_Interrupt              : constant Interrupt_ID := 193;

   --  TIM16 Global interrupt
   TIM16_Interrupt              : constant Interrupt_ID := 194;

   --  TIM17 Global interrupt
   TIM17_Interrupt              : constant Interrupt_ID := 195;

   --  LTIM12 global interrupt
   TIM12_Interrupt              : constant Interrupt_ID := 196;

   --  SDMMC2 global interrupt
   SDMMC2_Interrupt             : constant Interrupt_ID := 197;

   --  DCMIPP global interrupt
   DCMIPP_Interrupt             : constant Interrupt_ID := 198;

   --  HSEM semaphore non-secure interrupt
   HSEM_Interrupt               : constant Interrupt_ID := 199;

   --  HSEM semaphore secure interrupt
   HSEM_S_Interrupt             : constant Interrupt_ID := 200;

   --  LTIM13 global interrupt
   TIM13_Interrupt              : constant Interrupt_ID := 203;

   --  LTIM14 global interrupt
   TIM14_Interrupt              : constant Interrupt_ID := 204;

   --  LTIM10 global interrupt
   TIM10_Interrupt              : constant Interrupt_ID := 205;

   --  RNG interrupt
   RNG_Interrupt                : constant Interrupt_ID := 206;

   --  ADF1 Filter interrupt
   ADF1_FLT_Interrupt           : constant Interrupt_ID := 207;

   --  I2C6 global interrupt
   I2C6_Interrupt               : constant Interrupt_ID := 208;

   --  COMBOPHY LFPS start request
   COMBOPHY_WAKEUP_Interrupt    : constant Interrupt_ID := 209;

   --  I2C7 global interrupt
   I2C7_Interrupt               : constant Interrupt_ID := 210;

   --  I2C8 global interrupt
   I2C8_Interrupt               : constant Interrupt_ID := 212;

   --  I3C4 global interrupt
   I3C4_Interrupt               : constant Interrupt_ID := 213;

   --  SDMMC3 global interrupt
   SDMMC3_Interrupt             : constant Interrupt_ID := 214;

   --  LPTIMER2 global interrupt
   LPTIM2_Interrupt             : constant Interrupt_ID := 215;

   --  LPTIMER3 global interrupt
   LPTIM3_Interrupt             : constant Interrupt_ID := 216;

   --  LPTIMER4 global interrupt
   LPTIM4_Interrupt             : constant Interrupt_ID := 217;

   --  LPTIMER5 global interrupt
   LPTIM5_Interrupt             : constant Interrupt_ID := 218;

   --  OTFDEC2 interrupt
   OTFDEC2_Interrupt            : constant Interrupt_ID := 219;

   --  Cortex-A35 send event through EXTI
   CPU1_SEV_Interrupt           : constant Interrupt_ID := 220;

   --  Cortex-M0+ send event through EXTI
   CPU3_SEV_Interrupt           : constant Interrupt_ID := 221;

   --  RCC CPU2 Wake up interrupt
   RCC_WAKEUP_Interrupt         : constant Interrupt_ID := 222;

   --  SAI4 global interrupt
   SAI4_Interrupt               : constant Interrupt_ID := 223;

   --  Temperature sensor interrupt
   DTS_Interrupt                : constant Interrupt_ID := 224;

   --  LTIM11 global interrupt
   TIM11_Interrupt              : constant Interrupt_ID := 225;

   --  USB3 BC interrupt
   USB3DR_BC_Interrupt          : constant Interrupt_ID := 227;

   --  USB3 interrupt
   USB3DR_Interrupt             : constant Interrupt_ID := 228;

   --  USB PD interrupt
   UCPD1_Interrupt              : constant Interrupt_ID := 229;

   --  SERC global interrupt
   SERC_Interrupt               : constant Interrupt_ID := 240;

   --  RAM configuration global interrupt
   RAMCFG_Interrupt             : constant Interrupt_ID := 242;

   --  DDRCTRL interrupt
   DDRCTRL_Interrupt            : constant Interrupt_ID := 243;

   --  DDRPHYC interrupt (active low)
   DDRPHYC_Interrupt            : constant Interrupt_ID := 244;

   --  DFI error interrupt
   DDRPHYC_ERR_Interrupt        : constant Interrupt_ID := 245;

   --  RIF Illegal access Controller interrupt
   IAC_Interrupt                : constant Interrupt_ID := 246;

   --  Ethernet switch global interrupt
   ETHSW_Interrupt              : constant Interrupt_ID := 250;

   --  Ethernet ACM message buffer interrupt
   ETHSW_MSGBUF_Interrupt       : constant Interrupt_ID := 251;

   --  Ethernet ACM scheduler interrupt
   ETHSW_FSC_Interrupt          : constant Interrupt_ID := 252;

   --  HPDMA1 channel 0 to 15 wake up
   HPDMA1_WKUP_Interrupt        : constant Interrupt_ID := 253;

   --  HPDMA2 channel 0 to 15 wake up
   HPDMA2_WKUP_Interrupt        : constant Interrupt_ID := 254;

   --  HPDMA3 channel 0 to 15 wake up
   HPDMA3_WKUP_Interrupt        : constant Interrupt_ID := 255;

   --  LPDMA1 channel 0 to 3 wakeup
   LPDMA1_WKUP_Interrupt        : constant Interrupt_ID := 256;

   --  USB Type C VBUS valid
   UCPD_VBUS_VALID_Interrupt    : constant Interrupt_ID := 257;

   --  USB Type C VSAFE5V
   UCPD_VBUS_VSAFE5V_Interrupt  : constant Interrupt_ID := 258;

   --  HSI Frequency Monitor
   RCC_HSI_FMON_Interrupt       : constant Interrupt_ID := 259;

   --  EXTI1 line 0 interrupt
   EXTI1_0_Interrupt            : constant Interrupt_ID := 268;

   --  EXTI1 line 1 interrupt
   EXTI1_1_Interrupt            : constant Interrupt_ID := 269;

   --  EXTI1 line 2 interrupt
   EXTI1_2_Interrupt            : constant Interrupt_ID := 270;

   --  EXTI1 line 3 interrupt
   EXTI1_3_Interrupt            : constant Interrupt_ID := 271;

   --  EXTI1 line 4 interrupt
   EXTI1_4_Interrupt            : constant Interrupt_ID := 272;

   --  EXTI1 line 5 interrupt
   EXTI1_5_Interrupt            : constant Interrupt_ID := 273;

   --  EXTI1 line 6 interrupt
   EXTI1_6_Interrupt            : constant Interrupt_ID := 274;

   --  EXTI1 line 7 interrupt
   EXTI1_7_Interrupt            : constant Interrupt_ID := 275;

   --  EXTI1 line 8 interrupt
   EXTI1_8_Interrupt            : constant Interrupt_ID := 276;

   --  EXTI1 line 9 interrupt
   EXTI1_9_Interrupt            : constant Interrupt_ID := 277;

   --  EXTI1 line 10 interrupt
   EXTI1_10_Interrupt           : constant Interrupt_ID := 278;

   --  EXTI1 line 11 interrupt
   EXTI1_11_Interrupt           : constant Interrupt_ID := 279;

   --  EXTI1 line 12 interrupt
   EXTI1_12_Interrupt           : constant Interrupt_ID := 280;

   --  EXTI1 line 13 interrupt
   EXTI1_13_Interrupt           : constant Interrupt_ID := 281;

   --  EXTI1 line 14 interrupt
   EXTI1_14_Interrupt           : constant Interrupt_ID := 282;

   --  EXTI1 line 15 interrupt
   EXTI1_15_Interrupt           : constant Interrupt_ID := 283;

   --  DDR performance monitor interrupt
   DDRPERFM_Interrupt           : constant Interrupt_ID := 310;

end Ada.Interrupts.Names;
