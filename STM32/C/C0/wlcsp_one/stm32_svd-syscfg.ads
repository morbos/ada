--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SYSCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SYSCFG_CFGR1_MEM_MODE_Field is HAL.UInt2;
   subtype SYSCFG_CFGR1_IR_MOD_Field is HAL.UInt2;

   --  SYSCFG configuration register 1
   type SYSCFG_CFGR1_Register is record
      --  Memory mapping selection bits This bitfield controlled by software
      --  selects the memory internally mapped at the address 0x0000 0000. Its
      --  reset value is determined by the boot mode configuration. Refer to
      --  for more details. x0: Main Flash memory
      MEM_MODE       : SYSCFG_CFGR1_MEM_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  PA11 pin remapping This bit is set and cleared by software. When set,
      --  it remaps the PA11 pin to operate as PA9 GPIO port, instead as PA11
      --  GPIO port.
      PA11_RMP       : Boolean := False;
      --  PA12 pin remapping This bit is set and cleared by software. When set,
      --  it remaps the PA12 pin to operate as PA10 GPIO port, instead as PA12
      --  GPIO port.
      PA12_RMP       : Boolean := False;
      --  IR output polarity selection
      IR_POL         : Boolean := False;
      --  IR Modulation Envelope signal selection This bitfield selects the
      --  signal for IR modulation envelope:
      IR_MOD         : SYSCFG_CFGR1_IR_MOD_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Fast Mode Plus (FM+) enable for PB6 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PB6 I/O port. With
      --  this bit in disable state, the I2C FM+ driving capability on this I/O
      --  port can be enabled through one of I2Cx_FMP bits. When I2C FM+ is
      --  enabled, the speed control is ignored.
      I2C_PB6_FMP    : Boolean := False;
      --  Fast Mode Plus (FM+) enable for PB7 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PB7 I/O port. With
      --  this bit in disable state, the I2C FM+ driving capability on this I/O
      --  port can be enabled through one of I2Cx_FMP bits. When I2C FM+ is
      --  enabled, the speed control is ignored.
      I2C_PB7_FMP    : Boolean := False;
      --  Fast Mode Plus (FM+) enable for PB8 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PB8 I/O port. With
      --  this bit in disable state, the I2C FM+ driving capability on this I/O
      --  port can be enabled through one of I2Cx_FMP bits. When I2C FM+ is
      --  enabled, the speed control is ignored.
      I2C_PB8_FMP    : Boolean := False;
      --  Fast Mode Plus (FM+) enable for PB9 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PB9 I/O port. With
      --  this bit in disable state, the I2C FM+ driving capability on this I/O
      --  port can be enabled through one of I2Cx_FMP bits. When I2C FM+ is
      --  enabled, the speed control is ignored.
      I2C_PB9_FMP    : Boolean := False;
      --  Fast Mode Plus (FM+) enable for I2C1 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on I/O ports
      --  configured as I2C1 through GPIOx_AFR registers. With this bit in
      --  disable state, the I2C FM+ driving capability on I/O ports configured
      --  as I2C1 can be enabled through their corresponding I2Cx_FMP bit. When
      --  I2C FM+ is enabled, the speed control is ignored.
      I2C1_FMP       : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Fast Mode Plus (FM+) enable for PA9 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PA9 I/O port. With
      --  this bit in disable state, the I2C FM+ driving capability on this I/O
      --  port can be enabled through one of I2Cx_FMP bits. When I2C FM+ is
      --  enabled, the speed control is ignored.
      I2C_PA9_FMP    : Boolean := False;
      --  Fast Mode Plus (FM+) enable for PA10 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PA10 I/O port.
      --  With this bit in disable state, the I2C FM+ driving capability on
      --  this I/O port can be enabled through one of I2Cx_FMP bits. When I2C
      --  FM+ is enabled, the speed control is ignored.
      I2C_PA10_FMP   : Boolean := False;
      --  Fast Mode Plus (FM+) enable for PC14 This bit is set and cleared by
      --  software. It enables I2C FM+ driving capability on PC14 I/O port.
      --  With this bit in disable state, the I2C FM+ driving capability on
      --  this I/O port can be enabled through one of I2Cx_FMP bits. When I2C
      --  FM+ is enabled, the speed control is ignored.
      I2C_PC14_FMP   : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR1_Register use record
      MEM_MODE       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PA11_RMP       at 0 range 3 .. 3;
      PA12_RMP       at 0 range 4 .. 4;
      IR_POL         at 0 range 5 .. 5;
      IR_MOD         at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      I2C_PB6_FMP    at 0 range 16 .. 16;
      I2C_PB7_FMP    at 0 range 17 .. 17;
      I2C_PB8_FMP    at 0 range 18 .. 18;
      I2C_PB9_FMP    at 0 range 19 .. 19;
      I2C1_FMP       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      I2C_PA9_FMP    at 0 range 22 .. 22;
      I2C_PA10_FMP   at 0 range 23 .. 23;
      I2C_PC14_FMP   at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  SYSCFG configuration register 2
   type SYSCFG_CFGR2_Register is record
      --  Cortex<Superscript><Default Font>-M0+ LOCKUP enable This bit is set
      --  by software and cleared by system reset. When set, it enables the
      --  connection of Cortex<Superscript><Default Font>-M0+ LOCKUP
      --  (HardFault) output to the TIM1/16/17 Break input.
      LOCKUP_LOCK   : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR2_Register use record
      LOCKUP_LOCK   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG_CFGR3_PINMUX array element
   subtype SYSCFG_CFGR3_PINMUX_Element is HAL.UInt2;

   --  SYSCFG_CFGR3_PINMUX array
   type SYSCFG_CFGR3_PINMUX_Field_Array is array (0 .. 5)
     of SYSCFG_CFGR3_PINMUX_Element
     with Component_Size => 2, Size => 12;

   --  Type definition for SYSCFG_CFGR3_PINMUX
   type SYSCFG_CFGR3_PINMUX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PINMUX as a value
            Val : HAL.UInt12;
         when True =>
            --  PINMUX as an array
            Arr : SYSCFG_CFGR3_PINMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for SYSCFG_CFGR3_PINMUX_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  SYSCFG configuration register 3
   type SYSCFG_CFGR3_Register is record
      --  Pin GPIO multiplexer 0 This bit is set by software and cleared by
      --  system reset. It assigns a GPIO to a pin. 1x: Reserved Pin F2 of
      --  WLCSP14 package GPIO assignment 1x: Reserved
      PINMUX         : SYSCFG_CFGR3_PINMUX_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR3_Register use record
      PINMUX         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SYSCFG interrupt line 0 status register
   type SYSCFG_ITLINE0_Register is record
      --  Read-only. Window watchdog interrupt pending flag
      WWDG          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE0_Register use record
      WWDG          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 2 status register
   type SYSCFG_ITLINE2_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. RTC interrupt request pending (EXTI line 19)
      RTC           : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE2_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RTC           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG interrupt line 3 status register
   type SYSCFG_ITLINE3_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Flash interface interrupt request pending
      FLASH_ITF     : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE3_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FLASH_ITF     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG interrupt line 4 status register
   type SYSCFG_ITLINE4_Register is record
      --  Read-only. Reset and clock control interrupt request pending
      RCC           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE4_Register use record
      RCC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG_ITLINE5_EXTI array
   type SYSCFG_ITLINE5_EXTI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCFG_ITLINE5_EXTI
   type SYSCFG_ITLINE5_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt2;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_ITLINE5_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCFG_ITLINE5_EXTI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SYSCFG interrupt line 5 status register
   type SYSCFG_ITLINE5_Register is record
      --  Read-only. EXTI line 0 interrupt request pending
      EXTI          : SYSCFG_ITLINE5_EXTI_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE5_Register use record
      EXTI          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG_ITLINE6_EXTI array
   type SYSCFG_ITLINE6_EXTI_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCFG_ITLINE6_EXTI
   type SYSCFG_ITLINE6_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt2;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_ITLINE6_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCFG_ITLINE6_EXTI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SYSCFG interrupt line 6 status register
   type SYSCFG_ITLINE6_Register is record
      --  Read-only. EXTI line 2 interrupt request pending
      EXTI          : SYSCFG_ITLINE6_EXTI_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE6_Register use record
      EXTI          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG_ITLINE7_EXTI array
   type SYSCFG_ITLINE7_EXTI_Field_Array is array (4 .. 15) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for SYSCFG_ITLINE7_EXTI
   type SYSCFG_ITLINE7_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt12;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_ITLINE7_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for SYSCFG_ITLINE7_EXTI_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  SYSCFG interrupt line 7 status register
   type SYSCFG_ITLINE7_Register is record
      --  Read-only. EXTI line 4 interrupt request pending
      EXTI           : SYSCFG_ITLINE7_EXTI_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE7_Register use record
      EXTI           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SYSCFG interrupt line 9 status register
   type SYSCFG_ITLINE9_Register is record
      --  Read-only. DMA1 channel 1interrupt request pending
      DMA1_CH1      : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE9_Register use record
      DMA1_CH1      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG_ITLINE10_DMA1_CH array
   type SYSCFG_ITLINE10_DMA1_CH_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCFG_ITLINE10_DMA1_CH
   type SYSCFG_ITLINE10_DMA1_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DMA1_CH as a value
            Val : HAL.UInt2;
         when True =>
            --  DMA1_CH as an array
            Arr : SYSCFG_ITLINE10_DMA1_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCFG_ITLINE10_DMA1_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SYSCFG interrupt line 10 status register
   type SYSCFG_ITLINE10_Register is record
      --  Read-only. DMA1 channel 2 interrupt request pending
      DMA1_CH       : SYSCFG_ITLINE10_DMA1_CH_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE10_Register use record
      DMA1_CH       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG interrupt line 11 status register
   type SYSCFG_ITLINE11_Register is record
      --  Read-only. DMAMUX interrupt request pending
      DMAMUX        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE11_Register use record
      DMAMUX        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 12 status register
   type SYSCFG_ITLINE12_Register is record
      --  Read-only. ADC interrupt request pending
      ADC           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE12_Register use record
      ADC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 13 status register
   type SYSCFG_ITLINE13_Register is record
      --  Read-only. Timer 1 commutation interrupt request pending
      TIM1_CCU      : Boolean;
      --  Read-only. Timer 1 trigger interrupt request pending
      TIM1_TRG      : Boolean;
      --  Read-only. Timer 1 update interrupt request pending
      TIM1_UPD      : Boolean;
      --  Read-only. Timer 1 break interrupt request pending
      TIM1_BRK      : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE13_Register use record
      TIM1_CCU      at 0 range 0 .. 0;
      TIM1_TRG      at 0 range 1 .. 1;
      TIM1_UPD      at 0 range 2 .. 2;
      TIM1_BRK      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SYSCFG interrupt line 14 status register
   type SYSCFG_ITLINE14_Register is record
      --  Read-only. Timer 1 capture compare interrupt request pending
      TIM1_CC       : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE14_Register use record
      TIM1_CC       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 16 status register
   type SYSCFG_ITLINE16_Register is record
      --  Read-only. Timer 3 interrupt request pending
      TIM3          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE16_Register use record
      TIM3          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 19 status register
   type SYSCFG_ITLINE19_Register is record
      --  Read-only. Timer 14 interrupt request pending
      TIM14         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE19_Register use record
      TIM14         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 21 status register
   type SYSCFG_ITLINE21_Register is record
      --  Read-only. Timer 16 interrupt request pending
      TIM16         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE21_Register use record
      TIM16         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 22 status register
   type SYSCFG_ITLINE22_Register is record
      --  Read-only. Timer 17 interrupt request pending
      TIM17         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE22_Register use record
      TIM17         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 23 status register
   type SYSCFG_ITLINE23_Register is record
      --  Read-only. I2C1 interrupt request pending, combined with EXTI line 23
      I2C1          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE23_Register use record
      I2C1          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 25 status register
   type SYSCFG_ITLINE25_Register is record
      --  Read-only. SPI1 interrupt request pending
      SPI1          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE25_Register use record
      SPI1          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 27 status register
   type SYSCFG_ITLINE27_Register is record
      --  Read-only. USART1 interrupt request pending, combined with EXTI line
      --  25
      USART1        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE27_Register use record
      USART1        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG interrupt line 28 status register
   type SYSCFG_ITLINE28_Register is record
      --  Read-only. USART2 interrupt request pending (EXTI line 26)
      USART2        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ITLINE28_Register use record
      USART2        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SYSCFG register block
   type SYSCFG_Peripheral is record
      --  SYSCFG configuration register 1
      SYSCFG_CFGR1    : aliased SYSCFG_CFGR1_Register;
      --  SYSCFG configuration register 2
      SYSCFG_CFGR2    : aliased SYSCFG_CFGR2_Register;
      --  SYSCFG configuration register 3
      SYSCFG_CFGR3    : aliased SYSCFG_CFGR3_Register;
      --  SYSCFG interrupt line 0 status register
      SYSCFG_ITLINE0  : aliased SYSCFG_ITLINE0_Register;
      --  SYSCFG interrupt line 2 status register
      SYSCFG_ITLINE2  : aliased SYSCFG_ITLINE2_Register;
      --  SYSCFG interrupt line 3 status register
      SYSCFG_ITLINE3  : aliased SYSCFG_ITLINE3_Register;
      --  SYSCFG interrupt line 4 status register
      SYSCFG_ITLINE4  : aliased SYSCFG_ITLINE4_Register;
      --  SYSCFG interrupt line 5 status register
      SYSCFG_ITLINE5  : aliased SYSCFG_ITLINE5_Register;
      --  SYSCFG interrupt line 6 status register
      SYSCFG_ITLINE6  : aliased SYSCFG_ITLINE6_Register;
      --  SYSCFG interrupt line 7 status register
      SYSCFG_ITLINE7  : aliased SYSCFG_ITLINE7_Register;
      --  SYSCFG interrupt line 9 status register
      SYSCFG_ITLINE9  : aliased SYSCFG_ITLINE9_Register;
      --  SYSCFG interrupt line 10 status register
      SYSCFG_ITLINE10 : aliased SYSCFG_ITLINE10_Register;
      --  SYSCFG interrupt line 11 status register
      SYSCFG_ITLINE11 : aliased SYSCFG_ITLINE11_Register;
      --  SYSCFG interrupt line 12 status register
      SYSCFG_ITLINE12 : aliased SYSCFG_ITLINE12_Register;
      --  SYSCFG interrupt line 13 status register
      SYSCFG_ITLINE13 : aliased SYSCFG_ITLINE13_Register;
      --  SYSCFG interrupt line 14 status register
      SYSCFG_ITLINE14 : aliased SYSCFG_ITLINE14_Register;
      --  SYSCFG interrupt line 16 status register
      SYSCFG_ITLINE16 : aliased SYSCFG_ITLINE16_Register;
      --  SYSCFG interrupt line 19 status register
      SYSCFG_ITLINE19 : aliased SYSCFG_ITLINE19_Register;
      --  SYSCFG interrupt line 21 status register
      SYSCFG_ITLINE21 : aliased SYSCFG_ITLINE21_Register;
      --  SYSCFG interrupt line 22 status register
      SYSCFG_ITLINE22 : aliased SYSCFG_ITLINE22_Register;
      --  SYSCFG interrupt line 23 status register
      SYSCFG_ITLINE23 : aliased SYSCFG_ITLINE23_Register;
      --  SYSCFG interrupt line 25 status register
      SYSCFG_ITLINE25 : aliased SYSCFG_ITLINE25_Register;
      --  SYSCFG interrupt line 27 status register
      SYSCFG_ITLINE27 : aliased SYSCFG_ITLINE27_Register;
      --  SYSCFG interrupt line 28 status register
      SYSCFG_ITLINE28 : aliased SYSCFG_ITLINE28_Register;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      SYSCFG_CFGR1    at 16#0# range 0 .. 31;
      SYSCFG_CFGR2    at 16#18# range 0 .. 31;
      SYSCFG_CFGR3    at 16#3C# range 0 .. 31;
      SYSCFG_ITLINE0  at 16#80# range 0 .. 31;
      SYSCFG_ITLINE2  at 16#88# range 0 .. 31;
      SYSCFG_ITLINE3  at 16#8C# range 0 .. 31;
      SYSCFG_ITLINE4  at 16#90# range 0 .. 31;
      SYSCFG_ITLINE5  at 16#94# range 0 .. 31;
      SYSCFG_ITLINE6  at 16#98# range 0 .. 31;
      SYSCFG_ITLINE7  at 16#9C# range 0 .. 31;
      SYSCFG_ITLINE9  at 16#A4# range 0 .. 31;
      SYSCFG_ITLINE10 at 16#A8# range 0 .. 31;
      SYSCFG_ITLINE11 at 16#AC# range 0 .. 31;
      SYSCFG_ITLINE12 at 16#B0# range 0 .. 31;
      SYSCFG_ITLINE13 at 16#B4# range 0 .. 31;
      SYSCFG_ITLINE14 at 16#B8# range 0 .. 31;
      SYSCFG_ITLINE16 at 16#C0# range 0 .. 31;
      SYSCFG_ITLINE19 at 16#CC# range 0 .. 31;
      SYSCFG_ITLINE21 at 16#D4# range 0 .. 31;
      SYSCFG_ITLINE22 at 16#D8# range 0 .. 31;
      SYSCFG_ITLINE23 at 16#DC# range 0 .. 31;
      SYSCFG_ITLINE25 at 16#E4# range 0 .. 31;
      SYSCFG_ITLINE27 at 16#EC# range 0 .. 31;
      SYSCFG_ITLINE28 at 16#F0# range 0 .. 31;
   end record;

   --  SYSCFG register block
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

end STM32_SVD.SYSCFG;
