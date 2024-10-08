with Ada.Interrupts.Names;         use Ada.Interrupts.Names;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package Exti is

   Tx_Done                 : Suspension_Object;

   protected Handler is
      pragma Interrupt_Priority;

   private

      procedure EXTI2_3_Handler;
      pragma Attach_Handler (EXTI2_3_Handler, EXTI2_3_Interrupt);

      procedure EXTI4_15_Handler;
      pragma Attach_Handler (EXTI4_15_Handler, EXTI4_15_Interrupt);

   end Handler;

end Exti;
