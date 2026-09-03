
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with STM32_SVD.GPIO;           use STM32_SVD.GPIO;
with STM32_SVD.SYSCFG;         use STM32_SVD.SYSCFG;

package body HW is

   procedure Init_GPIO is
   begin
      RCC_Periph.RCC_IOPENR.GPIOAEN := True;

   end Init_GPIO;

end HW;
