--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GTZC1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GTZC1 SRAM1 MPCBB control register
   type GTZC1_MPCBB1_CR_Register is record
      --  Lock the control register of the MPCBB until next reset 	
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_29 : HAL.UInt29 := 16#0#;
      --  SRAM1 clock security state 	
      INVSECSTATE   : Boolean := False;
      --  Secure read/write illegal access disable 	
      SRWILADIS     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB1_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_29 at 0 range 1 .. 29;
      INVSECSTATE   at 0 range 30 .. 30;
      SRWILADIS     at 0 range 31 .. 31;
   end record;

   --  GTZC1_MPCBB1_CFGLOCKR1_SPLCK array
   type GTZC1_MPCBB1_CFGLOCKR1_SPLCK_Field_Array is array (0 .. 11)
     of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for GTZC1_MPCBB1_CFGLOCKR1_SPLCK
   type GTZC1_MPCBB1_CFGLOCKR1_SPLCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLCK as a value
            Val : HAL.UInt12;
         when True =>
            --  SPLCK as an array
            Arr : GTZC1_MPCBB1_CFGLOCKR1_SPLCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for GTZC1_MPCBB1_CFGLOCKR1_SPLCK_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  GTZC1 SRAM1 MPCBB configuration lock register 1
   type GTZC1_MPCBB1_CFGLOCKR1_Register is record
      --  Security/privilege configuration lock for super-block i 	
      SPLCK          : GTZC1_MPCBB1_CFGLOCKR1_SPLCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB1_CFGLOCKR1_Register use record
      SPLCK          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  GTZC1_MPCBB1_SECCFGR_SEC array
   type GTZC1_MPCBB1_SECCFGR_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM1 MPCBB security configuration for super-block 0	register
   type GTZC1_MPCBB1_SECCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : GTZC1_MPCBB1_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB1_SECCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1_MPCBB1_PRIVCFGR_PRIV array
   type GTZC1_MPCBB1_PRIVCFGR_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 0	register
   type GTZC1_MPCBB1_PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : GTZC1_MPCBB1_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB1_PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1 SRAM2 MPCBB control register
   type GTZC1_MPCBB2_CR_Register is record
      --  Lock the control register of the MPCBB until next reset 	
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_29 : HAL.UInt29 := 16#0#;
      --  SRAM2 clock security state 	
      INVSECSTATE   : Boolean := False;
      --  Secure read/write illegal access disable 	
      SRWILADIS     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB2_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_29 at 0 range 1 .. 29;
      INVSECSTATE   at 0 range 30 .. 30;
      SRWILADIS     at 0 range 31 .. 31;
   end record;

   --  GTZC1_MPCBB2_CFGLOCKR1_SPLCK array
   type GTZC1_MPCBB2_CFGLOCKR1_SPLCK_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GTZC1_MPCBB2_CFGLOCKR1_SPLCK
   type GTZC1_MPCBB2_CFGLOCKR1_SPLCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLCK as a value
            Val : HAL.UInt4;
         when True =>
            --  SPLCK as an array
            Arr : GTZC1_MPCBB2_CFGLOCKR1_SPLCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GTZC1_MPCBB2_CFGLOCKR1_SPLCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  GTZC1 SRAM2 MPCBB configuration lock register 1
   type GTZC1_MPCBB2_CFGLOCKR1_Register is record
      --  Security/privilege configuration lock for super-block i 	
      SPLCK         : GTZC1_MPCBB2_CFGLOCKR1_SPLCK_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB2_CFGLOCKR1_Register use record
      SPLCK         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  GTZC1_MPCBB2_SECCFGR_SEC array
   type GTZC1_MPCBB2_SECCFGR_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM2 MPCBB security configuration for super-block 0	register
   type GTZC1_MPCBB2_SECCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : GTZC1_MPCBB2_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB2_SECCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1_MPCBB2_PRIVCFGR_PRIV array
   type GTZC1_MPCBB2_PRIVCFGR_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM2 MPCBB privileged configuration for super-block 0	register
   type GTZC1_MPCBB2_PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : GTZC1_MPCBB2_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB2_PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1 SRAM3 MPCBB control register
   type GTZC1_MPCBB3_CR_Register is record
      --  Lock the control register of the MPCBB until next reset 	
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_29 : HAL.UInt29 := 16#0#;
      --  SRAM3 clock security state 	
      INVSECSTATE   : Boolean := False;
      --  Secure read/write illegal access disable 	
      SRWILADIS     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB3_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_29 at 0 range 1 .. 29;
      INVSECSTATE   at 0 range 30 .. 30;
      SRWILADIS     at 0 range 31 .. 31;
   end record;

   --  GTZC1_MPCBB3_CFGLOCKR1_SPLCK array
   type GTZC1_MPCBB3_CFGLOCKR1_SPLCK_Field_Array is array (0 .. 19)
     of Boolean
     with Component_Size => 1, Size => 20;

   --  Type definition for GTZC1_MPCBB3_CFGLOCKR1_SPLCK
   type GTZC1_MPCBB3_CFGLOCKR1_SPLCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLCK as a value
            Val : HAL.UInt20;
         when True =>
            --  SPLCK as an array
            Arr : GTZC1_MPCBB3_CFGLOCKR1_SPLCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for GTZC1_MPCBB3_CFGLOCKR1_SPLCK_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  GTZC1 SRAM3 MPCBB configuration lock register 1
   type GTZC1_MPCBB3_CFGLOCKR1_Register is record
      --  Security/privilege configuration lock for super-block i 	
      SPLCK          : GTZC1_MPCBB3_CFGLOCKR1_SPLCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB3_CFGLOCKR1_Register use record
      SPLCK          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  GTZC1_MPCBB3_SECCFGR_SEC array
   type GTZC1_MPCBB3_SECCFGR_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM3 MPCBB security configuration for super-block 0	register
   type GTZC1_MPCBB3_SECCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : GTZC1_MPCBB3_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB3_SECCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1_MPCBB3_PRIVCFGR_PRIV array
   type GTZC1_MPCBB3_PRIVCFGR_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 0	register
   type GTZC1_MPCBB3_PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : GTZC1_MPCBB3_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB3_PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1 SRAM4 MPCBB control register
   type GTZC1_MPCBB4_CR_Register is record
      --  Lock the control register of the MPCBB until next reset 	
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_29 : HAL.UInt29 := 16#0#;
      --  SRAM4 clock security state 	
      INVSECSTATE   : Boolean := False;
      --  Secure read/write illegal access disable 	
      SRWILADIS     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB4_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_29 at 0 range 1 .. 29;
      INVSECSTATE   at 0 range 30 .. 30;
      SRWILADIS     at 0 range 31 .. 31;
   end record;

   --  GTZC1_MPCBB4_CFGLOCKR1_SPLCK array
   type GTZC1_MPCBB4_CFGLOCKR1_SPLCK_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for GTZC1_MPCBB4_CFGLOCKR1_SPLCK
   type GTZC1_MPCBB4_CFGLOCKR1_SPLCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLCK as a value
            Val : HAL.UInt5;
         when True =>
            --  SPLCK as an array
            Arr : GTZC1_MPCBB4_CFGLOCKR1_SPLCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for GTZC1_MPCBB4_CFGLOCKR1_SPLCK_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  GTZC1 SRAM4 MPCBB configuration lock register 1
   type GTZC1_MPCBB4_CFGLOCKR1_Register is record
      --  Security/privilege configuration lock for super-block i 	
      SPLCK         : GTZC1_MPCBB4_CFGLOCKR1_SPLCK_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB4_CFGLOCKR1_Register use record
      SPLCK         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  GTZC1_MPCBB4_SECCFGR_SEC array
   type GTZC1_MPCBB4_SECCFGR_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM4 MPCBB security configuration for super-block 0	register
   type GTZC1_MPCBB4_SECCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : GTZC1_MPCBB4_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB4_SECCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1_MPCBB4_PRIVCFGR_PRIV array
   type GTZC1_MPCBB4_PRIVCFGR_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GTZC1 SRAM4 MPCBB privileged configuration for super-block 0	register
   type GTZC1_MPCBB4_PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : GTZC1_MPCBB4_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_MPCBB4_PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GTZC1 TZIC interrupt enable register 1
   type GTZC1_TZIC_IER1_Register is record
      --  Illegal access interrupt enable for TIM2
      TIM2IE         : Boolean := False;
      --  Illegal access interrupt enable for TIM3
      TIM3IE         : Boolean := False;
      --  Illegal access interrupt enable for TIM4
      TIM4IE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Illegal access interrupt enable for TIM6
      TIM6IE         : Boolean := False;
      --  Illegal access interrupt enable for TIM7
      TIM7IE         : Boolean := False;
      --  Illegal access interrupt enable for WWDG
      WWDGIE         : Boolean := False;
      --  Illegal access interrupt enable for IWDG
      IWDGIE         : Boolean := False;
      --  Illegal access interrupt enable for SPI2
      SPI2IE         : Boolean := False;
      --  Illegal access interrupt enable for USART2 	
      USART2IE       : Boolean := False;
      --  Illegal access interrupt enable for USART3
      USART3IE       : Boolean := False;
      --  Illegal access interrupt enable for UART4
      UART4IE        : Boolean := False;
      --  Illegal access interrupt enable for UART5
      UART5IE        : Boolean := False;
      --  Illegal access interrupt enable for I2C1
      I2C1IE         : Boolean := False;
      --  Illegal access interrupt enable for I2C2
      I2C2IE         : Boolean := False;
      --  Illegal access interrupt enable for CRS
      CRSIE          : Boolean := False;
      --  Illegal access interrupt enable for I2C4 	
      I2C4IE         : Boolean := False;
      --  Illegal access interrupt enable for LPTIM2
      LPTIM2IE       : Boolean := False;
      --  Illegal access interrupt enable for FDCAN1 and FDCAN SRAM
      FDCAN1IE       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Illegal access interrupt enable for FDCAN2 	
      FDCAN2IE       : Boolean := False;
      --  Illegal access interrupt enable for SPI3
      SPI3IE         : Boolean := False;
      --  Illegal access interrupt enable for I3C1
      I3C1IE         : Boolean := False;
      --  Illegal access interrupt enable for OPAMP
      OPAMPIE        : Boolean := False;
      --  Illegal access interrupt enable for VREFBUF
      VREFBUFIE      : Boolean := False;
      --  Illegal access interrupt enable for SPI4 	
      SPI4IE         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_IER1_Register use record
      TIM2IE         at 0 range 0 .. 0;
      TIM3IE         at 0 range 1 .. 1;
      TIM4IE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6IE         at 0 range 4 .. 4;
      TIM7IE         at 0 range 5 .. 5;
      WWDGIE         at 0 range 6 .. 6;
      IWDGIE         at 0 range 7 .. 7;
      SPI2IE         at 0 range 8 .. 8;
      USART2IE       at 0 range 9 .. 9;
      USART3IE       at 0 range 10 .. 10;
      UART4IE        at 0 range 11 .. 11;
      UART5IE        at 0 range 12 .. 12;
      I2C1IE         at 0 range 13 .. 13;
      I2C2IE         at 0 range 14 .. 14;
      CRSIE          at 0 range 15 .. 15;
      I2C4IE         at 0 range 16 .. 16;
      LPTIM2IE       at 0 range 17 .. 17;
      FDCAN1IE       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FDCAN2IE       at 0 range 20 .. 20;
      SPI3IE         at 0 range 21 .. 21;
      I3C1IE         at 0 range 22 .. 22;
      OPAMPIE        at 0 range 23 .. 23;
      VREFBUFIE      at 0 range 24 .. 24;
      SPI4IE         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GTZC1 TZIC interrupt enable register 2
   type GTZC1_TZIC_IER2_Register is record
      --  Illegal access interrupt enable for TIM1
      TIM1IE         : Boolean := False;
      --  Illegal access interrupt enable for SPI1
      SPI1IE         : Boolean := False;
      --  Illegal access interrupt enable for TIM8 	
      TIM8IE         : Boolean := False;
      --  Illegal access interrupt enable for USART1
      USART1IE       : Boolean := False;
      --  Illegal access interrupt enable for TIM15
      TIM15IE        : Boolean := False;
      --  Illegal access interrupt enable for TIM16
      TIM16IE        : Boolean := False;
      --  Illegal access interrupt enable for TIM17
      TIM17IE        : Boolean := False;
      --  Illegal access interrupt enable for SAI1
      SAI1IE         : Boolean := False;
      --  Illegal access interrupt enable for TIM12 	
      TIM12IE        : Boolean := False;
      --  Illegal access interrupt enable for USB
      USBIE          : Boolean := False;
      --  Illegal access interrupt enable for I3C2
      I3C2IE         : Boolean := False;
      --  Illegal access interrupt enable for LPUART1
      LPUART1IE      : Boolean := False;
      --  Illegal access interrupt enable for I2C3
      I2C3IE         : Boolean := False;
      --  Illegal access interrupt enable for LPTIM1
      LPTIM1IE       : Boolean := False;
      --  Illegal access interrupt enable for LPTIM3
      LPTIM3IE       : Boolean := False;
      --  Illegal access interrupt enable for LPTIM4
      LPTIM4IE       : Boolean := False;
      --  Illegal access interrupt enable for COMP
      COMPIE         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_IER2_Register use record
      TIM1IE         at 0 range 0 .. 0;
      SPI1IE         at 0 range 1 .. 1;
      TIM8IE         at 0 range 2 .. 2;
      USART1IE       at 0 range 3 .. 3;
      TIM15IE        at 0 range 4 .. 4;
      TIM16IE        at 0 range 5 .. 5;
      TIM17IE        at 0 range 6 .. 6;
      SAI1IE         at 0 range 7 .. 7;
      TIM12IE        at 0 range 8 .. 8;
      USBIE          at 0 range 9 .. 9;
      I3C2IE         at 0 range 10 .. 10;
      LPUART1IE      at 0 range 11 .. 11;
      I2C3IE         at 0 range 12 .. 12;
      LPTIM1IE       at 0 range 13 .. 13;
      LPTIM3IE       at 0 range 14 .. 14;
      LPTIM4IE       at 0 range 15 .. 15;
      COMPIE         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GTZC1 TZIC interrupt enable register 3
   type GTZC1_TZIC_IER3_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Illegal access interrupt enable for CRC
      CRCIE          : Boolean := False;
      --  Illegal access interrupt enable for TSC
      TSCIE          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Illegal access interrupt enable for ICACHE registers
      ICACHE_REGIE   : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Illegal access interrupt enable for ADC1 and ADC2
      ADC12IE        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Illegal access interrupt enable for AES
      AESIE          : Boolean := False;
      --  Illegal access interrupt enable for HASH
      HASHIE         : Boolean := False;
      --  Illegal access interrupt enable for RNG
      RNGIE          : Boolean := False;
      --  Illegal access interrupt enable for PKA
      PKAIE          : Boolean := False;
      --  Illegal access interrupt enable for SAES
      SAESIE         : Boolean := False;
      --  Illegal access interrupt enable for CCB
      CCBIE          : Boolean := False;
      --  Illegal access interrupt enable for SDMMC1
      SDMMC1IE       : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Illegal access interrupt enable for OCTOSPI1 registers
      OCTOSPI1_REGIE : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Illegal access interrupt enable for RAMCFG
      RAMCFGIE       : Boolean := False;
      --  Illegal access interrupt enable for DAC1
      DAC1IE         : Boolean := False;
      --  Illegal access interrupt enable for ADF1
      ADF1IE         : Boolean := False;
      --  unspecified
      Reserved_25_28 : HAL.UInt4 := 16#0#;
      --  Illegal access interrupt enable for HSP1 	
      HSP1IE         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_IER3_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CRCIE          at 0 range 3 .. 3;
      TSCIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ICACHE_REGIE   at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ADC12IE        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      AESIE          at 0 range 11 .. 11;
      HASHIE         at 0 range 12 .. 12;
      RNGIE          at 0 range 13 .. 13;
      PKAIE          at 0 range 14 .. 14;
      SAESIE         at 0 range 15 .. 15;
      CCBIE          at 0 range 16 .. 16;
      SDMMC1IE       at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      OCTOSPI1_REGIE at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      RAMCFGIE       at 0 range 22 .. 22;
      DAC1IE         at 0 range 23 .. 23;
      ADF1IE         at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      HSP1IE         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  GTZC1 TZIC interrupt enable register 4
   type GTZC1_TZIC_IER4_Register is record
      --  Illegal access interrupt enable for GPDMA1
      GPDMA1IE       : Boolean := False;
      --  Illegal access interrupt enable for FLASH memory
      FLASHIE        : Boolean := False;
      --  Illegal access interrupt enable for FLASH registers
      FLASH_REGIE    : Boolean := False;
      --  Illegal access interrupt enable for PWR
      PWRIE          : Boolean := False;
      --  Illegal access interrupt enable for RCC
      RCCIE          : Boolean := False;
      --  Illegal access interrupt enable for SYSCFG
      SYSCFGIE       : Boolean := False;
      --  Illegal access interrupt enable for EXTI
      EXTIIE         : Boolean := False;
      --  Illegal access interrupt enable for RTC
      RTCIE          : Boolean := False;
      --  Illegal access interrupt enable for TAMP
      TAMPIE         : Boolean := False;
      --  unspecified
      Reserved_9_13  : HAL.UInt5 := 16#0#;
      --  Illegal access interrupt enable for GTZC1 TZSC registers
      TZSC1IE        : Boolean := False;
      --  Illegal access interrupt enable for GTZC1 TZIC registers
      TZIC1IE        : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Illegal access interrupt enable for SRAM1
      SRAM1IE        : Boolean := False;
      --  Illegal access interrupt enable for MPCBB1 registers
      MPCBB1_REGIE   : Boolean := False;
      --  Illegal access interrupt enable for SRAM2
      SRAM2IE        : Boolean := False;
      --  Illegal access interrupt enable for MPCBB2 registers
      MPCBB2_REGIE   : Boolean := False;
      --  Illegal access interrupt enable for SRAM3 	
      SRAM3IE        : Boolean := False;
      --  Illegal access interrupt enable for MPCBB3 registers 	
      MPCBB3_REGIE   : Boolean := False;
      --  Illegal access interrupt enable for SRAM4 	
      SRAM4IE        : Boolean := False;
      --  Illegal access interrupt enable for MPCBB4 registers 	
      MPCBB4_REGIE   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_IER4_Register use record
      GPDMA1IE       at 0 range 0 .. 0;
      FLASHIE        at 0 range 1 .. 1;
      FLASH_REGIE    at 0 range 2 .. 2;
      PWRIE          at 0 range 3 .. 3;
      RCCIE          at 0 range 4 .. 4;
      SYSCFGIE       at 0 range 5 .. 5;
      EXTIIE         at 0 range 6 .. 6;
      RTCIE          at 0 range 7 .. 7;
      TAMPIE         at 0 range 8 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      TZSC1IE        at 0 range 14 .. 14;
      TZIC1IE        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      SRAM1IE        at 0 range 24 .. 24;
      MPCBB1_REGIE   at 0 range 25 .. 25;
      SRAM2IE        at 0 range 26 .. 26;
      MPCBB2_REGIE   at 0 range 27 .. 27;
      SRAM3IE        at 0 range 28 .. 28;
      MPCBB3_REGIE   at 0 range 29 .. 29;
      SRAM4IE        at 0 range 30 .. 30;
      MPCBB4_REGIE   at 0 range 31 .. 31;
   end record;

   --  GTZC1 TZIC status register 1
   type GTZC1_TZIC_SR1_Register is record
      --  Illegal access flag for TIM2
      TIM2F          : Boolean := False;
      --  Illegal access flag for TIM3
      TIM3F          : Boolean := False;
      --  Illegal access flag for TIM4
      TIM4F          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Illegal access flag for TIM6
      TIM6F          : Boolean := False;
      --  Illegal access flag for TIM7
      TIM7F          : Boolean := False;
      --  Illegal access flag for WWDG
      WWDGF          : Boolean := False;
      --  Illegal access flag for IWDG
      IWDGF          : Boolean := False;
      --  Illegal access flag for SPI2
      SPI2F          : Boolean := False;
      --  Illegal access flag for USART2 	
      USART2F        : Boolean := False;
      --  Illegal access flag for USART3
      USART3F        : Boolean := False;
      --  Illegal access flag for UART4
      UART4F         : Boolean := False;
      --  Illegal access flag for UART5
      UART5F         : Boolean := False;
      --  Illegal access flag for I2C1
      I2C1F          : Boolean := False;
      --  Illegal access flag for I2C2
      I2C2F          : Boolean := False;
      --  Illegal access flag for CRS
      CRSF           : Boolean := False;
      --  Illegal access flag for I2C4 	
      I2C4F          : Boolean := False;
      --  Illegal access flag for LPTIM2
      LPTIM2F        : Boolean := False;
      --  Illegal access flag for FDCAN1 and FDCAN SRAM
      FDCAN1F        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Illegal access flag for FDCAN2 	
      FDCAN2F        : Boolean := False;
      --  Illegal access flag for SPI3
      SPI3F          : Boolean := False;
      --  Illegal access flag for I3C1
      I3C1F          : Boolean := False;
      --  Illegal access flag for OPAMP
      OPAMPF         : Boolean := False;
      --  Illegal access flag for VREFBUF
      VREFBUFF       : Boolean := False;
      --  Illegal access flag for SPI4 	
      SPI4F          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_SR1_Register use record
      TIM2F          at 0 range 0 .. 0;
      TIM3F          at 0 range 1 .. 1;
      TIM4F          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6F          at 0 range 4 .. 4;
      TIM7F          at 0 range 5 .. 5;
      WWDGF          at 0 range 6 .. 6;
      IWDGF          at 0 range 7 .. 7;
      SPI2F          at 0 range 8 .. 8;
      USART2F        at 0 range 9 .. 9;
      USART3F        at 0 range 10 .. 10;
      UART4F         at 0 range 11 .. 11;
      UART5F         at 0 range 12 .. 12;
      I2C1F          at 0 range 13 .. 13;
      I2C2F          at 0 range 14 .. 14;
      CRSF           at 0 range 15 .. 15;
      I2C4F          at 0 range 16 .. 16;
      LPTIM2F        at 0 range 17 .. 17;
      FDCAN1F        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FDCAN2F        at 0 range 20 .. 20;
      SPI3F          at 0 range 21 .. 21;
      I3C1F          at 0 range 22 .. 22;
      OPAMPF         at 0 range 23 .. 23;
      VREFBUFF       at 0 range 24 .. 24;
      SPI4F          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GTZC1 TZIC status register 2
   type GTZC1_TZIC_SR2_Register is record
      --  Illegal access flag for TIM1
      TIM1F          : Boolean := False;
      --  Illegal access flag for SPI1
      SPI1F          : Boolean := False;
      --  Illegal access flag for TIM8 	
      TIM8F          : Boolean := False;
      --  Illegal access flag for USART1
      USART1F        : Boolean := False;
      --  Illegal access flag for TIM15
      TIM15F         : Boolean := False;
      --  Illegal access flag for TIM16
      TIM16F         : Boolean := False;
      --  Illegal access flag for TIM17
      TIM17F         : Boolean := False;
      --  Illegal access flag for SAI1
      SAI1F          : Boolean := False;
      --  Illegal access flag for TIM12 	
      TIM12F         : Boolean := False;
      --  Illegal access flag for USB
      USBF           : Boolean := False;
      --  Illegal access flag for I3C2
      I3C2F          : Boolean := False;
      --  Illegal access flag for LPUART1
      LPUART1F       : Boolean := False;
      --  Illegal access flag for I2C3
      I2C3F          : Boolean := False;
      --  Illegal access flag for LPTIM1
      LPTIM1F        : Boolean := False;
      --  Illegal access flag for LPTIM3
      LPTIM3F        : Boolean := False;
      --  Illegal access flag for LPTIM4
      LPTIM4F        : Boolean := False;
      --  Illegal access flag for COMP
      COMPF          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_SR2_Register use record
      TIM1F          at 0 range 0 .. 0;
      SPI1F          at 0 range 1 .. 1;
      TIM8F          at 0 range 2 .. 2;
      USART1F        at 0 range 3 .. 3;
      TIM15F         at 0 range 4 .. 4;
      TIM16F         at 0 range 5 .. 5;
      TIM17F         at 0 range 6 .. 6;
      SAI1F          at 0 range 7 .. 7;
      TIM12F         at 0 range 8 .. 8;
      USBF           at 0 range 9 .. 9;
      I3C2F          at 0 range 10 .. 10;
      LPUART1F       at 0 range 11 .. 11;
      I2C3F          at 0 range 12 .. 12;
      LPTIM1F        at 0 range 13 .. 13;
      LPTIM3F        at 0 range 14 .. 14;
      LPTIM4F        at 0 range 15 .. 15;
      COMPF          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GTZC1 TZIC status register 3
   type GTZC1_TZIC_SR3_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Illegal access flag for CRC
      CRCF           : Boolean := False;
      --  Illegal access flag for TSC
      TSCF           : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Illegal access flag for ICACHE registers
      ICACHE_REGF    : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Illegal access flag for ADC1 and ADC2
      ADC12F         : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Illegal access flag for AES
      AESF           : Boolean := False;
      --  Illegal access flag for HASH
      HASHF          : Boolean := False;
      --  Illegal access flag for RNG
      RNGF           : Boolean := False;
      --  Illegal access flag for PKA
      PKAF           : Boolean := False;
      --  Illegal access flag for SAES
      SAESF          : Boolean := False;
      --  Illegal access flag for CCB
      CCBF           : Boolean := False;
      --  Illegal access flag for SDMMC1
      SDMMC1F        : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Illegal access flag for OCTOSPI1 registers
      OCTOSPI1_REGF  : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Illegal access flag for RAMCFG
      RAMCFGF        : Boolean := False;
      --  Illegal access flag for DAC1
      DAC1F          : Boolean := False;
      --  Illegal access flag for ADF1
      ADF1F          : Boolean := False;
      --  unspecified
      Reserved_25_28 : HAL.UInt4 := 16#0#;
      --  Illegal access flag for HSP1 	
      HSP1F          : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_SR3_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CRCF           at 0 range 3 .. 3;
      TSCF           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ICACHE_REGF    at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ADC12F         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      AESF           at 0 range 11 .. 11;
      HASHF          at 0 range 12 .. 12;
      RNGF           at 0 range 13 .. 13;
      PKAF           at 0 range 14 .. 14;
      SAESF          at 0 range 15 .. 15;
      CCBF           at 0 range 16 .. 16;
      SDMMC1F        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      OCTOSPI1_REGF  at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      RAMCFGF        at 0 range 22 .. 22;
      DAC1F          at 0 range 23 .. 23;
      ADF1F          at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      HSP1F          at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  GTZC1 TZIC status register 4
   type GTZC1_TZIC_SR4_Register is record
      --  Illegal access flag for GPDMA1
      GPDMA1F        : Boolean := False;
      --  Illegal access flag for FLASH memory
      FLASHF         : Boolean := False;
      --  Illegal access flag for FLASH registers
      FLASH_REGF     : Boolean := False;
      --  Illegal access flag for PWR
      PWRF           : Boolean := False;
      --  Illegal access flag for RCC
      RCCF           : Boolean := False;
      --  Illegal access flag for SYSCFG
      SYSCFGF        : Boolean := False;
      --  Illegal access flag for EXTI
      EXTIF          : Boolean := False;
      --  Illegal access flag for RTC
      RTCF           : Boolean := False;
      --  Illegal access flag for TAMP
      TAMPF          : Boolean := False;
      --  unspecified
      Reserved_9_13  : HAL.UInt5 := 16#0#;
      --  Illegal access flag for GTZC1 TZSC registers
      TZSC1F         : Boolean := False;
      --  Illegal access flag for GTZC1 TZIC registers
      TZIC1F         : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Illegal access flag for SRAM1
      SRAM1F         : Boolean := False;
      --  Illegal access flag for MPCBB1 registers
      MPCBB1_REGF    : Boolean := False;
      --  Illegal access flag for SRAM2
      SRAM2F         : Boolean := False;
      --  Illegal access flag for MPCBB2 registers
      MPCBB2_REGF    : Boolean := False;
      --  Illegal access flag for SRAM3 	
      SRAM3F         : Boolean := False;
      --  Illegal access flag for MPCBB3 registers 	
      MPCBB3_REGF    : Boolean := False;
      --  Illegal access flag for SRAM4 	
      SRAM4F         : Boolean := False;
      --  Illegal access flag for MPCBB4 registers 	
      MPCBB4_REGF    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_SR4_Register use record
      GPDMA1F        at 0 range 0 .. 0;
      FLASHF         at 0 range 1 .. 1;
      FLASH_REGF     at 0 range 2 .. 2;
      PWRF           at 0 range 3 .. 3;
      RCCF           at 0 range 4 .. 4;
      SYSCFGF        at 0 range 5 .. 5;
      EXTIF          at 0 range 6 .. 6;
      RTCF           at 0 range 7 .. 7;
      TAMPF          at 0 range 8 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      TZSC1F         at 0 range 14 .. 14;
      TZIC1F         at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      SRAM1F         at 0 range 24 .. 24;
      MPCBB1_REGF    at 0 range 25 .. 25;
      SRAM2F         at 0 range 26 .. 26;
      MPCBB2_REGF    at 0 range 27 .. 27;
      SRAM3F         at 0 range 28 .. 28;
      MPCBB3_REGF    at 0 range 29 .. 29;
      SRAM4F         at 0 range 30 .. 30;
      MPCBB4_REGF    at 0 range 31 .. 31;
   end record;

   --  GTZC1 TZIC flag clear register 1
   type GTZC1_TZIC_FCR1_Register is record
      --  Clear the illegal access flag for TIM2
      CTIM2F         : Boolean := False;
      --  Clear the illegal access flag for TIM3
      CTIM3F         : Boolean := False;
      --  Clear the illegal access flag for TIM4
      CTIM4F         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Clear the illegal access flag for TIM6
      CTIM6F         : Boolean := False;
      --  Clear the illegal access flag for TIM7
      CTIM7F         : Boolean := False;
      --  Clear the illegal access flag for WWDG
      CWWDGF         : Boolean := False;
      --  Clear the illegal access flag for IWDG
      CIWDGF         : Boolean := False;
      --  Clear the illegal access flag for SPI2
      CSPI2F         : Boolean := False;
      --  Clear the illegal access flag for USART2 	
      CUSART2F       : Boolean := False;
      --  Clear the illegal access flag for USART3
      CUSART3F       : Boolean := False;
      --  Clear the illegal access flag for UART4
      CUART4F        : Boolean := False;
      --  Clear the illegal access flag for UART5
      CUART5F        : Boolean := False;
      --  Clear the illegal access flag for I2C1
      CI2C1F         : Boolean := False;
      --  Clear the illegal access flag for I2C2
      CI2C2F         : Boolean := False;
      --  Clear the illegal access flag for CRS
      CCRSF          : Boolean := False;
      --  Clear the illegal access flag for I2C4 	
      CI2C4F         : Boolean := False;
      --  Clear the illegal access flag for LPTIM2
      CLPTIM2F       : Boolean := False;
      --  Clear the illegal access flag for FDCAN1 and FDCAN SRAM.
      CFDCAN1F       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Clear the illegal access flag for FDCAN2 	
      CFDCAN2F       : Boolean := False;
      --  Clear the illegal access flag for SPI3
      CSPI3F         : Boolean := False;
      --  Clear the illegal access flag for I3C1
      CI3C1F         : Boolean := False;
      --  Clear the illegal access flag for OPAMP
      COPAMPF        : Boolean := False;
      --  Clear the illegal access flag for VREFBUF
      CVREFBUFF      : Boolean := False;
      --  Clear the illegal access flag for SPI4 	
      CSPI4F         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_FCR1_Register use record
      CTIM2F         at 0 range 0 .. 0;
      CTIM3F         at 0 range 1 .. 1;
      CTIM4F         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CTIM6F         at 0 range 4 .. 4;
      CTIM7F         at 0 range 5 .. 5;
      CWWDGF         at 0 range 6 .. 6;
      CIWDGF         at 0 range 7 .. 7;
      CSPI2F         at 0 range 8 .. 8;
      CUSART2F       at 0 range 9 .. 9;
      CUSART3F       at 0 range 10 .. 10;
      CUART4F        at 0 range 11 .. 11;
      CUART5F        at 0 range 12 .. 12;
      CI2C1F         at 0 range 13 .. 13;
      CI2C2F         at 0 range 14 .. 14;
      CCRSF          at 0 range 15 .. 15;
      CI2C4F         at 0 range 16 .. 16;
      CLPTIM2F       at 0 range 17 .. 17;
      CFDCAN1F       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CFDCAN2F       at 0 range 20 .. 20;
      CSPI3F         at 0 range 21 .. 21;
      CI3C1F         at 0 range 22 .. 22;
      COPAMPF        at 0 range 23 .. 23;
      CVREFBUFF      at 0 range 24 .. 24;
      CSPI4F         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GTZC1 TZIC flag clear register 2
   type GTZC1_TZIC_FCR2_Register is record
      --  Clear the illegal access flag for TIM1
      CTIM1F         : Boolean := False;
      --  Clear the illegal access flag for SPI1
      CSPI1F         : Boolean := False;
      --  Clear the illegal access flag for TIM8 	
      CTIM8F         : Boolean := False;
      --  Clear the illegal access flag for USART1
      CUSART1F       : Boolean := False;
      --  Clear the illegal access flag for TIM15
      CTIM15F        : Boolean := False;
      --  Clear the illegal access flag for TIM16
      CTIM16F        : Boolean := False;
      --  Clear the illegal access flag for TIM17
      CTIM17F        : Boolean := False;
      --  Clear the illegal access flag for SAI1
      CSAI1F         : Boolean := False;
      --  Clear the illegal access flag for TIM12 	
      CTIM12F        : Boolean := False;
      --  Clear the illegal access flag for USB
      CUSBF          : Boolean := False;
      --  Clear the illegal access flag for I3C2
      CI3C2F         : Boolean := False;
      --  Clear the illegal access flag for LPUART1
      CLPUART1F      : Boolean := False;
      --  Clear the illegal access flag for I2C3
      CI2C3F         : Boolean := False;
      --  Clear the illegal access flag for LPTIM1
      CLPTIM1F       : Boolean := False;
      --  Clear the illegal access flag for LPTIM3
      CLPTIM3F       : Boolean := False;
      --  Clear the illegal access flag for LPTIM4
      CLPTIM4F       : Boolean := False;
      --  Clear the illegal access flag for COMP
      CCOMPF         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_FCR2_Register use record
      CTIM1F         at 0 range 0 .. 0;
      CSPI1F         at 0 range 1 .. 1;
      CTIM8F         at 0 range 2 .. 2;
      CUSART1F       at 0 range 3 .. 3;
      CTIM15F        at 0 range 4 .. 4;
      CTIM16F        at 0 range 5 .. 5;
      CTIM17F        at 0 range 6 .. 6;
      CSAI1F         at 0 range 7 .. 7;
      CTIM12F        at 0 range 8 .. 8;
      CUSBF          at 0 range 9 .. 9;
      CI3C2F         at 0 range 10 .. 10;
      CLPUART1F      at 0 range 11 .. 11;
      CI2C3F         at 0 range 12 .. 12;
      CLPTIM1F       at 0 range 13 .. 13;
      CLPTIM3F       at 0 range 14 .. 14;
      CLPTIM4F       at 0 range 15 .. 15;
      CCOMPF         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GTZC1 TZIC flag clear register 3
   type GTZC1_TZIC_FCR3_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Clear the illegal access flag for CRC
      CCRCF          : Boolean := False;
      --  Clear the illegal access flag for TSC
      CTSCF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Clear the illegal access flag for ICACHE registers
      CICACHE_REGF   : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Clear the illegal access flag for ADC1 and ADC2
      CADC12F        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Clear the illegal access flag for AES
      CAESF          : Boolean := False;
      --  Clear the illegal access flag for HASH
      CHASHF         : Boolean := False;
      --  Clear the illegal access flag for RNG
      CRNGF          : Boolean := False;
      --  Clear the illegal access flag for PKA
      CPKAF          : Boolean := False;
      --  Clear the illegal access flag for SAES
      CSAESF         : Boolean := False;
      --  Clear the illegal access flag for CCB
      CCCBF          : Boolean := False;
      --  Clear the illegal access flag for SDMMC1
      CSDMMC1F       : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Clear the illegal access flag for OCTOSPI1 registers
      COCTOSPI1_REGF : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Clear the illegal access flag for RAMCFG
      CRAMCFGF       : Boolean := False;
      --  Clear the illegal access flag for DAC1
      CDAC1F         : Boolean := False;
      --  Clear the illegal access flag for ADF1
      CADF1F         : Boolean := False;
      --  unspecified
      Reserved_25_28 : HAL.UInt4 := 16#0#;
      --  Clear the illegal access flag for HSP1 	
      CHSP1F         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_FCR3_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CCRCF          at 0 range 3 .. 3;
      CTSCF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CICACHE_REGF   at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CADC12F        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      CAESF          at 0 range 11 .. 11;
      CHASHF         at 0 range 12 .. 12;
      CRNGF          at 0 range 13 .. 13;
      CPKAF          at 0 range 14 .. 14;
      CSAESF         at 0 range 15 .. 15;
      CCCBF          at 0 range 16 .. 16;
      CSDMMC1F       at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      COCTOSPI1_REGF at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CRAMCFGF       at 0 range 22 .. 22;
      CDAC1F         at 0 range 23 .. 23;
      CADF1F         at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      CHSP1F         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  GTZC1 TZIC flag clear register 4
   type GTZC1_TZIC_FCR4_Register is record
      --  Clear the illegal access flag for GPDMA1
      CGPDMA1F       : Boolean := False;
      --  Clear the illegal access flag for FLASH memory
      CFLASHF        : Boolean := False;
      --  Clear the illegal access flag for FLASH registers
      CFLASH_REGF    : Boolean := False;
      --  Clear the illegal access flag for PWR
      CPWRF          : Boolean := False;
      --  Clear the illegal access flag for RCC
      CRCCF          : Boolean := False;
      --  Clear the illegal access flag for SYSCFG
      CSYSCFGF       : Boolean := False;
      --  Clear the illegal access flag for EXTI
      CEXTIF         : Boolean := False;
      --  Clear the illegal access flag for RTC
      CRTCF          : Boolean := False;
      --  Clear the illegal access flag for TAMP
      CTAMPF         : Boolean := False;
      --  unspecified
      Reserved_9_13  : HAL.UInt5 := 16#0#;
      --  Clear the illegal access flag for GTZC1 TZSC registers
      CTZSC1F        : Boolean := False;
      --  Clear the illegal access flag for GTZC1 TZIC registers
      CTZIC1F        : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Clear the illegal access flag for SRAM1
      CSRAM1F        : Boolean := False;
      --  Clear the illegal access flag for MPCBB1 registers
      CMPCBB1_REGF   : Boolean := False;
      --  Clear the illegal access flag for SRAM2
      CSRAM2F        : Boolean := False;
      --  Clear the illegal access flag for MPCBB2 registers
      CMPCBB2_REGF   : Boolean := False;
      --  Clear the illegal access flag for SRAM3
      CSRAM3F        : Boolean := False;
      --  Clear the illegal access flag for MPCBB3 registers
      CMPCBB3_REGF   : Boolean := False;
      --  Clear the illegal access flag for SRAM4
      CSRAM4F        : Boolean := False;
      --  Clear the illegal access flag for MPCBB4 registers
      CMPCBB4_REGF   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZIC_FCR4_Register use record
      CGPDMA1F       at 0 range 0 .. 0;
      CFLASHF        at 0 range 1 .. 1;
      CFLASH_REGF    at 0 range 2 .. 2;
      CPWRF          at 0 range 3 .. 3;
      CRCCF          at 0 range 4 .. 4;
      CSYSCFGF       at 0 range 5 .. 5;
      CEXTIF         at 0 range 6 .. 6;
      CRTCF          at 0 range 7 .. 7;
      CTAMPF         at 0 range 8 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      CTZSC1F        at 0 range 14 .. 14;
      CTZIC1F        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      CSRAM1F        at 0 range 24 .. 24;
      CMPCBB1_REGF   at 0 range 25 .. 25;
      CSRAM2F        at 0 range 26 .. 26;
      CMPCBB2_REGF   at 0 range 27 .. 27;
      CSRAM3F        at 0 range 28 .. 28;
      CMPCBB3_REGF   at 0 range 29 .. 29;
      CSRAM4F        at 0 range 30 .. 30;
      CMPCBB4_REGF   at 0 range 31 .. 31;
   end record;

   --  GTZC1 TZSC control register
   type GTZC1_TZSC_CR_Register is record
      --  Lock GTZC1_TZSC_SECCFGRx and GTZC1_TZSC_PRIVCFGRx configuration
      --  untilnext reset 	
      LCK           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_CR_Register use record
      LCK           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  GTZC1 TZSC secure configuration register 1
   type GTZC1_TZSC_SECCFGR1_Register is record
      --  Secure access mode for TIM2
      TIM2SEC        : Boolean := False;
      --  Secure access mode for TIM3
      TIM3SEC        : Boolean := False;
      --  Secure access mode for TIM4
      TIM4SEC        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Secure access mode for TIM6
      TIM6SEC        : Boolean := False;
      --  Secure access mode for TIM7
      TIM7SEC        : Boolean := False;
      --  Secure access mode for WWDG
      WWDGSEC        : Boolean := False;
      --  Secure access mode for IWDG
      IWDGSEC        : Boolean := False;
      --  Secure access mode for SPI2
      SPI2SEC        : Boolean := False;
      --  Secure access mode for USART2 	
      USART2SEC      : Boolean := False;
      --  Secure access mode for USART3
      USART3SEC      : Boolean := False;
      --  Secure access mode for UART4
      UART4SEC       : Boolean := False;
      --  Secure access mode for UART5
      UART5SEC       : Boolean := False;
      --  Secure access mode for I2C1
      I2C1SEC        : Boolean := False;
      --  Secure access mode for I2C2
      I2C2SEC        : Boolean := False;
      --  Secure access mode for CRS
      CRSSEC         : Boolean := False;
      --  Secure access mode for I2C4 	
      I2C4SEC        : Boolean := False;
      --  Secure access mode for LPTIM2
      LPTIM2SEC      : Boolean := False;
      --  Secure access mode for FDCAN1 	
      FDCAN1SEC      : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Secure access mode for FDCAN2 	
      FDCAN2SEC      : Boolean := False;
      --  Secure access mode for SPI3
      SPI3SEC        : Boolean := False;
      --  Secure access mode for I3C1
      I3C1SEC        : Boolean := False;
      --  Secure access mode for OPAMP
      OPAMPSEC       : Boolean := False;
      --  Secure access mode for VREFBUF
      VREFBUFSEC     : Boolean := False;
      --  Secure access mode for VREFBUF 	
      SPI4SEC        : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_SECCFGR1_Register use record
      TIM2SEC        at 0 range 0 .. 0;
      TIM3SEC        at 0 range 1 .. 1;
      TIM4SEC        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6SEC        at 0 range 4 .. 4;
      TIM7SEC        at 0 range 5 .. 5;
      WWDGSEC        at 0 range 6 .. 6;
      IWDGSEC        at 0 range 7 .. 7;
      SPI2SEC        at 0 range 8 .. 8;
      USART2SEC      at 0 range 9 .. 9;
      USART3SEC      at 0 range 10 .. 10;
      UART4SEC       at 0 range 11 .. 11;
      UART5SEC       at 0 range 12 .. 12;
      I2C1SEC        at 0 range 13 .. 13;
      I2C2SEC        at 0 range 14 .. 14;
      CRSSEC         at 0 range 15 .. 15;
      I2C4SEC        at 0 range 16 .. 16;
      LPTIM2SEC      at 0 range 17 .. 17;
      FDCAN1SEC      at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FDCAN2SEC      at 0 range 20 .. 20;
      SPI3SEC        at 0 range 21 .. 21;
      I3C1SEC        at 0 range 22 .. 22;
      OPAMPSEC       at 0 range 23 .. 23;
      VREFBUFSEC     at 0 range 24 .. 24;
      SPI4SEC        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GTZC1 TZSC secure configuration register 2
   type GTZC1_TZSC_SECCFGR2_Register is record
      --  Secure access mode for TIM1
      TIM1SEC        : Boolean := False;
      --  Secure access mode for SPI1
      SPI1SEC        : Boolean := False;
      --  Secure access mode for TIM8 	
      TIM8SEC        : Boolean := False;
      --  Secure access mode for USART1
      USART1SEC      : Boolean := False;
      --  Secure access mode for TIM15
      TIM15SEC       : Boolean := False;
      --  Secure access mode for TIM16
      TIM16SEC       : Boolean := False;
      --  Secure access mode for TIM17
      TIM17SEC       : Boolean := False;
      --  Secure access mode for SAI1
      SAI1SEC        : Boolean := False;
      --  Secure access mode for TIM12 	
      TIM12SEC       : Boolean := False;
      --  Secure access mode for USB
      USBSEC         : Boolean := False;
      --  Secure access mode for I3C2
      I3C2SEC        : Boolean := False;
      --  Secure access mode for LPUART1
      LPUART1SEC     : Boolean := False;
      --  Secure access mode for I2C3
      I2C3SEC        : Boolean := False;
      --  Secure access mode for LPTIM1
      LPTIM1SEC      : Boolean := False;
      --  Secure access mode for LPTIM3
      LPTIM3SEC      : Boolean := False;
      --  Secure access mode for LPTIM4
      LPTIM4SEC      : Boolean := False;
      --  Secure access mode for COMP
      COMPSEC        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_SECCFGR2_Register use record
      TIM1SEC        at 0 range 0 .. 0;
      SPI1SEC        at 0 range 1 .. 1;
      TIM8SEC        at 0 range 2 .. 2;
      USART1SEC      at 0 range 3 .. 3;
      TIM15SEC       at 0 range 4 .. 4;
      TIM16SEC       at 0 range 5 .. 5;
      TIM17SEC       at 0 range 6 .. 6;
      SAI1SEC        at 0 range 7 .. 7;
      TIM12SEC       at 0 range 8 .. 8;
      USBSEC         at 0 range 9 .. 9;
      I3C2SEC        at 0 range 10 .. 10;
      LPUART1SEC     at 0 range 11 .. 11;
      I2C3SEC        at 0 range 12 .. 12;
      LPTIM1SEC      at 0 range 13 .. 13;
      LPTIM3SEC      at 0 range 14 .. 14;
      LPTIM4SEC      at 0 range 15 .. 15;
      COMPSEC        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GTZC1 TZSC secure configuration register 3
   type GTZC1_TZSC_SECCFGR3_Register is record
      --  unspecified
      Reserved_0_2    : HAL.UInt3 := 16#0#;
      --  Secure access mode for CRC
      CRCSEC          : Boolean := False;
      --  Secure access mode for TSC
      TSCSEC          : Boolean := False;
      --  unspecified
      Reserved_5_5    : HAL.Bit := 16#0#;
      --  Secure access mode for ICACHE registers
      ICACHE_REGSEC   : Boolean := False;
      --  unspecified
      Reserved_7_7    : HAL.Bit := 16#0#;
      --  Secure access mode for ADC1 and ADC2
      ADC12SEC        : Boolean := False;
      --  unspecified
      Reserved_9_10   : HAL.UInt2 := 16#0#;
      --  Secure access mode for AES
      AESSEC          : Boolean := False;
      --  Secure access mode for HASH
      HASHSEC         : Boolean := False;
      --  Secure access mode for RNG
      RNGSEC          : Boolean := False;
      --  Secure access mode for PKA
      PKASEC          : Boolean := False;
      --  Secure access mode for SAES
      SAESSEC         : Boolean := False;
      --  Secure access mode for CCB
      CCBSEC          : Boolean := False;
      --  Secure access mode for SDMMC1
      SDMMC1SEC       : Boolean := False;
      --  unspecified
      Reserved_18_19  : HAL.UInt2 := 16#0#;
      --  Secure access mode for OCTOSPI1 registers
      OCTOSPI1_REGSEC : Boolean := False;
      --  unspecified
      Reserved_21_21  : HAL.Bit := 16#0#;
      --  Secure access mode for RAMCFG
      RAMCFGSEC       : Boolean := False;
      --  Secure access mode for DAC1
      DAC1SEC         : Boolean := False;
      --  Secure access mode for ADF1
      ADF1SEC         : Boolean := False;
      --  unspecified
      Reserved_25_28  : HAL.UInt4 := 16#0#;
      --  Secure access mode for HSP1 	
      HSP1SEC         : Boolean := False;
      --  unspecified
      Reserved_30_31  : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_SECCFGR3_Register use record
      Reserved_0_2    at 0 range 0 .. 2;
      CRCSEC          at 0 range 3 .. 3;
      TSCSEC          at 0 range 4 .. 4;
      Reserved_5_5    at 0 range 5 .. 5;
      ICACHE_REGSEC   at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      ADC12SEC        at 0 range 8 .. 8;
      Reserved_9_10   at 0 range 9 .. 10;
      AESSEC          at 0 range 11 .. 11;
      HASHSEC         at 0 range 12 .. 12;
      RNGSEC          at 0 range 13 .. 13;
      PKASEC          at 0 range 14 .. 14;
      SAESSEC         at 0 range 15 .. 15;
      CCBSEC          at 0 range 16 .. 16;
      SDMMC1SEC       at 0 range 17 .. 17;
      Reserved_18_19  at 0 range 18 .. 19;
      OCTOSPI1_REGSEC at 0 range 20 .. 20;
      Reserved_21_21  at 0 range 21 .. 21;
      RAMCFGSEC       at 0 range 22 .. 22;
      DAC1SEC         at 0 range 23 .. 23;
      ADF1SEC         at 0 range 24 .. 24;
      Reserved_25_28  at 0 range 25 .. 28;
      HSP1SEC         at 0 range 29 .. 29;
      Reserved_30_31  at 0 range 30 .. 31;
   end record;

   --  GTZC1 TZSC privilege configuration register 1
   type GTZC1_TZSC_PRIVCFGR1_Register is record
      --  Privileged access mode for TIM2
      TIM2PRIV       : Boolean := False;
      --  Privileged access mode for TIM3
      TIM3PRIV       : Boolean := False;
      --  Privileged access mode for TIM4
      TIM4PRIV       : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Privileged access mode for TIM6
      TIM6PRIV       : Boolean := False;
      --  Privileged access mode for TIM7
      TIM7PRIV       : Boolean := False;
      --  Privileged access mode for WWDG
      WWDGPRIV       : Boolean := False;
      --  Privileged access mode for IWDG
      IWDGPRIV       : Boolean := False;
      --  Privileged access mode for SPI2
      SPI2PRIV       : Boolean := False;
      --  Privileged access mode for USART2 	
      USART2PRIV     : Boolean := False;
      --  Privileged access mode for USART3 	
      USART3PRIV     : Boolean := False;
      --  Privileged access mode for UART4
      UART4PRIV      : Boolean := False;
      --  Privileged access mode for UART5
      UART5PRIV      : Boolean := False;
      --  Privileged access mode for I2C1
      I2C1PRIV       : Boolean := False;
      --  Privileged access mode for I2C2
      I2C2PRIV       : Boolean := False;
      --  Privileged access mode for CRS
      CRSPRIV        : Boolean := False;
      --  Privileged access mode for I2C4 	
      I2C4PRIV       : Boolean := False;
      --  Privileged access mode for LPTIM2
      LPTIM2PRIV     : Boolean := False;
      --  Privileged access mode for FDCAN1 	
      FDCAN1PRIV     : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Privileged access mode for FDCAN2 	
      FDCAN2PRIV     : Boolean := False;
      --  Privileged access mode for SPI3
      SPI3PRIV       : Boolean := False;
      --  Privileged access mode for I3C1
      I3C1PRIV       : Boolean := False;
      --  Privileged access mode for OPAMP
      OPAMPPRIV      : Boolean := False;
      --  Privileged access mode for VREFBUF
      VREFBUFPRIV    : Boolean := False;
      --  Privileged access mode for SPI4 	
      SPI4PRIV       : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_PRIVCFGR1_Register use record
      TIM2PRIV       at 0 range 0 .. 0;
      TIM3PRIV       at 0 range 1 .. 1;
      TIM4PRIV       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6PRIV       at 0 range 4 .. 4;
      TIM7PRIV       at 0 range 5 .. 5;
      WWDGPRIV       at 0 range 6 .. 6;
      IWDGPRIV       at 0 range 7 .. 7;
      SPI2PRIV       at 0 range 8 .. 8;
      USART2PRIV     at 0 range 9 .. 9;
      USART3PRIV     at 0 range 10 .. 10;
      UART4PRIV      at 0 range 11 .. 11;
      UART5PRIV      at 0 range 12 .. 12;
      I2C1PRIV       at 0 range 13 .. 13;
      I2C2PRIV       at 0 range 14 .. 14;
      CRSPRIV        at 0 range 15 .. 15;
      I2C4PRIV       at 0 range 16 .. 16;
      LPTIM2PRIV     at 0 range 17 .. 17;
      FDCAN1PRIV     at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FDCAN2PRIV     at 0 range 20 .. 20;
      SPI3PRIV       at 0 range 21 .. 21;
      I3C1PRIV       at 0 range 22 .. 22;
      OPAMPPRIV      at 0 range 23 .. 23;
      VREFBUFPRIV    at 0 range 24 .. 24;
      SPI4PRIV       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GTZC1 TZSC privilege configuration register 2
   type GTZC1_TZSC_PRIVCFGR2_Register is record
      --  Privileged access mode for TIM1
      TIM1PRIV       : Boolean := False;
      --  Privileged access mode for SPI1
      SPI1PRIV       : Boolean := False;
      --  Privileged access mode for TIM8 	
      TIM8PRIV       : Boolean := False;
      --  Privileged access mode for USART1
      USART1PRIV     : Boolean := False;
      --  Privileged access mode for TIM15
      TIM15PRIV      : Boolean := False;
      --  Privileged access mode for TIM16
      TIM16PRIV      : Boolean := False;
      --  Privileged access mode for TIM17
      TIM17PRIV      : Boolean := False;
      --  Privileged access mode for SAI1
      SAI1PRIV       : Boolean := False;
      --  Privileged access mode for TIM12 	
      TIM12PRIV      : Boolean := False;
      --  Privileged access mode for USB
      USBPRIV        : Boolean := False;
      --  Privileged access mode for I3C2
      I3C2PRIV       : Boolean := False;
      --  Privileged access mode for LPUART1
      LPUART1PRIV    : Boolean := False;
      --  Privileged access mode for I2C3
      I2C3PRIV       : Boolean := False;
      --  Privileged access mode for LPTIM1
      LPTIM1PRIV     : Boolean := False;
      --  Privileged access mode for LPTIM3
      LPTIM3PRIV     : Boolean := False;
      --  Privileged access mode for LPTIM4
      LPTIM4PRIV     : Boolean := False;
      --  Privileged access mode for COMP
      COMPPRIV       : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_PRIVCFGR2_Register use record
      TIM1PRIV       at 0 range 0 .. 0;
      SPI1PRIV       at 0 range 1 .. 1;
      TIM8PRIV       at 0 range 2 .. 2;
      USART1PRIV     at 0 range 3 .. 3;
      TIM15PRIV      at 0 range 4 .. 4;
      TIM16PRIV      at 0 range 5 .. 5;
      TIM17PRIV      at 0 range 6 .. 6;
      SAI1PRIV       at 0 range 7 .. 7;
      TIM12PRIV      at 0 range 8 .. 8;
      USBPRIV        at 0 range 9 .. 9;
      I3C2PRIV       at 0 range 10 .. 10;
      LPUART1PRIV    at 0 range 11 .. 11;
      I2C3PRIV       at 0 range 12 .. 12;
      LPTIM1PRIV     at 0 range 13 .. 13;
      LPTIM3PRIV     at 0 range 14 .. 14;
      LPTIM4PRIV     at 0 range 15 .. 15;
      COMPPRIV       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GTZC1 TZSC privilege configuration register 3
   type GTZC1_TZSC_PRIVCFGR3_Register is record
      --  unspecified
      Reserved_0_2     : HAL.UInt3 := 16#0#;
      --  Privileged access mode for CRC
      CRCPRIV          : Boolean := False;
      --  Privileged access mode for TSC
      TSCPRIV          : Boolean := False;
      --  unspecified
      Reserved_5_5     : HAL.Bit := 16#0#;
      --  Privileged access mode for ICACHE registers
      ICACHE_REGPRIV   : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Privileged access mode for ADC1 and ADC2
      ADC12PRIV        : Boolean := False;
      --  unspecified
      Reserved_9_10    : HAL.UInt2 := 16#0#;
      --  Privileged access mode for AES
      AESPRIV          : Boolean := False;
      --  Privileged access mode for HASH
      HASHPRIV         : Boolean := False;
      --  Privileged access mode for RNG
      RNGPRIV          : Boolean := False;
      --  Privileged access mode for PKA
      PKAPRIV          : Boolean := False;
      --  Privileged access mode for SAES
      SAESPRIV         : Boolean := False;
      --  Privileged access mode for CCB
      CCBPRIV          : Boolean := False;
      --  Privileged access mode for SDMMC1
      SDMMC1PRIV       : Boolean := False;
      --  unspecified
      Reserved_18_19   : HAL.UInt2 := 16#0#;
      --  Privileged access mode for OCTOSPI1 registers
      OCTOSPI1_REGPRIV : Boolean := False;
      --  unspecified
      Reserved_21_21   : HAL.Bit := 16#0#;
      --  Privileged access mode for RAMCFG
      RAMCFGPRIV       : Boolean := False;
      --  Privileged access mode for DAC1
      DAC1PRIV         : Boolean := False;
      --  Privileged access mode for ADF1
      ADF1PRIV         : Boolean := False;
      --  unspecified
      Reserved_25_28   : HAL.UInt4 := 16#0#;
      --  Privileged access mode for HSP1 	
      HSP1PRIV         : Boolean := False;
      --  unspecified
      Reserved_30_31   : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTZC1_TZSC_PRIVCFGR3_Register use record
      Reserved_0_2     at 0 range 0 .. 2;
      CRCPRIV          at 0 range 3 .. 3;
      TSCPRIV          at 0 range 4 .. 4;
      Reserved_5_5     at 0 range 5 .. 5;
      ICACHE_REGPRIV   at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      ADC12PRIV        at 0 range 8 .. 8;
      Reserved_9_10    at 0 range 9 .. 10;
      AESPRIV          at 0 range 11 .. 11;
      HASHPRIV         at 0 range 12 .. 12;
      RNGPRIV          at 0 range 13 .. 13;
      PKAPRIV          at 0 range 14 .. 14;
      SAESPRIV         at 0 range 15 .. 15;
      CCBPRIV          at 0 range 16 .. 16;
      SDMMC1PRIV       at 0 range 17 .. 17;
      Reserved_18_19   at 0 range 18 .. 19;
      OCTOSPI1_REGPRIV at 0 range 20 .. 20;
      Reserved_21_21   at 0 range 21 .. 21;
      RAMCFGPRIV       at 0 range 22 .. 22;
      DAC1PRIV         at 0 range 23 .. 23;
      ADF1PRIV         at 0 range 24 .. 24;
      Reserved_25_28   at 0 range 25 .. 28;
      HSP1PRIV         at 0 range 29 .. 29;
      Reserved_30_31   at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GTZC1_MPCBB1 address block description
   type GTZC1_MPCBB1_Peripheral is record
      --  GTZC1 SRAM1 MPCBB control register
      GTZC1_MPCBB1_CR         : aliased GTZC1_MPCBB1_CR_Register;
      --  GTZC1 SRAM1 MPCBB configuration lock register 1
      GTZC1_MPCBB1_CFGLOCKR1  : aliased GTZC1_MPCBB1_CFGLOCKR1_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 0	register
      GTZC1_MPCBB1_SECCFGR0   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 1	register
      GTZC1_MPCBB1_SECCFGR1   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 2	register
      GTZC1_MPCBB1_SECCFGR2   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 3	register
      GTZC1_MPCBB1_SECCFGR3   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 4	register
      GTZC1_MPCBB1_SECCFGR4   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 5	register
      GTZC1_MPCBB1_SECCFGR5   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 6	register
      GTZC1_MPCBB1_SECCFGR6   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 7	register
      GTZC1_MPCBB1_SECCFGR7   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 8	register
      GTZC1_MPCBB1_SECCFGR8   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 9	register
      GTZC1_MPCBB1_SECCFGR9   : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 10	register
      GTZC1_MPCBB1_SECCFGR10  : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB security configuration for super-block 11	register
      GTZC1_MPCBB1_SECCFGR11  : aliased GTZC1_MPCBB1_SECCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 0	register
      GTZC1_MPCBB1_PRIVCFGR0  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 1	register
      GTZC1_MPCBB1_PRIVCFGR1  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 2	register
      GTZC1_MPCBB1_PRIVCFGR2  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 3	register
      GTZC1_MPCBB1_PRIVCFGR3  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 4	register
      GTZC1_MPCBB1_PRIVCFGR4  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 5	register
      GTZC1_MPCBB1_PRIVCFGR5  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 6	register
      GTZC1_MPCBB1_PRIVCFGR6  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 7	register
      GTZC1_MPCBB1_PRIVCFGR7  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 8	register
      GTZC1_MPCBB1_PRIVCFGR8  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block 9	register
      GTZC1_MPCBB1_PRIVCFGR9  : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block
      --  10	register
      GTZC1_MPCBB1_PRIVCFGR10 : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
      --  GTZC1 SRAM1 MPCBB privileged configuration for super-block
      --  11	register
      GTZC1_MPCBB1_PRIVCFGR11 : aliased GTZC1_MPCBB1_PRIVCFGR_Register;
   end record
     with Volatile;

   for GTZC1_MPCBB1_Peripheral use record
      GTZC1_MPCBB1_CR         at 16#0# range 0 .. 31;
      GTZC1_MPCBB1_CFGLOCKR1  at 16#10# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR0   at 16#100# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR1   at 16#104# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR2   at 16#108# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR3   at 16#10C# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR4   at 16#110# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR5   at 16#114# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR6   at 16#118# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR7   at 16#11C# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR8   at 16#120# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR9   at 16#124# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR10  at 16#128# range 0 .. 31;
      GTZC1_MPCBB1_SECCFGR11  at 16#12C# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR0  at 16#200# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR1  at 16#204# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR2  at 16#208# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR3  at 16#20C# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR4  at 16#210# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR5  at 16#214# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR6  at 16#218# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR7  at 16#21C# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR8  at 16#220# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR9  at 16#224# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR10 at 16#228# range 0 .. 31;
      GTZC1_MPCBB1_PRIVCFGR11 at 16#22C# range 0 .. 31;
   end record;

   --  GTZC1_MPCBB1 address block description
   GTZC1_MPCBB1_Periph : aliased GTZC1_MPCBB1_Peripheral
     with Import, Address => GTZC1_MPCBB1_Base;

   --  GTZC1_MPCBB1 address block description
   SEC_GTZC1_MPCBB1_Periph : aliased GTZC1_MPCBB1_Peripheral
     with Import, Address => SEC_GTZC1_MPCBB1_Base;

   --  GTZC1_MPCBB2 address block description
   type GTZC1_MPCBB2_Peripheral is record
      --  GTZC1 SRAM2 MPCBB control register
      GTZC1_MPCBB2_CR        : aliased GTZC1_MPCBB2_CR_Register;
      --  GTZC1 SRAM2 MPCBB configuration lock register 1
      GTZC1_MPCBB2_CFGLOCKR1 : aliased GTZC1_MPCBB2_CFGLOCKR1_Register;
      --  GTZC1 SRAM2 MPCBB security configuration for super-block 0	register
      GTZC1_MPCBB2_SECCFGR0  : aliased GTZC1_MPCBB2_SECCFGR_Register;
      --  GTZC1 SRAM2 MPCBB security configuration for super-block 1	register
      GTZC1_MPCBB2_SECCFGR1  : aliased GTZC1_MPCBB2_SECCFGR_Register;
      --  GTZC1 SRAM2 MPCBB security configuration for super-block 2	register
      GTZC1_MPCBB2_SECCFGR2  : aliased GTZC1_MPCBB2_SECCFGR_Register;
      --  GTZC1 SRAM2 MPCBB security configuration for super-block 3	register
      GTZC1_MPCBB2_SECCFGR3  : aliased GTZC1_MPCBB2_SECCFGR_Register;
      --  GTZC1 SRAM2 MPCBB privileged configuration for super-block 0	register
      GTZC1_MPCBB2_PRIVCFGR0 : aliased GTZC1_MPCBB2_PRIVCFGR_Register;
      --  GTZC1 SRAM2 MPCBB privileged configuration for super-block 1	register
      GTZC1_MPCBB2_PRIVCFGR1 : aliased GTZC1_MPCBB2_PRIVCFGR_Register;
      --  GTZC1 SRAM2 MPCBB privileged configuration for super-block 2	register
      GTZC1_MPCBB2_PRIVCFGR2 : aliased GTZC1_MPCBB2_PRIVCFGR_Register;
      --  GTZC1 SRAM2 MPCBB privileged configuration for super-block 3	register
      GTZC1_MPCBB2_PRIVCFGR3 : aliased GTZC1_MPCBB2_PRIVCFGR_Register;
   end record
     with Volatile;

   for GTZC1_MPCBB2_Peripheral use record
      GTZC1_MPCBB2_CR        at 16#0# range 0 .. 31;
      GTZC1_MPCBB2_CFGLOCKR1 at 16#10# range 0 .. 31;
      GTZC1_MPCBB2_SECCFGR0  at 16#100# range 0 .. 31;
      GTZC1_MPCBB2_SECCFGR1  at 16#104# range 0 .. 31;
      GTZC1_MPCBB2_SECCFGR2  at 16#108# range 0 .. 31;
      GTZC1_MPCBB2_SECCFGR3  at 16#10C# range 0 .. 31;
      GTZC1_MPCBB2_PRIVCFGR0 at 16#200# range 0 .. 31;
      GTZC1_MPCBB2_PRIVCFGR1 at 16#204# range 0 .. 31;
      GTZC1_MPCBB2_PRIVCFGR2 at 16#208# range 0 .. 31;
      GTZC1_MPCBB2_PRIVCFGR3 at 16#20C# range 0 .. 31;
   end record;

   --  GTZC1_MPCBB2 address block description
   GTZC1_MPCBB2_Periph : aliased GTZC1_MPCBB2_Peripheral
     with Import, Address => GTZC1_MPCBB2_Base;

   --  GTZC1_MPCBB2 address block description
   SEC_GTZC1_MPCBB2_Periph : aliased GTZC1_MPCBB2_Peripheral
     with Import, Address => SEC_GTZC1_MPCBB2_Base;

   --  GTZC1_MPCBB3 address block description
   type GTZC1_MPCBB3_Peripheral is record
      --  GTZC1 SRAM3 MPCBB control register
      GTZC1_MPCBB3_CR         : aliased GTZC1_MPCBB3_CR_Register;
      --  GTZC1 SRAM3 MPCBB configuration lock register 1
      GTZC1_MPCBB3_CFGLOCKR1  : aliased GTZC1_MPCBB3_CFGLOCKR1_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 0	register
      GTZC1_MPCBB3_SECCFGR0   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 1	register
      GTZC1_MPCBB3_SECCFGR1   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 2	register
      GTZC1_MPCBB3_SECCFGR2   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 3	register
      GTZC1_MPCBB3_SECCFGR3   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 4	register
      GTZC1_MPCBB3_SECCFGR4   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 5	register
      GTZC1_MPCBB3_SECCFGR5   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 6	register
      GTZC1_MPCBB3_SECCFGR6   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 7	register
      GTZC1_MPCBB3_SECCFGR7   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 8	register
      GTZC1_MPCBB3_SECCFGR8   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 9	register
      GTZC1_MPCBB3_SECCFGR9   : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 10	register
      GTZC1_MPCBB3_SECCFGR10  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 11	register
      GTZC1_MPCBB3_SECCFGR11  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 12	register
      GTZC1_MPCBB3_SECCFGR12  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 13	register
      GTZC1_MPCBB3_SECCFGR13  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 14	register
      GTZC1_MPCBB3_SECCFGR14  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 15	register
      GTZC1_MPCBB3_SECCFGR15  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 16	register
      GTZC1_MPCBB3_SECCFGR16  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 17	register
      GTZC1_MPCBB3_SECCFGR17  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 18	register
      GTZC1_MPCBB3_SECCFGR18  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB security configuration for super-block 19	register
      GTZC1_MPCBB3_SECCFGR19  : aliased GTZC1_MPCBB3_SECCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 0	register
      GTZC1_MPCBB3_PRIVCFGR0  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 1	register
      GTZC1_MPCBB3_PRIVCFGR1  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 2	register
      GTZC1_MPCBB3_PRIVCFGR2  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 3	register
      GTZC1_MPCBB3_PRIVCFGR3  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 4	register
      GTZC1_MPCBB3_PRIVCFGR4  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 5	register
      GTZC1_MPCBB3_PRIVCFGR5  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 6	register
      GTZC1_MPCBB3_PRIVCFGR6  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 7	register
      GTZC1_MPCBB3_PRIVCFGR7  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 8	register
      GTZC1_MPCBB3_PRIVCFGR8  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block 9	register
      GTZC1_MPCBB3_PRIVCFGR9  : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  10	register
      GTZC1_MPCBB3_PRIVCFGR10 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  11	register
      GTZC1_MPCBB3_PRIVCFGR11 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  12	register
      GTZC1_MPCBB3_PRIVCFGR12 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  13	register
      GTZC1_MPCBB3_PRIVCFGR13 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  14	register
      GTZC1_MPCBB3_PRIVCFGR14 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  15	register
      GTZC1_MPCBB3_PRIVCFGR15 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  16	register
      GTZC1_MPCBB3_PRIVCFGR16 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  17	register
      GTZC1_MPCBB3_PRIVCFGR17 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  18	register
      GTZC1_MPCBB3_PRIVCFGR18 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
      --  GTZC1 SRAM3 MPCBB privileged configuration for super-block
      --  19	register
      GTZC1_MPCBB3_PRIVCFGR19 : aliased GTZC1_MPCBB3_PRIVCFGR_Register;
   end record
     with Volatile;

   for GTZC1_MPCBB3_Peripheral use record
      GTZC1_MPCBB3_CR         at 16#0# range 0 .. 31;
      GTZC1_MPCBB3_CFGLOCKR1  at 16#10# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR0   at 16#100# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR1   at 16#104# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR2   at 16#108# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR3   at 16#10C# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR4   at 16#110# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR5   at 16#114# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR6   at 16#118# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR7   at 16#11C# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR8   at 16#120# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR9   at 16#124# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR10  at 16#128# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR11  at 16#12C# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR12  at 16#130# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR13  at 16#134# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR14  at 16#138# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR15  at 16#13C# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR16  at 16#140# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR17  at 16#144# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR18  at 16#148# range 0 .. 31;
      GTZC1_MPCBB3_SECCFGR19  at 16#14C# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR0  at 16#200# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR1  at 16#204# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR2  at 16#208# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR3  at 16#20C# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR4  at 16#210# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR5  at 16#214# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR6  at 16#218# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR7  at 16#21C# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR8  at 16#220# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR9  at 16#224# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR10 at 16#228# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR11 at 16#22C# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR12 at 16#230# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR13 at 16#234# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR14 at 16#238# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR15 at 16#23C# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR16 at 16#240# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR17 at 16#244# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR18 at 16#248# range 0 .. 31;
      GTZC1_MPCBB3_PRIVCFGR19 at 16#24C# range 0 .. 31;
   end record;

   --  GTZC1_MPCBB3 address block description
   GTZC1_MPCBB3_Periph : aliased GTZC1_MPCBB3_Peripheral
     with Import, Address => GTZC1_MPCBB3_Base;

   --  GTZC1_MPCBB3 address block description
   SEC_GTZC1_MPCBB3_Periph : aliased GTZC1_MPCBB3_Peripheral
     with Import, Address => SEC_GTZC1_MPCBB3_Base;

   --  GTZC1_MPCBB4 address block description
   type GTZC1_MPCBB4_Peripheral is record
      --  GTZC1 SRAM4 MPCBB control register
      GTZC1_MPCBB4_CR        : aliased GTZC1_MPCBB4_CR_Register;
      --  GTZC1 SRAM4 MPCBB configuration lock register 1
      GTZC1_MPCBB4_CFGLOCKR1 : aliased GTZC1_MPCBB4_CFGLOCKR1_Register;
      --  GTZC1 SRAM4 MPCBB security configuration for super-block 0	register
      GTZC1_MPCBB4_SECCFGR0  : aliased GTZC1_MPCBB4_SECCFGR_Register;
      --  GTZC1 SRAM4 MPCBB security configuration for super-block 1	register
      GTZC1_MPCBB4_SECCFGR1  : aliased GTZC1_MPCBB4_SECCFGR_Register;
      --  GTZC1 SRAM4 MPCBB security configuration for super-block 2	register
      GTZC1_MPCBB4_SECCFGR2  : aliased GTZC1_MPCBB4_SECCFGR_Register;
      --  GTZC1 SRAM4 MPCBB security configuration for super-block 3	register
      GTZC1_MPCBB4_SECCFGR3  : aliased GTZC1_MPCBB4_SECCFGR_Register;
      --  GTZC1 SRAM4 MPCBB security configuration for super-block 4	register
      GTZC1_MPCBB4_SECCFGR4  : aliased GTZC1_MPCBB4_SECCFGR_Register;
      --  GTZC1 SRAM4 MPCBB privileged configuration for super-block 0	register
      GTZC1_MPCBB4_PRIVCFGR0 : aliased GTZC1_MPCBB4_PRIVCFGR_Register;
      --  GTZC1 SRAM4 MPCBB privileged configuration for super-block 1	register
      GTZC1_MPCBB4_PRIVCFGR1 : aliased GTZC1_MPCBB4_PRIVCFGR_Register;
      --  GTZC1 SRAM4 MPCBB privileged configuration for super-block 2	register
      GTZC1_MPCBB4_PRIVCFGR2 : aliased GTZC1_MPCBB4_PRIVCFGR_Register;
      --  GTZC1 SRAM4 MPCBB privileged configuration for super-block 3	register
      GTZC1_MPCBB4_PRIVCFGR3 : aliased GTZC1_MPCBB4_PRIVCFGR_Register;
      --  GTZC1 SRAM4 MPCBB privileged configuration for super-block 4	register
      GTZC1_MPCBB4_PRIVCFGR4 : aliased GTZC1_MPCBB4_PRIVCFGR_Register;
   end record
     with Volatile;

   for GTZC1_MPCBB4_Peripheral use record
      GTZC1_MPCBB4_CR        at 16#0# range 0 .. 31;
      GTZC1_MPCBB4_CFGLOCKR1 at 16#10# range 0 .. 31;
      GTZC1_MPCBB4_SECCFGR0  at 16#100# range 0 .. 31;
      GTZC1_MPCBB4_SECCFGR1  at 16#104# range 0 .. 31;
      GTZC1_MPCBB4_SECCFGR2  at 16#108# range 0 .. 31;
      GTZC1_MPCBB4_SECCFGR3  at 16#10C# range 0 .. 31;
      GTZC1_MPCBB4_SECCFGR4  at 16#110# range 0 .. 31;
      GTZC1_MPCBB4_PRIVCFGR0 at 16#200# range 0 .. 31;
      GTZC1_MPCBB4_PRIVCFGR1 at 16#204# range 0 .. 31;
      GTZC1_MPCBB4_PRIVCFGR2 at 16#208# range 0 .. 31;
      GTZC1_MPCBB4_PRIVCFGR3 at 16#20C# range 0 .. 31;
      GTZC1_MPCBB4_PRIVCFGR4 at 16#210# range 0 .. 31;
   end record;

   --  GTZC1_MPCBB4 address block description
   GTZC1_MPCBB4_Periph : aliased GTZC1_MPCBB4_Peripheral
     with Import, Address => GTZC1_MPCBB4_Base;

   --  GTZC1_MPCBB4 address block description
   SEC_GTZC1_MPCBB4_Periph : aliased GTZC1_MPCBB4_Peripheral
     with Import, Address => SEC_GTZC1_MPCBB4_Base;

   --  GTZC1_TZIC address block description
   type GTZC1_TZIC_Peripheral is record
      --  GTZC1 TZIC interrupt enable register 1
      GTZC1_TZIC_IER1 : aliased GTZC1_TZIC_IER1_Register;
      --  GTZC1 TZIC interrupt enable register 2
      GTZC1_TZIC_IER2 : aliased GTZC1_TZIC_IER2_Register;
      --  GTZC1 TZIC interrupt enable register 3
      GTZC1_TZIC_IER3 : aliased GTZC1_TZIC_IER3_Register;
      --  GTZC1 TZIC interrupt enable register 4
      GTZC1_TZIC_IER4 : aliased GTZC1_TZIC_IER4_Register;
      --  GTZC1 TZIC status register 1
      GTZC1_TZIC_SR1  : aliased GTZC1_TZIC_SR1_Register;
      --  GTZC1 TZIC status register 2
      GTZC1_TZIC_SR2  : aliased GTZC1_TZIC_SR2_Register;
      --  GTZC1 TZIC status register 3
      GTZC1_TZIC_SR3  : aliased GTZC1_TZIC_SR3_Register;
      --  GTZC1 TZIC status register 4
      GTZC1_TZIC_SR4  : aliased GTZC1_TZIC_SR4_Register;
      --  GTZC1 TZIC flag clear register 1
      GTZC1_TZIC_FCR1 : aliased GTZC1_TZIC_FCR1_Register;
      --  GTZC1 TZIC flag clear register 2
      GTZC1_TZIC_FCR2 : aliased GTZC1_TZIC_FCR2_Register;
      --  GTZC1 TZIC flag clear register 3
      GTZC1_TZIC_FCR3 : aliased GTZC1_TZIC_FCR3_Register;
      --  GTZC1 TZIC flag clear register 4
      GTZC1_TZIC_FCR4 : aliased GTZC1_TZIC_FCR4_Register;
   end record
     with Volatile;

   for GTZC1_TZIC_Peripheral use record
      GTZC1_TZIC_IER1 at 16#0# range 0 .. 31;
      GTZC1_TZIC_IER2 at 16#4# range 0 .. 31;
      GTZC1_TZIC_IER3 at 16#8# range 0 .. 31;
      GTZC1_TZIC_IER4 at 16#C# range 0 .. 31;
      GTZC1_TZIC_SR1  at 16#10# range 0 .. 31;
      GTZC1_TZIC_SR2  at 16#14# range 0 .. 31;
      GTZC1_TZIC_SR3  at 16#18# range 0 .. 31;
      GTZC1_TZIC_SR4  at 16#1C# range 0 .. 31;
      GTZC1_TZIC_FCR1 at 16#20# range 0 .. 31;
      GTZC1_TZIC_FCR2 at 16#24# range 0 .. 31;
      GTZC1_TZIC_FCR3 at 16#28# range 0 .. 31;
      GTZC1_TZIC_FCR4 at 16#2C# range 0 .. 31;
   end record;

   --  GTZC1_TZIC address block description
   GTZC1_TZIC_Periph : aliased GTZC1_TZIC_Peripheral
     with Import, Address => GTZC1_TZIC_Base;

   --  GTZC1_TZIC address block description
   SEC_GTZC1_TZIC_Periph : aliased GTZC1_TZIC_Peripheral
     with Import, Address => SEC_GTZC1_TZIC_Base;

   --  GTZC1_TZSC address block description
   type GTZC1_TZSC_Peripheral is record
      --  GTZC1 TZSC control register
      GTZC1_TZSC_CR        : aliased GTZC1_TZSC_CR_Register;
      --  GTZC1 TZSC secure configuration register 1
      GTZC1_TZSC_SECCFGR1  : aliased GTZC1_TZSC_SECCFGR1_Register;
      --  GTZC1 TZSC secure configuration register 2
      GTZC1_TZSC_SECCFGR2  : aliased GTZC1_TZSC_SECCFGR2_Register;
      --  GTZC1 TZSC secure configuration register 3
      GTZC1_TZSC_SECCFGR3  : aliased GTZC1_TZSC_SECCFGR3_Register;
      --  GTZC1 TZSC privilege configuration register 1
      GTZC1_TZSC_PRIVCFGR1 : aliased GTZC1_TZSC_PRIVCFGR1_Register;
      --  GTZC1 TZSC privilege configuration register 2
      GTZC1_TZSC_PRIVCFGR2 : aliased GTZC1_TZSC_PRIVCFGR2_Register;
      --  GTZC1 TZSC privilege configuration register 3
      GTZC1_TZSC_PRIVCFGR3 : aliased GTZC1_TZSC_PRIVCFGR3_Register;
   end record
     with Volatile;

   for GTZC1_TZSC_Peripheral use record
      GTZC1_TZSC_CR        at 16#0# range 0 .. 31;
      GTZC1_TZSC_SECCFGR1  at 16#10# range 0 .. 31;
      GTZC1_TZSC_SECCFGR2  at 16#14# range 0 .. 31;
      GTZC1_TZSC_SECCFGR3  at 16#18# range 0 .. 31;
      GTZC1_TZSC_PRIVCFGR1 at 16#20# range 0 .. 31;
      GTZC1_TZSC_PRIVCFGR2 at 16#24# range 0 .. 31;
      GTZC1_TZSC_PRIVCFGR3 at 16#28# range 0 .. 31;
   end record;

   --  GTZC1_TZSC address block description
   GTZC1_TZSC_Periph : aliased GTZC1_TZSC_Peripheral
     with Import, Address => GTZC1_TZSC_Base;

   --  GTZC1_TZSC address block description
   SEC_GTZC1_TZSC_Periph : aliased GTZC1_TZSC_Peripheral
     with Import, Address => SEC_GTZC1_TZSC_Base;

end STM32_SVD.GTZC1;
