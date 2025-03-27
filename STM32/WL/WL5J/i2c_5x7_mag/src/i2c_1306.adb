with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
with HAL;             use HAL;
--  with HAL.I2C;
--  with HAL.GPIO;        use HAL.GPIO;
with HAL.Bitmap;
with Peripherals;     use Peripherals;
with Interfaces;      use Interfaces;
with Utils;           use Utils;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;
with STM32.I2C;       use STM32.I2C;
with STM32.SYSCFG;    use STM32.SYSCFG;
with STM32.EXTI;      use STM32.EXTI;
with STM32.RCC;       use STM32.RCC;
with SSD1306;         use SSD1306;
with Fonts;           use Fonts;
with Hw;              use Hw;
with LIS3MDL_I2C;     use LIS3MDL_I2C;
with Exti;            use Exti;
with Mag;             use Mag;

use STM32; -- for GPIO_Alternate_Function
with Ravenscar_Time;
with Ada.Real_Time;   use Ada.Real_Time;
with Ada.Text_IO;     use Ada.Text_IO;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Exti;  pragma Unreferenced (Exti);

procedure I2C_1306 is

--   Display : SSD1306_128x64_Screen (Port => Selected_I2C_Port,
--                                    RST => Selected_RST_Pin'Access,
--                                    Time => Ravenscar_Time.Delays);

   Display : SSD1306_Screen (Buffer_Size_In_Byte => (128 * 64) / 8,
                             Width => 128,
                             Height => 64,
                             Port => Selected_I2C_Port,
                             RST => Selected_RST_Pin'Access,
                             Time => Ravenscar_Time.Delays);

   ----------------
   -- Set_Up_MAG --
   ----------------

   Got     : Sensor_Data;
   procedure Init_Interrupts;
   procedure Init_Interrupts
   is
      Index : Integer;
   begin
      SYSCFG_Clock_Enable;
      Connect_External_Interrupt (LIS3MDL_Int_Pin);
      Clear_External_Interrupt (EXTI_Line_0);
      Index := GPIO_Pin'Pos (LIS3MDL_Int_Pin.Pin);
      Enable_External_Interrupt (External_Line_Number'Val (Index),
                                 Interrupt_Rising_Edge);
   end Init_Interrupts;

   procedure Initialize_I2C_GPIO
     (Port     : access I2C_Port;
      SCL      : GPIO_Point;
      SDA      : GPIO_Point;
      I2C_AF   : GPIO_Alternate_Function;
      RST      : GPIO_Point
     );

   procedure Initialize_I2C_GPIO
     (Port     : access I2C_Port;
      SCL      : GPIO_Point;
      SDA      : GPIO_Point;
      I2C_AF   : GPIO_Alternate_Function;
      RST      : GPIO_Point
     )
   is
      GPIO_Conf            : GPIO_Port_Configuration;
      Selected_Clock_Speed : constant := 400_000;
      I2C_Points           : constant GPIO_Points := SDA & SCL;
   begin
--      Enable_Clock (SCL);
--      Enable_Clock (SDA);
      Enable_Clock (RST);
--      Enable_Clock (Port.all);

--      STM32.Device.Reset (Port.all);

--      GPIO_Conf.Speed       := Fast_Speed;
--      GPIO_Conf.Mode        := Mode_AF;
--      GPIO_Conf.Output_Type := Open_Drain;
--      GPIO_Conf.Resistors   := Pull_Up;
--      Configure_IO (SCL, GPIO_Conf);
--      Configure_IO (SDA, GPIO_Conf);
--
--      Configure_Alternate_Function (I2C_Points, I2C_AF);
--
--      STM32.I2C.Configure
--        (Port.all,
--         (Clock_Speed              => Selected_Clock_Speed,
--          Addressing_Mode          => Addressing_Mode_7bit,
--          General_Call_Enabled     => False,
--          Clock_Stretching_Enabled => True,
--          Own_Address              => 16#00#,
--          others                   => <>));

      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Speed       := Low_Speed;
      GPIO_Conf.Resistors   := Floating;
      Configure_IO (RST, Config => GPIO_Conf);

   end Initialize_I2C_GPIO;

   X, Y : UInt16;
   Ping : UInt16 := 0;
begin
   Initialize_Board;
   Initialize_HW;
   Init_Interrupts;
   Set_Up_MAG;

   Initialize_I2C_GPIO (Port   => Selected_I2C_Port,
                        SCL    => Selected_I2C_Clock_Pin,
                        SDA    => Selected_I2C_Data_Pin,
                        I2C_AF => Selected_I2C_Port_AF,
                        RST    => Selected_RST_Pin
                       );

--   Initialize_Debug_SubGhz_GPIO;

   Initialize (Display, False);

   Initialize_Layer (This => Display,
                     Layer => 1,
                     Mode => HAL.Bitmap.M_1);

   Fill_Region (This => Display,
                X_Start => 0,
                X_End => Display.Width - 1,
                Y_Start => 0,
                Y_End => Display.Height - 1, Colour => 1);

   Fill_Region (This => Display,
                X_Start => 1,
                X_End => Display.Width - 2,
                Y_Start => 1,
                Y_End => Display.Height - 2, Colour => 0);

   --  Display what we have drawn.
   Turn_On (Display);

--   Initialize_Debug_SubGhz_GPIO;

   loop
      Get_Mag_Reading (Got);
      X := 4 + Ping;
      Y := 24;
      DrawString (Display, X, Y, "         ", 1);
      X := 4 + Ping;
      Y := 24;
      DrawString (Display, X, Y, Got (X_Axis)'Image, 1);
      X := 4 + Ping;
      Y := 34;
      DrawString (Display, X, Y, "         ", 1);
      X := 4 + Ping;
      Y := 34;
      DrawString (Display, X, Y, Got (Y_Axis)'Image, 1);
      X := 4 + Ping;
      Y := 44;
      DrawString (Display, X, Y, "         ", 1);
      X := 4 + Ping;
      Y := 44;
      DrawString (Display, X, Y, Got (Z_Axis)'Image, 1);
      if Ping > 0 then
         Ping := 0;
      else
         Ping := 80;
      end if;
      My_Delay (1_000); --  1 second
   end loop;
end I2C_1306;
