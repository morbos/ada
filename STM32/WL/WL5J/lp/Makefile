default:
	rm -f obj/Debug/lp
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d lp >lp.lst; arm-eabi-objdump -s lp >lp.dmp; arm-eabi-gcc-nm -an lp >lp.nm; arm-eabi-objcopy -Obinary lp lp.bin)
