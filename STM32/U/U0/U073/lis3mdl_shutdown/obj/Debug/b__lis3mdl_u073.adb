pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__lis3mdl_u073.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__lis3mdl_u073.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E005 : Short_Integer; pragma Import (Ada, E005, "ada__real_time_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "ada__text_io_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "system__tasking__protected_objects_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "system__tasking__protected_objects__multiprocessors_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__tasking__restricted__stages_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "cortex_m__debug_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "lis3mdl_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "lis3mdl_i2c_io_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "semihosting_E");
   E107 : Short_Integer; pragma Import (Ada, E107, "stm32__dac_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "stm32__exti_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "stm32__i2c_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "stm32__power_control_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "stm32__rcc_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "stm32__spi_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "stm32__gpio_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "stm32__device_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "stm32__syscfg_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "last_chance_handler_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure adainit is
      Partition_Elaboration_Policy : Character;
      pragma Import (C, Partition_Elaboration_Policy, "__gnat_partition_elaboration_policy");

      procedure Activate_All_Tasks_Sequential;
      pragma Import (C, Activate_All_Tasks_Sequential, "__gnat_activate_all_tasks");

      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");

      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      Partition_Elaboration_Policy := 'S';

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;


      Ada.Real_Time'Elab_Body;
      E005 := E005 + 1;
      Ada.Text_Io'Elab_Body;
      E078 := E078 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E067 := E067 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E071 := E071 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E076 := E076 + 1;
      E146 := E146 + 1;
      E136 := E136 + 1;
      E138 := E138 + 1;
      E143 := E143 + 1;
      E107 := E107 + 1;
      E118 := E118 + 1;
      E124 := E124 + 1;
      E149 := E149 + 1;
      E114 := E114 + 1;
      E128 := E128 + 1;
      STM32.DEVICE'ELAB_SPEC;
      E096 := E096 + 1;
      E116 := E116 + 1;
      E112 := E112 + 1;
      E090 := E090 + 1;
      Activate_All_Tasks_Sequential;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_lis3mdl_u073");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/lis3mdl.o
   --   /media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/lis3mdl_i2c_io.o
   --   /media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/lis3mdl_i2c.o
   --   /media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/peripherals.o
   --   /media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/last_chance_handler.o
   --   /media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/lis3mdl_u073.o
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/obj/Debug/
   --   -L/media/16T/ada/STM32/U/U0/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/boards/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/boards/stm32u073_bluepill/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32u073bluepill/ssfp/adalib/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/arch/ARM/STM32/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/Ada_Drivers_Library/hal/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m0/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/components/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/lis3mdl_shutdown/Ada_Drivers_Library/middleware/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32u073bluepill/ssfp/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
