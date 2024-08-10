default:
	rm -f obj/Debug/motion_shutdown
	(export LOADER=ROM_WL5x; gprbuild -j24)
	(cd obj/Debug; arm-eabi-objdump -d motion_shutdown >motion_shutdown.lst; arm-eabi-objdump -s motion_shutdown >motion_shutdown.dmp; arm-eabi-gcc-nm -an motion_shutdown >motion_shutdown.nm; arm-eabi-objcopy -Obinary motion_shutdown motion_shutdown.bin)
