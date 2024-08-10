default:
	rm -f obj/Debug/led
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d led >led.lst; arm-eabi-objdump -s led >led.dmp; arm-eabi-gcc-nm -an led >led.nm; arm-eabi-objcopy -Obinary led led.bin)
