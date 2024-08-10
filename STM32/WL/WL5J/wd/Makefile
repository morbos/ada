default:
	rm -f obj/Debug/wd
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d wd >wd.lst; arm-eabi-objdump -s wd >wd.dmp; arm-eabi-gcc-nm -an wd >wd.nm; arm-eabi-objcopy -Obinary wd wd.bin)
