with HAL.SPI;         use HAL.SPI;
with STM32.SubGhzPhy; use STM32.SubGhzPhy;
with STM32.SubGhzRF;  use STM32.SubGhzRF;
with STM32.GPIO;      use STM32.GPIO;
with Crc8;            use Crc8;
with Utils;           use Utils;
with STM32_SVD.TAMP;  use STM32_SVD.TAMP;
with STM32_SVD.PWR;   use STM32_SVD.PWR;

with Ada.Real_Time;   use Ada.Real_Time;

with STM32_SVD.RCC;           use STM32_SVD.RCC;

package body App is

   task body Rx_Task
   is
      RFStatus             : Subghz_Status;
      RxPayloadLength      : UInt8;
      RxStartBufferPointer : UInt8;
   begin
      loop
         Suspend_Until_True (Rx_Go);
         if Stat.RxDone then
            Get_RxBufferStatus (RFStatus, RxPayloadLength, RxStartBufferPointer);
            declare
               Buffer : SPI_Data_8b (1 .. Integer (RxPayloadLength));
            begin
               Read_Buffer (RxStartBufferPointer, RFStatus, Buffer);
               Set_Sleep ((StartSel => Warm_Startup,
                           SleepCfg => Disabled,
                           others => <>));
            end;
         elsif Stat.HeaderErr or Stat.Misc_Err then
            State := RX_ERROR;
         end if;
      end loop;
   end Rx_Task;

   task body Tx_Task is
   begin
      loop
         Suspend_Until_True (Tx_Go);
         if Stat.TxDone then
            --  ST_WORKAROUND_BEGIN: Reset DBG pin
--            DBG_Line1_Pin.Clear;
            --  DBG_GPIO_RADIO_TX(RST);
            --  /* ST_WORKAROUND_END */
--          TimerStop( &TxTimeoutTimer );
            Set_Standby (RC_13_MHz);
            State := TX;
         else
            raise Program_Error with "TX...?";
         end if;
      end loop;
   end Tx_Task;

   task body Timeout_Task is
   begin
      loop
         Suspend_Until_True (Timeout_Go);
         if State = RX then
            State := RX_TIMEOUT;
         elsif State = TX then
            State := TX_TIMEOUT;
         elsif State = CAD then
            State := CAD_TIMEOUT;
         else
            raise Program_Error with "timeout w/o state";
         end if;
         null;
      end loop;
   end Timeout_Task;

   task body Cad_Task is
   begin
      loop
         Suspend_Until_True (Cad_Go);
         null;
      end loop;
   end Cad_Task;

   procedure App_Start
   is
      Buffer    : SPI_Data_8b (1 .. 64);
      Goal      : Time;

   begin
      --  15.625us
      Set_Rx (Timeout => 128_000); --  > ~2secs
      State := RX;
      loop
         case State is
            when RX_TIMEOUT | RX_ERROR =>
               Set_Rx (Timeout => 128_000); --  > ~2secs
               State := RX;
--            when TX =>
--               Set_Sleep ((StartSel => Warm_Startup,
--                           SleepCfg => Disabled,
--                           others => <>));
--               Set_RfFrequency ((F => 915.0E6, others => <>));
--               State := RX;
--               Set_Rx (Timeout => 128_000); --  > ~2secs
            when LOWPOWER =>
               null;
            when others =>
               null;
         end case;
         null;
      end loop;
   end App_Start;

end App;
