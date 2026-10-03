with SysTick;                  use SysTick;
with System.Machine_Code;      use System.Machine_Code;
package body Utils is

   procedure Wfi is
   begin
         Asm ("wfi", Volatile => True); --  Sleep until next interrupt (saves power)
   end Wfi;
   procedure Delay_Ms (Ms : UInt32) is
      Start : constant UInt32 := Ticks;
   begin
      --  Standard 32-bit unsigned modular arithmetic handles counter wrap automatically!
      while (Ticks - Start) < Ms loop
         Wfi;
      end loop;
   end Delay_Ms;

end Utils;
