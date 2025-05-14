default:
	rm -f obj/Debug/mailbox
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d mailbox >mailbox.lst; arm-eabi-objdump -s mailbox >mailbox.dmp; arm-eabi-gcc-nm -an mailbox >mailbox.nm; arm-eabi-objcopy -Obinary mailbox mailbox.bin)
