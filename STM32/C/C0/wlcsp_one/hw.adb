with STM32_SVD.RCC;            use STM32_SVD.RCC;
with STM32_SVD.GPIO;           use STM32_SVD.GPIO;
with STM32_SVD.TIM;            use STM32_SVD.TIM;
with STM32_SVD.SYSCFG;         use STM32_SVD.SYSCFG;

package body HW is

   procedure Init_GPIO is
   begin
      RCC_Periph.RCC_IOPENR.GPIOBEN := True;
      RCC_Periph.RCC_IOPENR.GPIOCEN := True;

      ------------------------------------------------------------------
      --  Port B Configuration: PB6  I2C1_SCL (Ball A2)
      --  Port C Configuration: PC14 I2C1_SDA (Ball B3)
      ------------------------------------------------------------------
      --  Set PB6 and PC14 to Alternate Function Mode (2#10#)
      GPIOB_Periph.GPIOB_MODER.Arr (6)  := 2#10#;
      GPIOC_Periph.GPIOC_MODER.Arr (14) := 2#10#;

      --  Set open-drain
      GPIOB_Periph.GPIOB_OTYPER.OT.Arr (6)  := True;
      GPIOC_Periph.GPIOC_OTYPER.OT.Arr (14)  := True;

      --  Set Output Speed to High (2#10#)
      GPIOB_Periph.GPIOB_OSPEEDR.Arr (6) := 2#10#;
      GPIOC_Periph.GPIOC_OSPEEDR.Arr (14) := 2#10#;

      --  Map Alternate Functions
      GPIOB_Periph.GPIOB_AFRL.Arr (6)  := 6; -- AF6 (I2C_SCL)
      GPIOC_Periph.GPIOC_AFRH.Arr (14) := 14; -- AF14 (I2C_SDA)

   end Init_GPIO;

   procedure Enable_I2C
   is
   begin
      RCC_Periph.RCC_APBENR1.I2C1EN := True;
   end Enable_I2C;

end HW;
