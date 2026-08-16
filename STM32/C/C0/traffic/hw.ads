with HAL;                    use HAL;
with Interfaces;             use Interfaces;
with System;                 use System;

package HW is

   --  1. Declare a distinct modular 16-bit type (not derived from Unsigned_16)
   type Volatile_UInt16 is mod 2 ** 16;
   for Volatile_UInt16'Size use 16;

   --  2. Apply Volatile aspect
   pragma Volatile (Volatile_UInt16);

   --  3. Define access type
   type CCR_Access is access all Volatile_UInt16;

   procedure Init_TIM1_PWM;
   procedure Update_CCR (CCR_Addr : System.Address; Value : UInt16);
   procedure Init_GPIO;

end HW;
