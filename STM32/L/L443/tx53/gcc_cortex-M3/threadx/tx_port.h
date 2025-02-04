/**************************************************************************/ 
/*                                                                        */ 
/*            Copyright (c) 1996-2008 by Express Logic Inc.               */ 
/*                                                                        */ 
/*  This software is copyrighted by and is the sole property of Express   */ 
/*  Logic, Inc.  All rights, title, ownership, or other interests         */ 
/*  in the software remain the property of Express Logic, Inc.  This      */ 
/*  software may only be used in accordance with the corresponding        */ 
/*  license agreement.  Any unauthorized use, duplication, transmission,  */ 
/*  distribution, or disclosure of this software is expressly forbidden.  */ 
/*                                                                        */
/*  This Copyright notice may not be removed or modified without prior    */ 
/*  written consent of Express Logic, Inc.                                */ 
/*                                                                        */ 
/*  Express Logic, Inc. reserves the right to modify this software        */ 
/*  without notice.                                                       */ 
/*                                                                        */ 
/*  Express Logic, Inc.                     info@expresslogic.com         */
/*  11423 West Bernardo Court               http://www.expresslogic.com   */
/*  San Diego, CA  92127                                                  */
/*                                                                        */
/**************************************************************************/


/**************************************************************************/
/**************************************************************************/
/**                                                                       */ 
/** ThreadX Component                                                     */
/**                                                                       */
/**   Port Specific                                                       */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/


/**************************************************************************/ 
/*                                                                        */ 
/*  PORT SPECIFIC C INFORMATION                            RELEASE        */ 
/*                                                                        */ 
/*    tx_port.h                                         Cortex-M3/RVDS    */ 
/*                                                           5.2          */ 
/*                                                                        */
/*  AUTHOR                                                                */ 
/*                                                                        */ 
/*    William E. Lamie, Express Logic, Inc.                               */ 
/*                                                                        */ 
/*  DESCRIPTION                                                           */ 
/*                                                                        */ 
/*    This file contains data type definitions that make the ThreadX      */ 
/*    real-time kernel function identically on a variety of different     */ 
/*    processor architectures.  For example, the size or number of bits   */ 
/*    in an "int" data type vary between microprocessor architectures and */ 
/*    even C compilers for the same microprocessor.  ThreadX does not     */ 
/*    directly use native C data types.  Instead, ThreadX creates its     */ 
/*    own special types that can be mapped to actual data types by this   */ 
/*    file to guarantee consistency in the interface and functionality.   */ 
/*                                                                        */ 
/*  RELEASE HISTORY                                                       */ 
/*                                                                        */ 
/*    DATE              NAME                      DESCRIPTION             */ 
/*                                                                        */ 
/*  12-12-2005     William E. Lamie         Initial Cortex-M3 RealView    */ 
/*                                            Support Version 5.0         */ 
/*  12-02-2007     William E. Lamie         Modified comment(s), removed  */ 
/*                                            compiler version checks,    */ 
/*                                            modified system return      */ 
/*                                            in-line assembly, and       */ 
/*                                            modified version ID string, */ 
/*                                            resulting in version 5.1    */ 
/*  12-12-2008     William E. Lamie         Modified comment(s), added    */ 
/*                                            lowest set bit macro, and   */ 
/*                                            updated version string,     */ 
/*                                            resulting in version 5.2    */ 
/*                                                                        */ 
/**************************************************************************/ 

#ifndef TX_PORT_H
#define TX_PORT_H


/* Define default parameters for the Cortex-M3 build for smaller footprint.  */

#define TX_TIMER_PROCESS_IN_ISR
#define TX_DISABLE_PREEMPTION_THRESHOLD
#define TX_DISABLE_NOTIFY_CALLBACKS
#define TX_DISABLE_ERROR_CHECKING


/* Determine if the optional ThreadX user define file should be used.  */

#ifdef TX_INCLUDE_USER_DEFINE_FILE

/* Yes, include the user defines in tx_user.h. The defines in this file may 
   alternately be defined on the command line.  */

#include "tx_user.h"
#endif


/* Define compiler library include files.  */

#include <stdlib.h>
#include <string.h>


/* Define ThreadX basic types for this port.  */ 

#define VOID                                    void
typedef char                                    CHAR;
typedef unsigned char                           UCHAR;
typedef int                                     INT;
typedef unsigned int                            UINT;
typedef long                                    LONG;
typedef unsigned long                           ULONG;
typedef short                                   SHORT;
typedef unsigned short                          USHORT;


/* Define the priority levels for ThreadX.  Legal values range
   from 32 to 1024 and MUST be evenly divisible by 32.  */

#ifndef TX_MAX_PRIORITIES
#define TX_MAX_PRIORITIES                       32
#endif


/* Define the minimum stack for a ThreadX thread on this processor. If the size supplied during
   thread creation is less than this value, the thread create call will return an error.  */

#ifndef TX_MINIMUM_STACK
#define TX_MINIMUM_STACK                        200         /* Minimum stack size for this port  */
#endif


/* Define the system timer thread's default stack size and priority.  These are only applicable
   if TX_TIMER_PROCESS_IN_ISR is not defined.  */

#ifndef TX_TIMER_THREAD_STACK_SIZE
#define TX_TIMER_THREAD_STACK_SIZE              1024        /* Default timer thread stack size  */
#endif

#ifndef TX_TIMER_THREAD_PRIORITY    
#define TX_TIMER_THREAD_PRIORITY                0           /* Default timer thread priority    */ 
#endif


/* Define various constants for the ThreadX Cortex-M3 port.  */ 

#define TX_INT_DISABLE                          1           /* Disable interrupts               */
#define TX_INT_ENABLE                           0           /* Enable interrupts                */


/* Define the clock source for trace event entry time stamp. The following two item are port specific.  
   For example, if the time source is at the address 0x0a800024 and is 16-bits in size, the clock 
   source constants would be:

#define TX_TRACE_TIME_SOURCE                    *((ULONG *) 0x0a800024)
#define TX_TRACE_TIME_MASK                      0x0000FFFFUL

*/

#ifndef TX_TRACE_TIME_SOURCE
#define TX_TRACE_TIME_SOURCE                    ++_tx_trace_simulated_time
#endif
#ifndef TX_TRACE_TIME_MASK
#define TX_TRACE_TIME_MASK                      0xFFFFFFFFUL
#endif


/* Define the port specific options for the _tx_build_options variable. This variable indicates
   how the ThreadX library was built.  */

#define TX_PORT_SPECIFIC_BUILD_OPTIONS          0


/* Define the in-line initialization constant so that modules with in-line
   initialization capabilities can prevent their initialization from being
   a function call.  */

#define TX_INLINE_INITIALIZATION


/* Determine whether or not stack checking is enabled. By default, ThreadX stack checking is 
   disabled. When the following is defined, ThreadX thread stack checking is enabled.  If stack
   checking is enabled (TX_ENABLE_STACK_CHECKING is defined), the TX_DISABLE_STACK_FILLING
   define is negated, thereby forcing the stack fill which is necessary for the stack checking
   logic.  */

#ifdef TX_ENABLE_STACK_CHECKING
#undef TX_DISABLE_STACK_FILLING
#endif


/* Define the TX_THREAD control block extensions for this port. The main reason
   for the multiple macros is so that backward compatibility can be maintained with 
   existing ThreadX kernel awareness modules.  */

#define TX_THREAD_EXTENSION_0          
#define TX_THREAD_EXTENSION_1                  
#define TX_THREAD_EXTENSION_2          
#define TX_THREAD_EXTENSION_3          


/* Define the port extensions of the remaining ThreadX objects.  */

#define TX_BLOCK_POOL_EXTENSION
#define TX_BYTE_POOL_EXTENSION
#define TX_EVENT_FLAGS_GROUP_EXTENSION
#define TX_MUTEX_EXTENSION
#define TX_QUEUE_EXTENSION
#define TX_SEMAPHORE_EXTENSION
#define TX_TIMER_EXTENSION


/* Define the user extension field of the thread control block.  Nothing 
   additional is needed for this port so it is defined as white space.  */

#ifndef TX_THREAD_USER_EXTENSION
#define TX_THREAD_USER_EXTENSION    
#endif


/* Define the macros for processing extensions in tx_thread_create, tx_thread_delete,
   tx_thread_shell_entry, and tx_thread_terminate.  */


#define TX_THREAD_CREATE_EXTENSION(thread_ptr)                                  
#define TX_THREAD_DELETE_EXTENSION(thread_ptr)                                  
#define TX_THREAD_COMPLETED_EXTENSION(thread_ptr)
#define TX_THREAD_TERMINATED_EXTENSION(thread_ptr)


/* Define the ThreadX object creation extensions for the remaining objects.  */

#define TX_BLOCK_POOL_CREATE_EXTENSION(pool_ptr)
#define TX_BYTE_POOL_CREATE_EXTENSION(pool_ptr)
#define TX_EVENT_FLAGS_GROUP_CREATE_EXTENSION(group_ptr)
#define TX_MUTEX_CREATE_EXTENSION(mutex_ptr)
#define TX_QUEUE_CREATE_EXTENSION(queue_ptr)
#define TX_SEMAPHORE_CREATE_EXTENSION(semaphore_ptr)
#define TX_TIMER_CREATE_EXTENSION(timer_ptr)


/* Define the ThreadX object deletion extensions for the remaining objects.  */

#define TX_BLOCK_POOL_DELETE_EXTENSION(pool_ptr)
#define TX_BYTE_POOL_DELETE_EXTENSION(pool_ptr)
#define TX_EVENT_FLAGS_GROUP_DELETE_EXTENSION(group_ptr)
#define TX_MUTEX_DELETE_EXTENSION(mutex_ptr)
#define TX_QUEUE_DELETE_EXTENSION(queue_ptr)
#define TX_SEMAPHORE_DELETE_EXTENSION(semaphore_ptr)
#define TX_TIMER_DELETE_EXTENSION(timer_ptr)


/* Determine if the ARM architecture has the CLZ instruction. This is available on 
   architectures v5 and above. If available, redefine the macro for calculating the 
   lowest bit set.  */
   
#define TX_LOWEST_SET_BIT_CALCULATE(m, b)       m = m & ((ULONG) (-((LONG) m))); \
                                                b = _tx_clz(m); \
                                                b = 31 - b;


/* Define ThreadX interrupt lockout and restore macros for protection on 
   access of critical kernel information.  The restore interrupt macro must 
   restore the interrupt posture of the running thread prior to the value 
   present prior to the disable macro.  In most cases, the save area macro
   is used to define a local function save area for the disable and restore
   macros.  */

/* The embedded assembler blocks are design so as to be inlinable by the
   armlink linker inlining. This requires them to consist of either a
   single 32-bit instruction, or either one or two 16-bit instructions
   followed by a "BX lr". Note that to reduce the critical region size, the
   16-bit "CPSID i" instruction is preceeded by a 16-bit NOP */

#if 0
#ifdef  TX_THREAD_INIT

__asm unsigned int _tx_v7m_get_int(void)
{ 
  MRS r0, PRIMASK;
  BX  lr;
}

__asm void _tx_v7m_disable_int(void)
{
  NOP;
  CPSID i;
  BX lr;
}

__asm void _tx_v7m_set_int(unsigned int posture)
{
  MSR PRIMASK, r0;
  BX lr;
}

__asm unsigned long _tx_clz(unsigned long m)
{
    CLZ   R0, R0;
    BX    lr;
}
#endif
#else
extern unsigned int _tx_v7m_get_int(void);
extern void _tx_v7m_disable_int(void);
extern void _tx_v7m_set_int(unsigned int posture);
extern unsigned long _tx_clz(unsigned long m);
#endif

#define TX_INTERRUPT_SAVE_AREA  unsigned int interrupt_save;
#define TX_DISABLE              { interrupt_save = _tx_v7m_get_int(); _tx_v7m_disable_int(); };
#define TX_RESTORE              { _tx_v7m_set_int(interrupt_save); };


/* Define thread system return to be an SVC via embedded, this allows for
   linker inlining of this primitive. */

#if 0
#ifdef  TX_THREAD_INIT

__asm void _tx_thread_system_return(void)
{
  MRS r0, PRIMASK;
  PUSH {r0};
  CPSIE i;
  SVC 0;
  NOP;
  POP {r0};
  MSR PRIMASK, r0;
  BX  lr;
}
#endif
#endif


/* Define the interrupt lockout macros for each ThreadX object.  */

#define TX_BLOCK_POOL_DISABLE                   TX_DISABLE
#define TX_BYTE_POOL_DISABLE                    TX_DISABLE
#define TX_EVENT_FLAGS_GROUP_DISABLE            TX_DISABLE
#define TX_MUTEX_DISABLE                        TX_DISABLE
#define TX_QUEUE_DISABLE                        TX_DISABLE
#define TX_SEMAPHORE_DISABLE                    TX_DISABLE


/* Define the version ID of ThreadX.  This may be utilized by the application.  */

#ifdef TX_THREAD_INIT
CHAR                            _tx_version_id[] = 
                                    "Copyright (c) 1996-2010 Express Logic Inc. * ThreadX Cortex-M3/RVDS Version G5.3.5.2 SN: 22471-108-1301 *";
#else
extern  CHAR                    _tx_version_id[];
#endif


#endif

