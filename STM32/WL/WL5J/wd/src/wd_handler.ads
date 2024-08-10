with HAL;                          use HAL;
with Ada.Interrupts.Names;         use Ada.Interrupts.Names;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package Wd_Handler is

   protected Handler is
      pragma Interrupt_Priority;

   private

      procedure WD_Handler_Proc;
      pragma Attach_Handler (WD_Handler_Proc, WWDG_Interrupt);

   end Handler;

end Wd_Handler;
