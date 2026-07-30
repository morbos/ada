with STM32.Board;    use STM32.Board;
with STM32.Device;   use STM32.Device;
with STM32.EXTI;     use STM32.EXTI;
with STM32_SVD.TAMP; use STM32_SVD.TAMP;
with HAL;            use HAL;
with Utils;          use Utils;
with Peripherals;    use Peripherals;
with Mag;            use Mag;
with Uart;           use Uart;
with Hw;             use Hw;
with LIS3MDL_I2C;    use LIS3MDL_I2C;

package body Exti is

   -------------
   -- Handler --
   -------------

   protected body Handler is

      -----------------
      -- IRQ_Handler --
      -----------------

      procedure EXTI_Handler is
      begin
         Green_LED_On;
         Send_Char ('E');
         if External_Interrupt_Pending (EXTI_Line_0) then
            Send_Char ('F');
            TAMP_Periph.BKP0R := 16#facefeed#;
            Clear_External_Interrupt (EXTI_Line_0);
         end if;
      end EXTI_Handler;

   end Handler;

end Exti;
