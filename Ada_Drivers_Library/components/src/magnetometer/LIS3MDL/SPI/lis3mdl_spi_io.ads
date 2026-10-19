with HAL;     use HAL;
with HAL.SPI; use HAL.SPI;

package LIS3MDL_SPI_IO is

   type CS_Procedure is not null access procedure;

   type IO_Port is tagged record
      Port        : Any_SPI_Port;
      CS_Select   : CS_Procedure;
      CS_Deselect : CS_Procedure;
   end record;

   type Any_IO_Port is access all IO_Port'Class;

   procedure Read
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : out UInt8);

   procedure Write
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : UInt8);

   procedure Read_Buffer
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : out UInt8_Array);

end LIS3MDL_SPI_IO;
