default:
	rm -f obj/Debug/merge
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d merge >merge.lst; arm-eabi-objdump -s merge >merge.dmp; arm-eabi-gcc-nm -an merge >merge.nm; arm-eabi-objcopy -Obinary merge merge.bin)
