with HAL;              use HAL;
with STM32.Device;     use STM32.Device;
with STM32.Board;      use STM32.Board;
with STM32.GPIO;       use STM32.GPIO;
with STM32.I2C;        use STM32.I2C;
with STM32.RCC;        use STM32.RCC;
with Peripherals;      use Peripherals;
with STM32_SVD.RCC;    use STM32_SVD.RCC;
with STM32.EXTI;       use STM32.EXTI;
with STM32_SVD.EXTI;   use STM32_SVD.EXTI;

use STM32;

package body Hw is

   procedure Enable_EXTI17
   is
      Line : constant External_Line_Number := EXTI_Line_17;
      Index : constant Natural := External_Line_Number'Pos (Line);
   begin
      Enable_External_Interrupt (Line, Interrupt_Rising_Edge);
   end Enable_EXTI17;

   procedure Enable_EXTI20
   is
      Line : constant External_Line_Number := EXTI_Line_20;
      Index : constant Natural := External_Line_Number'Pos (Line);
   begin
      Enable_External_Interrupt (Line, Interrupt_Rising_Edge);
   end Enable_EXTI20;

   procedure Turn_On_Led
   is
   begin
      Clear (Led_Pin);
   end Turn_On_Led;
   procedure Turn_Off_Led
   is
   begin
      Set (Led_Pin);
   end Turn_Off_Led;

   procedure Initialize_HW
   is
      ---------------
      -- Init_GPIO --
      ---------------

      procedure Initialize_GPIO;
      procedure Initialize_GPIO is
         Config : GPIO_Port_Configuration;
      begin

         Enable_Clock (LIS3MDL_Power_Pin);
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Config.Speed       := Low_Speed;
         Config.Mode        := Mode_Out;
         Configure_IO (LIS3MDL_Power_Pin, Config);

         Set (LIS3MDL_Power_Pin); --  Start on

         Enable_Clock (Led_Pin);
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Config.Speed       := Low_Speed;
         Config.Mode        := Mode_Out;
         Configure_IO (Led_Pin, Config);

         Set (Led_Pin); --  Turns the LED off

--         Set (Led_Pin); --  Turns the LED on

      end Initialize_GPIO;

      procedure Initialize_I2C_GPIO
        (Port     : access I2C_Port;
         SCL      : GPIO_Point;
         SDA      : GPIO_Point;
         I2C_AF   : GPIO_Alternate_Function
        );

      procedure Initialize_I2C_GPIO
        (Port     : access I2C_Port;
         SCL      : GPIO_Point;
         SDA      : GPIO_Point;
         I2C_AF   : GPIO_Alternate_Function
        )
      is
         GPIO_Conf            : GPIO_Port_Configuration;
         Selected_Clock_Speed : constant := 400_000;
         I2C_Points           : constant GPIO_Points := SDA & SCL;
      begin
         Enable_Clock (SCL);
         Enable_Clock (SDA);
         Enable_Clock (Port.all);

         STM32.Device.Reset (Port.all);

         GPIO_Conf.Speed       := High_Speed;
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

      end Initialize_I2C_GPIO;

   begin
      Initialize_I2C_GPIO (Port   => LIS3MDL_I2C_Port,
                           SCL    => LIS3MDL_I2C_Clock_Pin,
                           SDA    => LIS3MDL_I2C_Data_Pin,
                           I2C_AF => LIS3MDL_I2C_Port_AF
                          );
      Initialize_GPIO;

   end Initialize_HW;

end Hw;
