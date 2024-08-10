with HAL.I2C;
with HAL;                 use HAL;
with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.SPI;           use STM32.SPI;
with SX1276_SPI_IO;       use SX1276_SPI_IO;
with STM32.I2C;           use STM32.I2C;
with LIS3MDL_I2C_IO;
with LIS3MDL_I2C;         use LIS3MDL_I2C;

use STM32;

package Peripherals is

   SX1276_SPI_Port        : constant access SPI_Port := SPI_1'Access;
   SX1276_SPI_Port_AF     : constant GPIO_Alternate_Function := GPIO_AF_SPI1_5;
   SX1276_SPI_Clock_Pin   : GPIO_Point renames PA5;
   SX1276_SPI_Miso_Pin    : GPIO_Point renames PA6;
   SX1276_SPI_Mosi_Pin    : GPIO_Point renames PA7;
   SX1276_NSS_Pin         : GPIO_Point renames PA4;

   SX1276_Reset_Pin       : GPIO_Point renames PB6;

   SX1276_DIO_0_Pin       : GPIO_Point renames PA2;
   SX1276_DIO_1_Pin       : GPIO_Point renames PA1;

   SX1276_Port : aliased SX1276_SPI_IO.IO_Port := (SX1276_SPI_Port, SX1276_NSS_Pin);

   Wakeup_Pin             : GPIO_Point renames PA0;

   LIS3MDL_I2C_Port      : constant access I2C_Port := I2C_1'Access;
   LIS3MDL_I2C_Port_AF   : constant GPIO_Alternate_Function := GPIO_AF_I2C1_4;

   LIS3MDL_Address       : constant HAL.I2C.I2C_Address := 16#3c#;
   LIS3MDL_I2C_Clock_Pin : GPIO_Point renames PA9;
   LIS3MDL_I2C_Data_Pin  : GPIO_Point renames PA10;
   LIS3MDL_HW_Reset_Pin  : GPIO_Point renames PB5;

   Sensor_Port : aliased LIS3MDL_I2C_IO.IO_Port := (LIS3MDL_I2C_Port, LIS3MDL_Address);


end Peripherals;
