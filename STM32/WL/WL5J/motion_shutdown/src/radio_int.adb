with Logcmd; use Logcmd;
------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2015, AdaCore                           --
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

with HAL.SPI;         use HAL.SPI;
with STM32.Board;     use STM32.Board;
with STM32.Device;    use STM32.Device;

with Ada.Real_Time;                use Ada.Real_Time;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

package body Radio_Int is

   -------------
   -- Handler --
   -------------

   protected body Handler is

      -----------------
      -- IRQ_Handler --
      -----------------

      procedure Radio_Handler
      is
         RFStatus : Subghz_Status;
         X        : Irq_Status;
         Y        : UInt16;
         for X'Address use Y'Address;
         for X'Alignment use 1;
      begin
         X := Get_IrqStatus (RFStatus);
         Log2Byte (16#cc#, UInt8 (Shift_Right (Y, 8)), UInt8 (Y and 16#ff#));
         if X.TxDone then
            Turn_On (Red_LED);
            Set_True (Tx_Go);
         end if;
         if X.Timeout then
            Turn_On (Red_LED);
            Set_True (Timeout_Go);
         end if;
         if
           X.RxDone           or
           X.PreambleDetected or
           X.SyncDetected     or
           X.HeaderValid      or
           X.HeaderErr        or
           X.Misc_Err
         then
            Set_True (Rx_Go);
         end if;
         if X.CadDone or X.CadDetected then
            Set_Standby (RC_13_MHz);
            Set_True (Cad_Go);
         end if;
         Clr_IrqStatus (X);
         X := Get_IrqStatus (RFStatus);
      end Radio_Handler;

   end Handler;

end Radio_Int;
