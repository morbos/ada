## -*- asm -*- ##############################################################
#                                                                           #
#                  GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 #
#                                                                           #
#                                 S T A R T                                 #
#                                                                           #
#                               Assembly File                               #
#                                                                           #
#                        Copyright (C) 2012-2026 AdaCore                    #
#                                                                           #
#  GNAT is free software;  you can  redistribute it  and/or modify it under #
#  terms of the  GNU General Public License as published  by the Free Soft- #
#  ware  Foundation;  either version 3,  or (at your option) any later ver- #
#  sion.                                                                    #
#                                                                           #
#############################################################################

#ifndef ADA_MAIN
#define ADA_MAIN _ada_traffic
#endif

    .option push
    .option norvc           /* Force 32-bit jump instructions in the vector table */

    .section .vectors,"ax"
    .globl  __vectors0
    .align  2               /* 4-byte alignment (or align 6 / 64-byte if using vectored mode) */
__vectors0:
    /* RISC-V Vector Table entries are jump instructions, not raw addresses */
    j   _start_rom          /* 0: Reset */
    j   hang                /* 1: NMI */
    j   hf                  /* 2: HardFault / Exception */
    j   hang                /* 3: Reserved */
    j   hang                /* 4: Reserved */
    j   hang                /* 5: Reserved */
    j   hang                /* 6: Reserved */
    j   hang                /* 7: Reserved */
    j   hang                /* 8: Reserved */
    j   hang                /* 9: Reserved */
    j   hang                /* 10: Reserved */
    j   hang                /* 11: Reserved */
    j   SysTick_Handler     /* 12: SysTick / Software timer interrupt */
    j   hang                /* 13: Reserved */
    j   hang                /* 14: Reserved */
    j   hang                /* 15: Reserved / Peripheral interrupts follow */

    .option pop

    .text
    .globl _start_rom
    .type  _start_rom, @function
_start_rom:

    /* Force absolute jump into physical Flash space (0x08000000)
       This transitions the PC out of the 0x00000000 boot alias so that
       subsequent PC-relative (auipc) address calculations work. */
    lui     t0, %hi(.Lin_flash)
    addi    t0, t0, %lo(.Lin_flash)
    jr      t0

.Lin_flash:
    /* Disable interrupts globally during setup */
    csrci   mstatus, 0x8

    /* Initialize Stack Pointer and Global Pointer */
    la      sp, __stack_end
.option push
.option norelax
    la      gp, __global_pointer$
.option pop

    /* Set trap vector base address to our vector table (direct or vectored) */
    la      t0, __vectors0
    ori     t0, t0, 1       /* Mode 1 = Vectored mode (jumps to base + 4*cause) */
    csrw    mtvec, t0

    /* Copy .data from Flash to RAM */
    la      a0, __data_start
    la      a1, __data_words
    la      a2, __data_load
    beqz    a1, 1f
0:
    lw      t0, 0(a2)
    sw      t0, 0(a0)
    addi    a2, a2, 4
    addi    a0, a0, 4
    addi    a1, a1, -1
    bnez    a1, 0b
1:

    /* Zero .bss */
    la      a0, __bss_start
    la      a1, __bss_words
    beqz    a1, 1f
0:
    sw      zero, 0(a0)
    addi    a0, a0, 4
    addi    a1, a1, -1
    bnez    a1, 0b
1:

    /* Call Ada main */
    call    ADA_MAIN

    /* If main returns, hang in _exit */
    call    _exit

    .globl hang
hang:
    wfi
    j       hang

    .globl hf
hf:
    j       crash

    .globl crash
crash:
    /* Read CSRs for debugging into standard E-registers:
       mcause -> a0, mepc -> a1, mtval -> a2, mstatus -> a3 */
    csrr    a0, mcause
    csrr    a1, mepc
    csrr    a2, mtval
    csrr    a3, mstatus
0:
    wfi
    j       0b

    .globl  _exit
    .type   _exit, @function
_exit:
    wfi
    j       _exit

/* ---------------------------------------------------------
   Minimal C runtime and GNAT check failure trap handlers
   --------------------------------------------------------- */

    .globl memcpy
    .type memcpy, @function
memcpy:
    j       memcpy

    .globl abort
    .type abort, @function
abort:
    j       abort

    .globl __gnat_rcheck_CE_Index_Check
    .type __gnat_rcheck_CE_Index_Check, @function
__gnat_rcheck_CE_Index_Check:
    j       __gnat_rcheck_CE_Index_Check

    .globl __gnat_rcheck_PE_Misaligned_Address_Value
    .type __gnat_rcheck_PE_Misaligned_Address_Value, @function
__gnat_rcheck_PE_Misaligned_Address_Value:
    j       __gnat_rcheck_PE_Misaligned_Address_Value

    .globl __gnat_rcheck_CE_Range_Check
    .type __gnat_rcheck_CE_Range_Check, @function
__gnat_rcheck_CE_Range_Check:
    j       __gnat_rcheck_CE_Range_Check

    .globl __gnat_rcheck_CE_Divide_By_Zero
    .type __gnat_rcheck_CE_Divide_By_Zero, @function
__gnat_rcheck_CE_Divide_By_Zero:
    j       __gnat_rcheck_CE_Divide_By_Zero

    .globl __gnat_rcheck_CE_Overflow_Check
    .type __gnat_rcheck_CE_Overflow_Check, @function
__gnat_rcheck_CE_Overflow_Check:
    j       __gnat_rcheck_CE_Overflow_Check

    .globl __gnat_rcheck_CE_Invalid_Data
    .type __gnat_rcheck_CE_Invalid_Data, @function
__gnat_rcheck_CE_Invalid_Data:
    j      __gnat_rcheck_CE_Invalid_Data
