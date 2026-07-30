default:
	rm -f obj/Debug/try_u3c5
	(export LOADER=ROM_U3C5; gprbuild -vh)
	(cd obj/Debug; arm-eabi-objdump -d try_u3c5 >try_u3c5.lst; arm-eabi-objdump -s try_u3c5 >try_u3c5.dmp; arm-eabi-gcc-nm -an try_u3c5 >try_u3c5.nm; arm-eabi-objcopy -Obinary try_u3c5 try_u3c5.bin)
