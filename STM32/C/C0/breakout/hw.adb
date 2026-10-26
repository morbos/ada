with Utils;                    use Utils;
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with STM32_SVD.GPIO;           use STM32_SVD.GPIO;
with STM32_SVD.TIM;            use STM32_SVD.TIM;
with STM32_SVD.SYSCFG;         use STM32_SVD.SYSCFG;
with STM32_SVD.SPI;            use STM32_SVD.SPI;

package body HW is

   procedure Init_GPIO is
   begin
      RCC_Periph.RCC_IOPENR.GPIOAEN := True;
      RCC_Periph.RCC_IOPENR.GPIOBEN := True;
      RCC_Periph.RCC_IOPENR.GPIOCEN := True;

      ------------------------------------------------------------------
      --  PA11 SPI1_MISO (chk mux)   (Ball D1)
      --  PA7  SPI1_MOSI (mux unch?) (Ball E2)
      --  PB6  SPI1_CLK              (Ball A2)
      --  PC15 CS                    (Ball A4)
      ------------------------------------------------------------------
      --  Set PA7,PA11 & PB6 to AF
      GPIOA_Periph.GPIOA_MODER.Arr (7)  := 2#10#;
      GPIOA_Periph.GPIOA_MODER.Arr (11) := 2#10#;
      GPIOB_Periph.GPIOB_MODER.Arr (6)  := 2#10#;
      --  Set PC15 to Output
      GPIOC_Periph.GPIOC_MODER.Arr (15) := 2#01#;

      --  Set push-pull
      GPIOA_Periph.GPIOA_OTYPER.OT.Arr (7)   := False;
      GPIOA_Periph.GPIOA_OTYPER.OT.Arr (11)  := False;
      GPIOB_Periph.GPIOB_OTYPER.OT.Arr (6)   := False;
      GPIOC_Periph.GPIOC_OTYPER.OT.Arr (15)  := False;

      --  Set Output Speed to High (2#10#)
      GPIOA_Periph.GPIOA_OSPEEDR.Arr (7)  := 2#10#;
      GPIOA_Periph.GPIOA_OSPEEDR.Arr (11) := 2#10#;
      GPIOB_Periph.GPIOB_OSPEEDR.Arr (6)  := 2#10#;
      GPIOC_Periph.GPIOC_OSPEEDR.Arr (15) := 2#10#;

      --  Set pull up.
      GPIOC_Periph.GPIOC_PUPDR.Arr (15) := 0;

      --  Map Alternate Functions
      GPIOA_Periph.GPIOA_AFRL.Arr (7)  := 0;  --  AF0
      GPIOA_Periph.GPIOA_AFRH.Arr (11) := 0;  --  AF0
      GPIOB_Periph.GPIOB_AFRL.Arr (6)  := 10; --  AF10

   end Init_GPIO;

   procedure Init_SPI
   is
--      CR1 : SPI_CR1_Register;
--      CR2 : SPI_CR2_Register;
   begin
      RCC_Periph.RCC_APBENR2.SPI1EN := True;
      --  1. Ensure SPI is disabled and clear I2S mode
      SPI1_Periph.SPI_CR1.SPE := False;
      SPI1_Periph.SPI_I2SCFGR.I2SMOD := False;
      --  2. Configure SPI_CR2 (Data Size & FIFO Threshold)
      SPI1_Periph.SPI_CR2 :=
        (DS    => 16#7#,   --  8-bit data transfers (0111b)
         FRXTH => True,    -- RXNE generated on 8-bit / 1-byte FIFO reception
         SSOE  => False,   -- Software NSS control (manual GPIO CS)
         others => <>);

      --  3. Configure CRC Polynomial (optional, but in your config)
      STM32_SVD.SPI.SPI1_Periph.SPI_CRCPR := 7;

      --  4. Configure SPI_SPI1_Periph.SPI_CR1
      SPI1_Periph.SPI_CR1 :=
        (CPHA     => False,         -- P1Edge (1st clock edge)
         CPOL     => False,         -- Clock polarity Low
         MSTR     => True,          -- Master configuration
         BR       => 2#000#,        -- BRP_0: f_PCLK / 2 => 6Mhz
         LSBFIRST => False,         -- MSB transmitted first
         SSI      => True,          -- Internal NSS = High (prevents MODF)
         SSM      => True,          -- Software slave management enabled
         RXONLY   => False,         -- Full duplex (2 lines)
         CRCL     => False,         -- 8-bit CRC
         CRCNEXT  => False,
         CRCEN    => False,
         BIDIOE   => False,
         BIDIMODE => False,         -- 2-line unidirectional mode
         SPE      => True,          -- Enable peripheral
         others   => <>);

   end Init_SPI;

   procedure Set_SPI_CS
   is
   begin
      --  Set CS
      GPIOC_Periph.GPIOC_BSRR.BS.Arr (15) := True;
   end Set_SPI_CS;

   procedure Clr_SPI_CS
   is
   begin
      --  Clr CS
      GPIOC_Periph.GPIOC_BSRR.BR.Arr (15) := True;
   end Clr_SPI_CS;

end HW;
