default:
	rm -f obj/Debug/rtc_lse_lora_shutdown
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_lora_shutdown >rtc_lse_lora_shutdown.lst; arm-eabi-objdump -s rtc_lse_lora_shutdown >rtc_lse_lora_shutdown.dmp; arm-eabi-gcc-nm -an rtc_lse_lora_shutdown >rtc_lse_lora_shutdown.nm; arm-eabi-objcopy -Obinary rtc_lse_lora_shutdown rtc_lse_lora_shutdown.bin)
