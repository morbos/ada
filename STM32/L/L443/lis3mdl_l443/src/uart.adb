with HAL;           use HAL;
with STM32.Device;  use STM32.Device;
with STM32.GPIO;    use STM32.GPIO;
with STM32.USARTs;  use STM32.USARTs;
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
         Config.Speed       := Speed_50MHz;
         Config.Mode        := Mode_AF;

         Configure_IO (UART1_TX_Pin, Config);

         Config.Mode        := Mode_In;
         Config.Output_Type := Push_Pull;
         Config.Resistors   := Pull_Up;
         Config.Speed       := Speed_50MHz;
         Config.Mode        := Mode_AF;

         Configure_IO (UART1_RX_Pin, Config);

         Configure_Alternate_Function (UART_Points, UART1_AF);

      end Init_GPIO;

      procedure Init_HW;
      procedure Init_HW is
         Baudrate     : constant Positive := 115_200;
         APB_Clock    : constant Positive := 48_000_000;
         Int_Divider  : constant Positive := (APB_Clock / (16 * Baudrate)) * 100;
         Frac_Divider : constant Natural := Int_Divider rem 100;
      begin
         Enable_Clock (USART_1);
         Disable (USART_1);

         Set_Baud_Rate    (USART_1, 115200);
         Set_Mode         (USART_1, Tx_Rx_Mode);
         Set_Stop_Bits    (USART_1, Stopbits_1);
         Set_Word_Length  (USART_1, Word_Length_8);
         Set_Parity       (USART_1, No_Parity);
         Set_Flow_Control (USART_1, No_Flow_Control);

         Enable (USART_1);
      end Init_HW;
   begin
      Init_GPIO;
      Init_HW;
   end Initialize_Uart;

   procedure Send_Char (Char : Character) is
      Done : Boolean;
   begin
      loop
         Done := USART1_Periph.ISR.TXE;
         exit when USART1_Periph.ISR.TXE;
      end loop;
      USART1_Periph.TDR.TDR := UInt9 (Character'Pos (Char));
      loop
         exit when USART1_Periph.ISR.TXE;
      end loop;
   end Send_Char;

   procedure Send_Message (S : String) is
   begin
      for I in S'Range loop
         Send_Char (S (I));
      end loop;
   end Send_Message;

end Uart;
