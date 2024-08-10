with HAL;              use HAL;
with STM32.RCC;        use STM32.RCC;
with STM32_SVD.RCC;    use STM32_SVD.RCC;
with STM32.EXTI;       use STM32.EXTI;
with STM32_SVD.EXTI;   use STM32_SVD.EXTI;

package body Hw is

   procedure RTC_Use_Lse
   is
   begin
      RCC_Periph.RCC_BDCR.LSEON := True;
      loop
         exit when RCC_Periph.RCC_BDCR.LSERDY;
      end loop;
      loop
         RCC_Periph.RCC_BDCR.RTCSEL := 1;
         exit when RCC_Periph.RCC_BDCR.RTCSEL = 1;
      end loop;
   end RTC_Use_Lse;

end Hw;
