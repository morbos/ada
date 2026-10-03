--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RCC_CR_SYSDIV_Field is HAL.UInt3;
   subtype RCC_CR_HSIKERDIV_Field is HAL.UInt3;
   subtype RCC_CR_HSIDIV_Field is HAL.UInt3;

   --  RCC clock control register
   type RCC_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  System clock division factor This bitfield controlled by software
      --  sets the division factor of the system clock divider to produce
      --  SYSCLK clock:
      SYSDIV         : RCC_CR_SYSDIV_Field := 16#0#;
      --  HSI48 kernel clock division factor This bitfield controlled by
      --  software sets the division factor of the kernel clock divider to
      --  produce HSIKER clock:
      HSIKERDIV      : RCC_CR_HSIKERDIV_Field := 16#0#;
      --  HSI48 clock enable Set and cleared by software and hardware, with
      --  hardware taking priority. Kept low by hardware as long as the device
      --  is in a low-power mode. Kept high by hardware as long as the system
      --  is clocked with a clock derived from HSI48. This includes the exit
      --  from low-power modes and the system clock fall-back to HSI48 upon
      --  failing HSE oscillator clock selected as system clock source.
      HSION          : Boolean := True;
      --  HSI48 always-enable for peripheral kernels. Set and cleared by
      --  software. Setting the bit activates the HSI48 oscillator in Run and
      --  Stop modes, regardless of the HSION bit state. The HSI48 clock can
      --  only feed USART1, USART2, and I2C1 peripherals configured with HSI48
      --  as kernel clock. Note: Keeping the HSI48 active in Stop mode allows
      --  speeding up the serial interface communication as the HSI48 clock is
      --  ready immediately upon exiting Stop mode.
      HSIKERON       : Boolean := False;
      --  Read-only. HSI48 clock ready flag Set by hardware when the HSI48
      --  oscillator is enabled through HSION and ready to use (stable). Note:
      --  Upon clearing HSION, HSIRDY goes low after six HSI48 clock cycles.
      HSIRDY         : Boolean := True;
      --  HSI48 clock division factor This bitfield controlled by software sets
      --  the division factor of the HSI48 clock divider to produce HSISYS
      --  clock:
      HSIDIV         : RCC_CR_HSIDIV_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  HSE clock enable Set and cleared by software. Cleared by hardware to
      --  stop the HSE oscillator when entering Stop, or Standby, or Shutdown
      --  mode. This bit cannot be cleared if the HSE oscillator is used
      --  directly or indirectly as the system clock.
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag Set by hardware to indicate that the
      --  HSE oscillator is stable and ready for use. Note: Upon clearing
      --  HSEON, HSERDY goes low after six HSE clock cycles.
      HSERDY         : Boolean := False;
      --  HSE crystal oscillator bypass Set and cleared by software. When the
      --  bit is set, the internal HSE oscillator is bypassed for use of an
      --  external clock. The external clock must then be enabled with the
      --  HSEON bit set. Write access to the bit is only effective when the HSE
      --  oscillator is disabled.
      HSEBYP         : Boolean := False;
      --  Clock security system enable Set by software to enable the clock
      --  security system. When the bit is set, the clock detector is enabled
      --  by hardware when the HSE oscillator is ready, and disabled by
      --  hardware if a HSE clock failure is detected. The bit is cleared by
      --  hardware upon reset.
      CSSON          : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SYSDIV         at 0 range 2 .. 4;
      HSIKERDIV      at 0 range 5 .. 7;
      HSION          at 0 range 8 .. 8;
      HSIKERON       at 0 range 9 .. 9;
      HSIRDY         at 0 range 10 .. 10;
      HSIDIV         at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype RCC_ICSCR_HSICAL_Field is HAL.UInt8;
   subtype RCC_ICSCR_HSITRIM_Field is HAL.UInt7;

   --  RCC internal clock source calibration register
   type RCC_ICSCR_Register is record
      --  Read-only. HSI48 clock calibration This bitfield directly acts on the
      --  HSI48 clock frequency. Its value is a sum of an internal
      --  factory-programmed number and the value of the HSITRIM[6:0] bitfield.
      --  In the factory, the internal number is set to calibrate the HSI48
      --  clock frequency to 48 MHz (with HSITRIM[6:0] left at its reset
      --  value). Refer to the device datasheet for HSI48 calibration accuracy
      --  and for the frequency trimming granularity. Note: The trimming effect
      --  presents discontinuities at HSICAL[7:0] multiples of 64.
      HSICAL         : RCC_ICSCR_HSICAL_Field := 16#0#;
      --  HSI48 clock trimming The value of this bitfield contributes to the
      --  HSICAL[7:0] bitfield value. It allows HSI48 clock frequency user
      --  trimming. The HSI48 frequency accuracy as stated in the device
      --  datasheet applies when this bitfield is left at its reset value.
      HSITRIM        : RCC_ICSCR_HSITRIM_Field := 16#40#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR_Register use record
      HSICAL         at 0 range 0 .. 7;
      HSITRIM        at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype RCC_CFGR_SW_Field is HAL.UInt3;
   subtype RCC_CFGR_SWS_Field is HAL.UInt3;
   subtype RCC_CFGR_HPRE_Field is HAL.UInt4;
   subtype RCC_CFGR_PPRE_Field is HAL.UInt3;
   subtype RCC_CFGR_MCO2SEL_Field is HAL.UInt4;
   subtype RCC_CFGR_MCO2PRE_Field is HAL.UInt4;
   subtype RCC_CFGR_MCOSEL_Field is HAL.UInt4;
   subtype RCC_CFGR_MCOPRE_Field is HAL.UInt4;

   --  RCC clock configuration register
   type RCC_CFGR_Register is record
      --  System clock switch This bitfield is controlled by software and
      --  hardware. The bitfield selects the clock for SYSCLK as follows:
      --  Others: Reserved The setting is forced by hardware to 000 (HSISYS
      --  selected) when the MCU exits Stop, or Standby, or Shutdown mode, or
      --  when the setting is 001 (HSE selected) and HSE oscillator failure is
      --  detected.
      SW             : RCC_CFGR_SW_Field := 16#0#;
      --  Read-only. System clock switch status This bitfield is controlled by
      --  hardware to indicate the clock source used as system clock: Others:
      --  Reserved
      SWS            : RCC_CFGR_SWS_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  AHB prescaler This bitfield is controlled by software. To produce
      --  HCLK clock, it sets the division factor of SYSCLK clock as follows:
      --  0xxx: 1
      HPRE           : RCC_CFGR_HPRE_Field := 16#0#;
      --  APB prescaler This bitfield is controlled by software. To produce
      --  PCLK clock, it sets the division factor of HCLK clock as follows:
      --  0xx: 1
      PPRE           : RCC_CFGR_PPRE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Microcontroller clock output 2 clock selector This bitfield is
      --  controlled by software. It sets the clock selector for MCO2 output as
      --  follows: This bitfield is controlled by software. It sets the clock
      --  selector for MCO output as follows: Note: This clock output may have
      --  some truncated cycles at startup or during MCO2 clock source
      --  switching.
      MCO2SEL        : RCC_CFGR_MCO2SEL_Field := 16#0#;
      --  Microcontroller clock output 2 prescaler This bitfield is controlled
      --  by software. It sets the division factor of the clock sent to the
      --  MCO2 output as follows: ... It is highly recommended to set this
      --  field before the MCO2 output is enabled.
      MCO2PRE        : RCC_CFGR_MCO2PRE_Field := 16#0#;
      --  Microcontroller clock output clock selector This bitfield is
      --  controlled by software. It sets the clock selector for MCO output as
      --  follows: Note: This clock output may have some truncated cycles at
      --  startup or during MCO clock source switching. Any other value means
      --  no clock on MCO.
      MCOSEL         : RCC_CFGR_MCOSEL_Field := 16#0#;
      --  Microcontroller clock output prescaler This bitfield is controlled by
      --  software. It sets the division factor of the clock sent to the MCO
      --  output as follows: ... It is highly recommended to set this field
      --  before the MCO output is enabled.
      MCOPRE         : RCC_CFGR_MCOPRE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR_Register use record
      SW             at 0 range 0 .. 2;
      SWS            at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      HPRE           at 0 range 8 .. 11;
      PPRE           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MCO2SEL        at 0 range 16 .. 19;
      MCO2PRE        at 0 range 20 .. 23;
      MCOSEL         at 0 range 24 .. 27;
      MCOPRE         at 0 range 28 .. 31;
   end record;

   --  RCC clock interrupt enable register
   type RCC_CIER_Register is record
      --  LSI ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the LSI oscillator stabilization:
      LSIRDYIE      : Boolean := False;
      --  LSE ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the LSE oscillator stabilization:
      LSERDYIE      : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  HSI16 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSI16 oscillator
      --  stabilization:
      HSIRDYIE      : Boolean := False;
      --  HSE ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSE oscillator stabilization:
      HSERDYIE      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIER_Register use record
      LSIRDYIE      at 0 range 0 .. 0;
      LSERDYIE      at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      HSIRDYIE      at 0 range 3 .. 3;
      HSERDYIE      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC clock interrupt flag register
   type RCC_CIFR_Register is record
      --  Read-only. LSI ready interrupt flag This flag indicates a pending
      --  interrupt upon LSE clock getting ready. Set by hardware when the LSI
      --  clock becomes stable and LSIRDYDIE is set. Cleared by software
      --  setting the LSIRDYC bit.
      LSIRDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag This flag indicates a pending
      --  interrupt upon LSE clock getting ready. Set by hardware when the LSE
      --  clock becomes stable and LSERDYDIE is set. Cleared by software
      --  setting the LSERDYC bit.
      LSERDYF        : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. HSI16 ready interrupt flag This flag indicates a pending
      --  interrupt upon HSI16 clock getting ready. Set by hardware when the
      --  HSI16 clock becomes stable and HSIRDYIE is set in response to setting
      --  the HSION (refer to ). When HSION is not set but the HSI16 oscillator
      --  is enabled by the peripheral through a clock request, this bit is not
      --  set and no interrupt is generated. Cleared by software setting the
      --  HSIRDYC bit.
      HSIRDYF        : Boolean;
      --  Read-only. HSE ready interrupt flag This flag indicates a pending
      --  interrupt upon HSE clock getting ready. Set by hardware when the HSE
      --  clock becomes stable and HSERDYIE is set. Cleared by software setting
      --  the HSERDYC bit.
      HSERDYF        : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. HSE clock security system interrupt flag This flag
      --  indicates a pending interrupt upon HSE clock failure. Set by hardware
      --  when a failure is detected in the HSE oscillator. Cleared by software
      --  setting the CSSC bit.
      CSSF           : Boolean;
      --  Read-only. LSE clock security system interrupt flag This flag
      --  indicates a pending interrupt upon LSE clock failure. Set by hardware
      --  when a failure is detected in the LSE oscillator. Cleared by software
      --  by setting the LSECSSC bit.
      LSECSSF        : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CSSF           at 0 range 8 .. 8;
      LSECSSF        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RCC clock interrupt clear register
   type RCC_CICR_Register is record
      --  Write-only. LSI ready interrupt clear This bit is set by software to
      --  clear the LSIRDYF flag.
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear This bit is set by software to
      --  clear the LSERDYF flag.
      LSERDYC        : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. HSI16 ready interrupt clear This bit is set software to
      --  clear the HSIRDYF flag.
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear This bit is set by software to
      --  clear the HSERDYF flag.
      HSERDYC        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Write-only. Clock security system interrupt clear This bit is set by
      --  software to clear the HSECSSF flag.
      CSSC           : Boolean := False;
      --  Write-only. LSE Clock security system interrupt clear This bit is set
      --  by software to clear the LSECSSF flag.
      LSECSSC        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CSSC           at 0 range 8 .. 8;
      LSECSSC        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RCC I/O port reset register
   type RCC_IOPRSTR_Register is record
      --  I/O port A reset This bit is set and cleared by software.
      GPIOARST      : Boolean := False;
      --  I/O port B reset This bit is set and cleared by software.
      GPIOBRST      : Boolean := False;
      --  I/O port C reset This bit is set and cleared by software.
      GPIOCRST      : Boolean := False;
      --  I/O port D reset This bit is set and cleared by software.
      GPIODRST      : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  I/O port F reset This bit is set and cleared by software.
      GPIOFRST      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IOPRSTR_Register use record
      GPIOARST      at 0 range 0 .. 0;
      GPIOBRST      at 0 range 1 .. 1;
      GPIOCRST      at 0 range 2 .. 2;
      GPIODRST      at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      GPIOFRST      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB peripheral reset register
   type RCC_AHBRSTR_Register is record
      --  DMA1 and DMAMUX reset Set and cleared by software.
      DMA1RST        : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Flash memory interface reset Set and cleared by software. This bit
      --  can only be set when the Flash memory is in power down mode.
      FLASHRST       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  CRC reset Set and cleared by software.
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHBRSTR_Register use record
      DMA1RST        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FLASHRST       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC APB peripheral reset register 1
   type RCC_APBRSTR1_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  TIM3 timer reset Set and cleared by software.
      TIM3RST        : Boolean := False;
      --  unspecified
      Reserved_2_16  : HAL.UInt15 := 16#0#;
      --  USART2 reset Set and cleared by software.
      USART2RST      : Boolean := False;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  I2C1 reset Set and cleared by software.
      I2C1RST        : Boolean := False;
      --  unspecified
      Reserved_22_26 : HAL.UInt5 := 16#0#;
      --  Debug support reset Set and cleared by software.
      DBGRST         : Boolean := False;
      --  Power interface reset Set and cleared by software.
      PWRRST         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBRSTR1_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      Reserved_2_16  at 0 range 2 .. 16;
      USART2RST      at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      Reserved_22_26 at 0 range 22 .. 26;
      DBGRST         at 0 range 27 .. 27;
      PWRRST         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  RCC APB peripheral reset register 2
   type RCC_APBRSTR2_Register is record
      --  SYSCFG reset Set and cleared by software.
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_1_10  : HAL.UInt10 := 16#0#;
      --  TIM1 timer reset Set and cleared by software.
      TIM1RST        : Boolean := False;
      --  SPI1 reset Set and cleared by software.
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  USART1 reset Set and cleared by software.
      USART1RST      : Boolean := False;
      --  TIM14 timer reset Set and cleared by software.
      TIM14RST       : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  TIM16 timer reset Set and cleared by software.
      TIM16RST       : Boolean := False;
      --  TIM16 timer reset Set and cleared by software.
      TIM17RST       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  ADC reset Set and cleared by software.
      ADCRST         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBRSTR2_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      TIM14RST       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ADCRST         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC I/O port clock enable register
   type RCC_IOPENR_Register is record
      --  I/O port A clock enable This bit is set and cleared by software.
      GPIOAEN       : Boolean := False;
      --  I/O port B clock enable This bit is set and cleared by software.
      GPIOBEN       : Boolean := False;
      --  I/O port C clock enable This bit is set and cleared by software.
      GPIOCEN       : Boolean := False;
      --  I/O port D clock enable This bit is set and cleared by software.
      GPIODEN       : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  I/O port F clock enable This bit is set and cleared by software.
      GPIOFEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IOPENR_Register use record
      GPIOAEN       at 0 range 0 .. 0;
      GPIOBEN       at 0 range 1 .. 1;
      GPIOCEN       at 0 range 2 .. 2;
      GPIODEN       at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      GPIOFEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB peripheral clock enable register
   type RCC_AHBENR_Register is record
      --  DMA1 and DMAMUX clock enable Set and cleared by software. DMAMUX is
      --  enabled as long as at least one DMA peripheral is enabled.
      DMA1EN         : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Flash memory interface clock enable Set and cleared by software. This
      --  bit can only be cleared when the Flash memory is in power down mode.
      FLASHEN        : Boolean := True;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  CRC clock enable Set and cleared by software.
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHBENR_Register use record
      DMA1EN         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FLASHEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC APB peripheral clock enable register 1
   type RCC_APBENR1_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  TIM3 timer clock enable Set and cleared by software.
      TIM3EN         : Boolean := False;
      --  unspecified
      Reserved_2_9   : HAL.UInt8 := 16#0#;
      --  RTC APB clock enable Set and cleared by software.
      RTCAPBEN       : Boolean := False;
      --  WWDG clock enable Set by software to enable the window watchdog
      --  clock. Cleared by hardware system reset This bit can also be set by
      --  hardware if the WWDG_SW option bit is 0.
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_16 : HAL.UInt5 := 16#0#;
      --  USART2 clock enable Set and cleared by software.
      USART2EN       : Boolean := False;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  I2C1 clock enable Set and cleared by software.
      I2C1EN         : Boolean := False;
      --  unspecified
      Reserved_22_26 : HAL.UInt5 := 16#0#;
      --  Debug support clock enable Set and cleared by software.
      DBGEN          : Boolean := False;
      --  Power interface clock enable Set and cleared by software.
      PWREN          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBENR1_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      Reserved_2_9   at 0 range 2 .. 9;
      RTCAPBEN       at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_16 at 0 range 12 .. 16;
      USART2EN       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      Reserved_22_26 at 0 range 22 .. 26;
      DBGEN          at 0 range 27 .. 27;
      PWREN          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  RCC APB peripheral clock enable register 2
   type RCC_APBENR2_Register is record
      --  SYSCFG clock enable Set and cleared by software.
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_1_10  : HAL.UInt10 := 16#0#;
      --  TIM1 timer clock enable Set and cleared by software.
      TIM1EN         : Boolean := False;
      --  SPI1 clock enable Set and cleared by software.
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  USART1 clock enable Set and cleared by software.
      USART1EN       : Boolean := False;
      --  TIM14 timer clock enable Set and cleared by software.
      TIM14EN        : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  TIM16 timer clock enable Set and cleared by software.
      TIM16EN        : Boolean := False;
      --  TIM16 timer clock enable Set and cleared by software.
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  ADC clock enable Set and cleared by software.
      ADCEN          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBENR2_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      TIM14EN        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ADCEN          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC I/O port in Sleep mode clock enable register
   type RCC_IOPSMENR_Register is record
      --  I/O port A clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOASMEN     : Boolean := True;
      --  I/O port B clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOBSMEN     : Boolean := True;
      --  I/O port C clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOCSMEN     : Boolean := True;
      --  I/O port D clock enable during Sleep mode Set and cleared by
      --  software.
      GPIODSMEN     : Boolean := True;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#1#;
      --  I/O port F clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOFSMEN     : Boolean := True;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IOPSMENR_Register use record
      GPIOASMEN     at 0 range 0 .. 0;
      GPIOBSMEN     at 0 range 1 .. 1;
      GPIOCSMEN     at 0 range 2 .. 2;
      GPIODSMEN     at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      GPIOFSMEN     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB peripheral clock enable in Sleep/Stop mode register	
   type RCC_AHBSMENR_Register is record
      --  DMA1 and DMAMUX clock enable during Sleep mode Set and cleared by
      --  software. Clock to DMAMUX during Sleep mode is enabled as long as the
      --  clock in Sleep mode is enabled to at least one DMA peripheral.
      DMA1SMEN       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#1#;
      --  Flash memory interface clock enable during Sleep mode Set and cleared
      --  by software. This bit can be activated only when the Flash memory is
      --  in power down mode.
      FLASHSMEN      : Boolean := True;
      --  SRAM clock enable during Sleep mode Set and cleared by software.
      SRAMSMEN       : Boolean := True;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  CRC clock enable during Sleep mode Set and cleared by software.
      CRCSMEN        : Boolean := True;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#28#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHBSMENR_Register use record
      DMA1SMEN       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FLASHSMEN      at 0 range 8 .. 8;
      SRAMSMEN       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC APB peripheral clock enable in Sleep/Stop mode register 1	
   type RCC_APBSMENR1_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  TIM3 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM3SMEN       : Boolean := True;
      --  unspecified
      Reserved_2_9   : HAL.UInt8 := 16#CD#;
      --  RTC APB clock enable during Sleep mode Set and cleared by software.
      RTCAPBSMEN     : Boolean := True;
      --  WWDG clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      WWDGSMEN       : Boolean := True;
      --  unspecified
      Reserved_12_16 : HAL.UInt5 := 16#17#;
      --  USART2 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      USART2SMEN     : Boolean := True;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#3#;
      --  I2C1 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      I2C1SMEN       : Boolean := True;
      --  unspecified
      Reserved_22_26 : HAL.UInt5 := 16#3#;
      --  Debug support clock enable during Sleep mode Set and cleared by
      --  software.
      DBGSMEN        : Boolean := True;
      --  Power interface clock enable during Sleep mode Set and cleared by
      --  software.
      PWRSMEN        : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBSMENR1_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TIM3SMEN       at 0 range 1 .. 1;
      Reserved_2_9   at 0 range 2 .. 9;
      RTCAPBSMEN     at 0 range 10 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      Reserved_12_16 at 0 range 12 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      Reserved_22_26 at 0 range 22 .. 26;
      DBGSMEN        at 0 range 27 .. 27;
      PWRSMEN        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  RCC APB peripheral clock enable in Sleep/Stop mode register 2	
   type RCC_APBSMENR2_Register is record
      --  SYSCFG clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      SYSCFGSMEN     : Boolean := True;
      --  unspecified
      Reserved_1_10  : HAL.UInt10 := 16#0#;
      --  TIM1 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM1SMEN       : Boolean := True;
      --  SPI1 clock enable during Sleep mode Set and cleared by software.
      SPI1SMEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  USART1 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      USART1SMEN     : Boolean := True;
      --  TIM14 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM14SMEN      : Boolean := True;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#1#;
      --  TIM16 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM16SMEN      : Boolean := True;
      --  TIM16 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM17SMEN      : Boolean := True;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  ADC clock enable during Sleep mode Set and cleared by software.
      ADCSMEN        : Boolean := True;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBSMENR2_Register use record
      SYSCFGSMEN     at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1SMEN       at 0 range 11 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      TIM14SMEN      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TIM16SMEN      at 0 range 17 .. 17;
      TIM17SMEN      at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ADCSMEN        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_CCIPR_USART1SEL_Field is HAL.UInt2;
   subtype RCC_CCIPR_I2C1SEL_Field is HAL.UInt2;
   subtype RCC_CCIPR_I2S1SEL_Field is HAL.UInt2;
   subtype RCC_CCIPR_ADCSEL_Field is HAL.UInt2;

   --  RCC peripherals independent clock configuration register
   type RCC_CCIPR_Register is record
      --  USART1 clock source selection This bitfield is controlled by software
      --  to select USART1 clock source as follows:
      USART1SEL      : RCC_CCIPR_USART1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_11  : HAL.UInt10 := 16#0#;
      --  I2C1 clock source selection This bitfield is controlled by software
      --  to select I2C1 clock source as follows:
      I2C1SEL        : RCC_CCIPR_I2C1SEL_Field := 16#0#;
      --  I2S1 clock source selection This bitfield is controlled by software
      --  to select I2S1 clock source as follows:
      I2S1SEL        : RCC_CCIPR_I2S1SEL_Field := 16#0#;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  ADCs clock source selection This bitfield is controlled by software
      --  to select the clock source for ADC:
      ADCSEL         : RCC_CCIPR_ADCSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR_Register use record
      USART1SEL      at 0 range 0 .. 1;
      Reserved_2_11  at 0 range 2 .. 11;
      I2C1SEL        at 0 range 12 .. 13;
      I2S1SEL        at 0 range 14 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      ADCSEL         at 0 range 30 .. 31;
   end record;

   subtype RCC_CSR1_LSEDRV_Field is HAL.UInt2;
   subtype RCC_CSR1_RTCSEL_Field is HAL.UInt2;

   --  RCC control/status register 1
   type RCC_CSR1_Register is record
      --  LSE oscillator enable Set and cleared by software to enable LSE
      --  oscillator:
      LSEON          : Boolean := False;
      --  Read-only. LSE oscillator ready Set and cleared by hardware to
      --  indicate when the external 32 kHz oscillator is ready (stable): After
      --  the LSEON bit is cleared, LSERDY goes low after 6 external low-speed
      --  oscillator clock cycles.
      LSERDY         : Boolean := False;
      --  LSE oscillator bypass Set and cleared by software to bypass the LSE
      --  oscillator (in debug mode). This bit can be written only when the
      --  external 32 kHz oscillator is disabled (LSEON=0 and LSERDY=0).
      LSEBYP         : Boolean := False;
      --  LSE oscillator drive capability Set by software to select the LSE
      --  oscillator drive capability as follows: Applicable when the LSE
      --  oscillator is in Xtal mode, as opposed to bypass mode.
      LSEDRV         : RCC_CSR1_LSEDRV_Field := 16#0#;
      --  CSS on LSE enable Set by software to enable the clock security system
      --  on LSE (32 kHz) oscillator as follows: LSECSSON must be enabled after
      --  the LSE oscillator is enabled (LSEON bit enabled) and ready (LSERDY
      --  flag set by hardware), and after the RTCSEL bit is selected. Once
      --  enabled, this bit cannot be disabled, except after a LSE failure
      --  detection (LSECSSD =1). In that case the software must disable the
      --  LSECSSON bit.
      LSECSSON       : Boolean := False;
      --  Read-only. CSS on LSE failure Detection Set by hardware to indicate
      --  when a failure is detected by the clock security system on the
      --  external 32 kHz oscillator (LSE):
      LSECSSD        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  RTC clock source selection Set by software to select the clock source
      --  for the RTC as follows: Once the RTC clock source is selected, it
      --  cannot be changed anymore unless the RTC domain is reset, or unless a
      --  failure is detected on LSE (LSECSSD is set). The RTCRST bit can be
      --  used to reset this bitfield to 00.
      RTCSEL         : RCC_CSR1_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  RTC clock enable Set and cleared by software. The bit enables clock
      --  to RTC and TAMP.
      RTCEN          : Boolean := False;
      --  RTC domain software reset Set and cleared by software to reset the
      --  RTC domain:
      RTCRST         : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Low-speed clock output (LSCO) enable Set and cleared by software.
      LSCOEN         : Boolean := False;
      --  Low-speed clock output selection Set and cleared by software to
      --  select the low-speed output clock:
      LSCOSEL        : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSR1_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      LSECSSON       at 0 range 5 .. 5;
      LSECSSD        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      RTCRST         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      LSCOEN         at 0 range 24 .. 24;
      LSCOSEL        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  RCC control/status register 2
   type RCC_CSR2_Register is record
      --  LSI oscillator enable Set and cleared by software to enable/disable
      --  the LSI oscillator:
      LSION          : Boolean := False;
      --  Read-only. LSI oscillator ready Set and cleared by hardware to
      --  indicate when the LSI oscillator is ready (stable): After the LSION
      --  bit is cleared, LSIRDY goes low after 3 LSI oscillator clock cycles.
      --  This bit can be set even if LSION = 0 if the LSI is requested by the
      --  Clock Security System on LSE, by the Independent Watchdog or by the
      --  RTC.
      LSIRDY         : Boolean := False;
      --  unspecified
      Reserved_2_22  : HAL.UInt21 := 16#0#;
      --  Remove reset flags Set by software to clear the reset flags.
      RMVF           : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Read-only. Option byte loader reset flag Set by hardware when a reset
      --  from the Option byte loading occurs. Cleared by setting the RMVF bit.
      OBLRSTF        : Boolean := False;
      --  Read-only. Pin reset flag Set by hardware when a reset from the NRST
      --  pin occurs. Cleared by setting the RMVF bit.
      PINRSTF        : Boolean := False;
      --  Read-only. BOR or POR/PDR flag Set by hardware when a BOR or POR/PDR
      --  occurs. Cleared by setting the RMVF bit.
      PWRRSTF        : Boolean := False;
      --  Read-only. Software reset flag Set by hardware when a software reset
      --  occurs. Cleared by setting the RMVF bit.
      SFTRSTF        : Boolean := False;
      --  Read-only. Independent window watchdog reset flag Set by hardware
      --  when an independent watchdog reset domain occurs. Cleared by setting
      --  the RMVF bit.
      IWDGRSTF       : Boolean := False;
      --  Read-only. Window watchdog reset flag Set by hardware when a window
      --  watchdog reset occurs. Cleared by setting the RMVF bit.
      WWDGRSTF       : Boolean := False;
      --  Read-only. Low-power reset flag Set by hardware when a reset occurs
      --  due to illegal Stop, or Standby, or Shutdown mode entry. Cleared by
      --  setting the RMVF bit. This operates only if nRST_STOP, or nRST_STDBY
      --  or nRST_SHDW option bits are cleared.
      LPWRRSTF       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSR2_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      Reserved_2_22  at 0 range 2 .. 22;
      RMVF           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      PWRRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRRSTF       at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RCC address block description
   type RCC_Peripheral is record
      --  RCC clock control register
      RCC_CR        : aliased RCC_CR_Register;
      --  RCC internal clock source calibration register
      RCC_ICSCR     : aliased RCC_ICSCR_Register;
      --  RCC clock configuration register
      RCC_CFGR      : aliased RCC_CFGR_Register;
      --  RCC clock interrupt enable register
      RCC_CIER      : aliased RCC_CIER_Register;
      --  RCC clock interrupt flag register
      RCC_CIFR      : aliased RCC_CIFR_Register;
      --  RCC clock interrupt clear register
      RCC_CICR      : aliased RCC_CICR_Register;
      --  RCC I/O port reset register
      RCC_IOPRSTR   : aliased RCC_IOPRSTR_Register;
      --  RCC AHB peripheral reset register
      RCC_AHBRSTR   : aliased RCC_AHBRSTR_Register;
      --  RCC APB peripheral reset register 1
      RCC_APBRSTR1  : aliased RCC_APBRSTR1_Register;
      --  RCC APB peripheral reset register 2
      RCC_APBRSTR2  : aliased RCC_APBRSTR2_Register;
      --  RCC I/O port clock enable register
      RCC_IOPENR    : aliased RCC_IOPENR_Register;
      --  RCC AHB peripheral clock enable register
      RCC_AHBENR    : aliased RCC_AHBENR_Register;
      --  RCC APB peripheral clock enable register 1
      RCC_APBENR1   : aliased RCC_APBENR1_Register;
      --  RCC APB peripheral clock enable register 2
      RCC_APBENR2   : aliased RCC_APBENR2_Register;
      --  RCC I/O port in Sleep mode clock enable register
      RCC_IOPSMENR  : aliased RCC_IOPSMENR_Register;
      --  RCC AHB peripheral clock enable in Sleep/Stop mode register	
      RCC_AHBSMENR  : aliased RCC_AHBSMENR_Register;
      --  RCC APB peripheral clock enable in Sleep/Stop mode register 1	
      RCC_APBSMENR1 : aliased RCC_APBSMENR1_Register;
      --  RCC APB peripheral clock enable in Sleep/Stop mode register 2	
      RCC_APBSMENR2 : aliased RCC_APBSMENR2_Register;
      --  RCC peripherals independent clock configuration register
      RCC_CCIPR     : aliased RCC_CCIPR_Register;
      --  RCC control/status register 1
      RCC_CSR1      : aliased RCC_CSR1_Register;
      --  RCC control/status register 2
      RCC_CSR2      : aliased RCC_CSR2_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      RCC_CR        at 16#0# range 0 .. 31;
      RCC_ICSCR     at 16#4# range 0 .. 31;
      RCC_CFGR      at 16#8# range 0 .. 31;
      RCC_CIER      at 16#18# range 0 .. 31;
      RCC_CIFR      at 16#1C# range 0 .. 31;
      RCC_CICR      at 16#20# range 0 .. 31;
      RCC_IOPRSTR   at 16#24# range 0 .. 31;
      RCC_AHBRSTR   at 16#28# range 0 .. 31;
      RCC_APBRSTR1  at 16#2C# range 0 .. 31;
      RCC_APBRSTR2  at 16#30# range 0 .. 31;
      RCC_IOPENR    at 16#34# range 0 .. 31;
      RCC_AHBENR    at 16#38# range 0 .. 31;
      RCC_APBENR1   at 16#3C# range 0 .. 31;
      RCC_APBENR2   at 16#40# range 0 .. 31;
      RCC_IOPSMENR  at 16#44# range 0 .. 31;
      RCC_AHBSMENR  at 16#48# range 0 .. 31;
      RCC_APBSMENR1 at 16#4C# range 0 .. 31;
      RCC_APBSMENR2 at 16#50# range 0 .. 31;
      RCC_CCIPR     at 16#54# range 0 .. 31;
      RCC_CSR1      at 16#5C# range 0 .. 31;
      RCC_CSR2      at 16#60# range 0 .. 31;
   end record;

   --  RCC address block description
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end STM32_SVD.RCC;
