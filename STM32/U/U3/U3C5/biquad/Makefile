default:
	rm -f obj/Debug/biquad
	(export LOADER=ROM_U3C5; gprbuild -vh)
	(cd obj/Debug; arm-eabi-objdump -d biquad >biquad.lst; arm-eabi-objdump -s biquad >biquad.dmp; arm-eabi-gcc-nm -an biquad >biquad.nm; arm-eabi-objcopy -Obinary biquad biquad.bin)
