package body LIS3MDL_SPI_IO is

   SPI_READ_BIT     : constant UInt8 := 16#80#;
   SPI_AUTO_INC_BIT : constant UInt8 := 16#40#;
   SPI_ADDR_MASK    : constant UInt8 := 16#3F#;

   ----------
   -- Read --
   ----------

   procedure Read
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : out UInt8)
   is
      Header : constant SPI_Data_8b (1 .. 1) :=
        (1 => SPI_READ_BIT or (Register and SPI_ADDR_MASK));
      Rx_Buf : SPI_Data_8b (1 .. 1);
      Status : SPI_Status;
   begin
      This.CS_Select.all;

      This.Port.Transmit (Header, Status);
      if Status = Ok then
         This.Port.Receive (Rx_Buf, Status);
      end if;

      This.CS_Deselect.all;

      if Status /= Ok then
         raise Program_Error with "SPI read error: " & Status'Img;
      end if;

      Value := Rx_Buf (1);
   end Read;

   -----------
   -- Write --
   -----------

   procedure Write
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : UInt8)
   is
      Payload : constant SPI_Data_8b (1 .. 2) :=
        (1 => Register and SPI_ADDR_MASK,
         2 => Value);
      Status  : SPI_Status;
   begin
      This.CS_Select.all;

      This.Port.Transmit (Payload, Status);

      This.CS_Deselect.all;

      if Status /= Ok then
         raise Program_Error with "SPI write error: " & Status'Img;
      end if;
   end Write;

   -----------------
   -- Read_Buffer --
   -----------------

   procedure Read_Buffer
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : out UInt8_Array)
   is
      Header : constant SPI_Data_8b (1 .. 1) :=
        (1 => SPI_READ_BIT or SPI_AUTO_INC_BIT or (Register and SPI_ADDR_MASK));
      Status : SPI_Status;
      Rx_Buf : SPI_Data_8b (Value'First .. Value'Last);
      for Rx_Buf'Address use Value'Address;
   begin
      This.CS_Select.all;

      This.Port.Transmit (Header, Status);
      if Status = Ok then
         This.Port.Receive (Rx_Buf, Status);
      end if;

      This.CS_Deselect.all;

      if Status /= Ok then
         raise Program_Error with "SPI read buff error: " & Status'Img;
      end if;
   end Read_Buffer;

end LIS3MDL_SPI_IO;
