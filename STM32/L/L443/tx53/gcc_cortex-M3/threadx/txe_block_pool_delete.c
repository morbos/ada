/**************************************************************************/ 
/*                                                                        */ 
/*            Copyright (c) 1996-2009 by Express Logic Inc.               */ 
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
/**   Block Pool                                                          */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/

#define TX_SOURCE_CODE


/* Include necessary system files.  */

#include "tx_api.h"
#include "tx_thread.h"
#include "tx_timer.h"
#include "tx_block_pool.h"


/**************************************************************************/ 
/*                                                                        */ 
/*  FUNCTION                                               RELEASE        */ 
/*                                                                        */ 
/*    _txe_block_pool_delete                              PORTABLE C      */ 
/*                                                           5.3          */ 
/*  AUTHOR                                                                */ 
/*                                                                        */ 
/*    William E. Lamie, Express Logic, Inc.                               */ 
/*                                                                        */ 
/*  DESCRIPTION                                                           */ 
/*                                                                        */ 
/*    This function checks for errors in the delete block pool memory     */ 
/*    function call.                                                      */ 
/*                                                                        */ 
/*  INPUT                                                                 */ 
/*                                                                        */ 
/*    pool_ptr                          Pointer to pool control block     */ 
/*                                                                        */ 
/*  OUTPUT                                                                */ 
/*                                                                        */ 
/*    TX_POOL_ERROR                     Invalid memory block pool pointer */ 
/*    TX_CALLER_ERROR                   Invalid caller of this function   */ 
/*    status                            Actual delete function status     */ 
/*                                                                        */ 
/*  CALLS                                                                 */ 
/*                                                                        */ 
/*    _tx_block_pool_delete             Actual block pool delete function */ 
/*                                                                        */ 
/*  CALLED BY                                                             */ 
/*                                                                        */ 
/*    Application Code                                                    */ 
/*                                                                        */ 
/*  RELEASE HISTORY                                                       */ 
/*                                                                        */ 
/*    DATE              NAME                      DESCRIPTION             */ 
/*                                                                        */ 
/*  12-12-2005     William E. Lamie         Initial Version 5.0           */ 
/*  04-02-2007     William E. Lamie         Modified comment(s),          */ 
/*                                            resulting in version 5.1    */ 
/*  12-12-2008     William E. Lamie         Modified comment(s), and added*/ 
/*                                            macro to get current thread,*/ 
/*                                            resulting in version 5.2    */ 
/*  07-04-2009     William E. Lamie         Modified comment(s),          */ 
/*                                            resulting in version 5.3    */ 
/*                                                                        */ 
/**************************************************************************/ 
UINT    _txe_block_pool_delete(TX_BLOCK_POOL *pool_ptr)
{

UINT        status;                 
TX_THREAD   *thread_ptr;


    /* First, check for an invalid pool pointer.  */
    if ((!pool_ptr) || (pool_ptr -> tx_block_pool_id != TX_BLOCK_POOL_ID))
    {

        /* Pool pointer is invalid, return appropriate error code.  */
        return(TX_POOL_ERROR);
    }

    /* Pickup thread pointer.  */
    TX_THREAD_GET_CURRENT(thread_ptr)

    /* Check for invalid caller of this function.  */
#ifndef TX_TIMER_PROCESS_IN_ISR
    if ((!thread_ptr) || (_tx_thread_system_state) || (thread_ptr == &_tx_timer_thread))
#else
    if ((!thread_ptr) || (_tx_thread_system_state))
#endif
    {

        /* Invalid caller of this function, return appropriate error code.  */
        return(TX_CALLER_ERROR);
    }

    /* Call actual block pool delete function.  */
    status =  _tx_block_pool_delete(pool_ptr);

    /* Return actual completion status.  */
    return(status);
}

