with HAL;              use HAL;
with STM32.Device;     use STM32.Device;
with STM32.Board;      use STM32.Board;
with STM32.RCC;        use STM32.RCC;
with STM32.GPIO;       use STM32.GPIO;
with STM32.I2C;        use STM32.I2C;
with STM32.EXTI;       use STM32.EXTI;
with Peripherals;      use Peripherals;

with STM32_SVD.RCC;    use STM32_SVD.RCC;
with STM32_SVD.EXTI;   use STM32_SVD.EXTI;

use STM32;

package body Hw is

   procedure Initialize_HW
   is
      ---------------
      -- Init_GPIO --
      ---------------

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

      end Initialize_I2C_GPIO;
      procedure Initialize_GPIO;
      procedure Initialize_GPIO
      is
         Config       : GPIO_Port_Configuration;
      begin
         Enable_Clock (LIS3MDL_Int_Pin);
         Config.Mode        := Mode_In;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Config.Speed       := Speed_50MHz;
         Configure_IO (LIS3MDL_Int_Pin, Config);


      end Initialize_GPIO;

   begin
      Initialize_I2C_GPIO (Port   => LIS3MDL_I2C_Port,
                           SCL    => LIS3MDL_I2C_Clock_Pin,
                           SDA    => LIS3MDL_I2C_Data_Pin,
                           I2C_AF => LIS3MDL_I2C_Port_AF
                          );
      Initialize_GPIO;
   end Initialize_HW;

   procedure Enable_MCO
   is
      GPIO_Conf       : GPIO_Port_Configuration;
   begin
      Enable_Clock (PA8);

      GPIO_Conf.Speed       := Speed_100MHz;
      GPIO_Conf.Mode        := Mode_AF;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;

      Configure_IO (PA8, GPIO_Conf);

      Configure_Alternate_Function (PA8, GPIO_AF_MCO_0);

      RCC_Periph.CFGR.MCOPRE := 3;
      RCC_Periph.CFGR.MCOSEL := 1; --  SYSCLK

   end Enable_MCO;

end Hw;
