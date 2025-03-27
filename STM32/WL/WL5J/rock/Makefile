default:
	rm -f obj/Debug/rock
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d rock >rock.lst; arm-eabi-objdump -s rock >rock.dmp; arm-eabi-gcc-nm -an rock >rock.nm; arm-eabi-objcopy -Obinary rock rock.bin)
