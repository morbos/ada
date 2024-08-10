with HAL;           use HAL;
with LIS3MDL_I2C;   use LIS3MDL_I2C;
with Peripherals;   use Peripherals;
with Interfaces;    use Interfaces;
with STM32.Device;  use STM32.Device;
with STM32.Board;   use STM32.Board;
with STM32.GPIO;    use STM32.GPIO;
with STM32.I2C;     use STM32.I2C;
use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO;          use Ada.Text_IO;
private with Cortex_M_SVD.Debug;
with Semihosting;

with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);

procedure Lis3mdl_U073 is

   Mag : LIS3MDL_Sensor (Sensor_Port'Access);

   procedure Set_Up_MAG;

   procedure Initialize_MAG_IO_Hardware
     (Port   : access I2C_Port;
      SCL    : GPIO_Point;
      SDA    : GPIO_Point);

   --------------------------------
   -- Initialize_MAG_IO_Hardware --
   --------------------------------

   procedure Initialize_MAG_IO_Hardware
     (Port   : access I2C_Port;
      SCL    : GPIO_Point;
      SDA    : GPIO_Point)
   is
      GPIO_Conf            : GPIO_Port_Configuration;
      LIS3MDL_Clock_Speed : constant := 400_000;
      I2C_Points : constant GPIO_Points := SCL & SDA;
   begin
      Enable_Clock (I2C_Points);
      Enable_Clock (Port.all);

      STM32.Device.Reset (Port.all);

      GPIO_Conf.Speed       := Speed_50MHz;
      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;

      GPIO_Conf.Speed       := Speed_50MHz;
      GPIO_Conf.Mode        := Mode_AF;
      GPIO_Conf.Output_Type := Open_Drain;
      GPIO_Conf.Resistors   := Pull_Up;
      Configure_IO (SCL, GPIO_Conf);
      Configure_IO (SDA, GPIO_Conf);

      Configure_Alternate_Function (I2C_Points, LIS3MDL_I2C_Port_AF);

      STM32.I2C.Configure
        (Port.all,
         (Clock_Speed              => LIS3MDL_Clock_Speed,
          Addressing_Mode          => Addressing_Mode_7bit,
          General_Call_Enabled     => False,
          Clock_Stretching_Enabled => True,
          Own_Address              => 16#00#,
          others                   => <>));

--      Set_State (Port.all, Enabled => True);
   end Initialize_MAG_IO_Hardware;

   ----------------
   -- Set_Up_MAG --
   ----------------

   procedure Set_Up_MAG is
   begin
      Initialize_MAG_IO_Hardware
        (Port   => LIS3MDL_I2C_Port,
         SCL    => LIS3MDL_I2C_Clock_Pin,
         SDA    => LIS3MDL_I2C_Data_Pin);

      Mag.Configure;

   end Set_Up_MAG;

   procedure Init_GPIO;

   ---------------
   -- Init_GPIO --
   ---------------

   procedure Init_GPIO is
      Config : GPIO_Port_Configuration;

   begin

      Enable_Clock (Sensor_VDD_Pin);
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Floating;
      Config.Speed       := Speed_2MHz;
      Config.Mode        := Mode_Out;
      Configure_IO (Sensor_VDD_Pin, Config);

   end Init_GPIO;

   procedure My_Delay;

   procedure My_Delay is
   begin
      delay until Clock + Milliseconds (100);
   end My_Delay;

   Status  : Status_Reg;
   Got     : Sensor_Data;
   AvgX    : Integer := 0;
   AvgY    : Integer := 0;
   AvgZ    : Integer := 0;
   Thresh  : Integer_16;
begin
   Init_GPIO;
   Set (Sensor_VDD_Pin);

   Set_Up_MAG;
   loop
      Status := Mag.Get_Status;
      exit when Status.XYZDataAvailable;
   end loop;
   Mag.Read_MAG (Got);

   for I in 1 .. 10 loop
      loop
         Status := Mag.Get_Status;
         exit when Status.XYZDataAvailable;
      end loop;
      Mag.Read_MAG (Got);
      AvgX := AvgX + Integer (Got (X_Axis));
      AvgY := AvgY + Integer (Got (Y_Axis));
      AvgZ := AvgZ + Integer (Got (Z_Axis));
      My_Delay;
   end loop;
   AvgX := AvgX / 10;
   AvgY := AvgY / 10;
   AvgZ := AvgZ / 10;
   --  Setup thresholds well outside of AvgX for an interrupt.
   if AvgX < 0 then
      Thresh := Integer_16 (AvgX - 500);
      Mag.Set_Int_Src ((NTH_X => True, others => <>));
   else
      Thresh := Integer_16 (AvgX + 500);
      Mag.Set_Int_Src ((PTH_X => True, others => <>));
   end if;
   Mag.Set_Thresh (Thresh);
   Mag.Set_Int_Enable ((XIEN => True, IEA => True, IEN => True, others => <>));
   loop
      --  Check Int
      if Mag.Int_Set then
         null;
      end if;
      Status := Mag.Get_Status;
      if Status.XYZDataAvailable then
         Mag.Read_MAG (Got);
      end if;
   end loop;

end Lis3mdl_U073;
