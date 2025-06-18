default:
	rm -f obj/Debug/psm7003
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d psm7003 >psm7003.lst; arm-eabi-objdump -s psm7003 >psm7003.dmp; arm-eabi-gcc-nm -an psm7003 >psm7003.nm; arm-eabi-objcopy -Obinary psm7003 psm7003.bin)
