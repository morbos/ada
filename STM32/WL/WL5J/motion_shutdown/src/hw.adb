with STM32.EXTI;           use STM32.EXTI;
with STM32.SYSCFG;         use STM32.SYSCFG;

package body Hw
is
   procedure Initialize_HW
   is
      procedure Initialize_GPIO;
      procedure Initialize_Interrupts;
      procedure Initialize_GPIO
      is
         Configuration : GPIO_Port_Configuration;
      begin
         Enable_Clock (Wakeup_Pin);
         Configuration.Mode        := Mode_In;
         Configuration.Output_Type := Push_Pull;
         Configuration.Resistors   := Pull_Down;
         Configuration.Speed       := Speed_2MHz;
         Configure_IO (Wakeup_Pin, Configuration);
      end Initialize_GPIO;
      procedure Initialize_Interrupts
      is
         Index : Integer;
      begin
--         SYSCFG_Clock_Enable;
         Connect_External_Interrupt (Wakeup_Pin);
         Index := GPIO_Pin'Pos (Wakeup_Pin.Pin);
         Enable_External_Interrupt (External_Line_Number'Val (Index),
                                    Interrupt_Rising_Edge);
      end Initialize_Interrupts;
   begin
      Initialize_GPIO;
      Initialize_Interrupts;
   end Initialize_HW;

end Hw;
