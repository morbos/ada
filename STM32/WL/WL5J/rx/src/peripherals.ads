with STM32.Device;          use STM32.Device;
with STM32.GPIO;            use STM32.GPIO;
with Ada.Interrupts.Names;  use Ada.Interrupts;

use STM32;

package Peripherals is

   HF_Pin                 : GPIO_Point renames PB12;
   RF_SW_Pin1             : GPIO_Point renames PB8;
   RF_SW_Pin2             : GPIO_Point renames PC13;

end Peripherals;
