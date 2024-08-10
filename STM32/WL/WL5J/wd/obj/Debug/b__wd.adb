pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__wd.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__wd.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E130 : Short_Integer; pragma Import (Ada, E130, "ada__text_io_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "ada__tags_E");
   E091 : Short_Integer; pragma Import (Ada, E091, "system__bb__timing_events_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__soft_links_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__exception_table_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "ada__streams_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "system__finalization_root_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "ada__finalization_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "system__storage_pools_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "system__finalization_masters_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "ada__real_time_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "system__pool_global_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "system__tasking__protected_objects_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "system__tasking__protected_objects__multiprocessors_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "system__tasking__restricted__stages_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "hal__gpio_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "hal__i2c_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "hal__real_time_clock_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "hal__spi_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "hal__uart_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "logcmd_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "stm32__adc_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "stm32__exti_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "stm32__i2c_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "stm32__power_control_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "stm32__rcc_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "stm32__rtc_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "stm32__spi_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "stm32__gpio_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "stm32__syscfg_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "stm32__usarts_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "stm32__device_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "utils_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "wd_handler_E");

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
      E130 := E130 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E091 := E091 + 1;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E093 := E093 + 1;
      System.Exception_Table'Elab_Body;
      E050 := E050 + 1;
      E009 := E009 + 1;
      Ada.Streams'Elab_Spec;
      E167 := E167 + 1;
      System.Finalization_Root'Elab_Spec;
      E174 := E174 + 1;
      Ada.Finalization'Elab_Spec;
      E172 := E172 + 1;
      System.Storage_Pools'Elab_Spec;
      E176 := E176 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E171 := E171 + 1;
      Ada.Real_Time'Elab_Body;
      E145 := E145 + 1;
      System.Pool_Global'Elab_Spec;
      System.Pool_Global'Elab_Body;
      E178 := E178 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E119 := E119 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E123 := E123 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E128 := E128 + 1;
      HAL.GPIO'ELAB_SPEC;
      E169 := E169 + 1;
      HAL.I2C'ELAB_SPEC;
      E186 := E186 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E190 := E190 + 1;
      HAL.SPI'ELAB_SPEC;
      E200 := E200 + 1;
      HAL.UART'ELAB_SPEC;
      E206 := E206 + 1;
      E198 := E198 + 1;
      STM32.ADC'ELAB_SPEC;
      E141 := E141 + 1;
      E162 := E162 + 1;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C'ELAB_BODY;
      E185 := E185 + 1;
      E192 := E192 + 1;
      E158 := E158 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E189 := E189 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E196 := E196 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.GPIO'ELAB_BODY;
      E156 := E156 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E137 := E137 + 1;
      E160 := E160 + 1;
      STM32.USARTS'ELAB_BODY;
      E204 := E204 + 1;
      E209 := E209 + 1;
      Wd_Handler'Elab_Spec;
      E211 := E211 + 1;
      Install_Restricted_Handlers_Sequential;
      Activate_All_Tasks_Sequential;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_wd");

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
   --   /home/pi/ada/STM32/WL/WL5J/wd/obj/Debug/utils.o
   --   /home/pi/ada/STM32/WL/WL5J/wd/obj/Debug/wd_handler.o
   --   /home/pi/ada/STM32/WL/WL5J/wd/obj/Debug/wd.o
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/obj/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/obj/Debug/
   --   -L/home/pi/ada/STM32/WL/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/boards/lib/stm32wl5x_nucleo/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/boards/stm32wl5x_nucleo/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32wl5x/full/adalib/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/arch/ARM/STM32/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/Ada_Drivers_Library/hal/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m4/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/components/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/wd/Ada_Drivers_Library/middleware/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32wl5x/full/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
