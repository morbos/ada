with HAL;      use HAL;
package SysTick is
   Ticks : UInt32 := 0;
   procedure SysTick_Init;
   procedure SysTick_Handler with
     Export => True,
     Convention => C,
     External_Name => "SysTick_Handler";
end SysTick;
