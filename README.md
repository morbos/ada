# Ada
This is a rollup of my Ada tree. It has the complete locally modified
Ada_Drivers_Library, the svd file conversion utility (modified from
Adacore's version to allow finer control on clusters). There are a
bunch of svd items and gdb scripts in xml. Of course there are the
complete vendor trees, STM32, NXP etc. Only STM32 is really up to
date.

The toolchain used is a locally build gcc14 on a RPi5. This was
facilitated by a script from Simon Wright modified for the Pi as his
build was for Mac.
This locally modified script is in:

building-gcc-raspian-arm-eabi

You would need to point it to a dir with all the src's it needs (gcc,
gdb, binutils etc). This is taken from a file: common.sh at the
top. There you can also adjust items like # of cores. (4 for the Pi5).
