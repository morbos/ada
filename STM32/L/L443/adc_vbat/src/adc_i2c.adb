with STM32.Board;  use STM32.Board;
with STM32.Device; use STM32.Device;

with HAL;          use HAL;
with HAL.Bitmap;
with Peripherals;  use Peripherals;
with STM32.ADC;    use STM32.ADC;
with STM32.GPIO;   use STM32.GPIO;
with STM32.I2C;    use STM32.I2C;
with SSD1306;      use SSD1306;
with Fonts;        use Fonts;
--  use STM32; -- for GPIO_Alternate_Function
with Ravenscar_Time;
with Ada.Real_Time;  use Ada.Real_Time;
with Ada.Text_IO;  use Ada.Text_IO;

procedure Adc_i2c is

   Display : SSD1306_Screen (Buffer_Size_In_Byte => (128 * 64) / 8,
                             Width => 128,
                             Height => 64,
                             Port => Selected_I2C_Port,
                             RST => Selected_RST_Pin'Access,
                             Time => Ravenscar_Time.Delays);


   Converter     : Analog_To_Digital_Converter renames ADC;
   Input_Channel0 : constant Analog_Input_Channel := 0;
   Input0         : constant GPIO_Point := PA4;

   All_Regular_Conversions : constant Regular_Channel_Conversions :=
     (1 => (Channel => Input_Channel0, Sample_Time => Sample_112_Cycles));

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
      null;
--      Enable_Clock (Input0);
--      Configure_IO (Input0, (Mode => Mode_Analog, Resistors => Floating, others => <>));
--      Enable_Clock (Input1);
--      Configure_IO (Input1, (Mode => Mode_Analog, Resistors => Floating, others => <>));
   end Configure_Analog_Input;

   procedure Initialize_GPIO
     (Port     : access I2C_Port;
      SCL      : GPIO_Point;
      SDA      : GPIO_Point;
      I2C_AF   : STM32.GPIO_Alternate_Function;
      RST      : GPIO_Point
     );

   procedure Initialize_GPIO
     (Port     : access I2C_Port;
      SCL      : GPIO_Point;
      SDA      : GPIO_Point;
      I2C_AF   : STM32.GPIO_Alternate_Function;
      RST      : GPIO_Point
     )
   is
      GPIO_Conf            : GPIO_Port_Configuration;
      Selected_Clock_Speed : constant := 400_000;
      I2C_Points           : constant GPIO_Points := SDA & SCL;
   begin
      Enable_Clock (SCL);
      Enable_Clock (SDA);
      Enable_Clock (RST);
      Enable_Clock (Port.all);

      STM32.Device.Reset (Port.all);

      GPIO_Conf.Speed       := Speed_50MHz;
      GPIO_Conf.Mode        := Mode_AF;
      GPIO_Conf.Output_Type := Open_Drain;
      GPIO_Conf.Resistors   := Pull_Up;
      Configure_IO (SCL, GPIO_Conf);
      Configure_IO (SDA, GPIO_Conf);

      Configure_Alternate_Function (I2C_Points, I2C_AF);

      STM32.I2C.Configure
        (Port.all,
         (Clock_Speed              => Selected_Clock_Speed,
          Addressing_Mode          => Addressing_Mode_7bit,
          General_Call_Enabled     => False,
          Clock_Stretching_Enabled => True,
          Own_Address              => 16#00#,
          others                   => <>));

      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Speed       := Speed_2MHz;
      GPIO_Conf.Resistors   := Floating;
      Configure_IO (RST, Config => GPIO_Conf);

   end Initialize_GPIO;

   X, Y : UInt16;
begin
   Initialize_Board;

   Initialize_GPIO (Port  => Selected_I2C_Port,
                    SCL   => Selected_I2C_Clock_Pin,
                    SDA   => Selected_I2C_Data_Pin,
                    I2C_AF => Selected_I2C_Port_AF,
                    RST   => Selected_RST_Pin
                   );

   Initialize (Display, False);

   Initialize_Layer (This => Display,
                     Layer => 1,
                     Mode => HAL.Bitmap.M_1);

   --  Draw a bounding box by
   --  a) fill
   Fill_Region (This => Display,
                X_Start => 0,
                X_End => Display.Width - 1,
                Y_Start => 0,
                Y_End => Display.Height - 1, Colour => 1);

   --  b) unfill 1 pel in around.
   Fill_Region (This => Display,
                X_Start => 1,
                X_End => Display.Width - 2,
                Y_Start => 1,
                Y_End => Display.Height - 2, Colour => 0);


   X := 4;
   Y := 20;
   DrawString (Display, X, Y, "ADC00: ", 1);

   --  Display what we have drawn.
   Turn_On (Display);

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
      X := 39;
      Y := 20;
      DrawString (Display, X, Y, "     ", 1);
      X := 39;
      Y := 20;
      DrawString (Display, X, Y, UInt32'Image (Raw), 1);
      delay until Clock + Milliseconds (1000);
   end loop;
end Adc_i2c;
