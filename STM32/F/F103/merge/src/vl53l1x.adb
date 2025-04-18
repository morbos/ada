------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2017, AdaCore                           --
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
--     3. Neither the name of STMicroelectronics nor the names of its       --
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
--                                                                          --
--  This file is based on X-CUBE-53L0A1 STM32Cube expansion                 --
--                                                                          --
--   COPYRIGHT(c) 2016 STMicroelectronics                                   --
------------------------------------------------------------------------------

with Ada.Unchecked_Conversion;
with Ada.Real_Time;             use Ada.Real_Time;

package body VL53L1X is

   function CountRateFixedToFloat (Count_Rate_Fixed : UInt16) return Float;

   ---------------
   -- I2C_Write --
   ---------------

   procedure I2C_Write
     (This   : VL53L1X_Ranging_Sensor;
      Data   : HAL.UInt8_Array;
      Status : out Boolean)
   is
      use type HAL.I2C.I2C_Status;
      Ret : HAL.I2C.I2C_Status;
   begin
      HAL.I2C.Master_Transmit
        (This    => This.Port.all,
         Addr    => This.I2C_Address,
         Data    => Data,
         Status  => Ret);
      Status := Ret = HAL.I2C.Ok;
   end I2C_Write;

   --------------
   -- I2C_Read --
   --------------

   procedure I2C_Read
     (This   : VL53L1X_Ranging_Sensor;
      Data   : out HAL.UInt8_Array;
      Status : out Boolean)
   is
      use type HAL.I2C.I2C_Status;
      Ret : HAL.I2C.I2C_Status;
   begin
      HAL.I2C.Master_Receive
        (This    => This.Port.all,
         Addr    => This.I2C_Address,
         Data    => Data,
         Status  => Ret);
      Status := Ret = HAL.I2C.Ok;
   end I2C_Read;

   -----------
   -- Write --
   -----------

   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt8_Array;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
      Buf : constant HAL.UInt8_Array := (1 => IndexHi, 2 => IndexLo) & Data;
   begin
      I2C_Write (This, Buf, Status);
   end Write;

   -----------
   -- Write --
   -----------

   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt8;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
   begin
      I2C_Write (This, (IndexHi, IndexLo, Data), Status);
   end Write;

   -----------
   -- Write --
   -----------

   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt16;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
   begin
      I2C_Write
        (This,
         (IndexHi, IndexLo,
          HAL.UInt8 (Shift_Right (Data, 8)),
          HAL.UInt8 (Data and 16#FF#)),
         Status);
   end Write;

   -----------
   -- Write --
   -----------

   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt32;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
   begin
      I2C_Write
        (This,
         (IndexHi, IndexLo,
          HAL.UInt8 (Shift_Right (Data, 24)),
          HAL.UInt8 (Shift_Right (Data, 16) and 16#FF#),
          HAL.UInt8 (Shift_Right (Data, 8) and 16#FF#),
          HAL.UInt8 (Data and 16#FF#)),
         Status);
   end Write;

   ----------
   -- Read --
   ----------

   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt8_Array;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
   begin
      I2C_Write (This, (1 => IndexHi, 2 => IndexLo), Status);
      if Status then
         I2C_Read (This, Data, Status);
      end if;
   end Read;

   ----------
   -- Read --
   ----------

   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt8;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
      Buf : UInt8_Array (1 .. 1);
   begin
      I2C_Write (This, (1 => IndexHi, 2 => IndexLo), Status);
      if Status then
         I2C_Read (This, Buf, Status);
         Data := Buf (1);
      end if;
   end Read;

   ----------
   -- Read --
   ----------

   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt16;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
      Buf : UInt8_Array (1 .. 2);
   begin
      I2C_Write (This, (1 => IndexHi, 2 => IndexLo), Status);
      if Status then
         I2C_Read (This, Buf, Status);
         Data := Shift_Left (UInt16 (Buf (1)), 8) or UInt16 (Buf (2));
      end if;
   end Read;

   ----------
   -- Read --
   ----------

   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt32;
      Status : out Boolean)
   is
      IndexHi : constant UInt8 := UInt8 (Shift_Right (Index, 8) and 16#ff#);
      IndexLo : constant UInt8 := UInt8 (Index and 16#ff#);
      Buf : UInt8_Array (1 .. 4);
   begin
      I2C_Write (This, (1 => IndexHi, 2 => IndexLo), Status);
      if Status then
         I2C_Read (This, Buf, Status);
         Data := Shift_Left (UInt32 (Buf (1)), 24) or
           Shift_Left (UInt32 (Buf (2)), 16) or
           Shift_Left (UInt32 (Buf (3)), 8) or
           UInt32 (Buf (4));
      end if;
   end Read;

--  Calculate macro period in microseconds (12.12 format) with given VCSEL period
--  assumes fast_osc_frequency has been read and stored
--  based on VL53L1_calc_macro_period_us()
   function CalcMacroPeriod (This : VL53L1X_Ranging_Sensor; Vcsel_Period : UInt8) return UInt32
   is
      Pll_Period_Us : UInt32 := UInt32 (2 ** 30) / UInt32 (This.Device_Params.Fast_Osc_Frequency);
      --  from VL53L1_decode_vcsel_period()
      Vcsel_Period_Pclks : UInt8 := Shift_Left (Vcsel_Period + 1, 1);
      --  VL53L1_MACRO_PERIOD_VCSEL_PERIODS = 2304
      Macro_Period_Us : UInt32 := 2304 * Pll_Period_Us;
   begin
      --  from VL53L1_calc_pll_period_us()
      --  fast osc frequency in 4.12 format; PLL period in 0.24 format
      Macro_Period_Us := Shift_Right (Macro_Period_Us, 6);
      Macro_Period_Us := Macro_Period_Us * UInt32 (Vcsel_Period_Pclks);
      Macro_Period_Us := Shift_Right (Macro_Period_Us, 6);

      return Macro_Period_Us;
   end CalcMacroPeriod;

   --  Convert sequence step timeout from macro periods to microseconds with given
   --  macro period in microseconds (12.12 format)
   --  based on VL53L1_calc_timeout_us()
   function TimeoutMclksToMicroseconds (Timeout_Mclks   : UInt32;
                                        Macro_Period_Us : UInt32) return UInt32
   is
      Result64 : UInt64;
      Result32 : UInt32;
   begin
      Result64 := UInt64 ((Timeout_Mclks * Macro_Period_Us) + UInt32 (16#800#));
      Result32 := UInt32 (Shift_Right (Result64, 12));
      return  Result32;
   end TimeoutMclksToMicroseconds;

   function TimeoutMicrosecondsToMclks (Timeout : UInt32; Macro_Period_Us : UInt32) return UInt32
   is
   begin
      return (Shift_Left (Timeout, 12) + (Macro_Period_Us / 2)) / Macro_Period_Us;
   end TimeoutMicrosecondsToMclks;

   --  Encode sequence step timeout register value from timeout in MCLKs
   --  based on VL53L1_encode_timeout()
   function EncodeTimeout (Timeout_Mclks : UInt32) return UInt16
   is
      --  encoded format: "(LSByte * 2^MSByte) + 1"
      Ls_Byte : UInt32 := 0;
      Ms_Byte : UInt16 := 0;
   begin
      if Timeout_Mclks > 0 then
         Ls_Byte := Timeout_Mclks - 1;
         while (Ls_Byte and 16#FFFFFF00#) > 0 loop
            Ls_Byte := Shift_Right (Ls_Byte, 1);
            Ms_Byte := Ms_Byte + 1;
         end loop;
         return Shift_Left (Ms_Byte, 8) or UInt16 (Ls_Byte and 16#FF#);
      else
         return 0;
      end if;
   end EncodeTimeout;

   procedure SetTimeout (This : in out VL53L1X_Ranging_Sensor; Timeout : UInt16)
   is
   begin
      This.Device_Params.IO_Timeout := Timeout;
   end SetTimeout;

   function GetTimeout (This : VL53L1X_Ranging_Sensor) return Natural
   is
   begin
      return Natural (This.Device_Params.IO_Timeout);
   end GetTimeout;

   procedure SetMeasurementTimingBudget (This   : VL53L1X_Ranging_Sensor;
                                         Budget : UInt32;
                                         Status : out Boolean)
   is
      Local_Budget            : UInt32 := Budget - TimingGuard;
      Range_Config_Timeout_Us : UInt32 := Local_Budget;
      Macro_Period_Us         : UInt32;
      Phasecal_Timeout_Mclks  : UInt32;
      Result                  : UInt8;
      Lstatus                 : Boolean;
   begin
      if Budget <= TimingGuard then
         Status := False;
         return;
      end if;

      if Range_Config_Timeout_Us > 1100000 then  --  FDA_MAX_TIMING_BUDGET_US * 2
         Status := False;
         return;
      end if;

      Range_Config_Timeout_Us := Range_Config_Timeout_Us / 2;

      --  VL53L1_calc_timeout_register_values() begin

      --  "Update Macro Period for Range A VCSEL Period"
      Read (This, RANGE_CONFIG_VCSEL_PERIOD_A, Result, Lstatus);
      Macro_Period_Us := CalcMacroPeriod (This, Result);

      --  "Update Phase timeout - uses Timing A"
      --  Timeout of 1000 is tuning parm default (TIMED_PHASECAL_CONFIG_TIMEOUT_US_DEFAULT)
      --  via VL53L1_get_preset_mode_timing_cfg().
      Phasecal_Timeout_Mclks := TimeoutMicrosecondsToMclks (1000, Macro_Period_Us);
      if Phasecal_Timeout_Mclks > 16#FF# then
         Phasecal_Timeout_Mclks := 16#FF#;
         Write (This, PHASECAL_CONFIG_TIMEOUT_MACROP, Phasecal_Timeout_Mclks, Lstatus);
      end if;

      --  "Update MM Timing A timeout"
      --  Timeout of 1 is tuning parm default (LOWPOWERAUTO_MM_CONFIG_TIMEOUT_US_DEFAULT)
      --  via VL53L1_get_preset_mode_timing_cfg(). With the API, the register
      --  actually ends up with a slightly different value because it gets assigned,
      --  retrieved, recalculated with a different macro period, and reassigned,
      --  but it probably doesn't matter because it seems like the MM ("mode
      --  mitigation"?) sequence steps are disabled in low power auto mode anyway.
      Write (This, MM_CONFIG_TIMEOUT_MACROP_A,
             EncodeTimeout (TimeoutMicrosecondsToMclks (1, Macro_Period_Us)), Lstatus);

      --  "Update Range Timing A timeout"
      Write (This, RANGE_CONFIG_TIMEOUT_MACROP_A,
                    EncodeTimeout (TimeoutMicrosecondsToMclks (Range_Config_Timeout_Us, Macro_Period_Us)), Lstatus);

      --  "Update Macro Period for Range B VCSEL Period"
      Read (This, RANGE_CONFIG_VCSEL_PERIOD_B, Result, Lstatus);
      Macro_Period_Us := CalcMacroPeriod (This, Result);

      --  "Update MM Timing B timeout"
      --  (See earlier comment about MM Timing A timeout.)
      Write (This, MM_CONFIG_TIMEOUT_MACROP_B,
             EncodeTimeout (TimeoutMicrosecondsToMclks (1, Macro_Period_Us)), Lstatus);

      --  "Update Range Timing B timeout"
      Write (This, RANGE_CONFIG_TIMEOUT_MACROP_B,
             EncodeTimeout (TimeoutMicrosecondsToMclks (Range_Config_Timeout_Us, Macro_Period_Us)),
            Lstatus);

      --  VL53L1_calc_timeout_register_values() end

      Status := True;

   end SetMeasurementTimingBudget;

   --  Decode sequence step timeout in MCLKs from register value
   --  based on VL53L1_decode_timeout()
   function DecodeTimeout (Reg_Val : UInt16) return UInt32
   is
      Shift_Val : Natural;
      Result    : UInt32;
   begin
      Shift_Val := Natural (Shift_Right (Reg_Val, 8));
      Result := UInt32 (Shift_Left (UInt16 (Reg_Val and 16#FF#), Shift_Val) + 1);
      return Result;
   end DecodeTimeout;

   function GetMeasurementTimingBudget (This : VL53L1X_Ranging_Sensor) return UInt32
   is
      Macro_Period_Us         : UInt32;
      Result                  : UInt8;
      Result16                : UInt16;
      Status                  : Boolean;
      Range_Config_Timeout_Us : UInt32;
   begin
      --  assumes PresetMode is LOWPOWER_AUTONOMOUS and these sequence steps are
      --  enabled: VHV, PHASECAL, DSS1, RANGE

      --  VL53L1_get_timeouts_us() begin

      --  "Update Macro Period for Range A VCSEL Period"
      Read (This, RANGE_CONFIG_VCSEL_PERIOD_A, Result, Status);
      Macro_Period_Us := CalcMacroPeriod (This, Result);

      --  "Get Range Timing A timeout"

      Read (This, RANGE_CONFIG_TIMEOUT_MACROP_A, Result16, Status);
      Range_Config_Timeout_Us := TimeoutMclksToMicroseconds (DecodeTimeout (Result16),
                                                             Macro_Period_Us);

      --  VL53L1_get_timeouts_us() end

      return (2 * Range_Config_Timeout_Us) + TimingGuard;
   end GetMeasurementTimingBudget;

   --  set distance mode to Short, Medium, or Long
   --  based on VL53L1_SetDistanceMode()
   procedure SetDistanceMode (This : in out VL53L1X_Ranging_Sensor; Mode : VL53L1_Range_Type)
   is
      --  save existing timing budget
      Budget_Us : UInt32 := GetMeasurementTimingBudget (This);
      Status    : Boolean;
   begin
      case Mode is
         when Short_Range =>
            --  from VL53L1_preset_mode_standard_ranging_short_range()
            --  timing config
            Write (This, RANGE_CONFIG_VCSEL_PERIOD_A, UInt8 (16#07#), Status);
            Write (This, RANGE_CONFIG_VCSEL_PERIOD_B, UInt8 (16#05#), Status);
            Write (This, RANGE_CONFIG_VALID_PHASE_HIGH, UInt8 (16#38#), Status);

            --  dynamic config
            Write (This, SD_CONFIG_WOI_SD0, UInt8 (16#07#), Status);
            Write (This, SD_CONFIG_WOI_SD1, UInt8 (16#05#), Status);
            Write (This, SD_CONFIG_INITIAL_PHASE_SD0, UInt8 (6), Status); --  tuning parm default
            Write (This, SD_CONFIG_INITIAL_PHASE_SD1, UInt8 (6), Status); --  tuning parm default
         when Medium_Range =>
            --  from VL53L1_preset_mode_standard_ranging()
            --  timing config
            Write (This, RANGE_CONFIG_VCSEL_PERIOD_A, UInt8 (16#0B#), Status);
            Write (This, RANGE_CONFIG_VCSEL_PERIOD_B, UInt8 (16#09#), Status);
            Write (This, RANGE_CONFIG_VALID_PHASE_HIGH, UInt8 (16#78#), Status);
            --  dynamic config
            Write (This, SD_CONFIG_WOI_SD0, UInt8 (16#0B#), Status);
            Write (This, SD_CONFIG_WOI_SD1, UInt8 (16#09#), Status);
            Write (This, SD_CONFIG_INITIAL_PHASE_SD0, UInt8 (10), Status); --  tuning parm default
            Write (This, SD_CONFIG_INITIAL_PHASE_SD1, UInt8 (10), Status); --  tuning parm default
         when Long_Range =>
            --  from VL53L1_preset_mode_standard_ranging_long_range()
            --  timing config
            Write (This, RANGE_CONFIG_VCSEL_PERIOD_A, UInt8 (16#0F#), Status);
            Write (This, RANGE_CONFIG_VCSEL_PERIOD_B, UInt8 (16#0D#), Status);
            Write (This, RANGE_CONFIG_VALID_PHASE_HIGH, UInt8 (16#B8#), Status);
            --  dynamic config
            Write (This, SD_CONFIG_WOI_SD0, UInt8 (16#0F#), Status);
            Write (This, SD_CONFIG_WOI_SD1, UInt8 (16#0D#), Status);
            Write (This, SD_CONFIG_INITIAL_PHASE_SD0, UInt8 (14), Status); --  tuning parm default
            Write (This, SD_CONFIG_INITIAL_PHASE_SD1, UInt8 (14), Status); --  tuning parm default
      end case;

      --  reapply timing budget
      SetMeasurementTimingBudget (This, Budget_Us, Status);

      --  save mode so it can be returned by getDistanceMode()
      This.Device_Params.Distance_Mode := Mode;

   end SetDistanceMode;

   procedure StartContinuous (This : VL53L1X_Ranging_Sensor; Period_Ms : UInt32)
   is
      Value  : UInt32;
      Status : Boolean;
   begin
      --  from VL53L1_set_inter_measurement_period_ms()
      Value := Period_Ms * UInt32 (This.Device_Params.Osc_Calibrate_Val);
      Write (This, SYSTEM_INTERMEASUREMENT_PERIOD, Value, Status);

      Write (This, SYSTEM_INTERRUPT_CLEAR, UInt8 (1), Status); --  sys_interrupt_clear_range
      Write (This, SYSTEM_MODE_START, UInt8 (16#40#), Status); --  mode_range__timed
   end StartContinuous;

   procedure SetupManualCalibration (This : in out VL53L1X_Ranging_Sensor)
   is
      Result : UInt8;
      Status : Boolean;
   begin
      --  "save original vhv configs"
      Read (This, VHV_CONFIG_INIT, Result, Status);
      This.Device_Params.Saved_Vhv_Init := Result;
      Read (This, VHV_CONFIG_TIMEOUT_MACROP_LOOP_BOUND, Result, Status);
      This.Device_Params.Saved_Vhv_Timeout := Result;

      --  "disable VHV init"
      Write (This,
             VHV_CONFIG_INIT,
             UInt8 (This.Device_Params.Saved_Vhv_Init and 16#7F#),
             Status);

      --  "set loop bound to tuning param"
      Write (This,
             VHV_CONFIG_TIMEOUT_MACROP_LOOP_BOUND,
             UInt8 ((This.Device_Params.Saved_Vhv_Timeout and 16#3#) +
                      Shift_Left (UInt8 (3), 2)),
             Status);
      --  tuning parm default (LOWPOWERAUTO_VHV_LOOP_BOUND_DEFAULT)

      --  "override phasecal"
      Write (This, PHASECAL_CONFIG_OVERRIDE, UInt8 (1), Status);
      Read (This, PHASECAL_RESULT_VCSEL_START, Result, Status);
      Write (This, CAL_CONFIG_VCSEL_START, Result, Status);
      This.Device_Params.Calibrated := True;
   end SetupManualCalibration;

   function To_UInt16 (MSB : UInt8;  LSB : UInt8) return UInt16
   is
      Result : UInt32;
   begin
      Result := UInt32 (MSB) * 256;
      Result := Result + UInt32 (LSB);
      return UInt16 (Result);
   end To_UInt16;

   procedure ReadResults (This : in out VL53L1X_Ranging_Sensor; Status : out Boolean)
   is
      Buffer  : UInt8_Array (1 .. 17);
      Lstatus : Boolean;
      Results : Range_Results_Type renames This.Device_Params.Range_Results;
   begin
      Read (This, RESULT_RANGE_STATUS, Buffer, Lstatus);

      Results.Range_Status := Buffer (1);
      Results.Report_Status := Buffer (2);

      if This.Device_Params.Calibrated and ((Buffer (1) /= 9) or (Buffer (2) /= 9)) then
         This.Device_Params.Initialize_Reqd := True;
         Status := False;
         return;
      end if;

      Results.Stream_Count := Buffer (3);

      Results.Dss_Actual_Effective_Spads_Sd0  := To_UInt16 (Buffer (4), Buffer (5));
      Results.Peak_Signal_Count_Rate_Mcps_Sd0 := To_UInt16 (Buffer (6), Buffer (7));
      Results.Ambient_Count_Rate_Mcps_Sd0     := To_UInt16 (Buffer (8), Buffer (9));
      Results.Sigma_Sd0                       := To_UInt16 (Buffer (10), Buffer (11));
      Results.Phase_Sd0                       := To_UInt16 (Buffer (12), Buffer (13));
      Results.Final_Crosstalk_Corrected_Range_Mm_Sd0 := To_UInt16 (Buffer (14), Buffer (15));
      Results.Peak_Signal_Count_Rate_Crosstalk_Corrected_Mcps_Sd0 :=
        To_UInt16 (Buffer (16), Buffer (17));
      Status := True;
   end ReadResults;

   --  perform Dynamic SPAD Selection calculation/update
   --  based on VL53L1_low_power_auto_update_DSS()
   procedure UpdateDSS (This : in out VL53L1X_Ranging_Sensor)
   is
      Results          : Range_Results_Type renames This.Device_Params.Range_Results;
      SpadCount        : UInt16 := Results.Dss_Actual_Effective_Spads_Sd0;
      TotalRatePerSpad : UInt32;
      RequiredSpads    : UInt32;
      Status           : Boolean;
   begin
      if SpadCount /= 0 then
         --  "Calc total rate per spad"
         TotalRatePerSpad := UInt32 (Results.Peak_Signal_Count_Rate_Crosstalk_Corrected_Mcps_Sd0) +
           UInt32 (Results.Ambient_Count_Rate_Mcps_Sd0);

         --  "clip to 16 bits"
         if TotalRatePerSpad > 16#FFFF# then
            TotalRatePerSpad := 16#FFFF#;
         end if;

         --  "shift up to take advantage of 32 bits"
         TotalRatePerSpad := Shift_Left (TotalRatePerSpad, 16);

         TotalRatePerSpad := TotalRatePerSpad / UInt32 (SpadCount);

         if TotalRatePerSpad /= 0 then
            --  "get the target rate and shift up by 16"
            RequiredSpads := Shift_Left (UInt32 (TargetRate), 16) / TotalRatePerSpad;

            --  "clip to 16 bit"
            if RequiredSpads > 16#FFFF# then
               RequiredSpads := 16#FFFF#;
            end if;

            --  "override DSS config"
            Write (This, DSS_CONFIG_MANUAL_EFFECTIVE_SPADS_SELECT, UInt16 (RequiredSpads), Status);
            --  DSS_CONFIG__ROI_MODE_CONTROL should already be set to REQUESTED_EFFFECTIVE_SPADS

            return;
         end if;
      end if;

      --  If we reached this point, it means something above would have resulted in a
      --  divide by zero.
      --  "We want to gracefully set a spad target, not just exit with an error"

      --  "set target to mid point"

      Write (This, DSS_CONFIG_MANUAL_EFFECTIVE_SPADS_SELECT, UInt16 (16#8000#), Status);
   end UpdateDSS;

   function CountRateFixedToFloat (Count_Rate_Fixed : UInt16) return Float
   is
   begin
      return Float (Count_Rate_Fixed) / Float (2 ** 7);
   end CountRateFixedToFloat;

   --  get range, status, rates from results buffer
   --  based on VL53L1_GetRangingMeasurementData()
   procedure GetRangingData (This : in out VL53L1X_Ranging_Sensor)
   is
      Results      : Range_Results_Type renames This.Device_Params.Range_Results;
      Ranging_Data : Ranging_Data_Type renames This.Device_Params.Range_Data;
      --  VL53L1_copy_sys_and_core_results_to_range_results() begin
      Range_Val    : UInt16 := Results.Final_Crosstalk_Corrected_Range_Mm_Sd0;
   begin
      --  "apply correction gain"
      --  gain factor of 2011 is tuning parm default (VL53L1_TUNINGPARM_LITE_RANGING_GAIN_FACTOR_DEFAULT)
      --  Basically, this appears to scale the result by 2011/2048, or about 98%
      --  (with the 1024 added for proper rounding).
      Ranging_Data.Range_Mm := UInt16 ((UInt32 (Range_Val) * UInt32 (2011) + UInt32 (16#0400#))
        / UInt32 (16#0800#));

      --  VL53L1_copy_sys_and_core_results_to_range_results() end

      --  from SetSimpleData()
      Ranging_Data.Peak_Signal_Count_Rate_MCPS :=
        CountRateFixedToFloat (Results.Peak_Signal_Count_Rate_Crosstalk_Corrected_Mcps_Sd0);
      Ranging_Data.Ambient_Count_Rate_MCPS :=
        CountRateFixedToFloat (Results.Ambient_Count_Rate_Mcps_Sd0);
   end GetRangingData;

   function Read_Range (This : in out VL53L1X_Ranging_Sensor; Status : out Boolean) return UInt16
   is
      Start        : Time;
      Result       : UInt8;
      Lstatus      : Boolean;
      Ranging_Data : Ranging_Data_Type renames This.Device_Params.Range_Data;
   begin
      Start := Clock;
      loop
         Read (This, GPIO_TIO_HV_STATUS, Result, Lstatus);
         exit when (Result and 1) = 0;
         if Clock - Start > Milliseconds (GetTimeout (This)) then
            Status := False;
            return 0;
         end if;
      end loop;
      ReadResults (This, Status);

      if not Status then
         return 0;
      end if;

      if not This.Device_Params.Calibrated then
         SetupManualCalibration (This);
      end if;

      UpdateDSS (This);

      GetRangingData (This);

      Write (This, SYSTEM_INTERRUPT_CLEAR, UInt8 (1), Lstatus); --  sys_interrupt_clear_range

      Status := True;

      return Ranging_Data.Range_Mm;

   end Read_Range;

   function Need_Init (This : VL53L1X_Ranging_Sensor) return Boolean
   is
   begin
      return This.Device_Params.Initialize_Reqd;
   end Need_Init;

   procedure Finish_Init (This : in out VL53L1X_Ranging_Sensor)
   is
   begin
      This.Device_Params.Initialize_Reqd := False;
   end Finish_Init;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
     (This : in out VL53L1X_Ranging_Sensor)
   is
      Result   : UInt8;
      Result16 : UInt16;
      Start    : Time;
      Status   : Boolean;
      Value16  : UInt16;
   begin
      This.I2C_Address := 16#52#;

      if Read_Id (This) /= VL53L1_ID then
         raise Program_Error with "No VL53L1!";
      end if;

      Write (This, SOFT_RESET, UInt8 (0), Status);
      delay until Clock + Milliseconds (10);
      Write (This, SOFT_RESET, UInt8 (1), Status);
      delay until Clock + Milliseconds (10);

      --  VL53L1_poll_for_boot_completion() begin

      Start := Clock;

      loop
         Read (This, FIRMWARE_SYSTEM_STATUS, Result, Status);
         exit when (Result and 1) = 1;
         if (Clock - Start) > Milliseconds (1000) then
            raise Program_Error with "Timed out on boot";
         end if;
      end loop;

      --  Switch to 2.8v IO (this should be a param)
      Read (This, PAD_I2C_HV_EXTSUP_CONFIG, Result, Status);
      Write (This, PAD_I2C_HV_EXTSUP_CONFIG, Result or 1, Status);

      --  store oscillator info for later use
      Read (This, OSC_MEASURED_FAST_OSC_FREQUENCY, This.Device_Params.Fast_Osc_Frequency, Status);
      Read (This, RESULT_OSC_CALIBRATE_VAL, This.Device_Params.Osc_Calibrate_Val, Status);

      --  VL53L1_DataInit() end

      --  VL53L1_StaticInit() begin

      --  Note that the API does not actually apply the configuration settings below
      --  when VL53L1_StaticInit() is called: it keeps a copy of the sensor's
      --  register contents in memory and doesn't actually write them until a
      --  measurement is started. Writing the configuration here means we don't have
      --  to keep it all in memory and avoids a lot of redundant writes later.

      --  the API sets the preset mode to LOWPOWER_AUTONOMOUS here:
      --  VL53L1_set_preset_mode() begin

      --  VL53L1_preset_mode_standard_ranging() begin

      --  values labeled "tuning parm default" are from vl53l1_tuning_parm_defaults.h
      --  (API uses these in VL53L1_init_tuning_parm_storage_struct())

      --  static config
      --  API resets PAD_I2C_HV_EXTSUP_CONFIG here, but maybe we don't want to do
      --  that? (seems like it would disable 2V8 mode)

      --  should already be this value after reset
      Write (This, DSS_CONFIG_TARGET_TOTAL_RATE_MCPS, TargetRate, Status);
      Write (This, GPIO_TIO_HV_STATUS, UInt8 (2), Status);
      Write (This, SIGMA_ESTIMATOR_EFFECTIVE_PULSE_WIDTH_NS, UInt8 (8), Status); --  tuning parm default
      Write (This, SIGMA_ESTIMATOR_EFFECTIVE_AMBIENT_WIDTH_NS, UInt8 (16), Status); --  tuning parm default
      Write (This, ALGO_CROSSTALK_COMPENSATION_VALID_HEIGHT_MM, UInt8 (1), Status);
      Write (This, ALGO_RANGE_IGNORE_VALID_HEIGHT_MM, UInt8 (16#FF#), Status);
      Write (This, ALGO_RANGE_MIN_CLIP, UInt8 (0), Status); --  tuning parm default
      Write (This, ALGO_CONSISTENCY_CHECK_TOLERANCE, UInt8 (2), Status); --  tuning parm default

      --  general config
      Write (This, SYSTEM_THRESH_RATE_HIGH, UInt16 (0), Status);
      Write (This, SYSTEM_THRESH_RATE_LOW, UInt16 (0), Status);
      Write (This, DSS_CONFIG_APERTURE_ATTENUATION, UInt8 (16#38#), Status);

      --  timing config
      --  most of these settings will be determined later by distance and timing
      --  budget configuration
      Write (This, RANGE_CONFIG_SIGMA_THRESH, UInt16 (360), Status); --  tuning parm default
      Write (This, RANGE_CONFIG_MIN_COUNT_RATE_RTN_LIMIT_MCPS, UInt16 (192), Status); --  tuning parm default

      --  dynamic config

      Write (This, SYSTEM_GROUPED_PARAMETER_HOLD_0, UInt8 (1), Status);
      Write (This, SYSTEM_GROUPED_PARAMETER_HOLD_1, UInt8 (1), Status);
      Write (This, SD_CONFIG_QUANTIFIER, UInt8 (2), Status); --  tuning parm default

      --  VL53L1_preset_mode_standard_ranging() end

      --  from VL53L1_preset_mode_timed_ranging_*
      --  GPH is 0 after reset, but writing GPH0 and GPH1 above seem to set GPH to 1,
      --  and things don't seem to work if we don't set GPH back to 0 (which the API
      --  does here).
      Write (This, SYSTEM_GROUPED_PARAMETER_HOLD, UInt8 (0), Status);
      Write (This, SYSTEM_SEED_CONFIG, UInt8 (1), Status); --  tuning parm default

      --  from VL53L1_config_low_power_auto_mode
      Write (This, SYSTEM_SEQUENCE_CONFIG, UInt8 (16#8B#), Status); --  VHV, PHASECAL, DSS1, RANGE
      Value16 := Shift_Left (UInt16 (200), 8);
      Write (This, DSS_CONFIG_MANUAL_EFFECTIVE_SPADS_SELECT, Value16, Status);
      Write (This, DSS_CONFIG_ROI_MODE_CONTROL, UInt8 (2), Status); --  REQUESTED_EFFFECTIVE_SPADS

      --  VL53L1_set_preset_mode() end

      --  default to long range, 50 ms timing budget
      --  note that this is different than what the API defaults to
      SetDistanceMode (This, Long_Range);
      SetMeasurementTimingBudget (This, 50000, Status);

      --  VL53L1_StaticInit() end

      --  the API triggers this change in VL53L1_init_and_start_range() once a
      --  measurement is started; assumes MM1 and MM2 are disabled
      Read (This, MM_CONFIG_OUTER_OFFSET_MM, Result16, Status);
      Result16 := Result16 * 4;
      Write (This, ALGO_PART_TO_PART_RANGE_OFFSET_MM, Result16, Status);

      This.Device_Params.Calibrated := False;

   end Initialize;

   -------------
   -- Read_Id --
   -------------

   function Read_Id (This : VL53L1X_Ranging_Sensor) return UInt16
   is
      Ret    : UInt16;
      Status : Boolean;
   begin
      Read (This, IDENTIFICATION_MODEL_ID, Ret, Status);

      if not Status then
         return 0;
      else
         return Ret;
      end if;
   end Read_Id;

end VL53L1X;
