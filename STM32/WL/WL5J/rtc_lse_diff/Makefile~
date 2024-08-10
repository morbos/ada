default:
	rm -f obj/Debug/rtc_lse_pin
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_pin >rtc_lse_pin.lst; arm-eabi-objdump -s rtc_lse_pin >rtc_lse_pin.dmp; arm-eabi-gcc-nm -an rtc_lse_pin >rtc_lse_pin.nm; arm-eabi-objcopy -Obinary rtc_lse_pin rtc_lse_pin.bin)
