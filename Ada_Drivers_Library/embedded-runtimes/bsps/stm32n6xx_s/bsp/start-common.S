## -*- asm -*- ##############################################################
#                                                                           #
#                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                  #
#                                                                           #
#                                 C A C H E                                 #
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

	.thumb_func
	.globl	dsb
        .type _stm32_start_common, #function
dsb:
	dsb
	bx	lr

	.thumb_func
	.globl	isb
        .type _stm32_start_common, #function
isb:
	isb
	bx	lr

	.text
	.thumb_func
	.globl	_stm32_start_common
        .type _stm32_start_common, #function
_stm32_start_common:
        /**************/
        /* Enable FPU */
        /**************/

        movw     r0,#0xED88
        movt     r0,#0xE000
        ldr      r1,[r0]
        orr      r1,r1,#(0xF << 20)
        str      r1,[r0]

        dsb
        isb

	.globl	__vectors0
        movw     r0,#0xED08
        movt     r0,#0xE000
        ldr      r1,=__vectors0
        str      r1,[r0]

        dsb
        isb

        bx lr
        .size _stm32_start_common, . - _stm32_start_common
	.globl secure_code
secure_code:
	.word	0
@	.globl	mpu_init
@	bl	mpu_init
	.end
