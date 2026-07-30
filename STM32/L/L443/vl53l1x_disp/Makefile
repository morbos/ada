default:
	rm -f obj/Debug/vl53l1x_disp
	(export LOADER=ROM_L443; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d vl53l1x_disp >vl53l1x_disp.lst; arm-eabi-objdump -s vl53l1x_disp >vl53l1x_disp.dmp; arm-eabi-gcc-nm -an vl53l1x_disp >vl53l1x_disp.nm; arm-eabi-objcopy -Obinary vl53l1x_disp vl53l1x_disp.bin)
