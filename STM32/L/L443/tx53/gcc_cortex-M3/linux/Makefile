.SUFFIXES:
.SUFFIXES: .s .c .o

VPATH = ../threadx
CC=arm-eabi-gcc
AS=arm-eabi-as
#ASFLAGS= -mthumb -mthumb-interwork -mcpu=cortex-m4
ASFLAGS= -mthumb -mthumb-interwork -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard
LD=arm-eabi-ld
AR=arm-eabi-ar
#CFLAGS=-I../threadx -O2 -mthumb -mthumb-interwork -mcpu=cortex-m4
#CFLAGS=-I../threadx -O2 -mthumb -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp
CFLAGS=-I../threadx -O2 -mthumb -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard

.c.o:
	$(CC) $(CFLAGS) -c $<
.s.o:
	$(AS) $(ASFLAGS) $< -o $*.o

#default: tx.a
default: tx_vfp.a

OBJS= tx_block_allocate.o \
	tx_block_pool_cleanup.o \
	tx_block_pool_create.o \
	tx_block_pool_delete.o \
	tx_block_pool_info_get.o \
	tx_block_pool_initialize.o \
	tx_block_pool_performance_info_get.o \
	tx_block_pool_performance_system_info_get.o \
	tx_block_pool_prioritize.o \
	tx_block_release.o \
	tx_byte_allocate.o \
	tx_byte_pool_cleanup.o \
	tx_byte_pool_create.o \
	tx_byte_pool_delete.o \
	tx_byte_pool_info_get.o \
	tx_byte_pool_initialize.o \
	tx_byte_pool_performance_info_get.o \
	tx_byte_pool_performance_system_info_get.o \
	tx_byte_pool_prioritize.o \
	tx_byte_pool_search.o \
	tx_byte_release.o \
	txe_block_allocate.o \
	txe_block_pool_create.o \
	txe_block_pool_delete.o \
	txe_block_pool_info_get.o \
	txe_block_pool_prioritize.o \
	txe_block_release.o \
	txe_byte_allocate.o \
	txe_byte_pool_create.o \
	txe_byte_pool_delete.o \
	txe_byte_pool_info_get.o \
	txe_byte_pool_prioritize.o \
	txe_byte_release.o \
	txe_event_flags_create.o \
	txe_event_flags_delete.o \
	txe_event_flags_get.o \
	txe_event_flags_info_get.o \
	txe_event_flags_set.o \
	txe_event_flags_set_notify.o \
	txe_mutex_create.o \
	txe_mutex_delete.o \
	txe_mutex_get.o \
	txe_mutex_info_get.o \
	txe_mutex_prioritize.o \
	txe_mutex_put.o \
	txe_queue_create.o \
	txe_queue_delete.o \
	txe_queue_flush.o \
	txe_queue_front_send.o \
	txe_queue_info_get.o \
	txe_queue_prioritize.o \
	txe_queue_receive.o \
	txe_queue_send.o \
	txe_queue_send_notify.o \
	txe_semaphore_ceiling_put.o \
	txe_semaphore_create.o \
	txe_semaphore_delete.o \
	txe_semaphore_get.o \
	txe_semaphore_info_get.o \
	txe_semaphore_prioritize.o \
	txe_semaphore_put.o \
	txe_semaphore_put_notify.o \
	txe_thread_create.o \
	txe_thread_delete.o \
	txe_thread_entry_exit_notify.o \
	txe_thread_info_get.o \
	txe_thread_preemption_change.o \
	txe_thread_priority_change.o \
	txe_thread_relinquish.o \
	txe_thread_reset.o \
	txe_thread_resume.o \
	txe_thread_suspend.o \
	txe_thread_terminate.o \
	txe_thread_time_slice_change.o \
	txe_thread_wait_abort.o \
	txe_timer_activate.o \
	txe_timer_change.o \
	txe_timer_create.o \
	txe_timer_deactivate.o \
	txe_timer_delete.o \
	txe_timer_info_get.o \
	tx_event_flags_cleanup.o \
	tx_event_flags_create.o \
	tx_event_flags_delete.o \
	tx_event_flags_get.o \
	tx_event_flags_info_get.o \
	tx_event_flags_initialize.o \
	tx_event_flags_performance_info_get.o \
	tx_event_flags_performance_system_info_get.o \
	tx_event_flags_set.o \
	tx_event_flags_set_notify.o \
	tx_initialize_high_level.o \
	tx_initialize_kernel_enter.o \
	tx_initialize_kernel_setup.o \
	tx_mutex_cleanup.o \
	tx_mutex_create.o \
	tx_mutex_delete.o \
	tx_mutex_get.o \
	tx_mutex_info_get.o \
	tx_mutex_initialize.o \
	tx_mutex_performance_info_get.o \
	tx_mutex_performance_system_info_get.o \
	tx_mutex_prioritize.o \
	tx_mutex_priority_change.o \
	tx_mutex_put.o \
	tx_queue_cleanup.o \
	tx_queue_create.o \
	tx_queue_delete.o \
	tx_queue_flush.o \
	tx_queue_front_send.o \
	tx_queue_info_get.o \
	tx_queue_initialize.o \
	tx_queue_performance_info_get.o \
	tx_queue_performance_system_info_get.o \
	tx_queue_prioritize.o \
	tx_queue_receive.o \
	tx_queue_send.o \
	tx_queue_send_notify.o \
	tx_semaphore_ceiling_put.o \
	tx_semaphore_cleanup.o \
	tx_semaphore_create.o \
	tx_semaphore_delete.o \
	tx_semaphore_get.o \
	tx_semaphore_info_get.o \
	tx_semaphore_initialize.o \
	tx_semaphore_performance_info_get.o \
	tx_semaphore_performance_system_info_get.o \
	tx_semaphore_prioritize.o \
	tx_semaphore_put.o \
	tx_semaphore_put_notify.o \
	tx_thread_context_restore.o \
	tx_thread_context_save.o \
	tx_thread_create.o \
	tx_thread_delete.o \
	tx_thread_entry_exit_notify.o \
	tx_thread_identify.o \
	tx_thread_info_get.o \
	tx_thread_initialize.o \
	tx_thread_interrupt_control.o \
	tx_thread_performance_info_get.o \
	tx_thread_performance_system_info_get.o \
	tx_thread_preemption_change.o \
	tx_thread_priority_change.o \
	tx_thread_relinquish.o \
	tx_thread_reset.o \
	tx_thread_resume.o \
	tx_thread_schedule.o \
	tx_thread_shell_entry.o \
	tx_thread_sleep.o \
	tx_thread_stack_analyze.o \
	tx_thread_stack_build.o \
	tx_thread_stack_error_handler.o \
	tx_thread_stack_error_notify.o \
	tx_thread_suspend.o \
	tx_thread_system_preempt_check.o \
	tx_thread_system_resume.o \
	tx_thread_system_return.o \
	tx_thread_system_suspend.o \
	tx_thread_terminate.o \
	tx_thread_timeout.o \
	tx_thread_time_slice.o \
	tx_thread_time_slice_change.o \
	tx_thread_wait_abort.o \
	tx_time_get.o \
	tx_timer_activate.o \
	tx_timer_change.o \
	tx_timer_create.o \
	tx_timer_deactivate.o \
	tx_timer_delete.o \
	tx_timer_expiration_process.o \
	tx_timer_info_get.o \
	tx_timer_initialize.o \
	tx_timer_interrupt.o \
	tx_timer_performance_info_get.o \
	tx_timer_performance_system_info_get.o \
	tx_timer_system_activate.o \
	tx_timer_system_deactivate.o \
	tx_timer_thread_entry.o \
	tx_time_set.o \
	tx_trace_buffer_full_notify.o \
	tx_trace_disable.o \
	tx_trace_enable.o \
	tx_trace_event_filter.o \
	tx_trace_event_unfilter.o \
	tx_trace_initialize.o \
	tx_trace_interrupt_control.o \
	tx_trace_isr_enter_insert.o \
	tx_trace_isr_exit_insert.o \
	tx_trace_object_register.o \
	tx_trace_object_unregister.o \
	tx_trace_user_event_insert.o
#tx.a: $(OBJS)
#	arm-eabi-ar -r tx.a $(OBJS)
tx_vfp.a: $(OBJS)
	arm-eabi-ar -r tx_vfp.a $(OBJS)
