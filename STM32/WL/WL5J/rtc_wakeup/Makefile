default:
	rm -f obj/Debug/rtc_wakeup
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rtc_wakeup >rtc_wakeup.lst; arm-eabi-objdump -s rtc_wakeup >rtc_wakeup.dmp; arm-eabi-gcc-nm -an rtc_wakeup >rtc_wakeup.nm; arm-eabi-objcopy -Obinary rtc_wakeup rtc_wakeup.bin)
