MAIN      = traffic
APP_UNITS = traffic systick prng utils lights hw
OBJS      = handler.o $(APP_UNITS:=.o)
DEPS      = $(APP_UNITS:=.d)

CC        = arm-eabi-gcc
CFLAGS    = -x ada -gnatA -mlittle-endian -msoft-float -mcpu=cortex-m0plus \
            -mthumb -g -O2 -gnata -fcallgraph-info=su -gnatQ -gnatw.X \
            -gnatwa -gnatwe -gnaty3aAbcefhiklM120nOprstu \
            -gnaty -gnatyO -gnatyM120 -ffunction-sections -fdata-sections \
            -gnatec=gnat.adc

LDFLAGS   = -nolibc -nostartfiles -mlittle-endian -msoft-float \
            -mcpu=cortex-m0plus -mthumb -g \
            -T memory-map_C011.ld -T common-ROM_C011.ld

all: $(MAIN) $(MAIN).lst $(MAIN).nm

handler.o: handler.S
	$(CC) -c $< -o $@

%.o: %.adb
	$(CC) -c $(CFLAGS) $< -o $@
	@awk '/^D [a-zA-Z0-9_.-]+\.(ads|adb)/ { print "$*.o: " $$2 }' $*.ali > $*.d

-include $(DEPS)

$(MAIN): $(OBJS) Makefile
	$(CC) $(OBJS) $(LDFLAGS) -o $@

$(MAIN).lst: $(MAIN)
	arm-eabi-objdump -d $< > $@

$(MAIN).nm: $(MAIN)
	nm -an $< > $@

clean:
	rm -f *.o *.ali *.d $(MAIN) $(MAIN).lst $(MAIN).nm b~*
