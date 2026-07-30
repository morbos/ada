default:
	rm -f obj/Debug/garage
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d garage >garage.lst; arm-eabi-objdump -s garage >garage.dmp; arm-eabi-gcc-nm -an garage >garage.nm; arm-eabi-objcopy -Obinary garage garage.bin)
