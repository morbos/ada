with HAL;                 use HAL;
with HAL.I2C;
with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.I2C;           use STM32.I2C;
with LIS3MDL_I2C_IO;
with LIS3MDL_I2C;         use LIS3MDL_I2C;

use STM32;

package Peripherals is

   UART2_AF               : constant GPIO_Alternate_Function := GPIO_AF_USART2_7;
   UART2_TX_Pin           : GPIO_Point renames PA2;
   UART2_RX_Pin           : GPIO_Point renames PA3;

--   HF_Pin                 : GPIO_Point renames PB12;
--   RF_SW_Pin1             : GPIO_Point renames PB8;
--   RF_SW_Pin2             : GPIO_Point renames PC13;
   RF_SW_Pin1             : GPIO_Point renames PA0;
   RF_SW_Pin2             : GPIO_Point renames PA1;

   Red_Led_Pin            : GPIO_Point renames PA15;
   Green_Led_Pin          : GPIO_Point renames PA1;

   LIS3MDL_I2C_Port      : constant access I2C_Port := I2C_2'Access;
   LIS3MDL_I2C_Port_AF   : constant GPIO_Alternate_Function := GPIO_AF_I2C2_4;

   LIS3MDL_Address       : constant HAL.I2C.I2C_Address := 16#3c#;
   LIS3MDL_I2C_Clock_Pin : GPIO_Point renames PA12;
   LIS3MDL_I2C_Data_Pin  : GPIO_Point renames PA11;
   LIS3MDL_Power_Pin     : GPIO_Point renames PA3;
   LIS3MDL_Int_Pin       : GPIO_Point renames PA0;

   Sensor_Port : aliased LIS3MDL_I2C_IO.IO_Port := (LIS3MDL_I2C_Port, LIS3MDL_Address);

end Peripherals;
