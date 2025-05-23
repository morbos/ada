
with HAL; use HAL;
with HAL.SPI;
with Peripherals;     use Peripherals;
with Interfaces;      use Interfaces;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;
with STM32.SPI;       use STM32.SPI;
with LPS22HB_SPI;     use LPS22HB_SPI;
with LSM303AGR_SPI;   use LSM303AGR_SPI;
with LSM6DSM_SPI;     use LSM6DSM_SPI;
with BlueNRG_SPI;     use BlueNRG_SPI;
with Iface;           use Iface;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure Merge_l476
is
   LPS22         : LPS22HB_Sensor  (LPS22HB_Port'Access);
   Acc           : LSM303AGR_Acc   (LSM303AGR_Acc_Port'Access);
   Mag           : LSM303AGR_Mag   (LSM303AGR_Mag_Port'Access);
   AccGyro       : LSM6DSM_AccGyro (LSM6DSM_AccGyro_Port'Access);
   BLE           : BlueNRG_Radio   (BlueNRG_Port'Access);
   SensorTileCSs : GPIO_Points :=  LPS22HB_CS_Pin     &
                                   LSM303AGR_CS_A_Pin &
                                   LSM303AGR_CS_M_Pin &
                                   LSM6DSM_CS_AG_Pin;


   procedure Initialize_CS_Hardware (CS : in out GPIO_Point; Resistor : Internal_Pin_Resistors);
   procedure Initialize_CS_Hardware (CSs : in out GPIO_Points; Resistor : Internal_Pin_Resistors);

   procedure Initialize_Sensor_Hardware
     (Port     : access SPI_Port;
      SPI_AF   : GPIO_Alternate_Function;
      SCL      : GPIO_Point;
      MOSI     : GPIO_Point
     );

   procedure Initialize_BlueNRG_Hardware
     (Port     : access SPI_Port;
      SPI_AF   : GPIO_Alternate_Function;
      SCL      : GPIO_Point;
      MOSI     : GPIO_Point;
      MISO     : GPIO_Point;
      RST      : in out GPIO_Point
     );

   --------------------------------
   -- Initialize_IMU_IO_Hardware --
   --------------------------------

   procedure Initialize_Sensor_Hardware
     (Port     : access SPI_Port;
      SPI_AF   : GPIO_Alternate_Function;
      SCL      : GPIO_Point;
      MOSI     : GPIO_Point
     )
   is
      GPIO_Conf    : GPIO_Port_Configuration;
      SPI_Points   : constant GPIO_Points := SCL & MOSI;
      Config       : SPI_Configuration;
   begin
      Enable_Clock (SPI_Points);
      Enable_Clock (Port.all);
      Enable (Port.all);

      STM32.Device.Reset (Port.all);

      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Pull_Up;
      GPIO_Conf.Speed       := Speed_100MHz;
      GPIO_Conf.Mode        := Mode_AF;
      Configure_IO (SPI_Points,  GPIO_Conf);

      Configure_Alternate_Function (SPI_Points, SPI_AF);

      Config.Mode := Master;
      Config.Baud_Rate_Prescaler := BRP_16;
      Config.Clock_Polarity := High;
      Config.Clock_Phase := P2Edge;
      Config.First_Bit := MSB;
      Config.CRC_Poly := 7;
      Config.Slave_Management := Software_Managed;  --  essential!!
      Config.Direction := D1Line_Tx;
      Config.Data_Size := HAL.SPI.Data_Size_8b;
      Config.Fifo_Level := True;

      Disable (Port.all);
      Configure (Port.all, Config);
      Enable (Port.all);

   end Initialize_Sensor_Hardware;

   procedure Initialize_BlueNRG_Hardware
     (Port     : access SPI_Port;
      SPI_AF   : GPIO_Alternate_Function;
      SCL      : GPIO_Point;
      MOSI     : GPIO_Point;
      MISO     : GPIO_Point;
      RST      : in out GPIO_Point
     )
   is
      GPIO_Conf    : GPIO_Port_Configuration;
      SPI_Points   : constant GPIO_Points := MISO & MOSI;
      Config       : SPI_Configuration;
   begin
      Enable_Clock (SPI_Points & SCL);
      Enable_Clock (RST);
      Enable_Clock (Port.all);
      Enable (Port.all);

      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;
      GPIO_Conf.Speed       := Speed_25MHz;
      Configure_IO (RST, GPIO_Conf);
      RST.Set;

      STM32.Device.Reset (Port.all);

      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;
      GPIO_Conf.Speed       := Speed_100MHz;
      GPIO_Conf.Mode        := Mode_AF;
      Configure_IO (SPI_Points,  GPIO_Conf);

      GPIO_Conf.Resistors := Pull_Down;
      Configure_IO (SCL,  GPIO_Conf);

      Configure_Alternate_Function (SPI_Points & SCL, SPI_AF);

      Config.Mode := Master;
      --  Config.Baud_Rate_Prescaler := BRP_8; 10Mhz
      Config.Baud_Rate_Prescaler := BRP_16;
      Config.Clock_Polarity := Low;
      Config.Clock_Phase := P1Edge;
      Config.First_Bit := MSB;
      Config.CRC_Poly := 7;
      Config.Slave_Management := Software_Managed;  --  essential!!
      Config.Direction := D2Lines_FullDuplex;
      Config.Data_Size := HAL.SPI.Data_Size_8b;
      Config.Fifo_Level := True;

      Disable (Port.all);
      Configure (Port.all, Config);
      Enable (Port.all);

   end Initialize_BlueNRG_Hardware;

   procedure Initialize_CS_Hardware (CS : in out GPIO_Point; Resistor : Internal_Pin_Resistors)
   is
      GPIO_Conf    : GPIO_Port_Configuration;
   begin
      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Resistor;
      GPIO_Conf.Speed       := Speed_100MHz;
      Enable_Clock (CS);
      CS.Configure_IO (GPIO_Conf);
      CS.Set;
   end Initialize_CS_Hardware;

   procedure Initialize_CS_Hardware (CSs : in out GPIO_Points; Resistor : Internal_Pin_Resistors)
   is
   begin
      for CS of CSs loop
         Initialize_CS_Hardware (CS, Resistor);
      end loop;
   end Initialize_CS_Hardware;

   procedure Glue with
     Convention => C,
     Import => True,
     External_Name => "glue";

   Id   : UInt8;
   Pressure : Float;
   Temp     : Float;
begin
   Initialize_Sensor_Hardware
     (Port   => Sensors_SPI_Port,
      SPI_AF => Sensors_SPI_Port_AF,
      SCL    => Sensors_SPI_Clock_Pin,
      MOSI   => Sensors_SPI_Mosi_Pin
     );

   Initialize_BlueNRG_Hardware
     (Port   => BlueNRG_SPI_Port,
      SPI_AF => BlueNRG_SPI_Port_AF,
      SCL    => BlueNRG_SPI_Clock_Pin,
      MOSI   => BlueNRG_SPI_Mosi_Pin,
      MISO   => BlueNRG_SPI_Miso_Pin,
      RST    => BlueNRG_RST_Pin
     );

   Initialize_CS_Hardware (BlueNRG_CS_Pin, Resistor => Pull_Up);
   Initialize_CS_Hardware (CSs => SensorTileCSs, Resistor => Floating);

   LPS22.Configure;
   Acc.Configure;
   Mag.Configure;
   AccGyro.Configure;
   Id := LPS22.Device_Id;
   Id := Acc.Device_Id;
   Id := Mag.Device_Id;
   Id := AccGyro.Device_Id;

   Iface_Init; --  Sets iface clocks for the HAL_xxx on STM side.

   Glue;

   loop
      LPS22.Get_Data (Pressure, Temp);
   end loop;
end Merge_l476;
