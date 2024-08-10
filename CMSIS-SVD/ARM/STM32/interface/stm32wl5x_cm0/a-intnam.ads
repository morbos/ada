--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

--  This is a version for the STM32WL5x_CM0P MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt                                       : constant Interrupt_ID := -1;

   --  Security Interrupt controller illegal access interrupt
   TZIC_ILA_Interrupt                                       : constant Interrupt_ID := 0;

   --  PVD through EXTI[16], PVM[3] through EXTI[34]
   PVD_PVM_3_Interrupt                                      : constant Interrupt_ID := 1;

   --  Tamper, TimeStamp, LSECSS,alarm A and B,SSR underflow,RTC wakeup
   --  interrupt
   TAMP_RTCSTAMP_LSECSS_RTCALARM_RTCSSRU_RTCWKUP_Interrupt  : constant Interrupt_ID := 2;

   --  Flash memory global interrupt and Flash memory ECC single error
   --  interrupt,RCC global interrupt,CPU1 SEV through EXTI
   FLASH_RCC_C1SEV_Interrupt                                : constant Interrupt_ID := 3;

   --  EXTI line 0 interrupt through EXTI
   EXTI1_0_Interrupt                                        : constant Interrupt_ID := 4;

   --  EXTI line 1 interrupt through EXTI
   EXTI3_2_Interrupt                                        : constant Interrupt_ID := 5;

   --  EXTI line 2 interrupt through EXTI
   EXTI15_4_Interrupt                                       : constant Interrupt_ID := 6;

   --  ADC and DAC global interrupt,COMP1 and COMP2 interrupt through EXTI
   ADC_COMP_DAC_Interrupt                                   : constant Interrupt_ID := 7;

   --  DMA1 channel 3:1 secure and non-secure interrupt (C2IMR2[2:0])
   DMA1_CH3_1_Interrupt                                     : constant Interrupt_ID := 8;

   --  DMA1 channel 7:4 secure and non-secure interrupt (C2IMR2[6:3])
   DMA1_CH7_4_Interrupt                                     : constant Interrupt_ID := 9;

   --  DMA2 channel 7:1 secure and non-secure interrupt (C2IMR2[14:8]),DMAMUX1
   --  overrun interrupt (C2IMR2[15])
   DMA2_CH7_1_DMAMUX1_OVR_Interrupt                         : constant Interrupt_ID := 10;

   --  LPtimer 1 global interrupt
   LPTIM1_Interrupt                                         : constant Interrupt_ID := 11;

   --  LPtimer 2 global interrupt
   LPTIM2_Interrupt                                         : constant Interrupt_ID := 12;

   --  LPtimer 3 global interrupt
   LPTIM3_Interrupt                                         : constant Interrupt_ID := 13;

   --  Timer 1 break, update, trigger and communication,capture compare
   --  interrupt
   TIM1_BRK_TIM1_UP_TIM1_TRG_COM_TIM1_CC_Interrupt          : constant Interrupt_ID := 14;

   --  Timer 2 global interrupt
   TIM2_Interrupt                                           : constant Interrupt_ID := 15;

   --  Timer 16 global interrupt
   TIM16_Interrupt                                          : constant Interrupt_ID := 16;

   --  Timer 17 global interrupt
   TIM17_Interrupt                                          : constant Interrupt_ID := 17;

   --  IPCC CPU2 RX occupied interrupt, IPCC CPU2 TX free interrupt
   IPCC_C2_RX_IT_IPCC_C2_TX_IT_Interrupt                    : constant Interrupt_ID := 18;

   --  Semaphore interrupt 1 to CPU2
   HSEM_Interrupt                                           : constant Interrupt_ID := 19;

   --  True random number generator interrupt
   True_RNG_Interrupt                                       : constant Interrupt_ID := 20;

   --  AES global interrupt , Private key accelerator interrupt
   AES_PKA_Interrupt                                        : constant Interrupt_ID := 21;

   --  I2C1 event interrupt,I2C1 error interrupt
   I2C1_EV_I2C1_ER_Interrupt                                : constant Interrupt_ID := 22;

   --  I2C2 event interrupt , I2C2 error interrupt
   I2C2_EV_I2C2_ER_Interrupt                                : constant Interrupt_ID := 23;

   --  I2C3 event interrupt , I2C2 error interrupt
   I2C3_EV_I2C3_ER_Interrupt                                : constant Interrupt_ID := 24;

   --  SPI 1 global interrupt
   SPI1_Interrupt                                           : constant Interrupt_ID := 25;

   --  SPI2S2 global interrupt
   SPI2S2_Interrupt                                         : constant Interrupt_ID := 26;

   --  USART1 global interrupt
   USART1_Interrupt                                         : constant Interrupt_ID := 27;

   --  USART2 global interrupt
   USART2_Interrupt                                         : constant Interrupt_ID := 28;

   --  LPUART1 global interrupt
   LPUART1_Interrupt                                        : constant Interrupt_ID := 29;

   --  Sub-GHz radio SPI global interrupt
   SUBGHZSPI_Interrupt                                      : constant Interrupt_ID := 30;

   --  Radio IRQs, RFBUSY interrupt through EXTI
   Radio_IRQ_Busy_Interrupt                                 : constant Interrupt_ID := 31;

   --  FPU global interrupt
   FPU_Interrupt                                            : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
