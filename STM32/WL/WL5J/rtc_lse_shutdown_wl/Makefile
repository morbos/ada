default:
	rm -f obj/Debug/rtc_lse_shutdown_wl
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_shutdown_wl >rtc_lse_shutdown_wl.lst; arm-eabi-objdump -s rtc_lse_shutdown_wl >rtc_lse_shutdown_wl.dmp; arm-eabi-gcc-nm -an rtc_lse_shutdown_wl >rtc_lse_shutdown_wl.nm; arm-eabi-objcopy -Obinary rtc_lse_shutdown_wl rtc_lse_shutdown_wl.bin)
