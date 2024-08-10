with HAL;              use HAL;
with STM32.RCC;        use STM32.RCC;
with STM32_SVD.RCC;    use STM32_SVD.RCC;
with STM32.EXTI;       use STM32.EXTI;
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

end Hw;
