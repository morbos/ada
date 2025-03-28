--  An User controlled RGB LED is provided on the Board, located on the right hand edge.
--  The LEDs in this device are controlled by LPC55S69 ports P1_4 (Blue), P1_6 (Red), P1_7
--  (Green) with the LEDs being illuminated when the respective LED is pulled low. Note that
--  these port lines are also connected to expansion connector J18.
with HAL;               use HAL;
with NXP_SVD;           use NXP_SVD;
with NXP_SVD.GPIO;      use NXP_SVD.GPIO;
with NXP_SVD.INPUTMUX;  use NXP_SVD.INPUTMUX;
with NXP;               use NXP;
with NXP.Device;        use NXP.Device;
with NXP.Board;         use NXP.Board;
with NXP.GPIO;          use NXP.GPIO;

with Ada.Real_Time;     use Ada.Real_Time;

procedure Test_S
is
   Configuration : GPIO_Port_Configuration;
   RX : GPIO_Point renames P0_29;
   TX : GPIO_Point renames P0_30;
   UART : GPIO_Points := RX & TX;
   AF : constant GPIO_Alternate_Function := GPIO_AF_FC0_USART;
begin
   Initialize_Board;
   Enable_Clock (UART);
   Configuration.Mode        := Mode_AF;
   Configuration.Output_Type := Push_Pull;
   Configuration.Speed       := Speed_Low;
   Configuration.Resistors   := Floating;
   Configure_IO (UART, Config => Configuration);

   Configure_Alternate_Function (UART, AF);

   -- attach 12 MHz clock to FLEXCOMM0 (debug console)
   CLOCK_AttachClk(BOARD_DEBUG_UART_CLK_ATTACH);
--
--    BOARD_InitPins();
--    BOARD_BootClockPLL150M();
--    BOARD_InitDebugConsole();
--    /*
--     * config.baudRate_Bps = 115200U;
--     * config.parityMode = kUSART_ParityDisabled;
--     * config.stopBitCount = kUSART_OneStopBit;
--     * config.loopback = false;
--     * config.enableTx = false;
--     * config.enableRx = false;
--     */
--    USART_GetDefaultConfig(&config);
--    config.baudRate_Bps = BOARD_DEBUG_UART_BAUDRATE;
--    config.enableTx     = true;
--    config.enableRx     = true;
--
--    USART_Init(DEMO_USART, &config, DEMO_USART_CLK_FREQ);
--
--    USART_WriteBlocking(DEMO_USART, txbuff, sizeof(txbuff) - 1);
--
--    while (1)
--    {
--        USART_ReadBlocking(DEMO_USART, &ch, 1);
--        USART_WriteBlocking(DEMO_USART, &ch, 1);

   loop
      for LED of LEDs loop
         Turn_On (LED);
         delay until Clock + Milliseconds (1000);
         Turn_Off (LED);
      end loop;
   end loop;
end Test_S;
