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

   procedure Initialize_HW
   is
      ---------------
      -- Init_GPIO --
      ---------------

      procedure Initialize_GPIO;
      procedure Initialize_GPIO is
         Config       : GPIO_Port_Configuration;
         RF_SW_Pins   : GPIO_Points := RF_SW_Pin2 & RF_SW_Pin1;
      begin
         Enable_Clock (HF_Pin);
         Enable_Clock (RF_SW_Pins);

         Config.Mode        := Mode_In;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Config.Speed       := High_Speed;
         Configure_IO (HF_Pin, Config);

         Config.Speed       := High_Speed;
         Config.Mode        := Mode_Out;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Configure_IO (RF_SW_Pins, Config);

         Clear (RF_SW_Pin1);
         Set (RF_SW_Pin2);

         Enable_Clock (TCXO_Pin);

         Config.Speed       := High_Speed;
         Config.Mode        := Mode_Out;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Configure_IO (TCXO_Pin, Config);

         Set (TCXO_Pin);

--         Enable_Clock (Red_Led_Pin);

--         Config.Speed       := High_Speed;
--         Config.Mode        := Mode_Out;
--         Config.Output_Type := Push_Pull;
--         Config.Resistors   := Floating;
--         Configure_IO (Red_Led_Pin, Config);

--         Enable_Clock (Green_Led_Pin);

--         Config.Speed       := High_Speed;
--         Config.Mode        := Mode_Out;
--         Config.Output_Type := Push_Pull;
--         Config.Resistors   := Floating;
--         Configure_IO (Green_Led_Pin, Config);
--
--         Clear (Red_Led_Pin);
--         Clear (Green_Led_Pin);

         Enable_Clock (UART2_TX_Pin);

         Config.Speed       := High_Speed;
         Config.Mode        := Mode_Out;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Configure_IO (UART2_TX_Pin, Config);

         Enable_Clock (UART2_RX_Pin);

         Config.Speed       := High_Speed;
         Config.Mode        := Mode_In;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Floating;
         Configure_IO (UART2_RX_Pin, Config);

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
         Enable_Clock (I2C_Points);
         Enable_Clock (Port.all);

         STM32.Device.Reset (Port.all);

         Configure_Alternate_Function (I2C_Points, I2C_AF);

         GPIO_Conf.Speed       := Low_Speed;
         GPIO_Conf.Mode        := Mode_AF;
         GPIO_Conf.Output_Type := Open_Drain;
         GPIO_Conf.Resistors   := Pull_Up;
         Configure_IO (I2C_Points, GPIO_Conf);

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
      Initialize_I2C_GPIO (Port   => LPS22HB_I2C_Port,
                           SCL    => LPS22HB_I2C_Clock_Pin,
                           SDA    => LPS22HB_I2C_Data_Pin,
                           I2C_AF => LPS22HB_I2C_Port_AF
                          );
      Initialize_GPIO;

   end Initialize_HW;

--   procedure Red_LED_On
--   is
--   begin
--      Set (Red_Led_Pin);
--   end Red_LED_On;
--
--   procedure Red_LED_Off
--   is
--   begin
--      Clear (Red_Led_Pin);
--   end Red_LED_Off;
--
--   procedure Green_LED_On
--   is
--   begin
--      Set (Green_Led_Pin);
--   end Green_LED_On;
--
--   procedure Green_LED_Off
--   is
--   begin
--      Clear (Green_Led_Pin);
--   end Green_LED_Off;

   --   Local decision on how this modules radio
   --   pins are used. Each module vendor is free
   --   to reassign so we have a fnptr to the local
   --   handler.
   procedure RAK_RF_Switch (Mode : RADIO_Mode) is
   begin
      case Mode is
         when RADIO_SWITCH_OFF =>
            Clear (RF_SW_Pin1);
            Clear (RF_SW_Pin2);
         when RADIO_SWITCH_RX =>
            Set (RF_SW_Pin1);
            Clear (RF_SW_Pin2);
         when RADIO_SWITCH_RFO =>
            --  This could be LP or HP.
            if Get_Pa_Power_Choice = HP_PA then
               Clear (RF_SW_Pin1);
               Set (RF_SW_Pin2);
            else
               Set (RF_SW_Pin1);
               Set (RF_SW_Pin2);
            end if;
         when others =>
            null;
      end case;
   end RAK_RF_Switch;

   function Check_ReInit return Boolean
   is
   begin
      Set (UART2_TX_Pin);
      if Set (UART2_RX_Pin) then
         Clear (UART2_TX_Pin);
         if not Set (UART2_RX_Pin) then
            return True;
         else
            return False;
         end if;
      else
         return False;
      end if;
   end Check_ReInit;

end Hw;
