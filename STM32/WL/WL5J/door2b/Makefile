default:
	rm -f obj/Debug/door2b
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d door2b >door2b.lst; arm-eabi-objdump -s door2b >door2b.dmp; arm-eabi-gcc-nm -an door2b >door2b.nm; arm-eabi-objcopy -Obinary door2b door2b.bin)
