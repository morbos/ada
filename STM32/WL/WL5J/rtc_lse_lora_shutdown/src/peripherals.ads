with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;

use STM32;

package Peripherals is

   Hold_Pin               : GPIO_Point renames PA11;

end Peripherals;
