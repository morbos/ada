default:
	rm -f obj/Debug/cds
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d cds >cds.lst; arm-eabi-objdump -s cds >cds.dmp; arm-eabi-gcc-nm -an cds >cds.nm; arm-eabi-objcopy -Obinary cds cds.bin)
