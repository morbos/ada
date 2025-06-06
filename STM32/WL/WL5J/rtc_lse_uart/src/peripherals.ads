with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;

use STM32;

package Peripherals is

   UART1_AF     : constant GPIO_Alternate_Function := GPIO_AF_USART1_7;
   UART1_TX_Pin           : GPIO_Point renames PB6;
   UART1_RX_Pin           : GPIO_Point renames PB7;

end Peripherals;
