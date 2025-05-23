------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2016, AdaCore                           --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--     3. Neither the name of the copyright holder nor the names of its     --
--        contributors may be used to endorse or promote products derived   --
--        from this software without specific prior written permission.     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
------------------------------------------------------------------------------

with Utils;         use Utils;
with Exti;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

--  with Ada.Unchecked_Conversion;

package body SX1276 is
   ---------------
   -- Device_Id --
   ---------------

   function Device_Id (This : in out SX1276_Radio) return UInt8
   is
      Result : UInt8;
   begin
      Read (This.Port, SX1276_VERSION, Value => Result);
      return Result;
   end Device_Id;

   procedure SetFrequency (This : in out SX1276_Radio; F : Float)
   is
      Buffer : UInt8_Array (1 .. 4);
      LF     : aliased Frequency := Frequency (F * 1.0E6);
      for LF'Address use Buffer'Address;
   begin
      Write (This.Port, SX1276_FRF_LSB, Buffer (1));
      Write (This.Port, SX1276_FRF_MID, Buffer (2));
      Write (This.Port, SX1276_FRF_MSB, Buffer (3));
   end SetFrequency;

   function GetFrequency (This : in out SX1276_Radio) return Frequency
   is
      Buffer : UInt8_Array (1 .. 4);
      F      : Frequency;
      for F'Address use Buffer'Address;
   begin
      Read (This.Port, SX1276_FRF_LSB, Buffer (1));
      Read (This.Port, SX1276_FRF_MID, Buffer (2));
      Read (This.Port, SX1276_FRF_MSB, Buffer (3));
      return F;
   end GetFrequency;

   procedure SetTxPower (This : in out SX1276_Radio; Db : Power_Value; RFO : Boolean)
   is
      Local_Db : Power_Value := Db;
      PA : PA_Config_Register;
      As_Byte : UInt8;
      for As_Byte'Address use PA'Address;
   begin
      if RFO then
         null;
      else --  PA_Boost
         if Local_Db > 20 then
            Write (This.Port, SX1276_PA_DAC, SX1276_PA_DAC_ENABLE);
            Local_Db := Local_Db - 3;
         else
            Write (This.Port, SX1276_PA_DAC, SX1276_PA_DAC_DISABLE);
         end if;
         --  The RadioHead lib states 20db is a better choice than 17db in the datasheet.
         PA := (PA_Select => True,
                Output_Power => UInt4 (Local_Db - 5),
                others => <>);
         Write (This.Port, SX1276_PA_CONFIG, As_Byte);
      end if;
   end SetTxPower;

   procedure InitModem  (This : in out SX1276_Radio; Selection : ModemConfigRange)
   is
      Setup : aliased ModemConfigT := ModemConfig (Selection);
      Buf   : UInt8_Array (1 .. 3);
      for Buf'Address use Setup'Address;
   begin
      Write (This.Port, SX1276_MODEM_CONFIG1, Buf (1));
      Write (This.Port, SX1276_MODEM_CONFIG2, Buf (2));
      Write (This.Port, SX1276_MODEM_CONFIG3, Buf (3));
   end InitModem;

   procedure SetPreambleLength (This : in out SX1276_Radio; Length : UInt16)
   is
      MSB : UInt8 := UInt8 (Shift_Right (Length, 8) and 16#ff#);
      LSB : UInt8 := UInt8 (Length and 16#ff#);
   begin
      Write (This.Port, SX1276_PREAMBLE_MSB, MSB);
      Write (This.Port, SX1276_PREAMBLE_LSB, LSB);
   end SetPreambleLength;

   procedure SetIdleMode (This : in out SX1276_Radio)
   is
      As_Byte : UInt8;
      Reg     : OpMode_Register;
      for As_Byte'Address use Reg'Address;
   begin
      Reg.Mode := STDBY;
      Write (This.Port, SX1276_OP_MODE, As_Byte);
      CurrentMode := STDBY;
   end SetIdleMode;

   procedure SetLoraMode (This : in out SX1276_Radio)
   is
      As_Byte : UInt8;
      Reg     : OpMode_Register;
      for As_Byte'Address use Reg'Address;
   begin
      Reg := (Mode => SLEEP, LongRangeMode => LoRa, others => <>);
      Write (This.Port, SX1276_OP_MODE, As_Byte);
      CurrentMode := SLEEP;
   end SetLoraMode;

   procedure SetTxMode (This : in out SX1276_Radio)
   is
      As_Byte : UInt8;
      Reg     : OpMode_Register;
      for As_Byte'Address use Reg'Address;
   begin
      Reg := (Mode => TX, others => <>);
      Write (This.Port, SX1276_OP_MODE, As_Byte);
      Write (This.Port, SX1276_DIO_MAPPING1, 16#40#); --  Interrupt on TxDone
      CurrentMode := TX;
   end SetTxMode;

   procedure SetRxMode (This : in out SX1276_Radio)
   is
      As_Byte : UInt8;
      Reg     : OpMode_Register;
      for As_Byte'Address use Reg'Address;
   begin
      --      Reg := (Mode => RXSINGLE, others => <>);
      Reg := (Mode => RXCONT, others => <>);
      Write (This.Port, SX1276_OP_MODE, As_Byte);
      Write (This.Port, SX1276_DIO_MAPPING1, 16#00#); --  Interrupt on RxDone
--    CurrentMode := RXSINGLE;
      CurrentMode := RXCONT;
   end SetRxMode;

   procedure SetCadMode (This : in out SX1276_Radio)
   is
      As_Byte : UInt8;
      Reg     : OpMode_Register;
      for As_Byte'Address use Reg'Address;
   begin
      Reg := (Mode => CAD, others => <>);
      Write (This.Port, SX1276_OP_MODE, As_Byte);
      Write (This.Port, SX1276_DIO_MAPPING1, 16#80#); --  Interrupt on CadDone
      CurrentMode := CAD;
   end SetCadMode;

   procedure SetupFifo (This : in out SX1276_Radio)
   is
   begin
      Write (This.Port, SX1276_FIFO_TX_BASE_ADDR, 0);
      Write (This.Port, SX1276_FIFO_RX_BASE_ADDR, 0);
   end SetupFifo;

   procedure Init (This : in out SX1276_Radio)
   is
      Result : UInt8;
   begin
      Result := This.Device_Id;
      if Result /= I_Am_SX1276 then
         raise Program_Error with "Wrong answer for version#";
      end if;
      This.SetLoraMode;
      This.SetupFifo;
      This.SetIdleMode;
      This.InitModem (Selection => Bw125Cr45Sf128);
      This.SetPreambleLength (Length => 8);
      This.SetFrequency (F => 915.0);
      This.SetTxPower (Db => 13, RFO => False);
      Write (This.Port, SX1276_DIO_MAPPING1, 16#00#); --  Interrupt on RxDone
   end Init;

   function IsCad (This : in out SX1276_Radio) return Boolean
   is
      Result : Boolean;
   begin
      Exti.Cad_Done_Flag := False;
      This.SetCadMode;

      MS_Delay (2); --  INT will set the bit vvv

      if Exti.Cad_Done_Flag then
         Result := True;
      else
         Result := False;
      end if;

      This.SetIdleMode;

      return Result;
   end IsCad;
   function Send (This : in out SX1276_Radio; Buffer : SPI_Data_8b; Len : UInt8) return Boolean
   is
      Result : Boolean := False;
   begin
      loop
         exit when This.IsCad;
      end loop;

      --  Position at the beginning of the FIFO
      Write (This.Port, SX1276_FIFO_ADDR_PTR, 0);
      --  The headers
      Write (This.Port, SX1276_FIFO, 16#ff#); --  _txHeaderTo);
      Write (This.Port, SX1276_FIFO, 16#ff#); --  _txHeaderFrom);
      Write (This.Port, SX1276_FIFO, 16#ff#); --  _txHeaderId);
      Write (This.Port, SX1276_FIFO, 16#00#); --  _txHeaderFlags);
      Write_Buffer (This.Port, SX1276_FIFO, Buffer);
      Write (This.Port, SX1276_PAYLOAD_LENGTH, Len + 4);

      Exti.Tx_Done_Flag := False;

      This.SetTxMode;

      MS_Delay (50);

      if Exti.Tx_Done_Flag then
         Result := True;
      else
         Result := False;
      end if;

      This.SetIdleMode;

      return Result;

   end Send;

   function Recv (This   : in out SX1276_Radio;
                  Buffer : out SPI_Data_8b;
                  Len    : out UInt8) return Boolean
   is
      Result   : Boolean := False;
      Timeout  : Natural := 1000;
      Start    : Time;
   begin
      Start := Clock;

      Exti.Rx_Done_Flag := False;
      Exti.Rx_Error_Flag := False;

      This.SetRxMode;

      MS_Delay (100);

      if Exti.Rx_Done_Flag then
         Read (This.Port, SX1276_RX_NB_BYTES, Len);
         Write (This.Port, SX1276_FIFO_ADDR_PTR, 0);
         Read_Buffer (This.Port, SX1276_FIFO, Buffer);
         Result := True;
      end if;

      This.SetIdleMode;

      return Result;

   end Recv;

   procedure ReadFlags (This : in out SX1276_Radio; Flags : out IrqFlags_Register)
   is
      Data         : UInt8;
      Local_Flags  : IrqFlags_Register;
      for Data'Address use Local_Flags'Address;
   begin
      Read (This.Port, SX1276_IRQ_FLAGS, Data);
      Flags := Local_Flags;
   end ReadFlags;

   procedure ClearFlags (This : in out SX1276_Radio; Flags : IrqFlags_Register)
   is
      Data         : UInt8;
      Local_Flags  : IrqFlags_Register := Flags;
      for Data'Address use Local_Flags'Address;
   begin
      Write (This.Port, SX1276_IRQ_FLAGS, Data);
   end ClearFlags;

   procedure SumBits (This : in out SX1276_Radio; Flags : IrqFlags_Register)
   is
      Data         : UInt8;
      Local_Flags  : IrqFlags_Register := Flags;
      for Data'Address use Local_Flags'Address;
   begin
      for I in 0 .. 7 loop
         if (Data and (2 ** I)) = (2 ** I) then
            Log (I) := Log (I) + 1;
         end if;
      end loop;
   end SumBits;

end SX1276;
