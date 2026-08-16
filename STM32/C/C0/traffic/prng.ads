with HAL;                      use HAL;

package Prng is

   Prng_State : UInt32 := 16#A5A5A5A5# --  Default non-zero fallback
     with Volatile;

   function Fast_Rand return UInt32;

   procedure Seed_Prng_From_Vref_Lsb_C011;

end Prng;
