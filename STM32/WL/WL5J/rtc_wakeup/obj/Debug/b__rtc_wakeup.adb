pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__rtc_wakeup.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__rtc_wakeup.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E132 : Short_Integer; pragma Import (Ada, E132, "ada__text_io_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "ada__tags_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "system__bb__timing_events_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__soft_links_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "system__exception_table_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "ada__streams_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__finalization_root_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__finalization_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "system__storage_pools_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__pool_global_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__tasking__protected_objects_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "system__tasking__protected_objects__multiprocessors_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__tasking__restricted__stages_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "hal__gpio_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "hal__i2c_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "hal__real_time_clock_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "hal__spi_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "hal__uart_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "logcmd_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "stm32__adc_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "stm32__exti_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "stm32__i2c_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "stm32__power_control_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "stm32__rcc_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "stm32__rtc_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "stm32__spi_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "stm32__gpio_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "stm32__syscfg_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "stm32__usarts_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "stm32__device_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "stm32__subghzphy_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "stm32__subghzrf_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "uart_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "rtc_wkup_int_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "utils_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      procedure Install_Restricted_Handlers_Sequential;
      pragma Import (C,Install_Restricted_Handlers_Sequential, "__gnat_attach_all_handlers");

      Partition_Elaboration_Policy : Character;
      pragma Import (C, Partition_Elaboration_Policy, "__gnat_partition_elaboration_policy");

      procedure Activate_All_Tasks_Sequential;
      pragma Import (C, Activate_All_Tasks_Sequential, "__gnat_activate_all_tasks");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      Partition_Elaboration_Policy := 'S';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Ada.Text_Io'Elab_Body;
      E132 := E132 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E101 := E101 + 1;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E103 := E103 + 1;
      System.Exception_Table'Elab_Body;
      E048 := E048 + 1;
      E050 := E050 + 1;
      Ada.Streams'Elab_Spec;
      E139 := E139 + 1;
      System.Finalization_Root'Elab_Spec;
      E145 := E145 + 1;
      Ada.Finalization'Elab_Spec;
      E143 := E143 + 1;
      System.Storage_Pools'Elab_Spec;
      E147 := E147 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E142 := E142 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      System.Pool_Global'Elab_Body;
      E149 := E149 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E121 := E121 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E125 := E125 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E130 := E130 + 1;
      HAL.GPIO'ELAB_SPEC;
      E182 := E182 + 1;
      HAL.I2C'ELAB_SPEC;
      E188 := E188 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E137 := E137 + 1;
      HAL.SPI'ELAB_SPEC;
      E201 := E201 + 1;
      HAL.UART'ELAB_SPEC;
      E207 := E207 + 1;
      E199 := E199 + 1;
      STM32.ADC'ELAB_SPEC;
      E159 := E159 + 1;
      E178 := E178 + 1;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C'ELAB_BODY;
      E187 := E187 + 1;
      E193 := E193 + 1;
      E174 := E174 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E191 := E191 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E197 := E197 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.GPIO'ELAB_BODY;
      E172 := E172 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E155 := E155 + 1;
      E176 := E176 + 1;
      STM32.USARTS'ELAB_BODY;
      E205 := E205 + 1;
      E221 := E221 + 1;
      E223 := E223 + 1;
      E214 := E214 + 1;
      Rtc_Wkup_Int'Elab_Spec;
      E209 := E209 + 1;
      E227 := E227 + 1;
      Install_Restricted_Handlers_Sequential;
      Activate_All_Tasks_Sequential;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_rtc_wakeup");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   /home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/peripherals.o
   --   /home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/uart.o
   --   /home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/rtc_wkup_int.o
   --   /home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/utils.o
   --   /home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/rtc_wakeup.o
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/obj/Debug/
   --   -L/home/hedley/ada/STM32/WL/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/boards/lib/stm32wl5x_nucleo/ravenscar-full/Debug/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/boards/stm32wl5x_nucleo/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32wl5x/full/adalib/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/arch/ARM/STM32/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/hal/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m4/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/components/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/hedley/ada/STM32/WL/WL5J/rtc_wakeup/Ada_Drivers_Library/middleware/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32wl5x/full/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
