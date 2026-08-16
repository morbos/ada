with HAL;                      use HAL;
with SysTick;                  use SysTick;
with Utils;                    use Utils;
with Prng;                     use Prng;
with HW;                       use HW;
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with System.Machine_Code;      use System.Machine_Code;

procedure Traffic is
begin
   RCC_Periph.RCC_CR.HSION := True;
   loop
      exit when RCC_Periph.RCC_CR.HSIRDY;
   end loop;
   for I in 0 .. 16#100000# loop
      Asm ("nop", Volatile => True);
   end loop;
   Init_GPIO;
   Init_TIM1_PWM;
   SysTick_Init;
   Seed_Prng_From_Vref_Lsb_C011;
   loop
      Wfi;
   end loop;
end Traffic;
