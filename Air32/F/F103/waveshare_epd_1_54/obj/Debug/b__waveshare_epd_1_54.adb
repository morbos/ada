pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__waveshare_epd_1_54.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__waveshare_epd_1_54.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E005 : Short_Integer; pragma Import (Ada, E005, "ada__real_time_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "bitmap_color_conversion_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "ravenscar_time_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "soft_drawing_bitmap_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "memory_mapped_bitmap_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "stm32__adc_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "stm32__dac_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "stm32__exti_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "stm32__spi_E");
   E091 : Short_Integer; pragma Import (Ada, E091, "stm32__gpio_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "stm32__i2c_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "stm32__i2s_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "stm32__usarts_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "stm32__device_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "waveshare_1_54_spi_E");

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
      E005 := E005 + 1;
      E134 := E134 + 1;
      Ravenscar_Time'Elab_Body;
      E123 := E123 + 1;
      E136 := E136 + 1;
      E132 := E132 + 1;
      STM32.ADC'ELAB_SPEC;
      E079 := E079 + 1;
      E085 := E085 + 1;
      E100 := E100 + 1;
      E115 := E115 + 1;
      E091 := E091 + 1;
      STM32.DEVICE'ELAB_SPEC;
      E073 := E073 + 1;
      E103 := E103 + 1;
      E109 := E109 + 1;
      E119 := E119 + 1;
      E129 := E129 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_waveshare_epd_1_54");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/obj/Debug/peripherals.o
   --   /home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/obj/Debug/waveshare_1_54_spi.o
   --   /home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/obj/Debug/waveshare_epd_1_54.o
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/obj/Debug/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/obj/Debug/
   --   -L/home/hedley/ada/Air32/F/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/boards/lib/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/boards/air32f103_bluepill/lib/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32f103bluepill/ssfp/adalib/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/arch/ARM/STM32/lib/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/hal/lib/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/arch/ARM/cortex_m/lib/cortex-m3/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/components/lib/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Air32/F/F103/waveshare_epd_1_54/Ada_Drivers_Library/middleware/lib/stm32f103bluepill/ravenscar-ssfp/Debug/
   --   -L/home/hedley/ada/Ada_Drivers_Library/embedded-runtimes/ravenscar-stm32f103bluepill/ssfp/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
