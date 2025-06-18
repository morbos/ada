with HAL;                 use HAL;
with HAL.I2C;
with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.I2C;           use STM32.I2C;
with LPS22HB_I2C_IO;
with LPS22HB_I2C;         use LPS22HB_I2C;

use STM32;

package Peripherals is

   UART2_AF               : constant GPIO_Alternate_Function := GPIO_AF_USART2_7;
   UART2_TX_Pin           : GPIO_Point renames PA2;
   UART2_RX_Pin           : GPIO_Point renames PA3;

   HF_Pin                 : GPIO_Point renames PB12;
   RF_SW_Pin1             : GPIO_Point renames PB8;
   RF_SW_Pin2             : GPIO_Point renames PC13;

--   Red_Led_Pin            : GPIO_Point renames PA15;
--   Green_Led_Pin          : GPIO_Point renames PA1;

   LPS22HB_I2C_Port        : constant access I2C_Port := I2C_2'Access;
   LPS22HB_I2C_Port_AF     : constant GPIO_Alternate_Function := GPIO_AF_I2C2_4;

   LPS22HB_I2C_Clock_Pin   : GPIO_Point renames PA12;
   LPS22HB_I2C_Data_Pin    : GPIO_Point renames PA11;

   LPS22HB_Port : aliased LPS22HB_I2C_IO.IO_Port := (LPS22HB_I2C_Port, 16#b8#);

   TCXO_Pin               : GPIO_Point renames PB0;

end Peripherals;
