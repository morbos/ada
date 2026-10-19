with HAL;      use HAL;
package SysTick is
   pragma Suppress (Elaboration_Check);
   Ticks : UInt32 := 0
     with Volatile;
   InitComplete        : Boolean  := False;
   procedure SysTick_Init;
   procedure SysTick_Handler with
     Export => True,
     Convention => C,
     External_Name => "SysTick_Handler";
end SysTick;
