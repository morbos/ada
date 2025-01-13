with LPS22HB_I2C_IO;  use LPS22HB_I2C_IO;
with HAL.I2C;         use HAL.I2C;

with LPS22HB;

package LPS22HB_I2C is new LPS22HB
  (IO_Port            => IO_Port,
   Any_IO_Port        => Any_IO_Port,
   Sensor_Data_Buffer => I2C_Data);
