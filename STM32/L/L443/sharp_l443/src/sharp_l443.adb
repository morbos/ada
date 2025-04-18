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

--  This program demonstrates reading the analog voltage value on a GPIO
--  pin with an ADC unit, using polling. The pin is continously polled in an
--  infinite loop, displaying the current sample on each iteration. Connect the
--  pin to an appropriate external input voltage to drive the displayed value.
--  Absent an input, the sensed (and displayed) value will be meaningless. The
--  green LED will toggle on each iteration, as an additional indication of
--  execution.
--
--  NB: The input voltage must not exceed the maximum allowed for the board's
--  circuitry!  A value between zero and three volts (inclusive) is safe.
--
--  The displayed value is the raw sample quantity in the range 0 .. 4095,
--  representing an input voltage of 0.0 to 3.0 volts. Thus, for an
--  incoming voltage of 1.5 volts, the sample would be approximately half of
--  4095, i.e., 2048.

--  Note that you will likely need to reset the board manually after loading.

--  with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);

with STM32.Board;  use STM32.Board;
with STM32.Device; use STM32.Device;

with HAL;          use HAL;
with STM32.ADC;    use STM32.ADC;
with STM32.GPIO;   use STM32.GPIO;
with Ada.Text_IO;  use Ada.Text_IO;

with Ada.Real_Time;  use Ada.Real_Time;

procedure Sharp_l443 is

   Converter     : Analog_To_Digital_Converter renames ADC;
   Input_Channel  : constant Analog_Input_Channel := 7;
   Input          : constant GPIO_Point := PA2;

   All_Regular_Conversions : constant Regular_Channel_Conversions :=
     (1 => (Channel => Input_Channel, Sample_Time => Sample_144_Cycles)
     );

   Raw : UInt32 := 0;

   Successful : Boolean;
   Timed_Out  : exception;
   Init_Fail  : exception;

   procedure Configure_Analog_Input;

   ----------------------------
   -- Configure_Analog_Input --
   ----------------------------

   procedure Configure_Analog_Input is
   begin
      Enable_Clock (Input);
      Configure_IO (Input, (Mode => Mode_Analog, others => <>));
   end Configure_Analog_Input;


begin
   Initialize_Board;

   Configure_Analog_Input;

   Enable_Clock (Converter);

   Reset_All_ADC_Units;

   if not Init (Converter) then
      raise Init_Fail;
   end if;

   Configure_Common_Properties
     (Mode           => Independent,
      Prescalar      => PCLK2_Div_2,
      DMA_Mode       => Disabled,
      Sampling_Delay => Sampling_Delay_5_Cycles);

   Configure_Unit
     (Converter,
      Resolution => ADC_Resolution_12_Bits,
      Alignment  => Right_Aligned);

   Configure_Regular_Conversions
     (Converter,
      Continuous  => False,
      Enable_EOC  => True,
      Trigger     => Software_Triggered,
      Conversions => All_Regular_Conversions);

   Enable (Converter);

   loop
      Start_Conversion (Converter);

      Poll_For_Status (Converter, Regular_Channel_Conversion_Complete, Successful);
      if not Successful then
         raise Timed_Out;
      end if;

      Raw := UInt32 (Conversion_Value (Converter));

      Put_Line ("Dist : " & UInt32'Image (Raw));

   end loop;
end Sharp_l443;
