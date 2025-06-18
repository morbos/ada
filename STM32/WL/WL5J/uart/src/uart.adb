with HAL;           use HAL;
with STM32.Device;  use STM32.Device;
with STM32.GPIO;    use STM32.GPIO;
with Peripherals;   use Peripherals;

with STM32_SVD.RCC;           use STM32_SVD.RCC;
with STM32_SVD.USART;         use STM32_SVD.USART;

package body Uart is
   procedure Initialize_Uart is
      ---------------
      -- Init_GPIO --
      ---------------
      procedure Init_GPIO;
      procedure Init_GPIO is
         Config : GPIO_Port_Configuration;
         UART_Points : constant GPIO_Points := UART1_TX_Pin & UART1_RX_Pin;

      begin
         Enable_Clock (UART_Points);

         Config.Output_Type := Push_Pull;
         Config.Resistors   := Pull_Up;
         Config.Speed       := High_Speed;
         Config.Mode        := Mode_AF;

         Configure_IO (UART1_TX_Pin, Config);

         Config.Mode        := Mode_In;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Pull_Up;
         Config.Speed       := High_Speed;
         Config.Mode        := Mode_AF;

         Configure_IO (UART1_RX_Pin, Config);

         Configure_Alternate_Function (UART_Points, UART1_AF);

      end Init_GPIO;

      procedure Init_HW;
      procedure Init_HW is
         Baudrate     : constant Positive := 9_600;
         APB_Clock    : constant Positive := 48_000_000;
         Int_Divider  : constant Positive := (APB_Clock / (16 * Baudrate)) * 100;
         Frac_Divider : constant Natural := Int_Divider rem 100;
      begin
         RCC_Periph.APB2ENR.USART1EN := True;
         USART1_Periph.BRR.BRR := BRR_BRR_Field_1 (APB_Clock / Baudrate);
         USART1_Periph.CR1 :=
           (UE     => True,
            RE     => True,
            TE     => True,
            FIFOEN => True,
            others => <>);
         USART1_Periph.CR2 := (others => <>);
         USART1_Periph.CR3 := (others => <>);
      end Init_HW;
   begin
      Init_GPIO;
      Init_HW;
   end Initialize_Uart;

   procedure Send_Char (Char : Character) is
   begin
      loop
         exit when USART1_Periph.ISR.TXFE;
      end loop;
      USART1_Periph.TDR.TDR := UInt9 (Character'Pos (Char));
      loop
         exit when USART1_Periph.ISR.TXFE;
      end loop;
   end Send_Char;

   procedure Send_Message (S : String) is
   begin
      for I in S'Range loop
         Send_Char (S (I));
      end loop;
   end Send_Message;

end Uart;
