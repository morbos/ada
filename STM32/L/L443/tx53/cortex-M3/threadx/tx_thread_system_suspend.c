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
/**   Thread                                                              */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/

#define TX_SOURCE_CODE


/* Include necessary system files.  */

#include "tx_api.h"
#include "tx_trace.h"
#include "tx_timer.h"
#include "tx_thread.h"


/**************************************************************************/ 
/*                                                                        */ 
/*  FUNCTION                                               RELEASE        */ 
/*                                                                        */ 
/*    _tx_thread_system_suspend                           PORTABLE C      */ 
/*                                                           5.3          */ 
/*                                                                        */ 
/*  AUTHOR                                                                */ 
/*                                                                        */ 
/*    William E. Lamie, Express Logic, Inc.                               */ 
/*                                                                        */ 
/*  DESCRIPTION                                                           */ 
/*                                                                        */ 
/*    This function suspends the specified thread and changes the thread  */ 
/*    state to the value specified.  Note: delayed suspension processing  */ 
/*    is handled outside of this routine.                                 */
/*                                                                        */ 
/*  INPUT                                                                 */ 
/*                                                                        */ 
/*    thread_ptr                            Pointer to thread to suspend  */ 
/*                                                                        */ 
/*  OUTPUT                                                                */ 
/*                                                                        */ 
/*    None                                                                */ 
/*                                                                        */ 
/*  CALLS                                                                 */ 
/*                                                                        */ 
/*    [_tx_thread_stack_analyze]            Analyze thread stack usage    */ 
/*    [_tx_thread_stack_error_handler]      Handle thread stack errors    */ 
/*    _tx_thread_system_return              Return to system              */ 
/*    [_tx_thread_system_preempt_check]     System preemption check       */ 
/*    _tx_timer_system_activate             Activate timer for timeout    */ 
/*                                                                        */ 
/*  CALLED BY                                                             */ 
/*                                                                        */ 
/*    _tx_thread_priority_change            Thread priority change        */ 
/*    _tx_thread_shell_entry                Thread shell function         */ 
/*    _tx_thread_sleep                      Thread sleep                  */ 
/*    _tx_thread_suspend                    Application thread suspend    */ 
/*    _tx_thread_terminate                  Thread terminate              */ 
/*    Other ThreadX Components                                            */ 
/*                                                                        */ 
/*  RELEASE HISTORY                                                       */ 
/*                                                                        */ 
/*    DATE              NAME                      DESCRIPTION             */ 
/*                                                                        */ 
/*  12-12-2005     William E. Lamie         Initial Version 5.0           */ 
/*  04-02-2007     William E. Lamie         Modified comment(s), fixed    */ 
/*                                            conditional declaration of  */ 
/*                                            map_index, and              */ 
/*                                            added logic to remove the   */ 
/*                                            timer logic, resulting      */ 
/*                                            in version 5.1              */ 
/*  12-12-2008     William E. Lamie         Modified comment(s), added    */ 
/*                                            macro to get current thread,*/ 
/*                                            added state change macro,   */ 
/*                                            added filter option to trace*/ 
/*                                            insert, added optional      */ 
/*                                            logic for non-interruptable */ 
/*                                            operation, changed MOD32    */ 
/*                                            macro to new                */ 
/*                                            TX_MOD32_BIT_SET macro,     */ 
/*                                            added TX_DIV32_BIT_SET      */ 
/*                                            macro, optimized lowest set */ 
/*                                            bit logic, added stack      */ 
/*                                            check macro, and optimized  */ 
/*                                            code for typical path       */ 
/*                                            processing, resulting       */ 
/*                                            in version 5.2              */ 
/*  07-04-2009     William E. Lamie         Modified comment(s),          */ 
/*                                            resulting in version 5.3    */ 
/*                                                                        */ 
/**************************************************************************/ 
#ifndef TX_NOT_INTERRUPTABLE
VOID  _tx_thread_system_suspend(TX_THREAD *thread_ptr)
{

TX_INTERRUPT_SAVE_AREA
 
UINT            priority;                     
UINT            base_priority;
ULONG           priority_map;
ULONG           priority_bit;
ULONG           combined_flags;
TX_THREAD       *ready_next;
TX_THREAD       *ready_previous;
TX_THREAD       *current_thread;

#if TX_MAX_PRIORITIES > 32
UINT            map_index;
#endif

#ifndef TX_NO_TIMER
ULONG           timeout;
#endif

#ifdef TX_ENABLE_EVENT_TRACE
TX_TRACE_BUFFER_ENTRY       *entry_ptr;
ULONG                       time_stamp =  0;
#endif

    /* Pickup thread pointer.  */
    TX_THREAD_GET_CURRENT(current_thread)


#ifndef TX_NO_TIMER

    /* Determine if a timeout needs to be activated.  */
    if (thread_ptr == current_thread)
    {

        /* Pickup the wait option.  */
        timeout =  thread_ptr -> tx_thread_timer.tx_timer_internal_remaining_ticks;

        /* Determine if an activation is needed.  */
        if ((timeout != TX_WAIT_FOREVER) && (timeout))
        {

            /* Activate the thread timer with the timeout value setup in the caller.  */
            _tx_timer_system_activate(&(thread_ptr -> tx_thread_timer));
        }
    }
#endif

#ifdef TX_ENABLE_STACK_CHECKING 

    /* Check this thread's stack.  */
    TX_THREAD_STACK_CHECK(thread_ptr)
#endif

    /* Lockout interrupts while the thread is being suspended.  */
    TX_DISABLE
    
    /* Decrease the preempt disabled count.  */
    _tx_thread_preempt_disable--;

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

    /* Increment the thread's suspend count.  */
    thread_ptr -> tx_thread_performance_suspend_count++;

    /* Increment the total number of thread suspensions.  */
    _tx_thread_performance_suspend_count++;
#endif

    /* Check to make sure the thread suspending flag is still set.  If not, it
       has already been resumed.  */
    if (thread_ptr -> tx_thread_suspending)
    {

        /* Thread state change.  */
        TX_THREAD_STATE_CHANGE(thread_ptr, thread_ptr -> tx_thread_state)

#ifdef TX_ENABLE_EVENT_TRACE

        /* If trace is enabled, save the current event pointer.  */
        entry_ptr =  _tx_trace_buffer_current_ptr;
#endif

        /* Log the thread status change.  */
        TX_TRACE_IN_LINE_INSERT(TX_TRACE_THREAD_SUSPEND, thread_ptr, thread_ptr -> tx_thread_state, &priority, _tx_thread_execute_ptr, TX_TRACE_INTERNAL_EVENTS)

#ifdef TX_ENABLE_EVENT_TRACE

        /* Save the time stamp for later comparison to verify that
           the event hasn't been overwritten by the time we have 
           computed the next thread to execute.  */
        if (entry_ptr)
        {

            /* Save time stamp.  */
            time_stamp =  entry_ptr -> tx_trace_buffer_entry_time_stamp;
        }
#endif

        /* Actually suspend this thread.  But first, clear the suspending flag.  */
        thread_ptr -> tx_thread_suspending =  TX_FALSE;

        /* Pickup priority of thread.  */
        priority =  thread_ptr -> tx_thread_priority;

        /* Pickup the previous and next ready thread pointers.  */
        ready_next =      thread_ptr -> tx_thread_ready_next;
        ready_previous =  thread_ptr -> tx_thread_ready_previous;

        /* Determine if there are other threads at this priority that are
           ready.  */
        if (ready_next != thread_ptr)
        {

            /* Yes, there are other threads at this priority ready.  */

            /* Just remove this thread from the priority list.  */
            ready_next -> tx_thread_ready_previous =    ready_previous;
            ready_previous -> tx_thread_ready_next =    ready_next;

            /* Determine if this is the head of the priority list.  */
            if (_tx_thread_priority_list[priority] == thread_ptr)
            {

                /* Update the head pointer of this priority list.  */
                _tx_thread_priority_list[priority] =  ready_next;

#ifndef TX_DISABLE_PREEMPTION_THRESHOLD

#if TX_MAX_PRIORITIES > 32

                /* Calculate the index into the bit map array.  */
                map_index =  priority/32;
#endif

                /* Check for a thread preempted that had preemption threshold set.  */
                if (_tx_thread_preempted_maps[MAP_INDEX])
                {

                    /* Ensure that this thread's priority is clear in the preempt map.  */
                    TX_MOD32_BIT_SET(priority, priority_bit)
                    _tx_thread_preempted_maps[MAP_INDEX] =  _tx_thread_preempted_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

                    /* Determine if there are any other bits set in this preempt map.  */
                    if (_tx_thread_preempted_maps[MAP_INDEX] == 0)
                    {

                        /* No, clear the active bit to signify this preempt map has nothing set.  */
                        TX_DIV32_BIT_SET(priority, priority_bit)
                        _tx_thread_preempted_map_active =  _tx_thread_preempted_map_active & (~(priority_bit));
                    }
#endif
                }
#endif
            }
        }
        else
        {

            /* This is the only thread at this priority ready to run.  Set the head 
               pointer to NULL.  */
            _tx_thread_priority_list[priority] =    TX_NULL;

#if TX_MAX_PRIORITIES > 32

            /* Calculate the index into the bit map array.  */
            map_index =  priority/32;
#endif

            /* Clear this priority bit in the ready priority bit map.  */
            TX_MOD32_BIT_SET(priority, priority_bit)
            _tx_thread_priority_maps[MAP_INDEX] =  _tx_thread_priority_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

            /* Determine if there are any other bits set in this priority map.  */
            if (_tx_thread_priority_maps[MAP_INDEX] == 0)
            {

                /* No, clear the active bit to signify this priority map has nothing set.  */
                TX_DIV32_BIT_SET(priority, priority_bit)
                _tx_thread_priority_map_active =  _tx_thread_priority_map_active & (~(priority_bit));
            }
#endif

#ifndef TX_DISABLE_PREEMPTION_THRESHOLD

            /* Check for a thread preempted that had preemption-threshold set.  */
            if (_tx_thread_preempted_maps[MAP_INDEX])
            {

                /* Ensure that this thread's priority is clear in the preempt map.  */
                TX_MOD32_BIT_SET(priority, priority_bit)
                _tx_thread_preempted_maps[MAP_INDEX] =  _tx_thread_preempted_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

                /* Determine if there are any other bits set in this preempt map.  */
                if (_tx_thread_preempted_maps[MAP_INDEX] == 0)
                {

                    /* No, clear the active bit to signify this preempted map has nothing set.  */
                    TX_DIV32_BIT_SET(priority, priority_bit)
                    _tx_thread_preempted_map_active =  _tx_thread_preempted_map_active & (~(priority_bit));
                }
#endif
            }
#endif

#if TX_MAX_PRIORITIES > 32

            /* Calculate the index to find the next highest priority thread ready for execution.  */
            priority_map =    _tx_thread_priority_map_active;

            /* Determine if there is anything.   */
            if (priority_map)
            {

                /* Calculate the lowest bit set in the priority map. */
                TX_LOWEST_SET_BIT_CALCULATE(priority_map, map_index)
            }

            /* Calculate the base priority as well.  */
            base_priority =  map_index * 32;
#else

            /* Setup the base priority to zero.  */
            base_priority =   0;
#endif

            /* Setup working variable for the priority map.  */
            priority_map =    _tx_thread_priority_maps[MAP_INDEX];

            /* Make a quick check for no other threads ready for execution.  */
            if (priority_map == 0)
            {

                /* Nothing else is ready.  Set highest priority and execute thread
                   accordingly.  */
                _tx_thread_highest_priority =  TX_MAX_PRIORITIES;
                _tx_thread_execute_ptr =       TX_NULL;

#ifdef TX_ENABLE_EVENT_TRACE

                /* Check that the event time stamp is unchanged.  A different
                   timestamp means that a later event wrote over the thread
                   suspend event. In that case, do nothing here.  */
                if ((entry_ptr) && (time_stamp == entry_ptr -> tx_trace_buffer_entry_time_stamp))
                {

                    /* Timestamp is the same, set the "next thread pointer" to NULL. This can
                       be used by the trace analysis tool to show idle system conditions.  */
                    entry_ptr -> tx_trace_buffer_entry_information_field_4 =  TX_NULL;
                }
#endif

                /* Restore interrupts.  */
                TX_RESTORE

                /* Check to see if the caller is a thread and the preempt disable flag is clear.  */
                combined_flags =  ((ULONG) _tx_thread_system_state) | ((ULONG) _tx_thread_preempt_disable);
                if (combined_flags == 0)
                {

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

                    /* Yes, increment the return to idle return count.  */
                    _tx_thread_performance_idle_return_count++;
#endif

                    /* If so, return control to the system.  */
                    _tx_thread_system_return();
                }

                /* Return to caller.  */
                return;
            }
            
            /* Calculate the lowest bit set in the priority map. */
            TX_LOWEST_SET_BIT_CALCULATE(priority_map, priority_bit)

            /* Setup the next highest priority variable.  */
            _tx_thread_highest_priority =  base_priority + priority_bit;
        }
        
        /* Determine if the suspending thread is the thread designated to execute.  */
        if (thread_ptr == _tx_thread_execute_ptr)
        {

            /* Pickup the highest priority thread to execute.  */
            _tx_thread_execute_ptr =  _tx_thread_priority_list[_tx_thread_highest_priority];

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

            /* Log the new execute pointer.  */
            _tx_thread_performance_execute_log[_tx_thread_performance_execute_log_index++] =  _tx_thread_execute_ptr;
            if (_tx_thread_performance_execute_log_index >= TX_THREAD_EXECUTE_LOG_SIZE)
                _tx_thread_performance_execute_log_index =  0;
#endif

#ifdef TX_ENABLE_EVENT_TRACE

            /* Check that the event time stamp is unchanged.  A different
               timestamp means that a later event wrote over the thread
               suspend event. In that case, do nothing here.  */
            if ((entry_ptr) && (time_stamp == entry_ptr -> tx_trace_buffer_entry_time_stamp))
            {

                /* Timestamp is the same, set the "next thread pointer" to the new value of the
                   next thread to execute. This can be used by the trace analysis tool to keep 
                   track of next thread execution.  */
                entry_ptr -> tx_trace_buffer_entry_information_field_4 =  (ULONG) _tx_thread_execute_ptr;
            }
#endif

#ifdef TX_DISABLE_PREEMPTION_THRESHOLD

            /* Restore interrupts.  */
            TX_RESTORE
                    
            /* Now determine if preemption should take place. This is only possible if the current thread pointer is
               not the same as the execute thread pointer AND the system state and preempt disable flags are clear.  */
            combined_flags =  ((ULONG) _tx_thread_system_state) | ((ULONG) _tx_thread_preempt_disable);
            if (combined_flags == 0)
            {

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

                /* There is another thread ready to run and will be scheduled upon return.  */
                _tx_thread_performance_non_idle_return_count++;
#endif

                /* Preemption is needed - return to the system!  */
                _tx_thread_system_return();
            }

            /* Return to caller.  */
            return;                     
#else

            /* Determine if a previous thread with preemption-threshold was preempted.  */
#if TX_MAX_PRIORITIES > 32
            if (_tx_thread_preempted_map_active)
#else
            if (_tx_thread_preempted_maps[MAP_INDEX])
#endif
            {

                /* Yes, there was a thread preempted when it was using preemption-threshold.  */

                /* Disable preemption.  */
                _tx_thread_preempt_disable++;

                /* Restore interrupts.  */
                TX_RESTORE

                /* Interrupts are enabled briefly here to keep the interrupt
                   lockout time deterministic.  */

                /* Disable interrupts again.  */
                TX_DISABLE

                /* Decrement the preemption disable variable.  */
                _tx_thread_preempt_disable--;

                /* Calculate the thread with preemption threshold set that
                   was interrupted by a thread above the preemption level.  */

#if TX_MAX_PRIORITIES > 32

                /* Calculate the index to find the next highest priority thread ready for execution.  */
                priority_map =    _tx_thread_preempted_map_active;

                /* Calculate the lowest bit set in the priority map. */
                TX_LOWEST_SET_BIT_CALCULATE(priority_map, map_index)

                /* Calculate the base priority as well.  */
                base_priority =  map_index * 32;
#else

                /* Setup the base priority to zero.  */
                base_priority =   0;
#endif

                /* Setup temporary preempted map.  */
                priority_map =  _tx_thread_preempted_maps[MAP_INDEX];

                /* Calculate the lowest bit set in the priority map. */
                TX_LOWEST_SET_BIT_CALCULATE(priority_map, priority_bit)

                /* Setup the highest priority preempted thread.  */
                priority =  base_priority + priority_bit;       

                /* Determine if the next highest priority thread is above the highest priority threshold value.  */
                if (_tx_thread_highest_priority >= (_tx_thread_priority_list[priority] -> tx_thread_preempt_threshold))
                {

                    /* Thread not allowed to execute until earlier preempted thread finishes or lowers its 
                       preemption-threshold.  */
                    _tx_thread_execute_ptr =  _tx_thread_priority_list[priority];

                    /* Clear the corresponding bit in the preempted map, since the preemption has been restored.  */
                    TX_MOD32_BIT_SET(priority, priority_bit)
                    _tx_thread_preempted_maps[MAP_INDEX] =  _tx_thread_preempted_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

                    /* Determine if there are any other bits set in this preempt map.  */
                    if (_tx_thread_preempted_maps[MAP_INDEX] == 0)
                    {
    
                        /* No, clear the active bit to signify this preempt map has nothing set.  */
                        TX_DIV32_BIT_SET(priority, priority_bit)
                        _tx_thread_preempted_map_active =  _tx_thread_preempted_map_active & (~(priority_bit));
                    }
#endif
                }
            }
#endif
        }
    }

    /* Restore interrupts.  */
    TX_RESTORE

    /* Determine if a preemption condition is present.  */
    if (current_thread != _tx_thread_execute_ptr) 
    {

#ifdef TX_ENABLE_STACK_CHECKING 

        /* Pickup the next execute pointer.  */
        thread_ptr =  _tx_thread_execute_ptr;

        /* Check this thread's stack.  */
        TX_THREAD_STACK_CHECK(thread_ptr)
#endif

        /* Determine if preemption should take place. This is only possible if the current thread pointer is
           not the same as the execute thread pointer AND the system state and preempt disable flags are clear.  */
        combined_flags =  ((ULONG) _tx_thread_system_state) | ((ULONG) _tx_thread_preempt_disable);
        if (combined_flags == 0)
        {

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

            /* Determine if an idle system return is present.  */
            if (_tx_thread_execute_ptr == TX_NULL)
            {

                /* Yes, increment the return to idle return count.  */
                _tx_thread_performance_idle_return_count++;
            }
            else
            {

                /* No, there is another thread ready to run and will be scheduled upon return.  */
                _tx_thread_performance_non_idle_return_count++;
            }
#endif

            /* Preemption is needed - return to the system!  */
            _tx_thread_system_return();
        }
    }

    /* Return to caller.  */
    return;
}
#else

/* Define the entry function for modules assuming the interruptable version of system suspend.  */

VOID  _tx_thread_system_suspend(TX_THREAD *thread_ptr)
{

TX_INTERRUPT_SAVE_AREA

ULONG       wait_option;
    
    /* Disable interrupts.  */
    TX_DISABLE

    /* Determine if the thread is still suspending.  */
    if (thread_ptr -> tx_thread_suspending)
    {
    
        /* Yes, prepare to call the non-interruptable system suspend function.  */

        /* Clear the thread suspending flag.  */
        thread_ptr -> tx_thread_suspending =  TX_FALSE;

        /* Pickup the wait option.  */
        wait_option =  thread_ptr -> tx_thread_timer.tx_timer_internal_remaining_ticks;
        
        /* Decrement the preempt disable count.  */
        _tx_thread_preempt_disable--;

        /* Call actual non-interruptable thread suspension routine.  */
        _tx_thread_system_ni_suspend(thread_ptr, wait_option);
    }

    /* Restore interrupts.  */
    TX_RESTORE

    /* Check for preemption.  */
    _tx_thread_system_preempt_check();
}

/* Define the system suspend function that is not interruptable, i.e., it is assumed that
   interrupts are disabled upon calling this function.  */

VOID  _tx_thread_system_ni_suspend(TX_THREAD *thread_ptr, ULONG wait_option)
{
 
UINT            priority;                     
UINT            base_priority;
ULONG           priority_map;
ULONG           priority_bit;
ULONG           combined_flags;
TX_THREAD       *ready_next;
TX_THREAD       *ready_previous;
TX_THREAD       *current_thread;

#if TX_MAX_PRIORITIES > 32
UINT            map_index;
#endif

#ifdef TX_ENABLE_EVENT_TRACE
TX_TRACE_BUFFER_ENTRY       *entry_ptr;
ULONG                       time_stamp =  0;
#endif


    /* Pickup thread pointer.  */
    TX_THREAD_GET_CURRENT(current_thread)

#ifndef TX_NO_TIMER


    /* Determine if a timeout needs to be activated.  */
    if ((wait_option) && (wait_option != TX_WAIT_FOREVER) && (thread_ptr == current_thread))
    {

        /* Setup the wait option.  */
        thread_ptr -> tx_thread_timer.tx_timer_internal_remaining_ticks =  wait_option;

        /* Activate the thread timer with the timeout value setup in the caller.  */
        _tx_timer_system_activate(&(thread_ptr -> tx_thread_timer));
    }
#endif

#ifdef TX_ENABLE_STACK_CHECKING 

    /* Check this thread's stack.  */
    TX_THREAD_STACK_CHECK(thread_ptr)
#endif

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

    /* Increment the thread's suspend count.  */
    thread_ptr -> tx_thread_performance_suspend_count++;

    /* Increment the total number of thread suspensions.  */
    _tx_thread_performance_suspend_count++;
#endif

    /* Thread state change.  */
    TX_THREAD_STATE_CHANGE(thread_ptr, thread_ptr -> tx_thread_state)


#ifdef TX_ENABLE_EVENT_TRACE

    /* If trace is enabled, save the current event pointer.  */
    entry_ptr =  _tx_trace_buffer_current_ptr;
#endif

    /* Log the thread status change.  */
    TX_TRACE_IN_LINE_INSERT(TX_TRACE_THREAD_SUSPEND, thread_ptr, thread_ptr -> tx_thread_state, &priority, _tx_thread_execute_ptr, TX_TRACE_INTERNAL_EVENTS)

#ifdef TX_ENABLE_EVENT_TRACE

    /* Save the time stamp for later comparison to verify that
       the event hasn't been overwritten by the time we have 
       computed the next thread to execute.  */
    if (entry_ptr)
    {

        /* Save time stamp.  */
        time_stamp =  entry_ptr -> tx_trace_buffer_entry_time_stamp;
    }
#endif

    /* Pickup priority of thread.  */
    priority =  thread_ptr -> tx_thread_priority;

    /* Pickup the previous and next ready thread pointers.  */
    ready_next =      thread_ptr -> tx_thread_ready_next;
    ready_previous =  thread_ptr -> tx_thread_ready_previous;

    /* Determine if there are other threads at this priority that are
       ready.  */
    if (ready_next != thread_ptr)
    {

        /* Yes, there are other threads at this priority ready.  */

        /* Just remove this thread from the priority list.  */
        ready_next -> tx_thread_ready_previous =    ready_previous;
        ready_previous -> tx_thread_ready_next =    ready_next;

        /* Determine if this is the head of the priority list.  */
        if (_tx_thread_priority_list[priority] == thread_ptr)
        {

            /* Update the head pointer of this priority list.  */
            _tx_thread_priority_list[priority] =  ready_next;

#ifndef TX_DISABLE_PREEMPTION_THRESHOLD

#if TX_MAX_PRIORITIES > 32

            /* Calculate the index into the bit map array.  */
            map_index =  priority/32;
#endif

            /* Check for a thread preempted that had preemption threshold set.  */
            if (_tx_thread_preempted_maps[MAP_INDEX])
            {

                /* Ensure that this thread's priority is clear in the preempt map.  */
                TX_MOD32_BIT_SET(priority, priority_bit)
                _tx_thread_preempted_maps[MAP_INDEX] =  _tx_thread_preempted_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

                /* Determine if there are any other bits set in this preempt map.  */
                if (_tx_thread_preempted_maps[MAP_INDEX] == 0)
                {

                    /* No, clear the active bit to signify this preempt map has nothing set.  */
                    TX_DIV32_BIT_SET(priority, priority_bit)
                    _tx_thread_preempted_map_active =  _tx_thread_preempted_map_active & (~(priority_bit));
                }
#endif
            }
#endif
        }
    }
    else
    {

        /* This is the only thread at this priority ready to run.  Set the head 
           pointer to NULL.  */
        _tx_thread_priority_list[priority] =    TX_NULL;

#if TX_MAX_PRIORITIES > 32

        /* Calculate the index into the bit map array.  */
        map_index =  priority/32;
#endif

        /* Clear this priority bit in the ready priority bit map.  */
        TX_MOD32_BIT_SET(priority, priority_bit)
        _tx_thread_priority_maps[MAP_INDEX] =  _tx_thread_priority_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

        /* Determine if there are any other bits set in this priority map.  */
        if (_tx_thread_priority_maps[MAP_INDEX] == 0)
        {

            /* No, clear the active bit to signify this priority map has nothing set.  */
            TX_DIV32_BIT_SET(priority, priority_bit)
            _tx_thread_priority_map_active =  _tx_thread_priority_map_active & (~(priority_bit));
        }
#endif

#ifndef TX_DISABLE_PREEMPTION_THRESHOLD

        /* Check for a thread preempted that had preemption-threshold set.  */
        if (_tx_thread_preempted_maps[MAP_INDEX])
        {

            /* Ensure that this thread's priority is clear in the preempt map.  */
            TX_MOD32_BIT_SET(priority, priority_bit)
            _tx_thread_preempted_maps[MAP_INDEX] =  _tx_thread_preempted_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

            /* Determine if there are any other bits set in this preempt map.  */
            if (_tx_thread_preempted_maps[MAP_INDEX] == 0)
            {

                /* No, clear the active bit to signify this preempted map has nothing set.  */
                TX_DIV32_BIT_SET(priority, priority_bit)
                _tx_thread_preempted_map_active =  _tx_thread_preempted_map_active & (~(priority_bit));
            }
#endif
        }
#endif

#if TX_MAX_PRIORITIES > 32

        /* Calculate the index to find the next highest priority thread ready for execution.  */
        priority_map =    _tx_thread_priority_map_active;

        /* Determine if there is anything.   */
        if (priority_map)
        {

            /* Calculate the lowest bit set in the priority map. */
            TX_LOWEST_SET_BIT_CALCULATE(priority_map, map_index)
        }

        /* Calculate the base priority as well.  */
        base_priority =  map_index * 32;
#else

        /* Setup the base priority to zero.  */
        base_priority =   0;
#endif

        /* Setup working variable for the priority map.  */
        priority_map =    _tx_thread_priority_maps[MAP_INDEX];

        /* Make a quick check for no other threads ready for execution.  */
        if (priority_map == 0)
        {

            /* Nothing else is ready.  Set highest priority and execute thread
               accordingly.  */
            _tx_thread_highest_priority =  TX_MAX_PRIORITIES;
            _tx_thread_execute_ptr =       TX_NULL;

#ifdef TX_ENABLE_EVENT_TRACE

            /* Check that the event time stamp is unchanged.  A different
               timestamp means that a later event wrote over the thread
               suspend event. In that case, do nothing here.  */
            if ((entry_ptr) && (time_stamp == entry_ptr -> tx_trace_buffer_entry_time_stamp))
            {

                /* Timestamp is the same, set the "next thread pointer" to NULL. This can
                   be used by the trace analysis tool to show idle system conditions.  */
                entry_ptr -> tx_trace_buffer_entry_information_field_4 =  TX_NULL;
            }
#endif

            /* Check to see if the caller is a thread and the preempt disable flag is clear.  */
            combined_flags =  ((ULONG) _tx_thread_system_state) | ((ULONG) _tx_thread_preempt_disable);
            if (combined_flags == 0)
            {

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

                /* Yes, increment the return to idle return count.  */
                _tx_thread_performance_idle_return_count++;
#endif

                /* If so, return control to the system.  */
                _tx_thread_system_return();
            }

            /* Return to caller.  */
            return;
        }
            
        /* Calculate the lowest bit set in the priority map. */
        TX_LOWEST_SET_BIT_CALCULATE(priority_map, priority_bit)

        /* Setup the next highest priority variable.  */
        _tx_thread_highest_priority =  base_priority + priority_bit;
    }
        
    /* Determine if the suspending thread is the thread designated to execute.  */
    if (thread_ptr == _tx_thread_execute_ptr)
    {

        /* Pickup the highest priority thread to execute.  */
        _tx_thread_execute_ptr =  _tx_thread_priority_list[_tx_thread_highest_priority];

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

        /* Log the new execute pointer.  */
        _tx_thread_performance_execute_log[_tx_thread_performance_execute_log_index++] =  _tx_thread_execute_ptr;
        if (_tx_thread_performance_execute_log_index >= TX_THREAD_EXECUTE_LOG_SIZE)
            _tx_thread_performance_execute_log_index =  0;
#endif

#ifdef TX_ENABLE_EVENT_TRACE

        /* Check that the event time stamp is unchanged.  A different
           timestamp means that a later event wrote over the thread
           suspend event. In that case, do nothing here.  */
        if ((entry_ptr) && (time_stamp == entry_ptr -> tx_trace_buffer_entry_time_stamp))
        {

            /* Timestamp is the same, set the "next thread pointer" to the new value of the
               next thread to execute. This can be used by the trace analysis tool to keep 
               track of next thread execution.  */
            entry_ptr -> tx_trace_buffer_entry_information_field_4 =  (ULONG) _tx_thread_execute_ptr;
        }
#endif

#ifdef TX_DISABLE_PREEMPTION_THRESHOLD

        /* Now determine if preemption should take place. This is only possible if the current thread pointer is
           not the same as the execute thread pointer AND the system state and preempt disable flags are clear.  */
        combined_flags =  ((ULONG) _tx_thread_system_state) | ((ULONG) _tx_thread_preempt_disable);
        if (combined_flags == 0)
        {

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

            /* There is another thread ready to run and will be scheduled upon return.  */
            _tx_thread_performance_non_idle_return_count++;
#endif

            /* Preemption is needed - return to the system!  */
            _tx_thread_system_return();
        }

        /* Return to caller.  */
        return;                     
#else

        /* Determine if a previous thread with preemption-threshold was preempted.  */
#if TX_MAX_PRIORITIES > 32
        if (_tx_thread_preempted_map_active)
#else
        if (_tx_thread_preempted_maps[MAP_INDEX])
#endif
        {

            /* Yes, there was a thread preempted when it was using preemption-threshold.  */

            /* Disable preemption.  */
            _tx_thread_preempt_disable++;

            /* Decrement the preemption disable variable.  */
            _tx_thread_preempt_disable--;

            /* Calculate the thread with preemption threshold set that
               was interrupted by a thread above the preemption level.  */

#if TX_MAX_PRIORITIES > 32

            /* Calculate the index to find the next highest priority thread ready for execution.  */
            priority_map =    _tx_thread_preempted_map_active;

            /* Calculate the lowest bit set in the priority map. */
            TX_LOWEST_SET_BIT_CALCULATE(priority_map, map_index)

            /* Calculate the base priority as well.  */
            base_priority =  map_index * 32;
#else

            /* Setup the base priority to zero.  */
            base_priority =   0;
#endif

            /* Setup temporary preempted map.  */
            priority_map =  _tx_thread_preempted_maps[MAP_INDEX];

            /* Calculate the lowest bit set in the priority map. */
            TX_LOWEST_SET_BIT_CALCULATE(priority_map, priority_bit)

            /* Setup the highest priority preempted thread.  */
            priority =  base_priority + priority_bit;       

            /* Determine if the next highest priority thread is above the highest priority threshold value.  */
            if (_tx_thread_highest_priority >= (_tx_thread_priority_list[priority] -> tx_thread_preempt_threshold))
            {

                /* Thread not allowed to execute until earlier preempted thread finishes or lowers its 
                   preemption-threshold.  */
                _tx_thread_execute_ptr =  _tx_thread_priority_list[priority];

                /* Clear the corresponding bit in the preempted map, since the preemption has been restored.  */
                TX_MOD32_BIT_SET(priority, priority_bit)
                _tx_thread_preempted_maps[MAP_INDEX] =  _tx_thread_preempted_maps[MAP_INDEX] & (~(priority_bit));

#if TX_MAX_PRIORITIES > 32

                /* Determine if there are any other bits set in this preempt map.  */
                if (_tx_thread_preempted_maps[MAP_INDEX] == 0)
                {
    
                    /* No, clear the active bit to signify this preempt map has nothing set.  */
                    TX_DIV32_BIT_SET(priority, priority_bit)
                    _tx_thread_preempted_map_active =  _tx_thread_preempted_map_active & (~(priority_bit));
                }
#endif
            }
        }
#endif

    }

    /* Determine if a preemption condition is present.  */
    if (current_thread != _tx_thread_execute_ptr) 
    {

#ifdef TX_ENABLE_STACK_CHECKING 

        /* Pickup the next execute pointer.  */
        thread_ptr =  _tx_thread_execute_ptr;

        /* Check this thread's stack.  */
        TX_THREAD_STACK_CHECK(thread_ptr)
#endif

        /* Determine if preemption should take place. This is only possible if the current thread pointer is
           not the same as the execute thread pointer AND the system state and preempt disable flags are clear.  */
        combined_flags =  ((ULONG) _tx_thread_system_state) | ((ULONG) _tx_thread_preempt_disable);
        if (combined_flags == 0)
        {

#ifdef TX_THREAD_ENABLE_PERFORMANCE_INFO

            /* Determine if an idle system return is present.  */
            if (_tx_thread_execute_ptr == TX_NULL)
            {

                /* Yes, increment the return to idle return count.  */
                _tx_thread_performance_idle_return_count++;
            }
            else
            {

                /* No, there is another thread ready to run and will be scheduled upon return.  */
                _tx_thread_performance_non_idle_return_count++;
            }
#endif

            /* Preemption is needed - return to the system!  */
            _tx_thread_system_return();
        }
    }

    /* Return to caller.  */
    return;
}
#endif

