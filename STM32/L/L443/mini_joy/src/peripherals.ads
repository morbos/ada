with HAL;                 use HAL;
with HAL.I2C;
with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.I2C;           use STM32.I2C;
with MINI_JOY_I2C_IO;
with MINI_JOY_I2C;        use MINI_JOY_I2C;

use STM32;

package Peripherals is

   MINI_JOY_I2C_Port      : I2C_Port renames I2C_1;
   MINI_JOY_I2C_Port_AF   : constant GPIO_Alternate_Function := GPIO_AF_I2C1_4;

   MINI_JOY_Address       : constant HAL.I2C.I2C_Address := 16#b4#;
   MINI_JOY_I2C_Clock_Pin : GPIO_Point renames PB6;
   MINI_JOY_I2C_Data_Pin  : GPIO_Point renames PB7;
   Joy_Port : aliased MINI_JOY_I2C_IO.IO_Port := (MINI_JOY_I2C_Port'Access, MINI_JOY_Address);

end Peripherals;
