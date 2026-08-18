.SUFFIXES:
.SUFFIXES: .S .ada .o

OBJS = handler.o traffic.o systick.o prng.o utils.o lights.o hw.o
OPT = -O0

%.o: %.S
	arm-eabi-gcc -c $<
%.o: %.adb
	arm-eabi-gcc -c -x ada -gnatA -mlittle-endian -msoft-float -mcpu=cortex-m0plus -mthumb -g -g $(OPT) -gnata -fcallgraph-info=su -gnatQ -gnatw.X -gnaty -gnatyO -gnatyM120 -ffunction-sections -fdata-sections -gnatec=gnat.adc $<

default: traffic

traffic: $(OBJS)
	arm-eabi-gcc $(OBJS) -nolibc -nostartfiles -mlittle-endian -msoft-float -mcpu=cortex-m0plus -mthumb -g -T memory-map_C011.ld -T common-ROM_C011.ld -o traffic
	arm-eabi-objdump -d traffic >traffic.lst
	nm -an traffic > traffic.nm
