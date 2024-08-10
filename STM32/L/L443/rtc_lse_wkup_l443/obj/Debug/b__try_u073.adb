pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__try_u073.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__try_u073.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E005 : Short_Integer; pragma Import (Ada, E005, "ada__real_time_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__text_io_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__tasking__protected_objects_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__tasking__restricted__stages_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "stm32__dac_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "stm32__exti_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "stm32__i2c_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "stm32__power_control_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "stm32__rcc_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "hw_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "stm32__rtc_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "stm32__spi_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "stm32__gpio_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "stm32__device_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "stm32__syscfg_E");
   E084 : Short_Integer; pragma Import (Ada, E084, "rtc_wkup_int_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure adainit is
      procedure Install_Restricted_Handlers_Sequential;
      pragma Import (C,Install_Restricted_Handlers_Sequential, "__gnat_attach_all_handlers");

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
      E065 := E065 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E127 := E127 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E134 := E134 + 1;
      E098 := E098 + 1;
      E077 := E077 + 1;
      E110 := E110 + 1;
      E116 := E116 + 1;
      E081 := E081 + 1;
      E074 := E074 + 1;
      E114 := E114 + 1;
      E121 := E121 + 1;
      STM32.DEVICE'ELAB_SPEC;
      E089 := E089 + 1;
      E105 := E105 + 1;
      E103 := E103 + 1;
      Rtc_Wkup_Int'Elab_Spec;
      E084 := E084 + 1;
      Install_Restricted_Handlers_Sequential;
      Activate_All_Tasks_Sequential;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_try_u073");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/obj/Debug/hw.o
   --   /media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/obj/Debug/rtc_wkup_int.o
   --   /media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/obj/Debug/try_u073.o
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/obj/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/obj/Debug/
   --   -L/media/16T/ada/STM32/U/U0/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/boards/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/boards/stm32u073_bluepill/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32u073bluepill/ssfp/adalib/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/arch/ARM/STM32/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/Ada_Drivers_Library/hal/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m0/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/components/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/STM32/U/U0/U073/rtc_lse_u073/Ada_Drivers_Library/middleware/lib/stm32u073bluepill/ravenscar-ssfp/Debug/
   --   -L/media/16T/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32u073bluepill/ssfp/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
