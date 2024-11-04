default:
	rm -f obj/Debug/ping
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d ping >ping.lst; arm-eabi-objdump -s ping >ping.dmp; arm-eabi-gcc-nm -an ping >ping.nm; arm-eabi-objcopy -Obinary ping ping.bin)
