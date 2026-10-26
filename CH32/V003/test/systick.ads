with HAL;      use HAL;
package SysTick is
   pragma Suppress (Elaboration_Check);
   Ticks : UInt32 := 0
     with Volatile;
   InitComplete        : Boolean  := False;
   SysTick_Period : constant := 23_999;
   procedure SysTick_Init;
   procedure SysTick_Handler with
     Export => True,
     Convention => C,
     External_Name => "SysTick_Handler";
   pragma Machine_Attribute (SysTick_Handler, "interrupt");
end SysTick;
