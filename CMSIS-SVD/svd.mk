SVD2ADA_DIR?=/media/16T/ada/svd2ada
CORTEX_DIR=$(PWD)/ARM/cortex_m/src
STM_DIR=$(PWD)/ARM/STM32/svd
STM_INTER_DIR=$(PWD)/ARM/STM32/interface
#NORDIC_DIR=$(PWD)/ARM/Nordic/svd
#SIFIVE_DIR=$(PWD)/RISC-V/SiFive/svd
NXP_DIR=$(PWD)/ARM/NXP/svd
NXP_INTER_DIR=$(PWD)/ARM/NXP/interface
RP_DIR=$(PWD)/ARM/RP/svd
RP_INTER_DIR=$(PWD)/ARM/RP/interface

all: svd

svd:
#	rm -rf $(STM_DIR)/stm32*
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F103.svd --boolean -o $(STM_DIR)/stm32f103 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/AIR32F103xx.svd --boolean -o $(STM_DIR)/air32f103 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F40x.svd --boolean -o $(STM_DIR)/stm32f40x -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x1.svd --boolean -o $(STM_DIR)/stm32l4x1 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x2.svd --boolean -o $(STM_DIR)/stm32l4x2 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x3.svd --boolean -o $(STM_DIR)/stm32l4x3 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x5.svd --boolean -o $(STM_DIR)/stm32l4x5 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x6.svd --boolean -o $(STM_DIR)/stm32l4x6 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WB55x.svd --boolean -o $(STM_DIR)/stm32wb55x -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L0x3.svd --boolean -o $(STM_DIR)/stm32l0x3 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L151.svd --boolean -o $(STM_DIR)/stm32l151 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L5x2.svd --boolean -o $(STM_DIR)/stm32l5x2 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L562.svd --boolean -o $(STM_DIR)/stm32l562 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U5xx.svd --boolean -o $(STM_DIR)/stm32u585 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U585.svd --boolean -o $(STM_DIR)/stm32u585 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U585_opt.svd --boolean -o $(STM_DIR)/stm32u585 -p STM32_SVD --base-types-package HAL --gen-uint-always
	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U073.svd --boolean -o $(STM_DIR)/stm32u073 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/xyz.svd --boolean -o /tmp/stm32l562 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/xyz.svd --boolean -o /tmp/stm32l562 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/NXP/LPC55S6x_mod2.svd --boolean -o $(NXP_DIR)/lpc55s6x -p NXP_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WL5x_CM4.svd --boolean -o $(STM_DIR)/stm32wl5x_cm4 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WL5x_CM0P.svd --boolean -o $(STM_DIR)/stm32wl5x_cm0 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/RP/rp2040.svd --boolean -o $(RP_DIR)/rp2040 -p RP_SVD --base-types-package HAL --gen-uint-always
#	rm -rf $(STM_INTER_DIR)/stm32*
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F103.svd -o $(STM_INTER_DIR)/stm32F103 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F40x.svd --boolean -o $(STM_INTER_DIR)/stm32f40x -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x1.svd --boolean -o $(STM_INTER_DIR)/stm32l4x1 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x2.svd -o $(STM_INTER_DIR)/stm32l4x2 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x2.svd -o $(STM_INTER_DIR)/stm32l4x2 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x3.svd -o $(STM_INTER_DIR)/stm32l4x3 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x3.svd --boolean -o $(STM_INTER_DIR)/stm32l4x3 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x5.svd --boolean -o $(STM_INTER_DIR)/stm32l4x5 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x6.svd --boolean -o $(STM_INTER_DIR)/stm32l4x6 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WB55x.svd --boolean -o $(STM_INTER_DIR)/stm32wb55x -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L0x3.svd --boolean -o $(STM_INTER_DIR)/stm32l0x3.svd -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L151.svd --boolean -o $(STM_INTER_DIR)/stm32l151 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L5x2.svd --boolean -o $(STM_INTER_DIR)/stm32l5x2 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L562.svd --boolean -o $(STM_INTER_DIR)/stm32l562 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U5xx.svd --boolean -o $(STM_INTER_DIR)/stm32u585 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U585.svd --boolean -o $(STM_INTER_DIR)/stm32u585 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32U073.svd --boolean -o $(STM_INTER_DIR)/stm32u073 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/NXP/LPC55S6x.svd --boolean -o $(NXP_INTER_DIR)/lpc55s6x -p Interfaces.NXP --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F40x.svd --boolean -o $(STM_DIR)/stm32f40x -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F429x.svd --boolean -o $(STM_DIR)/stm32f429x -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F46_79x.svd --boolean -o $(STM_DIR)/stm32f46_79x -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F7x.svd --boolean -o $(STM_DIR)/stm32f7x -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32F7x9.svd --boolean -o $(STM_DIR)/stm32f7x9 -p STM32_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32L4x6.svd --boolean -o $(STM_INTER_DIR)/stm32l4x6 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WL5x_CM4.svd --boolean -o $(STM_INTER_DIR)/stm32wl5x_cm4 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	strace -f -F -o /tmp/xuzzy $(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WL5x_CM4.svd --boolean -o $(STM_INTER_DIR)/stm32wl5x_cm4 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WB55x.svd --boolean -o $(STM_INTER_DIR)/stm32wb55x -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/ST/STM32WL5x_CM0P.svd -o $(STM_INTER_DIR)/stm32wl5x_cm0 -p Interfaces.STM32 --base-types-package Interfaces.Bit_Types
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/RP/rp2040.svd -o $(RP_INTER_DIR)/rp2040 -p Interfaces.RP --base-types-package Interfaces.Bit_Types
#	rm -rf $(CORTEX_DIR)/cm*
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Cortex_M/cm0.svd --boolean -o $(CORTEX_DIR)/cm0 -p Cortex_M_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Cortex_M/cm7.svd --boolean -o $(CORTEX_DIR)/cm7 -p Cortex_M_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Cortex_M/cm4.svd --boolean -o $(CORTEX_DIR)/cm4 -p Cortex_M_SVD --base-types-package HAL --gen-uint-always
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Cortex_M/cm4f.svd --boolean -o $(CORTEX_DIR)/cm4f -p Cortex_M_SVD --base-types-package HAL --gen-uint-always

#	rm -rf $(NORIC_DIR)/nrf*
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Nordic/nrf51.svd --boolean -o $(NORDIC_DIR)/nrf51 -p NRF51_SVD --base-types-package HAL --gen-uint-always

#	rm -rf $(SIFIVE_DIR)/FE*
#	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/SiFive/FE310.svd --boolean -o $(SIFIVE_DIR)/#FE310 -p FE310_SVD --base-types-package HAL --gen-uint-always