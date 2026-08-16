
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with STM32_SVD.GPIO;           use STM32_SVD.GPIO;
with STM32_SVD.TIM;            use STM32_SVD.TIM;
with STM32_SVD.SYSCFG;         use STM32_SVD.SYSCFG;

package body HW is

   procedure Init_TIM1_PWM is
   begin
      RCC_Periph.RCC_APBENR2.TIM1EN := True;
      --  1. Configure Channel Modes (CCMR1 for Ch1/Ch2, CCMR2 for Ch4)
      --    Set Output Compare 1/2/4 to PWM Mode 1 (110) with Preload Enable (OCxPE)

      TIM1_Periph.TIM1_CCMR1_output.OC1M1  := 2#110#; -- PWM Mode 1
      TIM1_Periph.TIM1_CCMR1_output.OC1PE  := True;   -- Preload enable

      TIM1_Periph.TIM1_CCMR2_output.OC3M1  := 2#110#; -- PWM Mode 1
      TIM1_Periph.TIM1_CCMR2_output.OC3PE  := True;   -- Preload enable

      TIM1_Periph.TIM1_CCMR2_output.OC4M1  := 2#110#; -- PWM Mode 1
      TIM1_Periph.TIM1_CCMR2_output.OC4PE  := True;   -- Preload enable

      --  2. Enable Outputs in Channel Capture/Compare Enable Register (CCER)
      TIM1_Periph.TIM1_CCER.CC1E := True; -- Enable Channel 1 output
      TIM1_Periph.TIM1_CCER.CC3E := True; -- Enable Channel 3 output
      TIM1_Periph.TIM1_CCER.CC4E := True; -- Enable Channel 4 output

      --  3. Set Frequency / Resolution (PSC and ARR)
      --    Example: For a 10-bit PWM resolution (0..1023), set ARR = 1023
      TIM1_Periph.TIM1_PSC := 0;      -- Set prescaler as needed for clock speed
      TIM1_Periph.TIM1_ARR := 1023;   -- Period match value

      --  4. Enable Auto-Reload Preload (CR1.ARPE)
      TIM1_Periph.TIM1_CR1.ARPE := True;

      --  5. Set Initial Compare Values (Duty Cycles to 0)
      TIM1_Periph.TIM1_CCR1 := 0;
      TIM1_Periph.TIM1_CCR3 := 0;
      TIM1_Periph.TIM1_CCR4 := 0;

      --  6. TIM1 ADVANCED TIMER MUST-HAVES:
      --    Enable Main Output Enable (MOE) in BDTR
      TIM1_Periph.TIM1_BDTR.MOE := True;

      --    Trigger an Update Event (UG) to latch PSC, ARR, and CCMR shadow registers
      TIM1_Periph.TIM1_EGR.UG := True;

      --  7. Enable Counter
      TIM1_Periph.TIM1_CR1.CEN := True;

      TIM1_Periph.TIM1_AF1.BKINE := False;

   end Init_TIM1_PWM;

   procedure Update_CCR (CCR_Addr : System.Address; Value : UInt16) is
      Reg : Volatile_UInt16 with Address => CCR_Addr;
   begin
      Reg := Volatile_UInt16 (Value);
   end Update_CCR;

   procedure Init_GPIO is
   begin
      RCC_Periph.RCC_IOPENR.GPIOAEN := True;
      RCC_Periph.RCC_IOPENR.GPIOBEN := True;
      ------------------------------------------------------------------
      --  Port A Configuration: PA8 (TIM1_CH1) & PA2 (TIM1_CH2)
      ------------------------------------------------------------------
      --  Set PA8 and PA2 to Alternate Function Mode (2#10#)
      GPIOA_Periph.GPIOA_MODER.Arr (8) := 2#10#;
      GPIOA_Periph.GPIOA_MODER.Arr (2) := 2#10#;

      --  Set Output Speed to High (2#10#)
      GPIOA_Periph.GPIOA_OSPEEDR.Arr (8) := 2#10#;
      GPIOA_Periph.GPIOA_OSPEEDR.Arr (2) := 2#10#;

      --  Map Alternate Functions: AF2 = 2#0010# for PA8 and PA1
      --  PA1 is in AFRL (pins 0..7), PA8 is in AFRH (pins 8..15)
      GPIOA_Periph.GPIOA_AFRL.Arr (2) := 5; -- AF5 (TIM1_CH3)
      GPIOA_Periph.GPIOA_AFRH.Arr (8) := 2; -- AF2 (TIM1_CH1)

      ------------------------------------------------------------------
      --  Port B Configuration: PB7 (TIM1_CH4)
      ------------------------------------------------------------------
      --  Set PB7 to Alternate Function Mode
      GPIOB_Periph.GPIOB_MODER.Arr (7) := 2#10#;

      --  Set Output Speed to High (2#10#)
      GPIOB_Periph.GPIOB_OSPEEDR.Arr (7) := 2#10#;

      --  Map Alternate Function: AF1 = 1 for PB7
      --  PB7 is in AFRL (pins 0..7)
      GPIOB_Periph.GPIOB_AFRL.Arr (7) := 1; -- AF1 (TIM1_CH4)

      --  Need to setup the SYSCONF mux

      RCC_Periph.RCC_APBENR2.SYSCFGEN := True;
      SYSCFG_Periph.SYSCFG_CFGR3.PINMUX.Arr (0) := 0;  --  PB7
      SYSCFG_Periph.SYSCFG_CFGR3.PINMUX.Arr (1) := 3;  --  PA2
      SYSCFG_Periph.SYSCFG_CFGR3.PINMUX.Arr (2) := 0;  --  PA8

   end Init_GPIO;

end HW;
