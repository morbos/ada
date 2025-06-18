with HAL;                 use HAL;
with HAL.I2C;
with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.I2C;           use STM32.I2C;
with LIS3MDL_I2C_IO;
with LIS3MDL_I2C;         use LIS3MDL_I2C;

use STM32;

package Peripherals is

   UART1_AF               : constant GPIO_Alternate_Function := GPIO_AF_USART2_7;
   UART1_TX_Pin           : GPIO_Point renames PB6;
   UART1_RX_Pin           : GPIO_Point renames PB7;

   HF_Pin                 : GPIO_Point renames PB12;
   RF_SW_Pin1             : GPIO_Point renames PB8;
   RF_SW_Pin2             : GPIO_Point renames PC13;

   Red_Led_Pin            : GPIO_Point renames PA15;
   Green_Led_Pin          : GPIO_Point renames PA1;

   TCXO_Pin               : GPIO_Point renames PB0;

end Peripherals;
