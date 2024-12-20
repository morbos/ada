with STM32.Device;          use STM32.Device;
with STM32.GPIO;            use STM32.GPIO;
with Ada.Interrupts.Names;  use Ada.Interrupts;

use STM32;

package Peripherals is

   Wakeup_Pin             : GPIO_Point renames PA0;

end Peripherals;
