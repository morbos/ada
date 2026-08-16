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
	.cpu cortex-m0plus
	.thumb

	/* This is the initial vector table and also the one that is used by
	   the zfp runtime. Ravenscar runtimes install its own table (using
	   VTOR register) defined in handler.S.  */
	.section .vectors,"a"
	.globl	__vectors0
__vectors0:
	.word   __stack_end /* stack top address */
	.word   _start_rom  /* 1 Reset */
	.word   hang        /* 2 NMI */
	.word   hf          /* 3 HardFault */
	.word   mem         /* 4 MemManage */
	.word	hang        /* 5 */
	.word	hang        /* 6 */
	.word	hang        /* 7 */
	.word	hang        /* 8 */
	.word	hang        /* 9 */
	.word	hang        /* 10 */
	.word	hang        /* 11 */
	.word	hang        /* 12 */
	.word	hang        /* 13 */
	.word	hang        /* 14 */
	.word	SysTick_Handler  /* 15 */

	.globl	local_id
local_id:
	.word	0xfacefeed  /* ID to be filled in */

	.text

	.thumb_func
	.globl _start_rom
_start_rom:
	ldr	r0,=0xe000ed08
	ldr	r1,=0x08000000
	str	r1,[r0]
@	movs	r0,#1
@spin:
@	cmp	r0,#0
@	bne	spin
	/* Copy .data */
	ldr	r0,=__data_start
@	movw	r0,#:lower16:__data_start
@	movt	r0,#:upper16:__data_start
	ldr	r1,=__data_words
@	movw	r1,#:lower16:__data_words
@	movw	r2,#:lower16:__data_load
@	movt	r2,#:upper16:__data_load
	ldr	r2,=__data_load
	cmp	r1,#0
	beq	1f
@	cbz	r1,1f
0:	ldr	r4,[r2]
	adds	r2,r2,#4
	str	r4,[r0]
	adds	r0,r0,#4
	subs	r1,r1,#1
	bne	0b
1:
	/* Copy .ccmdata */
@	movw	r0,#:lower16:__ccmdata_start
@	movt	r0,#:upper16:__ccmdata_start
	ldr	r0,=__ccmdata_start
@	movw	r1,#:lower16:__ccmdata_words
	ldr	r0,=__ccmdata_words
@	movw	r2,#:lower16:__ccmdata_load
@	movt	r2,#:upper16:__ccmdata_load
	ldr	r2,=__ccmdata_load
	@	cbz	r1,1f
	cmp	r1,#0
	beq	1f
0:	ldr	r4,[r2]
	adds	r2,r2,#4
	str	r4,[r0]
	adds	r0,r0,#4
	subs	r1,r1,#1
	bne	0b
1:
	/* Clear .bss */
@	movw	r0,#:lower16:__bss_start
@	movt	r0,#:upper16:__bss_start
	ldr	r0,=__bss_start
@	movw	r1,#:lower16:__bss_words
	ldr	r1,=__bss_words
	movs	r2,#0
	@	cbz	r1,1f
	cmp	r1,#0
	beq	1f
0:	str	r2,[r0]
	adds	r0,r0,#4
	subs	r1,r1,#1
	bne	0b

1:

	@ Setup MPU

	@@ Enable Undefined to not go to Hardfault
	ldr	r1,=0xe000ed00
	ldr	r0,[r1,#0x24]
	ldr	r2,=#(1 << 18)
	orrs	r0,r2
	str	r0,[r1,#0x24]

@ MPU region defines

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

	ldr	r1,=0xe000ed98
	ldr	r3,=0xe000ed9c
	ldr	r4,=0xe000eda0
	ldr	r5,=0xe000ed94
	@ Region 0 - No access the entire SoC (low pri)
        movs    r2, #0

	str	r2,[r1]  	@ region index0
	ldr	r2,=0x00000000
	str	r2,[r3]	        @ region base 0x00000000
        ldr     r2,=(No_Access << 24) | XN | (Region_4G << 1) | Region_Enable
	str	r2,[r4]

	@ Region 1 - flash
        movs     r2, #1
	str	r2,[r1]	         @ region index1
	ldr	r2,=0x08000000
	str	r2,[r3]	@ region base 0x08000000
	@@ Flash is allowed to exec
        ldr     r2,=(Read_Only << 24) | (Region_16K << 1) | Region_Enable
	str	r2,[r4]

	@ Region 2 - RAM
        movs     r2, #2
	str	r2,[r1]	@ region index2
	ldr	r2,=0x20000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | XN | (Region_8K << 1) | Region_Enable
	str	r2,[r4]

	@ Region 3 - Device (this overlaps into 0x50000000
        movs     r2, #3
	str	r2,[r1]	@ region index3
	ldr	r2,=0x40000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_512M << 1) | Region_Enable
	str	r2,[r4]

	@ Region 5 - Device
        movs     r2, #5
	str	r2,[r1]	@ region index5
	ldr	r2,=0xe0000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_64K << 1) | Region_Enable
	str	r2,[r4]

	@@ Enable the MPU
	movs	r2,#1
        dsb
	str	r2,[r5]
	isb

@	bl	_ada_setup_pll
	bl	_ada_traffic

	bl	_exit

@	.thumb_func
@	.globl	SysTick
@SysTick:
@	ldr	r0,=Ticks
@	ldr	r1,[r0]
@	adds	r1,r1,#1
@	str	r1,[r0]
@	bx	r14

	.thumb_func
hang:
	b	hang
spin:
	.globl	getpsp
getpsp:
	mrs	r0,psp
	.globl	read32
read32:
	ldr	r0,[r0]
	bx	r14

	.thumb_func
hf:
	ldr	r0,=0xe000ed00
	ldr	r1,[r0,#0x28]	/* Configurable Fault SR */
	ldr	r2,[r0,#0x2C]	/* Hard Fault SR */
	ldr	r3,[r0,#0x38]   /* Bus Fault Addr Reg*/
	ldr	r0,[r0,#0x24]   /* System Handler ctl state reg */
	b	hf

	.thumb_func
mem:
	ldr	r0,=0xe000ed00
	ldr	r1,[r0,#0x28]	/* Configurable Fault SR */
	ldr	r2,[r0,#0x2C]	/* Hard Fault SR */
	ldr	r3,[r0,#0x38]   /* Bus Fault Addr Reg*/
	ldr	r0,[r0,#0x24]   /* System Handler ctl state reg */
	b	mem


	.globl	_exit
_exit:
	b	_exit
	.globl	unwind_phase2_forced
unwind_phase2_forced:
	nop
	.globl memcpy
memcpy:
	nop
@	.globl __gnu_Unwind_RaiseException
@__gnu_Unwind_RaiseException:
@	nop
	.globl abort
abort:
	b	abort
@	.globl __gnu_Unwind_Backtrace
@__gnu_Unwind_Backtrace:
@	nop
@	.globl _Unwind_GetDataRelBase
	@_Unwind_GetDataRelBase:
@	.data
@	.globl	Ticks
@Ticks:
@	.word	0
	@	nop
	.thumb_func
	.globl __gnat_rcheck_CE_Index_Check
__gnat_rcheck_CE_Index_Check:
	b __gnat_rcheck_CE_Index_Check
	.thumb_func
	.globl __gnat_rcheck_PE_Misaligned_Address_Value
__gnat_rcheck_PE_Misaligned_Address_Value:
        b __gnat_rcheck_PE_Misaligned_Address_Value
	.thumb_func
	.globl __gnat_rcheck_CE_Range_Check
__gnat_rcheck_CE_Range_Check:
	b __gnat_rcheck_CE_Range_Check
	.thumb_func
	.globl __gnat_rcheck_CE_Divide_By_Zero
__gnat_rcheck_CE_Divide_By_Zero:
	b __gnat_rcheck_CE_Divide_By_Zero
	.thumb_func
	.globl __gnat_rcheck_CE_Overflow_Check
__gnat_rcheck_CE_Overflow_Check:
	b __gnat_rcheck_CE_Overflow_Check
	.thumb_func
	.globl __gnat_rcheck_CE_Invalid_Data
__gnat_rcheck_CE_Invalid_Data:
	b __gnat_rcheck_CE_Invalid_Data
