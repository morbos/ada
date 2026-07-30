------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2024, AdaCore                           --
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
--  This file is based on the ST VL53L1X Ultra Lite Driver (ULD) API        --
--                                                                          --
--   COPYRIGHT(c) 2018 STMicroelectronics                                   --
------------------------------------------------------------------------------

with HAL;                      use HAL;
with System.Machine_Code;      use System.Machine_Code;

package body VL53L1X is

   --  91-byte default configuration written to registers 0x002D..0x0087.
   --  Source: ST VL53L1X Ultra Lite Driver (STSW-IMG019), vl53l1x_api.c.
   --  Corresponds to Long distance mode with ~100 ms timing budget.
   --  Byte values should be verified against the official ST driver before
   --  use in production.
   Default_Configuration : constant UInt8_Array (1 .. 91) :=
     (16#00#, 16#00#, 16#00#, 16#01#, 16#02#, 16#00#, 16#02#, 16#08#,  --  0x2D..0x34
      16#00#, 16#08#, 16#10#, 16#01#, 16#01#, 16#00#, 16#00#, 16#00#,  --  0x35..0x3C
      16#00#, 16#FF#, 16#00#, 16#0F#, 16#00#, 16#00#, 16#00#, 16#00#,  --  0x3D..0x44
      16#00#, 16#20#, 16#0B#, 16#00#, 16#00#, 16#02#, 16#0A#, 16#21#,  --  0x45..0x4C
      16#00#, 16#00#, 16#05#, 16#00#, 16#00#, 16#00#, 16#00#, 16#C8#,  --  0x4D..0x54
      16#00#, 16#00#, 16#38#, 16#FF#, 16#01#, 16#00#, 16#08#, 16#00#,  --  0x55..0x5C
      16#00#, 16#01#, 16#CC#, 16#0F#, 16#01#, 16#F1#, 16#0D#, 16#01#,  --  0x5D..0x64
      16#68#, 16#00#, 16#80#, 16#08#, 16#B8#, 16#00#, 16#00#, 16#00#,  --  0x65..0x6C
      16#00#, 16#0F#, 16#89#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#,  --  0x6D..0x74
      16#00#, 16#00#, 16#01#, 16#0F#, 16#0D#, 16#0E#, 16#0E#, 16#00#,  --  0x75..0x7C
      16#00#, 16#02#, 16#C7#, 16#FF#, 16#9B#, 16#00#, 16#00#, 16#00#,  --  0x7D..0x84
      16#01#, 16#00#, 16#00#);                                           --  0x85..0x87

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
        (This   => This.Port.all,
         Addr   => This.I2C_Address,
         Data   => Data,
         Status => Ret);
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
        (This   => This.Port.all,
         Addr   => This.I2C_Address,
         Data   => Data,
         Status => Ret);
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
      Reg : constant UInt8_Array :=
        (UInt8 (Shift_Right (UInt32 (Index), 8)),
         UInt8 (Index and 16#FF#));
   begin
      I2C_Write (This, Reg & Data, Status);
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
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#),
          Data),
         Status);
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
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#),
          UInt8 (Shift_Right (UInt32 (Data), 8)),
          UInt8 (Data and 16#FF#)),
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
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#),
          UInt8 (Shift_Right (Data, 24)),
          UInt8 (Shift_Right (Data, 16) and 16#FF#),
          UInt8 (Shift_Right (Data, 8)  and 16#FF#),
          UInt8 (Data and 16#FF#)),
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
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#)),
         Status);
      if Status then
         for I in 1 .. 100 loop
            Asm ("nop", Volatile => True);
         end loop;
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
      Buf : UInt8_Array (1 .. 1);
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#)),
         Status);
      if Status then
         for I in 1 .. 100 loop
            Asm ("nop", Volatile => True);
         end loop;
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
      Buf : UInt8_Array (1 .. 2);
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#)),
         Status);
      if Status then
         for I in 1 .. 100 loop
            Asm ("nop", Volatile => True);
         end loop;
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
      Buf : UInt8_Array (1 .. 4);
   begin
      I2C_Write
        (This,
         (UInt8 (Shift_Right (UInt32 (Index), 8)),
          UInt8 (Index and 16#FF#)),
         Status);
      if Status then
         for I in 1 .. 100 loop
            Asm ("nop", Volatile => True);
         end loop;
         I2C_Read (This, Buf, Status);
         Data := Shift_Left (UInt32 (Buf (1)), 24) or
                 Shift_Left (UInt32 (Buf (2)), 16) or
                 Shift_Left (UInt32 (Buf (3)),  8) or
                 UInt32 (Buf (4));
      end if;
   end Read;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
     (This : in out VL53L1X_Ranging_Sensor)
   is
   begin
      This.I2C_Address   := 16#52#;
      This.Distance_Mode := Long;
      This.Timing_Budget := 50;
      This.Int_Polarity  := Polarity_High;
      loop
         exit when Read_FW_Status (This) /= 0;
      end loop;

      if Read_Id (This) /= 16#EA# then
         raise Program_Error with "VL53L1 not found";
      end if;
   end Initialize;

   -------------
   -- Read_Id --
   -------------

   function Read_Id
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8
   is
      Ret    : UInt8;
      Status : Boolean;
   begin
      Read (This, REG_IDENTIFICATION_MODEL_ID, Ret, Status);
      if not Status then
         return 0;
      end if;
      return Ret;
   end Read_Id;

   ----------------------
   -- Read_Module_Type --
   ----------------------

   function Read_Module_Type
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8
   is
      Ret    : UInt8;
      Status : Boolean;
   begin
      Read (This, REG_MODULE_TYPE, Ret, Status);
      if not Status then
         return 0;
      end if;
      return Ret;
   end Read_Module_Type;

   -------------------
   -- Read_Mask_Rev --
   -------------------

   function Read_Mask_Rev
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8
   is
      Ret    : UInt8;
      Status : Boolean;
   begin
      Read (This, REG_MASK_REV, Ret, Status);
      if not Status then
         return 0;
      end if;
      return Ret;
   end Read_Mask_Rev;

   --------------------
   -- Read_FW_Status --
   --------------------

   function Read_FW_Status
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8
   is
      Ret    : UInt8;
      Status : Boolean;
   begin
      Read (This, REG_FIRMWARE_SYSTEM_STATUS, Ret, Status);
      if not Status then
         return 0;
      end if;
      return Ret;
   end Read_FW_Status;

   -----------------------
   -- Read_Range_Status --
   -----------------------

   function Read_Range_Status
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8
   is
      Ret    : UInt8;
      Status : Boolean;
   begin
      Read (This, REG_RESULT_RANGE_STATUS, Ret, Status);
      if not Status then
         return 0;
      end if;
      return Ret;
   end Read_Range_Status;

   -----------------------------
   -- Read_Interrupt_Polarity --
   -----------------------------

   function Read_Interrupt_Polarity
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8
   is
      Ret    : UInt8;
      Status : Boolean;
   begin
      Read (This, REG_GPIO_HV_MUX_CTRL, Ret, Status);
      if not Status then
         return 0;
      end if;
      return Ret;
   end Read_Interrupt_Polarity;

   function Check_For_Data_Ready
     (This : VL53L1X_Ranging_Sensor) return Boolean
   is
      Val    : UInt8;
      Status : Boolean;
      --  Pol    : UInt8;
   begin
      --  Pol := Read_Interrupt_Polarity (This);

      Read (This, REG_GPIO_TIO_HV_STATUS, Val, Status);
      if not Status then
         return False;
      end if;

      --  Int_Pol := Read_Interrupt_Polarity (This);

      case This.Int_Polarity is
         when Polarity_High =>
            return (Val and 16#01#) /= 0;
         when Polarity_Low =>
            return (Val and 16#01#) = 0;
      end case;
   end Check_For_Data_Ready;

   ------------------------
   -- Set_Device_Address --
   ------------------------

   procedure Set_Device_Address
     (This   : in out VL53L1X_Ranging_Sensor;
      Addr   : HAL.I2C.I2C_Address;
      Status : out Boolean)
   is
   begin
      Write (This, REG_I2C_SLAVE_DEVICE_ADDRESS, UInt8 (Addr / 2), Status);
      if Status then
         This.I2C_Address := Addr;
      end if;
   end Set_Device_Address;

   ---------------
   -- Data_Init --
   ---------------

   procedure Data_Init
     (This   : in out VL53L1X_Ranging_Sensor;
      Status : out Boolean)
   is
      Check : UInt8_Array (1 .. 91);
      Stat  : UInt8;
   begin
      --  Write the 91-byte default configuration blob starting at 0x002D.
      Write (This, REG_INIT_CONFIG_START, Default_Configuration, Status);
      if not Status then
         return;
      end if;

      Start_Ranging (This);
      loop
         exit when Check_For_Data_Ready (This);
      end loop;
      Clear_Interrupt (This);
      Stop_Ranging (This);
      --  Increase VHV loop timeout and start VHV from the end of the range,
      --  as recommended by the ST VL53L1X ULD SensorInit sequence.
      Write (This, REG_VHV_CONFIG_TIMEOUT_MACROP_LOOP_BOUND,
             UInt8'(16#09#), Status);
      Write (This, 16#000B#, UInt8'(16#00#), Status);
   end Data_Init;

   -----------------
   -- Static_Init --
   -----------------

   procedure Static_Init
     (This          : in out VL53L1X_Ranging_Sensor;
      GPIO_Function : VL53L1X_GPIO_Functionality;
      Status        : out Boolean)
   is
   begin
      Set_GPIO_Config (This, GPIO_Function, This.Int_Polarity, Status);
   end Static_Init;

   ---------------------------
   -- Range_Value_Available --
   ---------------------------

   function Range_Value_Available
     (This : VL53L1X_Ranging_Sensor) return Boolean
   is
      Status  : Boolean;
      Val     : UInt8;
   begin
      Read (This, REG_GPIO_TIO_HV_STATUS, Val, Status);
      if not Status then
         return False;
      end if;

      case This.Int_Polarity is
         when Polarity_High =>
            return (Val and 16#01#) /= 0;
         when Polarity_Low =>
            return (Val and 16#01#) = 0;
      end case;
   end Range_Value_Available;

   ----------------------------
   -- Read_Range_Millimeters --
   ----------------------------

   function Read_Range_Millimeters
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt16
   is
      Status : Boolean;
      Ret    : UInt16;
   begin
      Read (This, REG_RESULT_FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0,
            Ret, Status);
      Write (This, REG_SYSTEM_INTERRUPT_CLEAR, UInt8'(16#01#), Status);
      return Ret;
   end Read_Range_Millimeters;

   -----------------------------------
   -- Read_Range_Single_Millimeters --
   -----------------------------------

   function Read_Range_Single_Millimeters
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt16
   is
      Status : Boolean;
      Res    : UInt8;
   begin
      Start_Ranging (This);
      while not Range_Value_Available (This) loop
         null;
      end loop;

      return Read_Range_Millimeters (This);
   end Read_Range_Single_Millimeters;

   -----------------------
   -- Set_Distance_Mode --
   -----------------------

   procedure Set_Distance_Mode
     (This   : in out VL53L1X_Ranging_Sensor;
      Mode   : VL53L1X_Distance_Mode;
      Status : out Boolean)
   is
      Period_A   : UInt8;
      Period_B   : UInt8;
      Phase_High : UInt8;
      WOI_SD0    : UInt8;
      WOI_SD1    : UInt8;
      Phase_SD0  : UInt8;
      Phase_SD1  : UInt8;

      --  If the current budget is 15 ms (Short-only) and we are leaving
      --  Short mode, fall back to 50 ms which is valid for all modes.
      New_Budget : UInt16 := This.Timing_Budget;
   begin
      case Mode is
         when Short =>
            Period_A   := 16#07#;
            Period_B   := 16#05#;
            Phase_High := 16#38#;
            WOI_SD0    := 16#07#;
            WOI_SD1    := 16#05#;
            Phase_SD0  := 6;
            Phase_SD1  := 6;

         when Medium =>
            Period_A   := 16#0B#;
            Period_B   := 16#09#;
            Phase_High := 16#78#;
            WOI_SD0    := 16#0B#;
            WOI_SD1    := 16#09#;
            Phase_SD0  := 10;
            Phase_SD1  := 10;

         when Long =>
            Period_A   := 16#0F#;
            Period_B   := 16#0D#;
            Phase_High := 16#B8#;
            WOI_SD0    := 16#0F#;
            WOI_SD1    := 16#0D#;
            Phase_SD0  := 14;
            Phase_SD1  := 14;
      end case;

      Write (This, REG_RANGE_CONFIG_VCSEL_PERIOD_A, Period_A, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_RANGE_CONFIG_VCSEL_PERIOD_B, Period_B, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_RANGE_CONFIG_VALID_PHASE_HIGH, Phase_High, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_SD_CONFIG_WOI_SD0, WOI_SD0, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_SD_CONFIG_WOI_SD1, WOI_SD1, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_SD_CONFIG_INITIAL_PHASE_SD0, Phase_SD0, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_SD_CONFIG_INITIAL_PHASE_SD1, Phase_SD1, Status);
      if not Status then
         return;
      end if;

      This.Distance_Mode := Mode;

      --  15 ms timing budget is only valid for Short mode
      if New_Budget = 15 and then Mode /= Short then
         New_Budget := 50;
      end if;

      Set_Timing_Budget_Ms (This, New_Budget, Status);
   end Set_Distance_Mode;

   --------------------------
   -- Set_Timing_Budget_Ms --
   --------------------------

   procedure Set_Timing_Budget_Ms
     (This      : in out VL53L1X_Ranging_Sensor;
      Budget_Ms : HAL.UInt16;
      Status    : out Boolean)
   is
      --  Pre-computed timing macrop values from the ST VL53L1X ULD lookup
      --  table (vl53l1x_api.c).  MacropA is written to registers 0x005E/5F;
      --  MacropB is written to 0x0061/62.
      Macrop_A : UInt16;
      Macrop_B : UInt16;
   begin
      case Budget_Ms is
         when 15 =>
            if This.Distance_Mode /= Short then
               Status := False;
               return;
            end if;
            Macrop_A := 16#01D4#;
            Macrop_B := 16#0214#;

         when 20 =>
            case This.Distance_Mode is
               when Short =>
                  Macrop_A := 16#0228#;
                  Macrop_B := 16#0256#;
               when Medium | Long =>
                  Macrop_A := 16#001E#;
                  Macrop_B := 16#0022#;
            end case;

         when 33 =>
            case This.Distance_Mode is
               when Short =>
                  Macrop_A := 16#0498#;
                  Macrop_B := 16#04B3#;
               when Medium | Long =>
                  Macrop_A := 16#0060#;
                  Macrop_B := 16#006E#;
            end case;

         when 50 =>
            case This.Distance_Mode is
               when Short =>
                  Macrop_A := 16#0779#;
                  Macrop_B := 16#07A2#;
               when Medium | Long =>
                  Macrop_A := 16#00AD#;
                  Macrop_B := 16#00C6#;
            end case;

         when 100 =>
            case This.Distance_Mode is
               when Short =>
                  Macrop_A := 16#0F3C#;
                  Macrop_B := 16#0F65#;
               when Medium | Long =>
                  Macrop_A := 16#01CC#;
                  Macrop_B := 16#01F3#;
            end case;

         when 200 =>
            case This.Distance_Mode is
               when Short =>
                  Macrop_A := 16#1E7B#;
                  Macrop_B := 16#1EA4#;
               when Medium | Long =>
                  Macrop_A := 16#02D9#;
                  Macrop_B := 16#0327#;
            end case;

         when 500 =>
            case This.Distance_Mode is
               when Short =>
                  Macrop_A := 16#4C01#;
                  Macrop_B := 16#4C24#;
               when Medium | Long =>
                  Macrop_A := 16#06D6#;
                  Macrop_B := 16#0785#;
            end case;

         when others =>
            Status := False;
            return;
      end case;

      --  Use grouped-parameter hold to ensure an atomic update
      Write (This, REG_SYSTEM_GROUPED_PARAMETER_HOLD_0, UInt8'(16#01#), Status);
      if not Status then
         return;
      end if;
      Write (This, REG_SYSTEM_GROUPED_PARAMETER_HOLD_1, UInt8'(16#01#), Status);
      if not Status then
         return;
      end if;

      Write (This, REG_RANGE_CONFIG_TIMEOUT_MACROP_A_HI, Macrop_A, Status);
      if not Status then
         return;
      end if;

      Write (This, REG_RANGE_CONFIG_TIMEOUT_MACROP_B_HI, Macrop_B, Status);
      if not Status then
         return;
      end if;

      --  Release grouped-parameter hold
      Write (This, REG_SYSTEM_GROUPED_PARAMETER_HOLD_0, UInt8'(16#00#), Status);
      if not Status then
         return;
      end if;
      Write (This, REG_SYSTEM_GROUPED_PARAMETER_HOLD_1, UInt8'(16#00#), Status);

      if Status then
         This.Timing_Budget := Budget_Ms;
      end if;
   end Set_Timing_Budget_Ms;

   ---------------------
   -- Set_GPIO_Config --
   ---------------------

   procedure Set_GPIO_Config
     (This          : in out VL53L1X_Ranging_Sensor;
      Functionality : VL53L1X_GPIO_Functionality;
      Polarity      : VL53L1X_Interrupt_Polarity;
      Status        : out Boolean)
   is
      Func_Val : UInt8;
      Tmp      : UInt8;
   begin
      case Functionality is
         when No_Interrupt    => Func_Val := 16#00#;
         when Level_Low       => Func_Val := 16#01#;
         when Level_High      => Func_Val := 16#02#;
         when Out_Of_Window   => Func_Val := 16#03#;
         when New_Sample_Ready => Func_Val := 16#20#;
      end case;

      Write (This, REG_SYSTEM_INTERRUPT_CONFIG_GPIO, Func_Val, Status);

      if Status then
         Read (This, REG_GPIO_HV_MUX_CTRL, Tmp, Status);
      end if;

      if Status then
         case Polarity is
            when Polarity_High =>
               --  Clear bit 4: active-high interrupt
               Tmp := Tmp and 16#EF#;
            when Polarity_Low =>
               --  Set bit 4: active-low interrupt
               Tmp := Tmp or 16#10#;
         end case;

         Write (This, REG_GPIO_HV_MUX_CTRL, Tmp, Status);
      end if;

      if Status then
         This.Int_Polarity := Polarity;
         Clear_Interrupt (This);
      end if;
   end Set_GPIO_Config;

   --------------------------
   -- Clear_Interrupt_Mask --
   --------------------------

   procedure Clear_Interrupt
     (This : VL53L1X_Ranging_Sensor)
   is
      Status : Boolean;
   begin
      Write (This, REG_SYSTEM_INTERRUPT_CLEAR, UInt8'(16#01#), Status);
   end Clear_Interrupt;

   ------------------
   -- Start_Ranging --
   ------------------

   procedure Start_Ranging (This : VL53L1X_Ranging_Sensor)
   is
      Status : Boolean;
   begin
      Write (This, REG_SYSTEM_MODE_START, UInt8'(16#40#), Status);
   end Start_Ranging;

   ------------------
   -- Stop_Ranging --
   ------------------

   procedure Stop_Ranging (This : VL53L1X_Ranging_Sensor)
   is
      Status : Boolean;
   begin
      Write (This, REG_SYSTEM_MODE_START, UInt8'(16#00#), Status);
   end Stop_Ranging;

   ------------------------------------
   -- Set_Intermeasurement_Period_Ms --
   ------------------------------------

   procedure Set_Intermeasurement_Period_Ms
     (This   : VL53L1X_Ranging_Sensor;
      Period : HAL.UInt32;
      Status : out Boolean)
   is
      --  Approximate conversion: register_value ≈ Period * 1065 / 1000.
      --  For accurate conversion, read OSC_MEASURED_FAST_OSC_FREQUENCY
      --  (0x0006) and use the ST ULD formula.
      IMPeriod : constant UInt32 := (Period * 1065) / 1000;
   begin
      Write (This, REG_SYSTEM_INTERMEASUREMENT_PERIOD, IMPeriod, Status);
   end Set_Intermeasurement_Period_Ms;

end VL53L1X;
