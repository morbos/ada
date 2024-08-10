pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_ns.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_ns.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E05 : Short_Integer; pragma Import (Ada, E05, "ada__real_time_E");

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
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_ns");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/hrainnie/ada/nRF/nRF5340/test/test_ns/obj/Debug/test_ns.o
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/test_ns/obj/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/test_ns/obj/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/test_ns/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/boards/lib/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/boards/nRF5340_ns/lib/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/embedded-runtimes/ravenscar-nRF5340-ns/sfp/adalib/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/arch/ARM/Nordic/lib/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/Ada_Drivers_Library/hal/lib/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m4f/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/components/lib/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/nRF/nRF5340/test/Ada_Drivers_Library/middleware/lib/nRF5340_ns/ravenscar-sfp/Debug/
   --   -L/home/hrainnie/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-nRF5340-ns/sfp/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
