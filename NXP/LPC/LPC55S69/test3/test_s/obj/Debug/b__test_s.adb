pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_s.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_s.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E005 : Short_Integer; pragma Import (Ada, E005, "ada__real_time_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "system__tasking__protected_objects_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "system__tasking__protected_objects__multiprocessors_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "system__tasking__restricted__stages_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "nxp__pint_E");
   E082 : Short_Integer; pragma Import (Ada, E082, "nxp__gpio_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "nxp__device_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "nxp__board_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "button_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "nxp__inputmux_E");

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
      System.Tasking.Protected_Objects'Elab_Body;
      E062 := E062 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E066 := E066 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E071 := E071 + 1;
      NXP.DEVICE'ELAB_SPEC;
      E080 := E080 + 1;
      NXP.GPIO'ELAB_BODY;
      E082 := E082 + 1;
      NXP.PINT'ELAB_BODY;
      E093 := E093 + 1;
      NXP.BOARD'ELAB_SPEC;
      E078 := E078 + 1;
      Button'Elab_Spec;
      E073 := E073 + 1;
      E101 := E101 + 1;
      Install_Restricted_Handlers_Sequential;
      Activate_All_Tasks_Sequential;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_s");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/hedley/ada/NXP/LPC/LPC55S69/test3/test_s/obj/Debug/button.o
   --   /home/hedley/ada/NXP/LPC/LPC55S69/test3/test_s/obj/Debug/test_s.o
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/test_s/obj/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/test_s/obj/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/test_s/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/boards/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/boards/lpc55s69_evk_s/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/embedded-runtimes/ravenscar-lpc55s69_evk_s/sfp/adalib/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/arch/ARM/NXP/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/hal/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m4f/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/components/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test3/Ada_Drivers_Library/middleware/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-lpc55s69_evk_s/sfp/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
