with HAL;                 use HAL;
with HAL.I2C;
with STM32.Device;        use STM32.Device;
with STM32.GPIO;          use STM32.GPIO;
with STM32.I2C;           use STM32.I2C;

use STM32;

package Peripherals is

   VL53L0_I2C_Port      : constant access I2C_Port := I2C_2'Access;
   VL53L0_I2C_Port_AF   : constant GPIO_Alternate_Function := GPIO_AF_I2C2_4;
   VL53L0_I2C_Clock_Pin : GPIO_Point renames PA12;
   VL53L0_I2C_Data_Pin  : GPIO_Point renames PA11;

   HF_Pin                 : GPIO_Point renames PB12;
   RF_SW_Pin1             : GPIO_Point renames PB8;
   RF_SW_Pin2             : GPIO_Point renames PC13;

end Peripherals;
