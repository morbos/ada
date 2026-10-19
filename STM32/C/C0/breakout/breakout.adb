with SysTick;                  use SysTick;
with Utils;                    use Utils;
with Prng;                     use Prng;
with HW;                       use HW;
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with System.Machine_Code;      use System.Machine_Code;

procedure Breakout is
begin
   --  Enable the HSI 12Mhz default clock
   RCC_Periph.RCC_CR.HSION := True;
   loop
      exit when RCC_Periph.RCC_CR.HSIRDY;
   end loop;
   --  This is a synthetic delay to allow a debug connection
   --  in case the later FW to come bricks the debugger
   for I in 0 .. 16#400_000# loop
      Asm ("nop", Volatile => True);
   end loop;
   Init_GPIO;
   SysTick_Init;    --  1ms timer enable
   Seed_Prng_From_Vref_Lsb_C011; --  Fancy low end entropy grab
--   Enable_I2C;
--   Enable_SPI;
--   Initialize;
   --   Mag_Init;
   --   Acc_Init;
   InitComplete := True;
   loop
      Wfi;
   end loop;
end Breakout;
