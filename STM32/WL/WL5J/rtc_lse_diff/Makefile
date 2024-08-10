default:
	rm -f obj/Debug/rtc_lse_diff
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_diff >rtc_lse_diff.lst; arm-eabi-objdump -s rtc_lse_diff >rtc_lse_diff.dmp; arm-eabi-gcc-nm -an rtc_lse_diff >rtc_lse_diff.nm; arm-eabi-objcopy -Obinary rtc_lse_diff rtc_lse_diff.bin)
