with HAL.SPI;         use HAL.SPI;
with STM32.SubGhzPhy; use STM32.SubGhzPhy;
with STM32.SubGhzRF;  use STM32.SubGhzRF;
with STM32.GPIO;      use STM32.GPIO;
with Crc8;            use Crc8;
with Utils;           use Utils;
with Hw;              use Hw;

with STM32_SVD.TAMP;  use STM32_SVD.TAMP;
with STM32_SVD.PWR;   use STM32_SVD.PWR;

with Ada.Real_Time;   use Ada.Real_Time;

with STM32_SVD.RCC;           use STM32_SVD.RCC;

package body App is

   procedure Init_Radio is
   begin
      --  All LoRa solns with the STM32WL use a few pins to control rx/tx paths
      --  We don't want to hard code that so the fnptr is passed in for the RAK
      --  handler
      Set_RADIO_Switch_Ptr (RAK_RF_Switch'Access);  --  In hw.adb, called by subghzrf
      SubGhzPhy_Init;
      SubGhzRF_Init;
      Set_TxParams ((Power => 22,
                     RampTime => Microsecs_40,
                     others => <>));
   end Init_Radio;

   procedure App_Start
   is
      Buffer    : SPI_Data_8b (1 .. 4);
      OurId     : UInt8 := 6;
      Crc       : UInt8 := 16#FF#;
   begin
      Gen_Crc8_Table;
      Init_Radio;
      Buffer (1) := 16#00#; -- To the server
      Buffer (2) := OurId;
      Buffer (3) := 6; --  Mailbox door
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
      My_Delay (2); --  Semtech has this after sleep
   end App_Start;

   procedure App_Start2 (Orig : UInt32; Sensor : Integer_16)
   is
      Buffer    : SPI_Data_8b (1 .. 4);
      Bytes     : Four_UInt8;
   begin
      To_UInt8_From_Integer_32 (Result => Bytes, Value => Integer_32 (Sensor));
      Buffer (1) := Bytes (1);
      Buffer (2) := Bytes (2);
      To_UInt8_From_UInt32 (Result => Bytes, Value => Orig);
      Buffer (3) := Bytes (1);
      Buffer (4) := Bytes (2);

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
      My_Delay (2); --  Semtech has this after sleep
   end App_Start2;

end App;
