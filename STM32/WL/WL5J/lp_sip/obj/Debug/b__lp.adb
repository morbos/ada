pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__lp.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__lp.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E132 : Short_Integer; pragma Import (Ada, E132, "ada__text_io_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "ada__tags_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "system__bb__timing_events_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__soft_links_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "system__exception_table_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "ada__streams_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__finalization_root_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__finalization_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__storage_pools_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__pool_global_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__tasking__protected_objects_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "system__tasking__protected_objects__multiprocessors_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__tasking__restricted__stages_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "hal__gpio_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "hal__i2c_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "hal__real_time_clock_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "hal__spi_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "crc8_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "hal__uart_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "logcmd_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "stm32__adc_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "stm32__exti_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "stm32__i2c_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "stm32__power_control_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "stm32__rcc_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "stm32__rtc_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "stm32__spi_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "stm32__gpio_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "stm32__syscfg_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "stm32__usarts_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "stm32__device_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "rtc_wkup_int_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "stm32__subghzphy_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "stm32__subghzrf_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "hw_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "radio_int_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "utils_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "app_E");

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
      E140 := E140 + 1;
      System.Finalization_Root'Elab_Spec;
      E146 := E146 + 1;
      Ada.Finalization'Elab_Spec;
      E144 := E144 + 1;
      System.Storage_Pools'Elab_Spec;
      E148 := E148 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E143 := E143 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      System.Pool_Global'Elab_Body;
      E150 := E150 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E121 := E121 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E125 := E125 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E130 := E130 + 1;
      HAL.GPIO'ELAB_SPEC;
      E207 := E207 + 1;
      HAL.I2C'ELAB_SPEC;
      E179 := E179 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E186 := E186 + 1;
      HAL.SPI'ELAB_SPEC;
      E138 := E138 + 1;
      E136 := E136 + 1;
      HAL.UART'ELAB_SPEC;
      E201 := E201 + 1;
      E194 := E194 + 1;
      STM32.ADC'ELAB_SPEC;
      E165 := E165 + 1;
      E203 := E203 + 1;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C'ELAB_BODY;
      E178 := E178 + 1;
      E188 := E188 + 1;
      E157 := E157 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E185 := E185 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E192 := E192 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.GPIO'ELAB_BODY;
      E155 := E155 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E163 := E163 + 1;
      E161 := E161 + 1;
      STM32.USARTS'ELAB_BODY;
      E199 := E199 + 1;
      Rtc_Wkup_Int'Elab_Spec;
      E233 := E233 + 1;
      E209 := E209 + 1;
      E211 := E211 + 1;
      E230 := E230 + 1;
      Radio_Int'Elab_Spec;
      E216 := E216 + 1;
      E214 := E214 + 1;
      E134 := E134 + 1;
      Install_Restricted_Handlers_Sequential;
      Activate_All_Tasks_Sequential;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_lp");

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
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/crc8.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/peripherals.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/rtc_wkup_int.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/hw.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/radio_int.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/utils.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/app.o
   --   /home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/lp.o
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/obj/Debug/
   --   -L/home/pi/ada/STM32/WL/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/boards/lib/stm32wl5x_nucleo/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/boards/stm32wl5x_nucleo/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32wl5x/full/adalib/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/arch/ARM/STM32/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/Ada_Drivers_Library/hal/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m4/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/components/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/STM32/WL/WL5J/lp/Ada_Drivers_Library/middleware/lib/stm32wl5x/ravenscar-full/Debug/
   --   -L/home/pi/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32wl5x/full/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
