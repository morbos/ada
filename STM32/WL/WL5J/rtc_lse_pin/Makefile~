default:
	rm -f obj/Debug/rtc_lse_uart
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rtc_lse_uart >rtc_lse_uart.lst; arm-eabi-objdump -s rtc_lse_uart >rtc_lse_uart.dmp; arm-eabi-gcc-nm -an rtc_lse_uart >rtc_lse_uart.nm; arm-eabi-objcopy -Obinary rtc_lse_uart rtc_lse_uart.bin)
