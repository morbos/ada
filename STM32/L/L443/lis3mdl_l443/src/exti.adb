with STM32.Board;   use STM32.Board;
with STM32.Device;  use STM32.Device;
with STM32.EXTI;    use STM32.EXTI;
with HAL;           use HAL;
with Utils;         use Utils;
with Peripherals;   use Peripherals;
with Mag;           use Mag;
with LIS3MDL_I2C;   use LIS3MDL_I2C;

with System.Machine_Code;   use System.Machine_Code;


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
         if External_Interrupt_Pending (EXTI_Line_0) then
            Clear_External_Interrupt (EXTI_Line_0);
            Turn_On (Green_LED);
            for I in 0 .. 100_000 loop
               Asm ("nop",
                    Volatile => True);
            end loop;
            Turn_Off (Green_LED);
         end if;
      end EXTI_Handler;

   end Handler;

end Exti;
