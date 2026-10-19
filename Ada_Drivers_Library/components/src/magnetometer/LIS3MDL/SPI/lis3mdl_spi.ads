with LIS3MDL_SPI_IO;  use LIS3MDL_SPI_IO;
with HAL.SPI;         use HAL.SPI;
with HAL;

with LIS3MDL;

package LIS3MDL_SPI is new LIS3MDL
  (IO_Port            => IO_Port,
   Any_IO_Port        => Any_IO_Port);
