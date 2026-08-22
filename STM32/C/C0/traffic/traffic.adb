with HAL;                      use HAL;
with SysTick;                  use SysTick;
with Utils;                    use Utils;
with Prng;                     use Prng;
with HW;                       use HW;
with Lights;                   use Lights;
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with System.Machine_Code;      use System.Machine_Code;

procedure Traffic is
begin
   --  Enable the HSI 12Mhz default clock
   RCC_Periph.RCC_CR.HSION := True;
   loop
      exit when RCC_Periph.RCC_CR.HSIRDY;
   end loop;
   --  This is a synthetic delay to allow a debug connection
   --  in case the later FW to come bricks the debugger
   for I in 0 .. 16#400000# loop
      Asm ("nop", Volatile => True);
   end loop;
   Init_GPIO;
   Init_TIM1_PWM;
   SysTick_Init;    --  1ms timer enable
   Seed_Prng_From_Vref_Lsb_C011; --  Fancy low end entropy grab
   InitComplete := True; --  Now we can serve the lights
   loop
      Wfi;
   end loop;
end Traffic;
