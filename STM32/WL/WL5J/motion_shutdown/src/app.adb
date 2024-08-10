
with HAL.SPI;         use HAL.SPI;
with STM32.SubGhzPhy; use STM32.SubGhzPhy;
with STM32.SubGhzRF;  use STM32.SubGhzRF;
with STM32.GPIO;      use STM32.GPIO;
with Crc8;            use Crc8;
with Utils;           use Utils;
with Peripherals;     use Peripherals;
with STM32_SVD.TAMP;  use STM32_SVD.TAMP;

with Ada.Real_Time;   use Ada.Real_Time;

with STM32_SVD.RCC;           use STM32_SVD.RCC;

package body App is

   procedure App_Start
   is
      Buffer    : SPI_Data_8b (1 .. 4);
      OurId     : UInt8 := 2;
      Crc       : UInt8 := 16#FF#;
   begin
      Gen_Crc8_Table;
      Buffer (1) := 16#00#; -- To the server
      Buffer (2) := OurId;
      Buffer (3) := 16#00#; -- motion detected
      Update_Crc8 (Crc, Buffer (1 .. 3));
      Buffer (4) := Crc;
      Set_PktLen (UInt8 (Buffer'Last));
      Write_Buffer (Offset => 0, Buffer => Buffer);
--      Set_CadParams (NSyms => Two, Min => 10, Peak => 22, ExitMode => 1, Timeout => 1);
--      Set_Cad;
      Set_Tx (0);
      --  Wait for TxDone
      Suspend_Until_True (Tx_Go);
      Set_Sleep ((StartSel => Cold_Startup,
                  SleepCfg => Disabled,
                  others => <>));
   end App_Start;

end App;
