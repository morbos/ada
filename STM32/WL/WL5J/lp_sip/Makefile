default:
	rm -f obj/Debug/lp_sip
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d lp_sip >lp_sip.lst; arm-eabi-objdump -s lp_sip >lp_sip.dmp; arm-eabi-gcc-nm -an lp_sip >lp_sip.nm; arm-eabi-objcopy -Obinary lp_sip lp_sip.bin)
