default:
	rm -f obj/Debug/server
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d server >server.lst; arm-eabi-objdump -s server >server.dmp; arm-eabi-gcc-nm -an server >server.nm; arm-eabi-objcopy -Obinary server server.bin)
