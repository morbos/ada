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
      My_Delay (2);
      SubGhzRF_Init;
      My_Delay (2);
   end Init_Radio;

   procedure App_Start (PM_2_5 : UInt16; P_T : Pressure_Temp_Data; Adc : UInt32)
   is
      Buffer    : SPI_Data_8b (1 .. 13);
      OurId     : UInt8 := 6;
      Crc       : UInt8 := 16#FF#;
      Pm        : UInt8_Array (1 .. 2);
      P_T_Buf   : UInt8_Array (1 .. 5);
      L_P_T     : Pressure_Temp_Data := P_T;
      for L_P_T'Address use P_T_Buf'Address;
      Adc_Buf   : Four_UInt8;
   begin
      Gen_Crc8_Table;
      Init_Radio;
      Buffer (1) := 16#00#; -- To the server
      Buffer (2) := 8;
      Buffer (3) := 8;
      To_UInt8_From_UInt16 (Msb => Pm (2), Lsb => Pm (1), Value => PM_2_5);
      To_UInt8_From_UInt32 (Result => Adc_Buf, Value => Adc);
      Buffer (4) := Pm (2);
      Buffer (5) := Pm (1);
      Buffer (6) := P_T_Buf (1);
      Buffer (7) := P_T_Buf (2);
      Buffer (8) := P_T_Buf (3);
      Buffer (9) := P_T_Buf (4);
      Buffer (10) := P_T_Buf (5);
      Buffer (11) := Adc_Buf (2);
      Buffer (12) := Adc_Buf (1);
      Update_Crc8 (Crc, Buffer (1 .. 12));
      Buffer (13) := Crc;
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
