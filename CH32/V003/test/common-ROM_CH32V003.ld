/****************************************************************************
 *                       GNAT COMPILER COMPONENTS                           *
 *                                                                          *
 *                               R I S C - V                                *
 *                                                                          *
 *                           Linker Script File                             *
 *                                                                          *
 *                   CH32V003 (QingKe V2A - RV32EC)                         *
 ****************************************************************************/

SEARCH_DIR(.)
__DYNAMIC  =  0;

_DEFAULT_STACK_SIZE = 256;

ENTRY(_start_rom);

SECTIONS
{
  .text :
  {
    . = ALIGN(4);
    KEEP (*(.vectors))
    *(.text .text.* .gnu.linkonce.t*)
    *(.gnu.warning)
  } > flash

  .rodata :
  {
    . = ALIGN(4);
    *(.rdata)
    *(.rodata .rodata.* .gnu.linkonce.r*)
    *(.srodata .srodata.*)
    . = ALIGN(4);
    __rom_end = .;
  } > flash

  __data_load = __rom_end;

  .data : AT (__data_load)
  {
    . = ALIGN(4);
    __data_start = .;
    *(.data .data.* .gnu.linkonce.d*)

    /* RISC-V Small Data section */
    . = ALIGN(4);
    PROVIDE( __global_pointer$ = . + 0x800 );
    *(.sdata .sdata.* .gnu.linkonce.s.*)

    . = ALIGN(4);
    __data_end = .;
  } > sram

  /* Number of 32-bit words for handler.S copy loop */
  __data_words = (__data_end - __data_start) >> 2;

  .bss (NOLOAD) :
  {
    . = ALIGN(4);
    __bss_start = .;

    /* RISC-V Small BSS */
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)

    /* Standard BSS */
    *(.bss .bss.* .gnu.linkonce.b.*)
    *(COMMON)

    . = ALIGN(4);
    __bss_end = .;

    __interrupt_stack_start = .;
    *(.interrupt_stacks)
    . = ALIGN(4);
    __interrupt_stack_end = .;

    __stack_start = .;
    . += DEFINED (__stack_size) ? __stack_size : _DEFAULT_STACK_SIZE;
    . = ALIGN(4);
    __stack_end = .;

    _end = .;
    __heap_start = .;
    __heap_end = ORIGIN(sram) + LENGTH(sram);
  } > sram

  /* Number of 32-bit words for handler.S zero loop */
  __bss_words = (__bss_end - __bss_start) >> 2;

  /* RISC-V specific attributes & DWARF Debug sections */
  .riscv.attributes 0 : { KEEP (*(.riscv.attributes)) }

  .debug          0 : { *(.debug) }
  .line           0 : { *(.line) }
  .debug_srcinfo  0 : { *(.debug_srcinfo) }
  .debug_sfnames  0 : { *(.debug_sfnames) }
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
  .debug_pubtypes 0 : { *(.debug_pubtypes) }
  .debug_ranges   0 : { *(.debug_ranges) }

  /DISCARD/ :
  {
    *(.note.GNU-stack)
    *(.gnu_debuglink)
    *(.gnu.lto_*)
    *(.eh_frame*)
  }
}
