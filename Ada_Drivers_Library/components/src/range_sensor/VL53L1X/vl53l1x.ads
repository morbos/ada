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

--  Key differences from VL53L0X:
--    - 16-bit register addresses (I2C writes send 2-byte address prefix)
--    - Initialization via a 91-byte default configuration blob
--    - Three distance modes: Short (~1.3 m), Medium (~3 m), Long (~4 m)
--    - Different result register layout (crosstalk-corrected range at 0x0096)
--    - Interrupt status read from GPIO_TIO_HV_STATUS (0x0031) bit 0

with HAL.I2C;

package VL53L1X is

   Fix_Point_16_16_Delta : constant := 1.0 / (2.0 ** 16);

   type Fix_Point_16_16 is
     delta Fix_Point_16_16_Delta
     range -2.0 ** 15 .. 2.0 ** 15 - Fix_Point_16_16_Delta
     with Size => 32;

   type VL53L1X_Ranging_Sensor
     (Port : not null HAL.I2C.Any_I2C_Port) is limited private;

   type VL53L1X_Distance_Mode is
     (Short,    --  up to ~1.3 m
      Medium,   --  up to ~3 m
      Long);    --  up to ~4 m (default)

   type VL53L1X_GPIO_Functionality is
     (No_Interrupt,
      Level_Low,
      Level_High,
      Out_Of_Window,
      New_Sample_Ready);

   type VL53L1X_Interrupt_Polarity is
     (Polarity_Low,
      Polarity_High);

   procedure Initialize
     (This : in out VL53L1X_Ranging_Sensor);

   function Read_Id
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8;
   --  Returns 0xEA for VL53L1X

   function Read_Module_Type
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8;

   function Read_Mask_Rev
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8;

   function Read_FW_Status
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8;

   function Read_Range_Status
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8;

   function Read_Interrupt_Polarity
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt8;

   function Check_For_Data_Ready
     (This : VL53L1X_Ranging_Sensor) return Boolean;

   procedure Start_Ranging (This : VL53L1X_Ranging_Sensor);

   procedure Stop_Ranging (This : VL53L1X_Ranging_Sensor);

   procedure Clear_Interrupt (This : VL53L1X_Ranging_Sensor);

   procedure Set_Device_Address
     (This   : in out VL53L1X_Ranging_Sensor;
      Addr   : HAL.I2C.I2C_Address;
      Status : out Boolean);

   procedure Data_Init
     (This   : in out VL53L1X_Ranging_Sensor;
      Status : out Boolean);
   --  Writes the 91-byte default configuration blob and sets VHV parameters.
   --  Must be called before Static_Init.

   procedure Static_Init
     (This          : in out VL53L1X_Ranging_Sensor;
      GPIO_Function : VL53L1X_GPIO_Functionality;
      Status        : out Boolean);
   --  Configures the GPIO interrupt.  After this call the sensor is ready;
   --  use Set_Distance_Mode and Set_Timing_Budget_Ms to tune behaviour.

   function Range_Value_Available
     (This : VL53L1X_Ranging_Sensor) return Boolean;
   --  Returns True when a new measurement is ready (polls GPIO_TIO_HV_STATUS)

   function Read_Range_Millimeters
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt16
     with Pre => Range_Value_Available (This);
   --  Read the crosstalk-corrected range in mm and clear the interrupt

   function Read_Range_Single_Millimeters
     (This : VL53L1X_Ranging_Sensor) return HAL.UInt16;
   --  Convenience: start ranging, block until ready, then read

   procedure Set_Distance_Mode
     (This   : in out VL53L1X_Ranging_Sensor;
      Mode   : VL53L1X_Distance_Mode;
      Status : out Boolean);
   --  Updates VCSEL periods and SD timing for the chosen mode, then
   --  re-applies the currently stored timing budget.

   procedure Set_Timing_Budget_Ms
     (This      : in out VL53L1X_Ranging_Sensor;
      Budget_Ms : HAL.UInt16;
      Status    : out Boolean);
   --  Supported budgets (ms): 15 (Short only), 20, 33, 50, 100, 200, 500.
   --  Timing macrop values are sourced from the ST VL53L1X ULD lookup table.

   procedure Set_GPIO_Config
     (This          : in out VL53L1X_Ranging_Sensor;
      Functionality : VL53L1X_GPIO_Functionality;
      Polarity      : VL53L1X_Interrupt_Polarity;
      Status        : out Boolean);

   procedure Set_Intermeasurement_Period_Ms
     (This   : VL53L1X_Ranging_Sensor;
      Period : HAL.UInt32;
      Status : out Boolean);
   --  Relevant only in continuous (back-to-back) mode.
   --  Approximation: register_value = Period * 1065 / 1000.

private

   --  All VL53L1X register addresses are 16-bit.
   REG_SOFT_RESET                                    : constant HAL.UInt16 := 16#0000#;
   REG_I2C_SLAVE_DEVICE_ADDRESS                      : constant HAL.UInt16 := 16#0001#;
   REG_VHV_CONFIG_TIMEOUT_MACROP_LOOP_BOUND          : constant HAL.UInt16 := 16#0008#;
   REG_MM_CONFIG_INNER_OFFSET_MM                     : constant HAL.UInt16 := 16#0020#;
   REG_MM_CONFIG_OUTER_OFFSET_MM                     : constant HAL.UInt16 := 16#0022#;
   REG_DSS_CONFIG_TARGET_TOTAL_RATE_MCPS             : constant HAL.UInt16 := 16#0024#;
   REG_GPIO_HV_MUX_CTRL                              : constant HAL.UInt16 := 16#0030#;
   REG_GPIO_TIO_HV_STATUS                            : constant HAL.UInt16 := 16#0031#;
   REG_SYSTEM_INTERRUPT_CONFIG_GPIO                  : constant HAL.UInt16 := 16#0046#;
   REG_RANGE_CONFIG_TIMEOUT_MACROP_A_HI              : constant HAL.UInt16 := 16#005E#;
   REG_RANGE_CONFIG_VCSEL_PERIOD_A                   : constant HAL.UInt16 := 16#0060#;
   REG_RANGE_CONFIG_TIMEOUT_MACROP_B_HI              : constant HAL.UInt16 := 16#0061#;
   REG_RANGE_CONFIG_VCSEL_PERIOD_B                   : constant HAL.UInt16 := 16#0063#;
   REG_RANGE_CONFIG_SIGMA_THRESH                     : constant HAL.UInt16 := 16#0064#;
   REG_RANGE_CONFIG_MIN_COUNT_RATE_RTN_LIMIT_MCPS    : constant HAL.UInt16 := 16#0066#;
   REG_RANGE_CONFIG_VALID_PHASE_HIGH                 : constant HAL.UInt16 := 16#0069#;
   REG_SYSTEM_INTERMEASUREMENT_PERIOD                : constant HAL.UInt16 := 16#006C#;
   REG_SYSTEM_GROUPED_PARAMETER_HOLD_0               : constant HAL.UInt16 := 16#0071#;
   REG_SD_CONFIG_WOI_SD0                             : constant HAL.UInt16 := 16#0078#;
   REG_SD_CONFIG_WOI_SD1                             : constant HAL.UInt16 := 16#0079#;
   REG_SD_CONFIG_INITIAL_PHASE_SD0                   : constant HAL.UInt16 := 16#007A#;
   REG_SD_CONFIG_INITIAL_PHASE_SD1                   : constant HAL.UInt16 := 16#007B#;
   REG_ROI_CONFIG_USER_ROI_CENTRE_SPAD               : constant HAL.UInt16 := 16#007F#;
   REG_ROI_CONFIG_USER_ROI_REQUESTED_GLOBAL_XY_SIZE  : constant HAL.UInt16 := 16#0080#;
   REG_SYSTEM_GROUPED_PARAMETER_HOLD_1               : constant HAL.UInt16 := 16#00F4#;
   REG_SYSTEM_INTERRUPT_CLEAR                        : constant HAL.UInt16 := 16#0086#;
   REG_SYSTEM_MODE_START                             : constant HAL.UInt16 := 16#0087#;
   REG_RESULT_RANGE_STATUS                           : constant HAL.UInt16 := 16#0089#;
   REG_RESULT_FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0 : constant HAL.UInt16 := 16#0096#;
   REG_FIRMWARE_SYSTEM_STATUS                        : constant HAL.UInt16 := 16#00E5#;
   REG_IDENTIFICATION_MODEL_ID                       : constant HAL.UInt16 := 16#010F#;
   REG_MODULE_TYPE                                   : constant HAL.UInt16 := 16#0110#;
   REG_MASK_REV                                      : constant HAL.UInt16 := 16#0111#;

   --  First register of the 91-byte default configuration blob
   REG_INIT_CONFIG_START                             : constant HAL.UInt16 := 16#002D#;

   type VL53L1X_Ranging_Sensor (Port : not null HAL.I2C.Any_I2C_Port)
   is limited record
      I2C_Address   : HAL.I2C.I2C_Address       := 16#52#;
      Distance_Mode : VL53L1X_Distance_Mode      := Long;
      Timing_Budget : HAL.UInt16                 := 50;
      Int_Polarity  : VL53L1X_Interrupt_Polarity := Polarity_High;
   end record;

   procedure I2C_Write
     (This   : VL53L1X_Ranging_Sensor;
      Data   : HAL.UInt8_Array;
      Status : out Boolean);

   procedure I2C_Read
     (This   : VL53L1X_Ranging_Sensor;
      Data   : out HAL.UInt8_Array;
      Status : out Boolean);

   --  All Write/Read overloads accept a 16-bit register Index.
   --  The two address bytes are prepended automatically in the I2C frame.

   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt8_Array;
      Status : out Boolean);
   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt8;
      Status : out Boolean);
   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt16;
      Status : out Boolean);
   procedure Write
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : HAL.UInt32;
      Status : out Boolean);

   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt8_Array;
      Status : out Boolean);
   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt8;
      Status : out Boolean);
   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt16;
      Status : out Boolean);
   procedure Read
     (This   : VL53L1X_Ranging_Sensor;
      Index  : HAL.UInt16;
      Data   : out HAL.UInt32;
      Status : out Boolean);

end VL53L1X;
