default:
	rm -f obj/Debug/door
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d door >door.lst; arm-eabi-objdump -s door >door.dmp; arm-eabi-gcc-nm -an door >door.nm; arm-eabi-objcopy -Obinary door door.bin)
