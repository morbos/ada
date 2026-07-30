with HAL;                          use HAL;
with LPS22HB_I2C;                  use LPS22HB_I2C;
package LPS is

   type Pressure_Temp_Data is record
      Pressure    :    UInt24;
      Temp        :    UInt16;
   end record;

   for Pressure_Temp_Data use record
      Pressure at 0 range 0 .. 23;
      Temp     at 0 range 24 .. 39;
   end record;

   procedure Set_Up_LPS;

   procedure Get_Pressure_Temp_Reading (Got : out Pressure_Temp_Data);

end LPS;
