with HAL;    use HAL;
with Ada.Interrupts.Names;         use Ada.Interrupts.Names;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package Button is

   User_Go             : Suspension_Object;

   Wake_Go             : Suspension_Object;

   protected Handler is
      pragma Interrupt_Priority;

   private

      procedure Button_Handler;
      pragma Attach_Handler (Button_Handler, PIN_INT2_Interrupt);
      pragma Attach_Handler (Button_Handler, PIN_INT3_Interrupt);

   end Handler;

end Button;
