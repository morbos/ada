default:
	rm -f obj/Debug/try_h743
	(export LOADER=ROM_H743; gprbuild -vh -j4)
	(cd obj/Debug; arm-eabi-objdump -d try_h743 >try_h743.lst; arm-eabi-objdump -s try_h743 >try_h743.dmp; arm-eabi-gcc-nm -an try_h743 >try_h743.nm; arm-eabi-objcopy -Obinary try_h743 try_h743.bin)
