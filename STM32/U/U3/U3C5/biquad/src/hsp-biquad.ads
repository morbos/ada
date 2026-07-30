with System;

with STM32.Device;   use STM32.Device;
with STM32_SVD;      use STM32_SVD;
with STM32_SVD.HSP;  use STM32_SVD.HSP;

generic
   Num_Samples : Positive;
   Num_Stages  : Positive; -- Number of Biquad stages (e.g. 5 coefficients per stage)
package HSP.Biquad is

   -- Calculate required array sizes statically
   Num_Coeffs : constant Positive := Num_Stages * 5;
   Num_States : constant Positive := Num_Stages * 2; -- DF1 state history

   BRAM_AB_Size : constant := 16#4000#;

   type Sample_Array is array (1 .. Num_Samples) of Float_32
     with Component_Size => 32, Alignment => 4;

   type Coeff_Array is array (1 .. Num_Coeffs) of Float_32
     with Component_Size => 32, Alignment => 4;

   type State_Array is array (1 .. Num_States) of Float_32
     with Component_Size => 32, Alignment => 4;

   -- Memory Overlay Record representing a contiguous BRAM layout frame
   type BRAM_Layout_Frame is record
      Input_Data  : Sample_Array;
      Output_Data : Sample_Array;
      Coefficients: Coeff_Array;
      Filter_State: State_Array;
   end record
     with Alignment => 4;

   BRAM_Frame : Bram_Layout_Frame
     with Address => System'To_Address (16#200A_0000#),
     Volatile;

   --  Enforce compile-time assertion
   pragma Compile_Time_Error
     (BRAM_Layout_Frame'Size / 8 > BRAM_AB_Size,
      "BRAM Overlay Exceeds 16 KB Capacity!");

end HSP.Biquad;
