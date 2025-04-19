with HAL.SPI;         use HAL.SPI;
with STM32.SubGhzPhy; use STM32.SubGhzPhy;
with STM32.SubGhzRF;  use STM32.SubGhzRF;
with STM32.GPIO;      use STM32.GPIO;
with Peripherals;     use Peripherals;
with Ada.Real_Time;   use Ada.Real_Time;

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
               Buffer        : SPI_Data_8b (1 .. Integer (RxPayloadLength));
               RFStatus      : Subghz_Status;
               RssiPkt       : UInt8;
               SnrPkt        : UInt8;
               SignalRssiPkt : UInt8;
            begin
               Read_Buffer (RxStartBufferPointer, RFStatus, Buffer);
               LoRa_Get_PacketStatus (RFStatus, RssiPkt, SnrPkt, SignalRssiPkt);
               Set_Sleep ((StartSel => Warm_Startup,
                           SleepCfg => Disabled,
                           others => <>));
            end;
            State := RX;
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
         elsif State = LOWPOWER then
            State := RX;
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
      State := RX;
      loop
         case State is
            when RX_TIMEOUT | RX_ERROR =>
--               Set_Rx (Timeout => 128_000); --  > ~2secs
               State := RX;
            when RX =>
               Cfg_DioIrq ((Irq_Mask => 16#6202#,
                            Irq_Mask1 => 16#6202#,
                            Irq_Mask2 => 0,
                            Irq_Mask3 => 0,
                            others => <>));
               Set_Sleep ((StartSel => Warm_Startup,
                           SleepCfg => Disabled,
                           others => <>));
               Set_RfFrequency ((F => 915.0E6, others => <>));
               State := LOWPOWER;
--               Set_Rx (Timeout => 128_000); --  > ~2secs
--               Set_Rx (Timeout => 16#ff_ff_ff#); --  > 30secs
               Set_Rx (Timeout => 0); --  Forever
            when LOWPOWER =>
               null;
            when others =>
               null;
         end case;
         null;
      end loop;
   end App_Start;

end App;
