default:
	rm -f obj/Debug/rtc_lse_alarma_l443
	(export LOADER=ROM_L443; gprbuild -vh)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_alarma_l443 >rtc_lse_alarma_l443.lst; arm-eabi-objdump -s rtc_lse_alarma_l443 >rtc_lse_alarma_l443.dmp; arm-eabi-gcc-nm -an rtc_lse_alarma_l443 >rtc_lse_alarma_l443.nm; arm-eabi-objcopy -Obinary rtc_lse_alarma_l443 rtc_lse_alarma_l443.bin)
