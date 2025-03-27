with System;
with STM32.Board;  use STM32.Board;
with STM32.Device; use STM32.Device;

with HAL;           use HAL;
with STM32.GPIO;    use STM32.GPIO;
with STM32.ADC;     use STM32.ADC;
with STM32_SVD.ADC; use STM32_SVD.ADC;

--  use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time; use Ada.Real_Time;

procedure cds is

--   ADC_Base : constant System.Address := System'To_Address (16#40012400#);
--   LADC : ADC_Peripheral (Discriminent => Val_1)
--     with Volatile, Address => ADC_Base;
   Converter     : Analog_To_Digital_Converter renames ADC;
--   Converter      : Analog_To_Digital_Converter renames LADC;
   Input_Channel0 : constant Analog_Input_Channel := 3;
   Input0         : constant GPIO_Point := PB4;

   Input_Channel1 : constant Analog_Input_Channel := 3;
   Input1         : constant GPIO_Point := PB4;

   All_Regular_Conversions : constant Regular_Channel_Conversions :=
     (1 => (Channel => Input_Channel0, Sample_Time => Sample1),
     2 => (Channel => Input_Channel1, Sample_Time => Sample2)
     );

   Raw : UInt32 := 0;
   Volt : Float := 0.0;

   Successful : Boolean;
   Timed_Out  : exception;
   Init_Fail  : exception;

   procedure Configure_Analog_Input;

   ----------------------------
   -- Configure_Analog_Input --
   ----------------------------

   procedure Configure_Analog_Input is
   begin
      Enable_Clock (Input0);
      Configure_IO (Input0, (Mode => Mode_Analog, Resistors => Floating, others => <>));
   end Configure_Analog_Input;

   X, Y : UInt16;
begin
   Initialize_Board;

   Configure_Analog_Input;

   Enable_Clock (Converter);

   Reset_All_ADC_Units;

   Configure_Unit
     (Converter,
      Resolution => ADC_Resolution_12_Bits,
      Alignment  => Right_Aligned);

   Configure_Regular_Conversions
     (Converter,
      Continuous  => False,
      Trigger     => Software_Triggered,
      Enable_EOC  => True,
      Conversions => All_Regular_Conversions);

   Enable (Converter);

   loop
      Start_Conversion (Converter);

      Poll_For_Status (Converter, Regular_Channel_Conversion_Complete, Successful);
      if not Successful then
         raise Timed_Out;
      end if;

      Raw := UInt32 (Conversion_Value (Converter));
      delay until Clock + Milliseconds (1000);
   end loop;
end cds;
