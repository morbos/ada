MAIN          = test
APP_UNITS     = test systick prng utils hw
OBJS          = handler.o $(APP_UNITS:=.o)
DEPS          = $(APP_UNITS:=.d)

CROSS_COMPILE ?= riscv32-elf-
CC            = $(CROSS_COMPILE)gcc
OBJDUMP       = $(CROSS_COMPILE)objdump
NM            = $(CROSS_COMPILE)nm
SIZE          = $(CROSS_COMPILE)size

TARGET_ARCH   = -march=rv32ec_zicsr -mabi=ilp32e
OPT           = -Os

ASFLAGS       = $(TARGET_ARCH) -g

CFLAGS        = -x ada -gnatA $(TARGET_ARCH) \
                -g $(OPT) -gnata -fcallgraph-info=su -gnatQ -gnatw.X \
                -gnatwe \
                -gnaty -gnatyu -gnatyO -gnatyM120 -ffunction-sections -fdata-sections \
                -gnatE \
                -fno-unwind-tables -fno-asynchronous-unwind-tables \
                -gnatec=gnat.adc

LDFLAGS       = -nolibc -nostartfiles $(TARGET_ARCH) $(OPT) \
                -g \
                -Wl,--gc-sections \
		-Wl,--no-warn-rwx-segments \
                -Wl,-Map=$(MAIN).map,--cref \
                -T memory-map_CH32V003.ld -T common-ROM_CH32V003.ld

.PHONY: all clean

all: $(MAIN) $(MAIN).lst $(MAIN).nm size

handler.o: handler.S
	$(CC) -c $(ASFLAGS) -DADA_MAIN=_ada_$(MAIN) $< -o $@

%.o: %.adb
	$(CC) -c $(CFLAGS) $< -o $@
	@awk '/^D [a-zA-Z0-9_.-]+\.(ads|adb)/ { print "$*.o: " $$2 }' $*.ali > $*.d

-include $(DEPS)

$(MAIN): $(OBJS) Makefile
	$(CC) $(OBJS) $(LDFLAGS) -o $@

$(MAIN).lst: $(MAIN)
	$(OBJDUMP) -d -S $< > $@

$(MAIN).nm: $(MAIN)
	$(NM) -an $< > $@

size: $(MAIN)
	@$(SIZE) -A -d $(MAIN)

clean:
	rm -f *.o *.ali *.d *.ci $(MAIN) $(MAIN).lst $(MAIN).map $(MAIN).nm b~*
