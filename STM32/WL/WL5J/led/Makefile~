default:
	rm -f obj/Debug/i2c_mag
	(export LOADER=ROM_WL5x; gprbuild -j4)
	(cd obj/Debug; arm-eabi-objdump -d i2c_mag >i2c_mag.lst; arm-eabi-objdump -s i2c_mag >i2c_mag.dmp; arm-eabi-gcc-nm -an i2c_mag >i2c_mag.nm; arm-eabi-objcopy -Obinary i2c_mag i2c_mag.bin)
