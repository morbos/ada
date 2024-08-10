with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with HAL;           use HAL;
with STM32_SVD.IWDG;    use STM32_SVD.IWDG;

package body Wd_Handler is

   -------------
   -- Handler --
   -------------

   protected body Handler is

      -----------------
      -- IRQ_Handler --
      -----------------
      procedure WD_Handler_Proc is
      begin
         null;
      end WD_Handler_Proc;

   end Handler;

end Wd_Handler;
