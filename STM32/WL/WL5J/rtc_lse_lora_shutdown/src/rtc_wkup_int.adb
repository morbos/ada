with HAL;           use HAL;
with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with STM32.EXTI;    use STM32.EXTI;
with STM32.RTC;     use STM32.RTC;
with Uart;          use Uart;

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
--         if RTC_AlarmA_Flag then
--            Clear_RTC_AlarmA;
         Send_Char ('a');
         if RTC_Wakeup_Flag then
            Send_Char ('b');
            Clear_RTC_Wakeup;
         else
            raise Program_Error with "Unhandled alarm";
         end if;
      end RTC_Wkup_Handler;

   end Handler;

end Rtc_Wkup_Int;
