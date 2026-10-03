default:
	rm -f obj/Debug/mini_joy_l443
	(export LOADER=ROM_L443; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d mini_joy_l443 >mini_joy_l443.lst; arm-eabi-objdump -s mini_joy_l443 >mini_joy_l443.dmp; arm-eabi-gcc-nm -an mini_joy_l443 >mini_joy_l443.nm; arm-eabi-objcopy -Obinary mini_joy_l443 mini_joy_l443.bin)
