with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.SPI;           use STM32.SPI;
with SX1276_SPI_IO;       use SX1276_SPI_IO;

use STM32;

package Peripherals is

   SX1276_SPI_Port        : constant access SPI_Port := SPI_1'Access;
   SX1276_SPI_Port_AF     : constant GPIO_Alternate_Function := GPIO_AF_SPI1_5;
   SX1276_SPI_Clock_Pin   : GPIO_Point renames PA5;
   SX1276_SPI_Miso_Pin    : GPIO_Point renames PA6;
   SX1276_SPI_Mosi_Pin    : GPIO_Point renames PA7;
   SX1276_NSS_Pin         : GPIO_Point renames PA4;

   Hold_Pin               : GPIO_Point renames PB0;

   SX1276_Reset_Pin       : GPIO_Point renames PB6;

   SX1276_DIO_0_Pin       : GPIO_Point renames PA2;
   SX1276_DIO_1_Pin       : GPIO_Point renames PA1;

   SX1276_Port : aliased SX1276_SPI_IO.IO_Port := (SX1276_SPI_Port, SX1276_NSS_Pin);

   Wakeup_Pin             : GPIO_Point renames PA0;

end Peripherals;
