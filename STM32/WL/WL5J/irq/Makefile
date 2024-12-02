default:
	rm -f obj/Debug/irq
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d irq >irq.lst; arm-eabi-objdump -s irq >irq.dmp; arm-eabi-gcc-nm -an irq >irq.nm; arm-eabi-objcopy -Obinary irq irq.bin)
