## -*- asm -*- ##############################################################
#                                                                           #
#                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                  #
#                                                                           #
#                                 S T A R T                                 #
#                                                                           #
#                               Assembly File                               #
#                                                                           #
#                      Copyright (C) 2012-2016 AdaCore                      #
#                                                                           #
#  GNAT is free software;  you can  redistribute it  and/or modify it under #
#  terms of the  GNU General Public License as published  by the Free Soft- #
#  ware  Foundation;  either version 3,  or (at your option) any later ver- #
#  sion.  GNAT is distributed in the hope that it will be useful, but WITH- #
#  OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY #
#  or FITNESS FOR A PARTICULAR PURPOSE.                                     #
#                                                                           #
#  You should have received a copy of the GNU General Public License along  #
#  with this library; see the file COPYING3. If not, see:                   #
#  <http://www.gnu.org/licenses/>.                                          #
#                                                                           #
#############################################################################

	.syntax unified
	.cpu cortex-m4
	.thumb
	.globl __vectors0
	.section .vectors,"a"
__vectors0:
	.word   __stack_end /* stack top address */
	.word   _start_ram  /* 1 Reset */
	.word   hang        /* 2 NMI */
	.word   hang        /* 3 HardFault */
	.word   hang        /* 4 MemManage */

	.text

	.thumb_func
	.globl _start_ram
_start_ram:
@	ldr	r0,.LinitSp
@	msr	msp,r0
@	ldr	r1,=0x10000
	@	sub	r0,r1
	mov	r0,#0
	msr	msplim,r0
	msr	psplim,r0
	/* Init stack */
	ldr	sp,.LinitSp

	mov	r0,#0xab
	push	{r0}
	pop	{r0}

        /* Enable FPU and cache when appropriate */
        bl _stm32_start_common

	/* Clear .bss */
	movw	r0,#:lower16:__bss_start
	movt	r0,#:upper16:__bss_start
	movw	r1,#:lower16:__bss_words
	mov	r2,#0
	cbz	r1,1f
0:	str	r2,[r0],#4
	subs	r1,r1,#1
	bne	0b

1:

/*
	@ Setup MPU

	@@ Enable Undefined to not go to Hardfault
	ldr	r1,=0xe000ed00
	ldr	r0,[r1,#0x24]
	orr	r0,#(1 << 18)
	str	r0,[r1,#0x24]

Region_32B     = 0b00100
Region_64B     = 0b00101
Region_128B    = 0b00110
Region_256B    = 0b00111
Region_512B    = 0b01000
Region_1K      = 0b01001
Region_2K      = 0b01010
Region_4K      = 0b01011
Region_8K      = 0b01100
Region_16K     = 0b01101
Region_32K     = 0b01110
Region_64K     = 0b01111
Region_128K    = 0b10000
Region_256K    = 0b10001
Region_512K    = 0b10010
Region_1M      = 0b10011
Region_2M      = 0b10100
Region_4M      = 0b10101
Region_8M      = 0b10110
Region_16M     = 0b10111
Region_32M     = 0b11000
Region_64M     = 0b11001
Region_128M    = 0b11010
Region_256M    = 0b11011
Region_512M    = 0b11100
Region_1G      = 0b11101
Region_2G      = 0b11110
Region_4G      = 0b11111

XN	      = (1 << 28)
Device_Space  = (1 << 17)
Region_Enable =	1
No_Access     = 0
Full_Access   = 0x3
Read_Only     = 0b110

	ldr	r1,=0xe000ed00
	@ Region 0 - No access the entire SoC (low pri)
        mov     r2, #0
	str	r2,[r1,#0x98]	@ region index0
	ldr	r2,=0x00000000
	str	r2,[r1,#0x9c]	@ region base 0x00000000
	ldr     r2,=(No_Access << 24) | (Region_4G << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 1 - itcm
        mov     r2, #1
	str	r2,[r1,#0x98]	@ region index1
	ldr	r2,=0x10000000
	str	r2,[r1,#0x9c]	@ region base 0x08000000
	@@ Flash is allowed to exec
        ldr     r2,=(Full_Access << 24) | (Region_64K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 2 - RAM
        mov     r2, #2
	str	r2,[r1,#0x98]	@ region index2
	ldr	r2,=0x24000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | (Region_4M << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 3 - RAM-S
        mov     r2, #3
	str	r2,[r1,#0x98]	@ region index3
	ldr	r2,=0x34000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | (Region_4M << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 4 - Device
        mov     r2, #4
	str	r2,[r1,#0x98]	@ region index4
	ldr	r2,=0x40000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_256M << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 5 - Device
        mov     r2, #5
	str	r2,[r1,#0x98]	@ region index5
	ldr	r2,=0x50000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_512K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 6 - Device
        mov     r2, #6
	str	r2,[r1,#0x98]	@ region index6
	ldr	r2,=0xe0000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_64K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@@ Enable the MPU
	mov	r2,#1
        dsb
	str	r2,[r1,#0x94]
	isb
*/
	bl	_ada_setup_pll
	bl	main
	bl	_exit

hang:   b .
	.align   4
.LinitSp:
	.word __stack_end
