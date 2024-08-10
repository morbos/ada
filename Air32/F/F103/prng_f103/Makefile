default:
	(export LOADER=ROM_AIRF103; gprbuild)
	(cd obj/Debug; arm-eabi-objdump -d prng_f103 >prng_f103.lst; arm-eabi-objdump -s prng_f103 >prng_f103.dmp; arm-eabi-gcc-nm -an prng_f103 >prng_f103.nm; arm-eabi-objcopy -Obinary prng_f103 prng_f103.bin)
