default:
	rm -f obj/Debug/rx
	(export LOADER=ROM_WL5x; gprbuild)
	(cd obj/Debug; arm-eabi-objdump -d rx >rx.lst; arm-eabi-objdump -s rx >rx.dmp; arm-eabi-gcc-nm -an rx >rx.nm; arm-eabi-objcopy -Obinary rx rx.bin)
