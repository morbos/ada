with Lights;                   use Lights;

with Cortex_M_SVD.SysTick;     use Cortex_M_SVD.SysTick;
package body SysTick is
   procedure SysTick_Init is
   begin
      SysTick_Periph.RVR.RELOAD := 11_999; --  12Mhz HSI
      SysTick_Periph.CVR.CURRENT := 0;
      SysTick_Periph.CSR :=
        (CLKSOURCE    => Cpu_Clk,
         TICKINT      => Enable,
         ENABLE       => Enable,
         others       => <>);
   end SysTick_Init;
   procedure SysTick_Handler is
   begin
      Ticks := Ticks + 1;
      if InitComplete then
         Process;
         Process_Fade_Worklist;
      end if;
   end SysTick_Handler;
end SysTick;
