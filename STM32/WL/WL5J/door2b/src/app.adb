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
   end Init_Radio;

   procedure App_Start
   is
      Buffer    : SPI_Data_8b (1 .. 6);
      Bytes     : Four_UInt8;
   begin
      To_UInt8_From_Integer_32 (Result => Bytes, Value => Integer_32 (TAMP_Periph.BKP4R));
      for I in 1 .. 2 loop
         Buffer (I)  := Bytes (I);
      end loop;

      To_UInt8_From_Integer_32 (Result => Bytes, Value => Integer_32 (TAMP_Periph.BKP5R));
      for I in 1 .. 2 loop
         Buffer (I + 2)  := Bytes (I);
      end loop;

      To_UInt8_From_Integer_32 (Result => Bytes, Value => Integer_32 (TAMP_Periph.BKP2R)); --  Axis
      Buffer (5)  := Bytes (1);

      To_UInt8_From_Integer_32 (Result => Bytes, Value => Integer_32 (TAMP_Periph.BKP3R)); --  stance
      Buffer (6)  := Bytes (1);

      Set_PktLen (UInt8 (Buffer'Last));
      Write_Buffer (Offset => 0, Buffer => Buffer);
      Set_Tx (0);
      --  Wait for TxDone
      Suspend_Until_True (Tx_Go);
   end App_Start;

   procedure App_Start2 (Reading : Integer_16; Stance : Door_Stance)
   is
      Buffer    : SPI_Data_8b (1 .. 3);
      Bytes     : Four_UInt8;
   begin
      To_UInt8_From_Integer_32 (Result => Bytes, Value => Integer_32 (Reading));
      Buffer (1) := Bytes (1);
      Buffer (2) := Bytes (2);
      Buffer (3) := Stance'Enum_Rep;
      Set_PktLen (UInt8 (Buffer'Last));
      Write_Buffer (Offset => 0, Buffer => Buffer);
      Set_Tx (0);
      --  Wait for TxDone
      Suspend_Until_True (Tx_Go);
   end App_Start2;

end App;
