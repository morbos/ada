default:
	rm -f obj/Debug/t67xx_f103
	(export LOADER=ROM_F103; gprbuild)
	(cd obj/Debug; arm-eabi-objdump -d t67xx_f103 >t67xx_f103.lst; arm-eabi-objdump -s t67xx_f103 >t67xx_f103.dmp; arm-eabi-gcc-nm -an t67xx_f103 >t67xx_f103.nm; arm-eabi-objcopy -Obinary t67xx_f103 t67xx_f103.bin)
