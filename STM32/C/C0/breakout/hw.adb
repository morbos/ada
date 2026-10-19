with Utils;                    use Utils;
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with STM32_SVD.GPIO;           use STM32_SVD.GPIO;
with STM32_SVD.TIM;            use STM32_SVD.TIM;
with STM32_SVD.SYSCFG;         use STM32_SVD.SYSCFG;

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
