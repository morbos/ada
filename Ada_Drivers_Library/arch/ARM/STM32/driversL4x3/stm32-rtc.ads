------------------------------------------------------------------------------
--                                                                          --
--                        Copyright (C) 2016, AdaCore                       --
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

with HAL.Real_Time_Clock;
with STM32_SVD.RTC;          use STM32_SVD.RTC;

package STM32.RTC is

   type RTC_Device is new HAL.Real_Time_Clock.RTC_Device with private;

   type RTCSEL is (Use_LSE, Use_LSI, Use_HSE);

   for RTCSEL use
     (Use_LSE => 2#01#,
      Use_LSI => 2#10#,
      Use_HSE => 2#11#);

   overriding
   procedure Set (This : in out RTC_Device;
                  Time : HAL.Real_Time_Clock.RTC_Time;
                  Date : HAL.Real_Time_Clock.RTC_Date);

   overriding
   procedure Get (This : in out RTC_Device;
                  Time : out HAL.Real_Time_Clock.RTC_Time;
                  Date : out HAL.Real_Time_Clock.RTC_Date);

   overriding
   function Get_Time (This : RTC_Device) return HAL.Real_Time_Clock.RTC_Time;

   overriding
   function Get_Date (This : RTC_Device) return HAL.Real_Time_Clock.RTC_Date;

   procedure Enable (This : in out RTC_Device; Clock_Source : RTCSEL);
   procedure Disable (This : in out RTC_Device);

   procedure Enable_Write_Protection;

   procedure Disable_Write_Protection;

   procedure Set_WUT_Interrupt (This : in out RTC_Device; Timeout : UInt16);

   procedure Clear_RTC_Wakeup;

   function RTC_Wakeup_Flag return Boolean;

   procedure Set_AlarmA (This : in out RTC_Device; Alarm : ALRMAR_Register);

   function RTC_AlarmA_Flag return Boolean;

   procedure Clear_RTC_AlarmA;

private

   type RTC_Device is new HAL.Real_Time_Clock.RTC_Device with
     null record;

end STM32.RTC;
