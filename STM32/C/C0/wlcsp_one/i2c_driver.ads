with HAL; use HAL;

package I2C_Driver is

   pragma Suppress (Elaboration_Check);

   type Status is (Ok, Busy, Nack_Received, Timeout);

   --  Configures the I2C1 timing registers and enables the peripheral
   procedure Initialize;

   --  Writes Register byte followed by Data byte with AUTOEND
   function Write_Register
     (Device_Addr : UInt7;
      Register    : UInt8;
      Data        : UInt8) return Status;

   --  Sends Register byte, issues Repeated START, and reads single byte
   function Read_Register
     (Device_Addr : UInt7;
      Register    : UInt8;
      Data        : out UInt8) return Status;

end I2C_Driver;
