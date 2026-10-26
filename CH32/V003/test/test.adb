with SysTick;                  use SysTick;
with Utils;                    use Utils;
with Prng;                     use Prng;
with HW;                       use HW;
with CH32_SVD.RCC;             use CH32_SVD.RCC;
with System.Machine_Code;      use System.Machine_Code;

procedure Test is
begin
   --  Enable a 24Mhz default clock
   RCC_Periph.CTLR.HSION := True;
   loop
      exit when RCC_Periph.CTLR.HSIRDY;
   end loop;
   RCC_Periph.CFGR0.HPRE := 0;
   --  This is a synthetic delay to allow a debug connection
   --  in case the later FW to come bricks the debugger
   for I in 0 .. 16#400_000# loop
      Asm ("nop", Volatile => True);
   end loop;
   Init_GPIO;
   SysTick_Init;    --  1ms timer enable
   Asm ("csrsi mstatus, 8", Volatile => True); --  Interrupts on
   Seed_Prng_From_Vref_Lsb_CH32V003; --  Fancy low end entropy grab
--   Enable_I2C;
--   Initialize;
--   Mag_Init;
   InitComplete := True;
   loop
      Wfi;
   end loop;
end Test;
