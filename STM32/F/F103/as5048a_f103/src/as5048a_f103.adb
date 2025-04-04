with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
with HAL; use HAL;
with Peripherals;     use Peripherals;
with Interfaces;      use Interfaces;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;
with STM32.SPI;       use STM32.SPI;
with AS5048A;          use AS5048A;
with HAL.SPI;
use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;   use Ada.Real_Time;
with Ada.Text_IO;     use Ada.Text_IO;

procedure As5048a_f103 is

   Sensor : AS5048A_Encoder (Selected_SPI_Port);

   procedure Initialize_GPIO
     (Port     : access SPI_Port;
      SCL      : GPIO_Point;
      MOSI     : GPIO_Point;
      MISO     : GPIO_Point;
      CS       : GPIO_Point
     );

   procedure Initialize_GPIO
     (Port     : access SPI_Port;
      SCL      : GPIO_Point;
      MOSI     : GPIO_Point;
      MISO     : GPIO_Point;
      CS       : GPIO_Point
     )
   is
      GPIO_Conf            : GPIO_Port_Configuration;
      Config               : SPI_Configuration;
   begin
      Enable_Clock (SCL);
      Enable_Clock (MOSI);
      Enable_Clock (MISO);
      Enable_Clock (CS);
      Enable_Clock (Port.all);

      Enable (Port.all);

      STM32.Device.Reset (Port.all);

      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;
      GPIO_Conf.Speed       := Speed_2MHz;
      GPIO_Conf.Mode        := Mode_AF;
      Configure_IO (SCL,  GPIO_Conf);
      Configure_IO (MOSI, GPIO_Conf);
      Configure_IO (MISO, GPIO_Conf);

      Config.Mode := Master;
      --      Config.Baud_Rate_Prescaler := BRP_32;
      Config.Baud_Rate_Prescaler := BRP_64;
      Config.Clock_Polarity := Low;
      Config.Clock_Phase := P1Edge;
      Config.First_Bit := MSB;
      Config.CRC_Poly := 7;
      Config.Slave_Management := Software_Managed;  --  essential!!
      Config.Direction := D2Lines_FullDuplex;
      Config.Data_Size := HAL.SPI.Data_Size_8b;

      Disable (Selected_SPI_Port.all);
      Configure (Selected_SPI_Port.all, Config);
      Enable (Selected_SPI_Port.all);

      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Speed       := Speed_2MHz;
      GPIO_Conf.Resistors   := Pull_Up;
      Configure_IO (CS, Config => GPIO_Conf);

   end Initialize_GPIO;

   Result   : AngleT;
   Status   : Boolean;
   ResultRaw : UInt16;

begin
   Initialize_GPIO (Port => Selected_SPI_Port,
                   SCL   => Selected_SPI_Clock_Pin,
                   MISO  => Selected_SPI_Miso_Pin,
                   MOSI  => Selected_SPI_Mosi_Pin,
                   CS    => CS_Pin);

   Initialize (Sensor, CS_Pin, Status);
   delay until Clock + Milliseconds (1000);
   loop
      Result := Get_Angle (Sensor, Status);
      ResultRaw := UInt16 (Result);
      Put_Line (ResultRaw'Image);
      --      Test (Sensor);
      delay until Clock + Milliseconds (1000);
   end loop;
end As5048a_f103;
