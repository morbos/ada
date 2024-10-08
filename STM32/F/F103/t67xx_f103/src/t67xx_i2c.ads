with T67XX_I2C_IO;    use T67XX_I2C_IO;
with HAL.I2C;         use HAL.I2C;
with Delays;          use Delays;

with T67XX;

package T67XX_I2C is new T67XX
  (IO_Port            => IO_Port,
   Any_IO_Port        => Any_IO_Port,
   Sensor_Data_Buffer => I2C_Data);
