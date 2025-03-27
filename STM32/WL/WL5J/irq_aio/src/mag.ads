with LIS3MDL_I2C;                  use LIS3MDL_I2C;
package Mag is

   procedure Set_Up_MAG;

   procedure Get_Mag_Reading (Got : out Sensor_Data);

   procedure Setup_Mag_Interrupt;

   procedure Get_Mag_Int_Src (Got : out INT_SRC_Reg);

end Mag;
