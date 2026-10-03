default:
	rm -f obj/Debug/try_wb55
	(export LOADER=ROM_WB55x; gprbuild -j4 -vh)
	(cd obj/Debug; arm-eabi-objdump -d try_wb55 >try_wb55.lst; arm-eabi-objdump -s try_wb55 >try_wb55.dmp; arm-eabi-gcc-nm -an try_wb55 >try_wb55.nm; arm-eabi-objcopy -Obinary try_wb55 try_wb55.bin)
