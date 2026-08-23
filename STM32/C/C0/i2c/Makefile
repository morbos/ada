MAIN      = i2c
APP_UNITS = i2c systick utils hw
OBJS      = handler.o $(APP_UNITS:=.o)
DEPS      = $(APP_UNITS:=.d)

CC        = arm-eabi-gcc
ADAFLAGS  += -fno-unwind-tables -fno-asynchronous-unwind-tables
CFLAGS    = -x ada -gnatA -mlittle-endian -msoft-float -mcpu=cortex-m0plus \
            -mthumb -g -O2 -gnata -fcallgraph-info=su -gnatQ -gnatw.X \
            -gnatwe \
            -gnaty -gnatyu -gnatyO -gnatyM120 -ffunction-sections -fdata-sections \
	    -gnatE \
	    -fno-unwind-tables -fno-asynchronous-unwind-tables \
            -gnatec=gnat.adc

LDFLAGS   = -nolibc -nostartfiles -mlittle-endian -msoft-float \
            -mcpu=cortex-m0plus -mthumb -g \
	    -Wl,--gc-sections \
	    -Wl,-Map=$(MAIN).map,--cref \
            -T memory-map_C011.ld -T common-ROM_C011.ld

all: $(MAIN) $(MAIN).lst $(MAIN).nm

handler.o: handler.S
	$(CC) -c -DADA_MAIN=_ada_$(MAIN) $< -o $@

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
	rm -f *.o *.ali *.d $(MAIN) $(MAIN).lst $(MAIN).map $(MAIN).nm b~*
