default:
	rm -f obj/Debug/aqi
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d aqi >aqi.lst; arm-eabi-objdump -s aqi >aqi.dmp; arm-eabi-gcc-nm -an aqi >aqi.nm; arm-eabi-objcopy -Obinary aqi aqi.bin)
