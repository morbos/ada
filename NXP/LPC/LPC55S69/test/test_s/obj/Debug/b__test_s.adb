pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_s.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_s.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E05 : Short_Integer; pragma Import (Ada, E05, "ada__real_time_E");
   E70 : Short_Integer; pragma Import (Ada, E70, "nxp__gpio_E");
   E65 : Short_Integer; pragma Import (Ada, E65, "nxp__device_E");
   E63 : Short_Integer; pragma Import (Ada, E63, "nxp__board_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure adainit is
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");

      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      null;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;


      Ada.Real_Time'Elab_Body;
      E05 := E05 + 1;
      NXP.DEVICE'ELAB_SPEC;
      E65 := E65 + 1;
      E70 := E70 + 1;
      NXP.BOARD'ELAB_SPEC;
      E63 := E63 + 1;
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
   --   /home/hedley/ada/NXP/LPC/LPC55S69/test/test_s/obj/Debug/test_s.o
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/test_s/obj/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/test_s/obj/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/test_s/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/boards/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/boards/lpc55s69_evk_s/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/embedded-runtimes/ravenscar-lpc55s69_evk_s/sfp/adalib/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/arch/ARM/NXP/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/hal/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m4f/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/components/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/NXP/LPC/LPC55S69/test/Ada_Drivers_Library/middleware/lib/lpc55s69_evk_s/ravenscar-sfp/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-lpc55s69_evk_s/sfp/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
