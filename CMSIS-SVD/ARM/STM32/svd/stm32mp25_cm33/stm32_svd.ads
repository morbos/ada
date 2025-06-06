--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32MP25_CM33
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   ADC_Base : constant System.Address := System'To_Address (16#404E0000#);
   ADC1_S_Base : constant System.Address := System'To_Address (16#504E0000#);
   ADC2_Base : constant System.Address := System'To_Address (16#404E0100#);
   ADC2_S_Base : constant System.Address := System'To_Address (16#504E0100#);
   ADCC12_Base : constant System.Address := System'To_Address (16#404E0300#);
   ADC12_Common_S_Base : constant System.Address := System'To_Address (16#504E0300#);
   ADCC3_Base : constant System.Address := System'To_Address (16#404F0000#);
   ADC3_S_Base : constant System.Address := System'To_Address (16#504F0000#);
   ADF_Base : constant System.Address := System'To_Address (16#46220000#);
   ADF_S_Base : constant System.Address := System'To_Address (16#56220000#);
   BSEC_Base : constant System.Address := System'To_Address (16#44000000#);
   BSEC_S_Base : constant System.Address := System'To_Address (16#54000000#);
   CA35SS_Base : constant System.Address := System'To_Address (16#48800000#);
   CA35SS_S_Base : constant System.Address := System'To_Address (16#58800000#);
   COMBOPHY_Base : constant System.Address := System'To_Address (16#480C0000#);
   COMBOPHY_S_Base : constant System.Address := System'To_Address (16#580C0000#);
   CRC_Base : constant System.Address := System'To_Address (16#404C0000#);
   CRC_S_Base : constant System.Address := System'To_Address (16#504C0000#);
   CRYP_Base : constant System.Address := System'To_Address (16#42030000#);
   CRYP1_S_Base : constant System.Address := System'To_Address (16#52030000#);
   CRYP2_Base : constant System.Address := System'To_Address (16#42040000#);
   CRYP2_S_Base : constant System.Address := System'To_Address (16#52040000#);
   CSI_Base : constant System.Address := System'To_Address (16#48020000#);
   CSI_S_Base : constant System.Address := System'To_Address (16#58020000#);
   DBGMCU_Base : constant System.Address := System'To_Address (16#4A010000#);
   DBGMCU_S_Base : constant System.Address := System'To_Address (16#5A010000#);
   DCACHE_Base : constant System.Address := System'To_Address (16#40480000#);
   DCACHE_S_Base : constant System.Address := System'To_Address (16#50480000#);
   DCMI_Base : constant System.Address := System'To_Address (16#404A0000#);
   DCMI_S_Base : constant System.Address := System'To_Address (16#504A0000#);
   DCMIPP_Base : constant System.Address := System'To_Address (16#48030000#);
   DCMIPP_S_Base : constant System.Address := System'To_Address (16#58030000#);
   DDRDBG_Base : constant System.Address := System'To_Address (16#48050000#);
   DDRDBG_S_Base : constant System.Address := System'To_Address (16#58050000#);
   DDRCTRL_Base : constant System.Address := System'To_Address (16#48040000#);
   DDRCTRL_S_Base : constant System.Address := System'To_Address (16#58040000#);
   DDRPHYC_Base : constant System.Address := System'To_Address (16#48C00000#);
   DDRPHYC_S_Base : constant System.Address := System'To_Address (16#58C00000#);
   DDRPERFM_Base : constant System.Address := System'To_Address (16#48041000#);
   DDRPERFM_S_Base : constant System.Address := System'To_Address (16#58041000#);
   DSI_Base : constant System.Address := System'To_Address (16#48000000#);
   DSI_S_Base : constant System.Address := System'To_Address (16#58000000#);
   DTS_Base : constant System.Address := System'To_Address (16#44070000#);
   DTS_S_Base : constant System.Address := System'To_Address (16#54070000#);
   ETH_Base : constant System.Address := System'To_Address (16#482C0000#);
   ETH1_S_Base : constant System.Address := System'To_Address (16#582C0000#);
   ETH2_Base : constant System.Address := System'To_Address (16#482D0000#);
   ETH2_S_Base : constant System.Address := System'To_Address (16#582D0000#);
   ETHSW_Base : constant System.Address := System'To_Address (16#4C000000#);
   ETHSW_S_Base : constant System.Address := System'To_Address (16#5C000000#);
   EXTI1_Base : constant System.Address := System'To_Address (16#44220000#);
   EXTI1_S_Base : constant System.Address := System'To_Address (16#54220000#);
   EXTI2_Base : constant System.Address := System'To_Address (16#46230000#);
   EXTI2_S_Base : constant System.Address := System'To_Address (16#56230000#);
   FDCAN_Base : constant System.Address := System'To_Address (16#402D0000#);
   FDCAN1_S_Base : constant System.Address := System'To_Address (16#502D0000#);
   FDCAN2_Base : constant System.Address := System'To_Address (16#402E0000#);
   FDCAN2_S_Base : constant System.Address := System'To_Address (16#502E0000#);
   FDCAN3_Base : constant System.Address := System'To_Address (16#402F0000#);
   FDCAN3_S_Base : constant System.Address := System'To_Address (16#502F0000#);
   FMC_Base : constant System.Address := System'To_Address (16#48200000#);
   FMC_S_Base : constant System.Address := System'To_Address (16#58200000#);
   GICV2M_Base : constant System.Address := System'To_Address (16#48090000#);
   GICV2M_S_Base : constant System.Address := System'To_Address (16#58090000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#44240000#);
   GPIOA_S_Base : constant System.Address := System'To_Address (16#54240000#);
   GPIOB_Base : constant System.Address := System'To_Address (16#44250000#);
   GPIOB_S_Base : constant System.Address := System'To_Address (16#54250000#);
   GPIOC_Base : constant System.Address := System'To_Address (16#44260000#);
   GPIOC_S_Base : constant System.Address := System'To_Address (16#54260000#);
   GPIOD_Base : constant System.Address := System'To_Address (16#44270000#);
   GPIOD_S_Base : constant System.Address := System'To_Address (16#54270000#);
   GPIOE_Base : constant System.Address := System'To_Address (16#44280000#);
   GPIOE_S_Base : constant System.Address := System'To_Address (16#54280000#);
   GPIOF_Base : constant System.Address := System'To_Address (16#44290000#);
   GPIOF_S_Base : constant System.Address := System'To_Address (16#54290000#);
   GPIOG_Base : constant System.Address := System'To_Address (16#442A0000#);
   GPIOG_S_Base : constant System.Address := System'To_Address (16#542A0000#);
   GPIOH_Base : constant System.Address := System'To_Address (16#442B0000#);
   GPIOH_S_Base : constant System.Address := System'To_Address (16#542B0000#);
   GPIOI_Base : constant System.Address := System'To_Address (16#442C0000#);
   GPIOI_S_Base : constant System.Address := System'To_Address (16#542C0000#);
   GPIOJ_Base : constant System.Address := System'To_Address (16#442D0000#);
   GPIOJ_S_Base : constant System.Address := System'To_Address (16#542D0000#);
   GPIOK_Base : constant System.Address := System'To_Address (16#442E0000#);
   GPIOK_S_Base : constant System.Address := System'To_Address (16#542E0000#);
   GPIOZ_Base : constant System.Address := System'To_Address (16#46200000#);
   GPIOZ_S_Base : constant System.Address := System'To_Address (16#56200000#);
   GPU_Base : constant System.Address := System'To_Address (16#48280000#);
   GPU_S_Base : constant System.Address := System'To_Address (16#58280000#);
   HASH_Base : constant System.Address := System'To_Address (16#42010000#);
   HASH_S_Base : constant System.Address := System'To_Address (16#52010000#);
   HDP_Base : constant System.Address := System'To_Address (16#44090000#);
   HDP_S_Base : constant System.Address := System'To_Address (16#54090000#);
   HPDMA_Base : constant System.Address := System'To_Address (16#40400000#);
   HPDMA1_S_Base : constant System.Address := System'To_Address (16#50400000#);
   HPDMA2_Base : constant System.Address := System'To_Address (16#40410000#);
   HPDMA2_S_Base : constant System.Address := System'To_Address (16#50410000#);
   HPDMA3_Base : constant System.Address := System'To_Address (16#40420000#);
   HPDMA3_S_Base : constant System.Address := System'To_Address (16#50420000#);
   HSEM_Base : constant System.Address := System'To_Address (16#46240000#);
   HSEM_S_Base : constant System.Address := System'To_Address (16#56240000#);
   ICACHE_Base : constant System.Address := System'To_Address (16#40470000#);
   ICACHE_S_Base : constant System.Address := System'To_Address (16#50470000#);
   IPCC_Base : constant System.Address := System'To_Address (16#40490000#);
   IPCC1_S_Base : constant System.Address := System'To_Address (16#50490000#);
   IPCC2_Base : constant System.Address := System'To_Address (16#46250000#);
   IPCC2_S_Base : constant System.Address := System'To_Address (16#56250000#);
   I2C_Base : constant System.Address := System'To_Address (16#40120000#);
   I2C1_S_Base : constant System.Address := System'To_Address (16#50120000#);
   I2C2_Base : constant System.Address := System'To_Address (16#40130000#);
   I2C2_S_Base : constant System.Address := System'To_Address (16#50130000#);
   I2C3_Base : constant System.Address := System'To_Address (16#40140000#);
   I2C3_S_Base : constant System.Address := System'To_Address (16#50140000#);
   I2C4_Base : constant System.Address := System'To_Address (16#40150000#);
   I2C4_S_Base : constant System.Address := System'To_Address (16#50150000#);
   I2C5_Base : constant System.Address := System'To_Address (16#40160000#);
   I2C5_S_Base : constant System.Address := System'To_Address (16#50160000#);
   I2C6_Base : constant System.Address := System'To_Address (16#40170000#);
   I2C6_S_Base : constant System.Address := System'To_Address (16#50170000#);
   I2C7_Base : constant System.Address := System'To_Address (16#40180000#);
   I2C7_S_Base : constant System.Address := System'To_Address (16#50180000#);
   I2C8_Base : constant System.Address := System'To_Address (16#46040000#);
   I2C8_S_Base : constant System.Address := System'To_Address (16#56040000#);
   I3C_Base : constant System.Address := System'To_Address (16#40190000#);
   I3C1_S_Base : constant System.Address := System'To_Address (16#50190000#);
   I3C2_Base : constant System.Address := System'To_Address (16#401A0000#);
   I3C2_S_Base : constant System.Address := System'To_Address (16#501A0000#);
   I3C3_Base : constant System.Address := System'To_Address (16#401B0000#);
   I3C3_S_Base : constant System.Address := System'To_Address (16#501B0000#);
   I3C4_Base : constant System.Address := System'To_Address (16#46080000#);
   I3C4_S_Base : constant System.Address := System'To_Address (16#56080000#);
   IAC_Base : constant System.Address := System'To_Address (16#42090000#);
   IAC_S_Base : constant System.Address := System'To_Address (16#52090000#);
   IWDG_Base : constant System.Address := System'To_Address (16#44010000#);
   IWDG1_S_Base : constant System.Address := System'To_Address (16#54010000#);
   IWDG2_Base : constant System.Address := System'To_Address (16#44020000#);
   IWDG2_S_Base : constant System.Address := System'To_Address (16#54020000#);
   IWDG3_Base : constant System.Address := System'To_Address (16#44030000#);
   IWDG3_S_Base : constant System.Address := System'To_Address (16#54030000#);
   IWDG4_Base : constant System.Address := System'To_Address (16#44040000#);
   IWDG4_S_Base : constant System.Address := System'To_Address (16#54040000#);
   IWDG5_Base : constant System.Address := System'To_Address (16#46090000#);
   IWDG5_S_Base : constant System.Address := System'To_Address (16#56090000#);
   LPDMA_Base : constant System.Address := System'To_Address (16#46210000#);
   LPDMA_S_Base : constant System.Address := System'To_Address (16#56210000#);
   LPTIM1_Base : constant System.Address := System'To_Address (16#40090000#);
   LPTIM1_S_Base : constant System.Address := System'To_Address (16#50090000#);
   LPTIM2_Base : constant System.Address := System'To_Address (16#400A0000#);
   LPTIM2_S_Base : constant System.Address := System'To_Address (16#500A0000#);
   LPTIM3_Base : constant System.Address := System'To_Address (16#46050000#);
   LPTIM3_S_Base : constant System.Address := System'To_Address (16#56050000#);
   LPTIM4_Base : constant System.Address := System'To_Address (16#46060000#);
   LPTIM4_S_Base : constant System.Address := System'To_Address (16#56060000#);
   LPTIM5_Base : constant System.Address := System'To_Address (16#46070000#);
   LPTIM5_S_Base : constant System.Address := System'To_Address (16#56070000#);
   LPUART_Base : constant System.Address := System'To_Address (16#46030000#);
   LPUART1_S_Base : constant System.Address := System'To_Address (16#56030000#);
   LVDS_Base : constant System.Address := System'To_Address (16#48060000#);
   LVDS_S_Base : constant System.Address := System'To_Address (16#58060000#);
   LTDC_Base : constant System.Address := System'To_Address (16#48010000#);
   LTDC_S_Base : constant System.Address := System'To_Address (16#58010000#);
   MDF_Base : constant System.Address := System'To_Address (16#404D0000#);
   MDF1_S_Base : constant System.Address := System'To_Address (16#504D0000#);
   OTFDEC_Base : constant System.Address := System'To_Address (16#40450000#);
   OTFDEC1_S_Base : constant System.Address := System'To_Address (16#50450000#);
   OTFDEC2_Base : constant System.Address := System'To_Address (16#40460000#);
   OTFDEC2_S_Base : constant System.Address := System'To_Address (16#50460000#);
   PKA_Base : constant System.Address := System'To_Address (16#42060000#);
   PKA_S_Base : constant System.Address := System'To_Address (16#52060000#);
   PWR_Base : constant System.Address := System'To_Address (16#44210000#);
   PWR_S_Base : constant System.Address := System'To_Address (16#54210000#);
   PSSI_Base : constant System.Address := System'To_Address (16#404B0000#);
   PSSI_S_Base : constant System.Address := System'To_Address (16#504B0000#);
   RAMCFG_Base : constant System.Address := System'To_Address (16#42070000#);
   RAMCFG_S_Base : constant System.Address := System'To_Address (16#52070000#);
   RCC_Base : constant System.Address := System'To_Address (16#44200000#);
   RCC_S_Base : constant System.Address := System'To_Address (16#54200000#);
   RTC_Base : constant System.Address := System'To_Address (16#46000000#);
   RTC_S_Base : constant System.Address := System'To_Address (16#56000000#);
   SAES_Base : constant System.Address := System'To_Address (16#42050000#);
   SAES_S_Base : constant System.Address := System'To_Address (16#52050000#);
   SDMMC_Base : constant System.Address := System'To_Address (16#48220000#);
   SDMMC1_S_Base : constant System.Address := System'To_Address (16#58220000#);
   SDMMC2_Base : constant System.Address := System'To_Address (16#48230000#);
   SDMMC2_S_Base : constant System.Address := System'To_Address (16#58230000#);
   SDMMC3_Base : constant System.Address := System'To_Address (16#48240000#);
   SDMMC3_S_Base : constant System.Address := System'To_Address (16#58240000#);
   SERC_Base : constant System.Address := System'To_Address (16#44080000#);
   SERC_S_Base : constant System.Address := System'To_Address (16#54080000#);
   STGENC_Base : constant System.Address := System'To_Address (16#48080000#);
   STGENC_S_Base : constant System.Address := System'To_Address (16#58080000#);
   STGENR_Base : constant System.Address := System'To_Address (16#58070000#);
   STGENR_S_Base : constant System.Address := System'To_Address (16#48070000#);
   SYSCFG_Base : constant System.Address := System'To_Address (16#44230000#);
   SYSCFG_S_Base : constant System.Address := System'To_Address (16#54230000#);
   OCTOSPIM_Base : constant System.Address := System'To_Address (16#40500000#);
   OCTOSPIM_S_Base : constant System.Address := System'To_Address (16#50500000#);
   OCTOSPI_Base : constant System.Address := System'To_Address (16#40430000#);
   OCTOSPI1_S_Base : constant System.Address := System'To_Address (16#50430000#);
   OCTOSPI2_Base : constant System.Address := System'To_Address (16#40440000#);
   OCTOSPI2_S_Base : constant System.Address := System'To_Address (16#50440000#);
   RISAB_Base : constant System.Address := System'To_Address (16#420F0000#);
   RISAB1_S_Base : constant System.Address := System'To_Address (16#520F0000#);
   RISAB2_Base : constant System.Address := System'To_Address (16#42100000#);
   RISAB2_S_Base : constant System.Address := System'To_Address (16#52100000#);
   RISAB3_Base : constant System.Address := System'To_Address (16#42110000#);
   RISAB3_S_Base : constant System.Address := System'To_Address (16#52110000#);
   RISAB4_Base : constant System.Address := System'To_Address (16#42120000#);
   RISAB4_S_Base : constant System.Address := System'To_Address (16#52120000#);
   RISAB5_Base : constant System.Address := System'To_Address (16#42130000#);
   RISAB5_S_Base : constant System.Address := System'To_Address (16#52130000#);
   RISAB6_Base : constant System.Address := System'To_Address (16#42140000#);
   RISAB6_S_Base : constant System.Address := System'To_Address (16#52140000#);
   RISAF_Base : constant System.Address := System'To_Address (16#420A0000#);
   RISAF1_S_Base : constant System.Address := System'To_Address (16#520A0000#);
   RISAF2_Base : constant System.Address := System'To_Address (16#420B0000#);
   RISAF2_S_Base : constant System.Address := System'To_Address (16#520B0000#);
   RISAF4_Base : constant System.Address := System'To_Address (16#420D0000#);
   RISAF4_S_Base : constant System.Address := System'To_Address (16#520D0000#);
   RISAF5_Base : constant System.Address := System'To_Address (16#420E0000#);
   RISAF5_S_Base : constant System.Address := System'To_Address (16#520E0000#);
   RIFSC_Base : constant System.Address := System'To_Address (16#42080000#);
   RIFSC_S_Base : constant System.Address := System'To_Address (16#52080000#);
   RNG_Base : constant System.Address := System'To_Address (16#42020000#);
   RNG_S_Base : constant System.Address := System'To_Address (16#52020000#);
   SAI_Base : constant System.Address := System'To_Address (16#40290000#);
   SAI1_S_Base : constant System.Address := System'To_Address (16#50290000#);
   SAI2_Base : constant System.Address := System'To_Address (16#402A0000#);
   SAI2_S_Base : constant System.Address := System'To_Address (16#502A0000#);
   SAI3_Base : constant System.Address := System'To_Address (16#402B0000#);
   SAI3_S_Base : constant System.Address := System'To_Address (16#502B0000#);
   SAI4_Base : constant System.Address := System'To_Address (16#40340000#);
   SAI4_S_Base : constant System.Address := System'To_Address (16#50340000#);
   SPDIFRX_Base : constant System.Address := System'To_Address (16#400D0000#);
   SPDIFRX_S_Base : constant System.Address := System'To_Address (16#500D0000#);
   SPI1_Base : constant System.Address := System'To_Address (16#40230000#);
   SPI1_S_Base : constant System.Address := System'To_Address (16#50230000#);
   SPI2_Base : constant System.Address := System'To_Address (16#400B0000#);
   SPI2_S_Base : constant System.Address := System'To_Address (16#500B0000#);
   SPI3_Base : constant System.Address := System'To_Address (16#400C0000#);
   SPI3_S_Base : constant System.Address := System'To_Address (16#500C0000#);
   SPI4_Base : constant System.Address := System'To_Address (16#40240000#);
   SPI4_S_Base : constant System.Address := System'To_Address (16#50240000#);
   SPI5_Base : constant System.Address := System'To_Address (16#40280000#);
   SPI5_S_Base : constant System.Address := System'To_Address (16#50280000#);
   SPI6_Base : constant System.Address := System'To_Address (16#40350000#);
   SPI6_S_Base : constant System.Address := System'To_Address (16#50350000#);
   SPI7_Base : constant System.Address := System'To_Address (16#40360000#);
   SPI7_S_Base : constant System.Address := System'To_Address (16#50360000#);
   SPI8_Base : constant System.Address := System'To_Address (16#46020000#);
   SPI8_S_Base : constant System.Address := System'To_Address (16#56020000#);
   TAMP_Base : constant System.Address := System'To_Address (16#46010000#);
   TAMP_S_Base : constant System.Address := System'To_Address (16#56010000#);
   TIM1_Base : constant System.Address := System'To_Address (16#40200000#);
   TIM1_S_Base : constant System.Address := System'To_Address (16#50200000#);
   TIM2_Base : constant System.Address := System'To_Address (16#40000000#);
   TIM2_S_Base : constant System.Address := System'To_Address (16#50000000#);
   TIM3_Base : constant System.Address := System'To_Address (16#40010000#);
   TIM3_S_Base : constant System.Address := System'To_Address (16#50010000#);
   TIM4_Base : constant System.Address := System'To_Address (16#40020000#);
   TIM4_S_Base : constant System.Address := System'To_Address (16#50020000#);
   TIM5_Base : constant System.Address := System'To_Address (16#40030000#);
   TIM5_S_Base : constant System.Address := System'To_Address (16#50030000#);
   TIM6_Base : constant System.Address := System'To_Address (16#40040000#);
   TIM6_S_Base : constant System.Address := System'To_Address (16#50040000#);
   TIM7_Base : constant System.Address := System'To_Address (16#40050000#);
   TIM7_S_Base : constant System.Address := System'To_Address (16#50050000#);
   TIM8_Base : constant System.Address := System'To_Address (16#40210000#);
   TIM8_S_Base : constant System.Address := System'To_Address (16#50210000#);
   TIM10_Base : constant System.Address := System'To_Address (16#401C0000#);
   TIM10_S_Base : constant System.Address := System'To_Address (16#501C0000#);
   TIM11_Base : constant System.Address := System'To_Address (16#401D0000#);
   TIM11_S_Base : constant System.Address := System'To_Address (16#501D0000#);
   TIM12_Base : constant System.Address := System'To_Address (16#40060000#);
   TIM12_S_Base : constant System.Address := System'To_Address (16#50060000#);
   TIM13_Base : constant System.Address := System'To_Address (16#40070000#);
   TIM13_S_Base : constant System.Address := System'To_Address (16#50070000#);
   TIM14_Base : constant System.Address := System'To_Address (16#40080000#);
   TIM14_S_Base : constant System.Address := System'To_Address (16#50080000#);
   TIM15_Base : constant System.Address := System'To_Address (16#40250000#);
   TIM15_S_Base : constant System.Address := System'To_Address (16#50250000#);
   TIM16_Base : constant System.Address := System'To_Address (16#40260000#);
   TIM16_S_Base : constant System.Address := System'To_Address (16#50260000#);
   TIM17_Base : constant System.Address := System'To_Address (16#40270000#);
   TIM17_S_Base : constant System.Address := System'To_Address (16#50270000#);
   TIM20_Base : constant System.Address := System'To_Address (16#40320000#);
   TIM20_S_Base : constant System.Address := System'To_Address (16#50320000#);
   UCPD_Base : constant System.Address := System'To_Address (16#480A0000#);
   UCPD_S_Base : constant System.Address := System'To_Address (16#580A0000#);
   USART1_Base : constant System.Address := System'To_Address (16#40330000#);
   USART1_S_Base : constant System.Address := System'To_Address (16#50330000#);
   USART2_Base : constant System.Address := System'To_Address (16#400E0000#);
   USART2_S_Base : constant System.Address := System'To_Address (16#500E0000#);
   USART3_Base : constant System.Address := System'To_Address (16#400F0000#);
   USART3_S_Base : constant System.Address := System'To_Address (16#500F0000#);
   UART4_Base : constant System.Address := System'To_Address (16#40100000#);
   UART4_S_Base : constant System.Address := System'To_Address (16#50100000#);
   UART5_Base : constant System.Address := System'To_Address (16#40110000#);
   UART5_S_Base : constant System.Address := System'To_Address (16#50110000#);
   USART6_Base : constant System.Address := System'To_Address (16#40220000#);
   USART6_S_Base : constant System.Address := System'To_Address (16#50220000#);
   UART7_Base : constant System.Address := System'To_Address (16#40370000#);
   UART7_S_Base : constant System.Address := System'To_Address (16#50370000#);
   UART8_Base : constant System.Address := System'To_Address (16#40380000#);
   UART8_S_Base : constant System.Address := System'To_Address (16#50380000#);
   UART9_Base : constant System.Address := System'To_Address (16#402C0000#);
   UART9_S_Base : constant System.Address := System'To_Address (16#502C0000#);
   USB3DR_Base : constant System.Address := System'To_Address (16#48300000#);
   USB3DR_S_Base : constant System.Address := System'To_Address (16#58300000#);
   USBH_Base : constant System.Address := System'To_Address (16#482F0000#);
   USBH_EHCI_S_Base : constant System.Address := System'To_Address (16#582F0000#);
   USBH_OHCI_Base : constant System.Address := System'To_Address (16#482E0000#);
   USBH_OHCI_S_Base : constant System.Address := System'To_Address (16#582E0000#);
   VENC_Base : constant System.Address := System'To_Address (16#480E0000#);
   VENC_S_Base : constant System.Address := System'To_Address (16#580E0000#);
   VDEC_Base : constant System.Address := System'To_Address (16#480D0000#);
   VDEC_S_Base : constant System.Address := System'To_Address (16#580D0000#);
   VREFBUF_Base : constant System.Address := System'To_Address (16#44060000#);
   VREFBUF_S_Base : constant System.Address := System'To_Address (16#54060000#);
   WWDG_Base : constant System.Address := System'To_Address (16#44050000#);
   WWDG1_S_Base : constant System.Address := System'To_Address (16#54050000#);
   WWDG2_Base : constant System.Address := System'To_Address (16#460A0000#);
   WWDG2_S_Base : constant System.Address := System'To_Address (16#560A0000#);

end STM32_SVD;
