with STM32.GPIO;      use STM32.GPIO;
with STM32.Device;    use STM32.Device;

package body Adc is

   Converter      : Analog_To_Digital_Converter renames STM32.Device.ADC;

   Input_Channel0 : constant Analog_Input_Channel := 2;
   Input0         : constant GPIO_Point := PB3;

--   Input_Channel1 : constant Analog_Input_Channel := 4;
--   Input1         : constant GPIO_Point := PB4;

   Input_Channel1 : constant Analog_Input_Channel := 2;
   Input1         : constant GPIO_Point := PB3;

   All_Regular_Conversions : constant Regular_Channel_Conversions :=
     (1 => (Channel => Input_Channel0, Sample_Time => Sample1),
      2 => (Channel => Input_Channel1, Sample_Time => Sample2)
     );

   procedure Initialize_ADC
   is
   begin
      Enable_Clock (Converter);

      Enable_Clock (Input0);
      Configure_IO (Input0, (Mode => Mode_Analog, Resistors => Floating, others => <>));
      Enable_Clock (Input1);
      Configure_IO (Input1, (Mode => Mode_Analog, Resistors => Floating, others => <>));

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

      Set_Sampling_Choice
        (Converter,
         Sample1,
         Sample_79_5_Cycles);

      Set_Sampling_Choice
        (Converter,
         Sample2,
         Sample_79_5_Cycles);

      Enable (Converter);

   end Initialize_ADC;

   function Get_ADC return UInt32
   is
      Raw : UInt32 := 0;
      Successful : Boolean;
      Timed_Out  : exception;
   begin
      Start_Conversion (Converter);
      Poll_For_Status (Converter, Regular_Channel_Conversion_Complete, Successful);
      if not Successful then
         raise Timed_Out;
      end if;
      Raw := UInt32 (Conversion_Value (Converter));
      return Raw;
   end Get_ADC;

end Adc;
