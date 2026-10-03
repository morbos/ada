with MINI_JOY_I2C_IO;  use MINI_JOY_I2C_IO;
with HAL.I2C;          use HAL.I2C;
with HAL;

with Mini_Joy_Drv;

package MINI_JOY_I2C is new Mini_Joy_Drv
  (IO_Port            => IO_Port,
   Any_IO_Port        => Any_IO_Port);
