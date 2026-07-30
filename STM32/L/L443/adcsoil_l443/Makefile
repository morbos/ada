default:
	rm -f obj/Debug/adcsoil_l443
	(export LOADER=ROM_L443; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d adcsoil_l443 >adcsoil_l443.lst; arm-eabi-objdump -s adcsoil_l443 >adcsoil_l443.dmp; arm-eabi-gcc-nm -an adcsoil_l443 >adcsoil_l443.nm; arm-eabi-objcopy -Obinary adcsoil_l443 adcsoil_l443.bin)
