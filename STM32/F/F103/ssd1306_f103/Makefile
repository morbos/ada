default:
	rm -f obj/Debug/ssd1306_f103
#	rm -f obj/Production/ssd1306_f103
	(export LOADER=ROM_F103; gprbuild)
	(cd obj/Debug; arm-eabi-objdump -d ssd1306_f103 >ssd1306_f103.lst; arm-eabi-objdump -s ssd1306_f103 >ssd1306_f103.dmp; arm-eabi-gcc-nm -an ssd1306_f103 >ssd1306_f103.nm; arm-eabi-objcopy -Obinary ssd1306_f103 ssd1306_f103.bin)
