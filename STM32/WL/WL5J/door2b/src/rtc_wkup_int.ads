with Ada.Interrupts.Names; use Ada.Interrupts.Names;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package Rtc_Wkup_Int is

   RTC_Go      : Suspension_Object;

   protected Handler is
      pragma Interrupt_Priority;

   private

      procedure RTC_Wkup_Handler;
      --      pragma Attach_Handler (RTC_Wkup_Handler, RTC_ALARM_Interrupt);
      pragma Attach_Handler (RTC_Wkup_Handler, RTC_WKUP_Interrupt);

   end Handler;

end Rtc_Wkup_Int;
