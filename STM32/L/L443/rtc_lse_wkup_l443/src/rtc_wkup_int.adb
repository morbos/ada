with HAL;           use HAL;
with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with STM32.EXTI;    use STM32.EXTI;
with STM32.RTC;     use STM32.RTC;
with STM32.Board;   use STM32.Board;

with Ada.Real_Time; use Ada.Real_Time;
with System.Machine_Code;      use System.Machine_Code;

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
         Clear_External_Interrupt (EXTI_Line_20);
         if RTC_Wakeup_Flag then
            Turn_On (Green_LED);
            for I in 0 .. 10000 loop
               Asm ("nop", Volatile => True);
            end loop;
            Turn_Off (Green_LED);
            Clear_RTC_Wakeup;
         else
            raise Program_Error with "Unhandled alarm";
         end if;
      end RTC_Wkup_Handler;

   end Handler;

end Rtc_Wkup_Int;
