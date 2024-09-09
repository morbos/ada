with HAL;              use HAL;
with STM32.Device;     use STM32.Device;
with STM32.Board;      use STM32.Board;
with STM32.RCC;        use STM32.RCC;
with STM32.GPIO;       use STM32.GPIO;
with STM32.EXTI;       use STM32.EXTI;
with Peripherals;     use Peripherals;

with STM32_SVD.RCC;    use STM32_SVD.RCC;
with STM32_SVD.EXTI;   use STM32_SVD.EXTI;

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

   procedure Initialize_GPIO is
      Config            : GPIO_Port_Configuration;
      RF_SW_Pins       : GPIO_Points := RF_SW_Pin2 & RF_SW_Pin1;
   begin
      Enable_Clock (RF_SW_Pins);
      Config.Speed       := High_Speed;
      Config.Mode        := Mode_Out;
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Floating;
      Configure_IO (RF_SW_Pins, Config);

      Clear (RF_SW_Pin1);
      Set (RF_SW_Pin2);

   end Initialize_GPIO;

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
            --  This could be LP or HP. We only have HP
            Clear (RF_SW_Pin1);
            Set (RF_SW_Pin2);
         when others =>
            null;
      end case;
   end RAK_RF_Switch;

end Hw;
