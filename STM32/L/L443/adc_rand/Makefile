default:
	rm -f obj/Debug/adc_rand
	(export LOADER=ROM_L443; gprbuild -j4 -vh)
	(cd obj/Debug; arm-eabi-objdump -d adc_rand >adc_rand.lst; arm-eabi-objdump -s adc_rand >adc_rand.dmp; arm-eabi-gcc-nm -an adc_rand >adc_rand.nm; arm-eabi-objcopy -Obinary adc_rand adc_rand.bin)
