with HAL;                      use HAL;

package Prng is

   pragma Suppress (Elaboration_Check);

   Prng_Start : constant := 16#A5A5A5A5#; --  Default non-zero fallback
   Prng_State : UInt32 := Prng_Start
     with Volatile;

   function Fast_Rand return UInt32;

   procedure Seed_Prng_From_Vref_Lsb_CH32V003;

end Prng;
