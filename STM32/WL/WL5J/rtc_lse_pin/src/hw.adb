with HAL;                          use HAL;
with Peripherals;                  use Peripherals;
with STM32.Device;                 use STM32.Device;
with STM32.Board;                  use STM32.Board;
with STM32.RCC;                    use STM32.RCC;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.RCC;                    use STM32.RCC;
with STM32_SVD.RCC;                use STM32_SVD.RCC;
with STM32.EXTI;                   use STM32.EXTI;
with STM32_SVD.EXTI;               use STM32_SVD.EXTI;

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

   procedure Enable_GPIO
   is
      Config       : GPIO_Port_Configuration;
   begin
      Enable_Clock (Wakeup_Pin);
      Config.Mode        := Mode_In;
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Pull_Down;
      Config.Speed       := Speed_2MHz;
      Configure_IO (Wakeup_Pin, Config);
   end Enable_GPIO;

end Hw;
