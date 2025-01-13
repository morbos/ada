default:
	rm -f obj/Debug/lis3mdl_l443
	(export LOADER=ROM_L443; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d lis3mdl_l443 >lis3mdl_l443.lst; arm-eabi-objdump -s lis3mdl_l443 >lis3mdl_l443.dmp; arm-eabi-gcc-nm -an lis3mdl_l443 >lis3mdl_l443.nm; arm-eabi-objcopy -Obinary lis3mdl_l443 lis3mdl_l443.bin)
