default:
	rm -f obj/Debug/ping_sip
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d ping_sip >ping_sip.lst; arm-eabi-objdump -s ping_sip >ping_sip.dmp; arm-eabi-gcc-nm -an ping_sip >ping_sip.nm; arm-eabi-objcopy -Obinary ping_sip ping_sip.bin)
