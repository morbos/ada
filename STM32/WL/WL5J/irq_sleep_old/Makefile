default:
	rm -f obj/Debug/irq_sleep
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d irq_sleep >irq_sleep.lst; arm-eabi-objdump -s irq_sleep >irq_sleep.dmp; arm-eabi-gcc-nm -an irq_sleep >irq_sleep.nm; arm-eabi-objcopy -Obinary irq_sleep irq_sleep.bin)
