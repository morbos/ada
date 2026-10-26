with Prng;                     use Prng;
with System.Machine_Code;      use System.Machine_Code;

with CH32_SVD.PFIC;            use CH32_SVD.PFIC;

package body SysTick is
   RandNum : UInt32;
   procedure SysTick_Init is
   begin
      --  Disable counter during setup
      PFIC_Periph.STK_CTLR.STE := False;
      --  Clear current count
      PFIC_Periph.STK_CNTL := 0;
      --  Set compare threshold (e.g. 23_999 for 1ms @ 24MHz HSI)
      PFIC_Periph.STK_CMPLR := SysTick_Period;

      --  Clear any pending compare flag
      PFIC_Periph.STK_SR.CNTIF := False;

      --  Enable IRQ12 in the PFIC
      PFIC_Periph.IENR1.INTEN := 1;

      --  Start SysTick:
      --  Direct HCLK | Auto-reload upon match | Enable IRQ | Enable Counter
      PFIC_Periph.STK_CTLR :=
        (STE   => True,
         STIE  => True,
         STCLK => True,
         STRE  => True,
         others => <>);

   end SysTick_Init;
   procedure SysTick_Handler is
   begin
      Ticks := Ticks + 1;
      PFIC_Periph.STK_CMPLR := PFIC_Periph.STK_CNTL + SysTick_Period;

      --  Clear any pending compare flag
      PFIC_Periph.STK_SR.CNTIF := False;

      if InitComplete then
         RandNum := Fast_Rand;
--          Process;
--          Process_Fade_Worklist;
      end if;
   end SysTick_Handler;
end SysTick;
