default:
	rm -f obj/Debug/waveshare_epd_1_54
#	rm -f obj/Production/waveshare_epd_1_54
	(export LOADER=ROM_AIRF103; gprbuild waveshare_epd_1_54.gpr -vh)
	(cd obj/Debug; arm-eabi-objdump -d waveshare_epd_1_54 >waveshare_epd_1_54.lst; arm-eabi-objdump -s waveshare_epd_1_54 >waveshare_epd_1_54.dmp; arm-eabi-gcc-nm -anS waveshare_epd_1_54 >waveshare_epd_1_54.nm; arm-eabi-objcopy -Obinary waveshare_epd_1_54 waveshare_epd_1_54.bin)
