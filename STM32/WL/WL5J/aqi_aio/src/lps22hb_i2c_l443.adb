--  with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
with HAL;             use HAL;
with HAL.I2C;
with LPS22HB_I2C;     use LPS22HB_I2C;
with LPS22HB_I2C_IO;
with Peripherals;     use Peripherals;
with Utils;           use Utils;
with Interfaces;      use Interfaces;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;
with STM32.I2C;     use STM32.I2C;
use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;   use Ada.Real_Time;
with Ada.Text_IO;     use Ada.Text_IO;

procedure Lps22hb_I2c_L443
is

   PS : LPS22HB_Sensor (Sensor_Port'Access);

   ------------------------------
   -- Initialize_Sensor --
   ------------------------------
   procedure Initialize_Sensor;

   procedure Initialize_Sensor is

      procedure Init_I2C;
      procedure Init_I2C is
      begin
         STM32.I2C.Configure
           (Sensor_I2C_Port.all,
            (Clock_Speed              => 100_000,
             Addressing_Mode          => Addressing_Mode_7bit,
             General_Call_Enabled     => False,
             Clock_Stretching_Enabled => True,
             Own_Address              => 16#00#,
             others                   => <>));
      end Init_I2C;

      procedure Init_GPIO;
      ---------------
      -- Init_GPIO --
      ---------------

      procedure Init_GPIO is
         Config : GPIO_Port_Configuration;
         I2C_Points : constant GPIO_Points := Sensor_I2C_Clock_Pin & Sensor_I2C_Data_Pin;
      begin
         Enable_Clock (I2C_Points);
         Enable_Clock (Sensor_I2C_Port.all);

         STM32.Device.Reset (Sensor_I2C_Port.all);

         Config.Speed       := Speed_50MHz;
         Config.Mode        := Mode_AF;
         Config.Output_Type := Open_Drain;
         Config.Resistors   := Pull_Up;

         Configure_IO (I2C_Points, Config);
         Configure_Alternate_Function (I2C_Points, Sensor_I2C_Port_AF);
      end Init_GPIO;

   begin
      Init_GPIO;
      Init_I2C;
   end Initialize_Sensor;

   Id : UInt8;
   Pressure : Float;
   Temp     : Float;
   Maxp     : Float := -9999.0;
   Minp     : Float :=  9999.0;
   Maxt     : Float := -9999.0;
   Mint     : Float :=  9999.0;

begin
   Initialize_Board;

   Initialize_Sensor;

   PS.Configure;

   loop
      null;
   end loop;
--   Id := PS.Device_Id;
--   loop
--      PS.Get_Data (Pressure, Temp);
----      Put_Line (Float'Image (Pressure)
----                  & " " & Float'Image (Temp)
----                  & " " & Float'Image (Maxp)
----                  & " " & Float'Image (Minp)
----                  & " " & Float'Image (Maxt)
----                  & " " & Float'Image (Mint)
----               );
--      if Pressure > Maxp then
--         Maxp := Pressure;
--      end if;
--      if Pressure < Minp then
--         Minp := Pressure;
--      end if;
--      if Temp > Maxt then
--         Maxt := Temp;
--      end if;
--      if Temp < Mint then
--         Mint := Temp;
--      end if;
--   end loop;
end Lps22hb_I2c_L443;
