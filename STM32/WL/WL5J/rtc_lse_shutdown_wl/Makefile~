default:
	rm -f obj/Debug/rtc_lse_wl
	(export LOADER=ROM_WL5x; gprbuild -j24)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_wl >rtc_lse_wl.lst; arm-eabi-objdump -s rtc_lse_wl >rtc_lse_wl.dmp; arm-eabi-gcc-nm -an rtc_lse_wl >rtc_lse_wl.nm; arm-eabi-objcopy -Obinary rtc_lse_wl rtc_lse_wl.bin)
