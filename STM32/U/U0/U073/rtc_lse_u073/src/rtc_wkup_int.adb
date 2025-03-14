with HAL;           use HAL;
with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with STM32.EXTI;    use STM32.EXTI;
with STM32.RTC;     use STM32.RTC;

package body Rtc_Wkup_Int is

   -------------
   -- Handler --
   -------------

   protected body Handler is

      -----------------
      -- IRQ_Handler --
      -----------------

      procedure RTC_Wkup_Handler
      is
      begin
         null;
      end RTC_Wkup_Handler;

   end Handler;

end Rtc_Wkup_Int;
