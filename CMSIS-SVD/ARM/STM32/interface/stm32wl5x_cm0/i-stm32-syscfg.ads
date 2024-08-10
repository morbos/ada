--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SYSCFG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MEMRMP_MEM_MODE_Field is Interfaces.Bit_Types.UInt3;

   --  memory remap register
   type MEMRMP_Register is record
      --  Memory mapping selection
      MEM_MODE      : MEMRMP_MEM_MODE_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMRMP_Register use record
      MEM_MODE      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CFGR1_BOOSTEN_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C_PB6_FMP_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C_PB7_FMP_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C_PB8_FMP_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C_PB9_FMP_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C1_FMP_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C2_FMP_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR1_I2C3_FMP_Field is Interfaces.Bit_Types.Bit;

   --  configuration register 1
   type CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#1#;
      --  I/O analog switch voltage booster enable
      BOOSTEN        : CFGR1_BOOSTEN_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Fast-mode Plus (Fm+) driving capability activation on PB6
      I2C_PB6_FMP    : CFGR1_I2C_PB6_FMP_Field := 16#0#;
      --  Fast-mode Plus (Fm+) driving capability activation on PB7
      I2C_PB7_FMP    : CFGR1_I2C_PB7_FMP_Field := 16#0#;
      --  Fast-mode Plus (Fm+) driving capability activation on PB8
      I2C_PB8_FMP    : CFGR1_I2C_PB8_FMP_Field := 16#0#;
      --  Fast-mode Plus (Fm+) driving capability activation on PB9
      I2C_PB9_FMP    : CFGR1_I2C_PB9_FMP_Field := 16#0#;
      --  I2C1 Fast-mode Plus driving capability activation
      I2C1_FMP       : CFGR1_I2C1_FMP_Field := 16#0#;
      --  I2C2 Fast-mode Plus driving capability activation
      I2C2_FMP       : CFGR1_I2C2_FMP_Field := 16#0#;
      --  I2C3 Fast-mode Plus driving capability activation
      I2C3_FMP       : CFGR1_I2C3_FMP_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#F8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      BOOSTEN        at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      I2C_PB6_FMP    at 0 range 16 .. 16;
      I2C_PB7_FMP    at 0 range 17 .. 17;
      I2C_PB8_FMP    at 0 range 18 .. 18;
      I2C_PB9_FMP    at 0 range 19 .. 19;
      I2C1_FMP       at 0 range 20 .. 20;
      I2C2_FMP       at 0 range 21 .. 21;
      I2C3_FMP       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype EXTICR1_EXTI0_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR1_EXTI1_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR1_EXTI2_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR1_EXTI3_Field is Interfaces.Bit_Types.UInt3;

   --  external interrupt configuration register 1
   type EXTICR1_Register is record
      --  EXTI 0 configuration bits
      EXTI0          : EXTICR1_EXTI0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 1 configuration bits
      EXTI1          : EXTICR1_EXTI1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 2 configuration bits
      EXTI2          : EXTICR1_EXTI2_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 3 configuration bits
      EXTI3          : EXTICR1_EXTI3_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR1_Register use record
      EXTI0          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EXTI1          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXTI2          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EXTI3          at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype EXTICR2_EXTI4_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR2_EXTI5_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR2_EXTI6_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR2_EXTI7_Field is Interfaces.Bit_Types.UInt3;

   --  external interrupt configuration register 2
   type EXTICR2_Register is record
      --  EXTI 4 configuration bits
      EXTI4          : EXTICR2_EXTI4_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 5 configuration bits
      EXTI5          : EXTICR2_EXTI5_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 6 configuration bits
      EXTI6          : EXTICR2_EXTI6_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 7 configuration bits
      EXTI7          : EXTICR2_EXTI7_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR2_Register use record
      EXTI4          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EXTI5          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXTI6          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EXTI7          at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype EXTICR3_EXTI8_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR3_EXTI9_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR3_EXTI10_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR3_EXTI11_Field is Interfaces.Bit_Types.UInt3;

   --  external interrupt configuration register 3
   type EXTICR3_Register is record
      --  EXTI 8 configuration bits
      EXTI8          : EXTICR3_EXTI8_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 9 configuration bits
      EXTI9          : EXTICR3_EXTI9_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 10 configuration bits
      EXTI10         : EXTICR3_EXTI10_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI 11 configuration bits
      EXTI11         : EXTICR3_EXTI11_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR3_Register use record
      EXTI8          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EXTI9          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXTI10         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EXTI11         at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype EXTICR4_EXTI12_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR4_EXTI13_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR4_EXTI14_Field is Interfaces.Bit_Types.UInt3;
   subtype EXTICR4_EXTI15_Field is Interfaces.Bit_Types.UInt3;

   --  external interrupt configuration register 4
   type EXTICR4_Register is record
      --  EXTI12 configuration bits
      EXTI12         : EXTICR4_EXTI12_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI13 configuration bits
      EXTI13         : EXTICR4_EXTI13_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI14 configuration bits
      EXTI14         : EXTICR4_EXTI14_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTI15 configuration bits
      EXTI15         : EXTICR4_EXTI15_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR4_Register use record
      EXTI12         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EXTI13         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXTI14         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EXTI15         at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SCSR_SRAM2ER_Field is Interfaces.Bit_Types.Bit;
   subtype SCSR_SRAMBSY_Field is Interfaces.Bit_Types.Bit;
   subtype SCSR_PKASRAMBSY_Field is Interfaces.Bit_Types.Bit;

   --  SCSR
   type SCSR_Register is record
      --  SRAM2 erase
      SRAM2ER       : SCSR_SRAM2ER_Field := 16#0#;
      --  Read-only. SRAM1, SRAM2 and PKA SRAM busy by erase operation
      SRAMBSY       : SCSR_SRAMBSY_Field := 16#0#;
      --  unspecified
      Reserved_2_7  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Read-only. PKA SRAM busy by erase operation
      PKASRAMBSY    : SCSR_PKASRAMBSY_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCSR_Register use record
      SRAM2ER       at 0 range 0 .. 0;
      SRAMBSY       at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      PKASRAMBSY    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CFGR2_CLL_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR2_SPL_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR2_PVDL_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR2_ECCL_Field is Interfaces.Bit_Types.Bit;
   subtype CFGR2_SPF_Field is Interfaces.Bit_Types.Bit;

   --  CFGR2
   type CFGR2_Register is record
      --  CPU1 LOCKUP (Hardfault) output enable bit
      CLL           : CFGR2_CLL_Field := 16#0#;
      --  SRAM2 parity lock bit
      SPL           : CFGR2_SPL_Field := 16#0#;
      --  PVD lock enable bit
      PVDL          : CFGR2_PVDL_Field := 16#0#;
      --  ECC Lock
      ECCL          : CFGR2_ECCL_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SRAM2 parity error flag
      SPF           : CFGR2_SPF_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      CLL           at 0 range 0 .. 0;
      SPL           at 0 range 1 .. 1;
      PVDL          at 0 range 2 .. 2;
      ECCL          at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      SPF           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SWPR_P0WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P1WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P2WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P3WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P4WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P5WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P6WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P7WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P8WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P9WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P10WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P11WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P12WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P13WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P14WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P15WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P16WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P17WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P18WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P19WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P20WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P21WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P22WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P23WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P24WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P25WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P26WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P27WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P28WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P29WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P30WP_Field is Interfaces.Bit_Types.Bit;
   subtype SWPR_P31WP_Field is Interfaces.Bit_Types.Bit;

   --  SWPR
   type SWPR_Register is record
      --  SRAM2 1Kbyte page 0 write protection
      P0WP  : SWPR_P0WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 1 write protection
      P1WP  : SWPR_P1WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 2 write protection
      P2WP  : SWPR_P2WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 3 write protection
      P3WP  : SWPR_P3WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 4 write protection
      P4WP  : SWPR_P4WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 5 write protection
      P5WP  : SWPR_P5WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 6 write protection
      P6WP  : SWPR_P6WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 7 write protection
      P7WP  : SWPR_P7WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 8 write protection
      P8WP  : SWPR_P8WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 9 write protection
      P9WP  : SWPR_P9WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 10 write protection
      P10WP : SWPR_P10WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 11 write protection
      P11WP : SWPR_P11WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 12 write protection
      P12WP : SWPR_P12WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 13 write protection
      P13WP : SWPR_P13WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 14 write protection
      P14WP : SWPR_P14WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 15 write protection
      P15WP : SWPR_P15WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 16 write protection
      P16WP : SWPR_P16WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 17 write protection
      P17WP : SWPR_P17WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 18 write protection
      P18WP : SWPR_P18WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 19 write protection
      P19WP : SWPR_P19WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 20 write protection
      P20WP : SWPR_P20WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 21 write protection
      P21WP : SWPR_P21WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 22 write protection
      P22WP : SWPR_P22WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 23 write protection
      P23WP : SWPR_P23WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 24 write protection
      P24WP : SWPR_P24WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 25 write protection
      P25WP : SWPR_P25WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 26 write protection
      P26WP : SWPR_P26WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 27 write protection
      P27WP : SWPR_P27WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 28 write protection
      P28WP : SWPR_P28WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 29 write protection
      P29WP : SWPR_P29WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 30 write protection
      P30WP : SWPR_P30WP_Field := 16#0#;
      --  SRAM2 1Kbyte page 31 write protection
      P31WP : SWPR_P31WP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWPR_Register use record
      P0WP  at 0 range 0 .. 0;
      P1WP  at 0 range 1 .. 1;
      P2WP  at 0 range 2 .. 2;
      P3WP  at 0 range 3 .. 3;
      P4WP  at 0 range 4 .. 4;
      P5WP  at 0 range 5 .. 5;
      P6WP  at 0 range 6 .. 6;
      P7WP  at 0 range 7 .. 7;
      P8WP  at 0 range 8 .. 8;
      P9WP  at 0 range 9 .. 9;
      P10WP at 0 range 10 .. 10;
      P11WP at 0 range 11 .. 11;
      P12WP at 0 range 12 .. 12;
      P13WP at 0 range 13 .. 13;
      P14WP at 0 range 14 .. 14;
      P15WP at 0 range 15 .. 15;
      P16WP at 0 range 16 .. 16;
      P17WP at 0 range 17 .. 17;
      P18WP at 0 range 18 .. 18;
      P19WP at 0 range 19 .. 19;
      P20WP at 0 range 20 .. 20;
      P21WP at 0 range 21 .. 21;
      P22WP at 0 range 22 .. 22;
      P23WP at 0 range 23 .. 23;
      P24WP at 0 range 24 .. 24;
      P25WP at 0 range 25 .. 25;
      P26WP at 0 range 26 .. 26;
      P27WP at 0 range 27 .. 27;
      P28WP at 0 range 28 .. 28;
      P29WP at 0 range 29 .. 29;
      P30WP at 0 range 30 .. 30;
      P31WP at 0 range 31 .. 31;
   end record;

   subtype SKR_KEY_Field is Interfaces.Bit_Types.Byte;

   --  SKR
   type SKR_Register is record
      --  Write-only. SRAM2 write protection key for software erase
      KEY           : SKR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SKR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IMR1_RTCSTAMPTAMPLSECSSIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_RTCSSRUIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI5IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI6IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI7IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI8IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI9IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI10IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI11IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI12IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI13IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI14IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR1_EXTI15IM_Field is Interfaces.Bit_Types.Bit;

   --  SYSCFG CPU1 interrupt mask register 1
   type IMR1_Register is record
      --  RTCSTAMPTAMPLSECSSIM
      RTCSTAMPTAMPLSECSSIM : IMR1_RTCSTAMPTAMPLSECSSIM_Field := 16#0#;
      --  unspecified
      Reserved_1_1         : Interfaces.Bit_Types.Bit := 16#0#;
      --  RTCSSRUIM
      RTCSSRUIM            : IMR1_RTCSSRUIM_Field := 16#0#;
      --  unspecified
      Reserved_3_20        : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  EXTI5IM
      EXTI5IM              : IMR1_EXTI5IM_Field := 16#0#;
      --  EXTI6IM
      EXTI6IM              : IMR1_EXTI6IM_Field := 16#0#;
      --  EXTI7IM
      EXTI7IM              : IMR1_EXTI7IM_Field := 16#0#;
      --  EXTI8IM
      EXTI8IM              : IMR1_EXTI8IM_Field := 16#0#;
      --  EXTI9IM
      EXTI9IM              : IMR1_EXTI9IM_Field := 16#0#;
      --  EXTI10IM
      EXTI10IM             : IMR1_EXTI10IM_Field := 16#0#;
      --  EXTI11IM
      EXTI11IM             : IMR1_EXTI11IM_Field := 16#0#;
      --  EXTI12IM
      EXTI12IM             : IMR1_EXTI12IM_Field := 16#0#;
      --  EXTI13IM
      EXTI13IM             : IMR1_EXTI13IM_Field := 16#0#;
      --  EXTI14IM
      EXTI14IM             : IMR1_EXTI14IM_Field := 16#0#;
      --  EXTI15IM
      EXTI15IM             : IMR1_EXTI15IM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR1_Register use record
      RTCSTAMPTAMPLSECSSIM at 0 range 0 .. 0;
      Reserved_1_1         at 0 range 1 .. 1;
      RTCSSRUIM            at 0 range 2 .. 2;
      Reserved_3_20        at 0 range 3 .. 20;
      EXTI5IM              at 0 range 21 .. 21;
      EXTI6IM              at 0 range 22 .. 22;
      EXTI7IM              at 0 range 23 .. 23;
      EXTI8IM              at 0 range 24 .. 24;
      EXTI9IM              at 0 range 25 .. 25;
      EXTI10IM             at 0 range 26 .. 26;
      EXTI11IM             at 0 range 27 .. 27;
      EXTI12IM             at 0 range 28 .. 28;
      EXTI13IM             at 0 range 29 .. 29;
      EXTI14IM             at 0 range 30 .. 30;
      EXTI15IM             at 0 range 31 .. 31;
   end record;

   subtype IMR2_PVM3IM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR2_PVDIM_Field is Interfaces.Bit_Types.Bit;

   --  SYSCFG CPU1 interrupt mask register 2
   type IMR2_Register is record
      --  unspecified
      Reserved_0_17  : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  PVM3IM
      PVM3IM         : IMR2_PVM3IM_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PVDIM
      PVDIM          : IMR2_PVDIM_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR2_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      PVM3IM         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PVDIM          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype C2IMR1_RTCSTAMPTAMPLSECSSIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_RTCALARMIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_RTCSSRUIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_RTCWKUPIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_RCCIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_FLASHIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_PKAIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_AESIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_COMPIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_ADCIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_DACIM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI0IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI1IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI2IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI3IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI4IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI5IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI6IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI7IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI8IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI9IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI10IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI11IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI12IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI13IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI14IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_EXTI15IM_Field is Interfaces.Bit_Types.Bit;

   --  SYSCFG CPU2 interrupt mask register 1
   type C2IMR1_Register is record
      --  RTCSTAMPTAMPLSECSSIM
      RTCSTAMPTAMPLSECSSIM : C2IMR1_RTCSTAMPTAMPLSECSSIM_Field := 16#0#;
      --  RTCALARMIM
      RTCALARMIM           : C2IMR1_RTCALARMIM_Field := 16#0#;
      --  RTCSSRUIM
      RTCSSRUIM            : C2IMR1_RTCSSRUIM_Field := 16#0#;
      --  RTCWKUPIM
      RTCWKUPIM            : C2IMR1_RTCWKUPIM_Field := 16#0#;
      --  unspecified
      Reserved_4_4         : Interfaces.Bit_Types.Bit := 16#0#;
      --  RCCIM
      RCCIM                : C2IMR1_RCCIM_Field := 16#0#;
      --  FLASHIM
      FLASHIM              : C2IMR1_FLASHIM_Field := 16#0#;
      --  unspecified
      Reserved_7_7         : Interfaces.Bit_Types.Bit := 16#0#;
      --  PKAIM
      PKAIM                : C2IMR1_PKAIM_Field := 16#0#;
      --  unspecified
      Reserved_9_9         : Interfaces.Bit_Types.Bit := 16#0#;
      --  AESIM
      AESIM                : C2IMR1_AESIM_Field := 16#0#;
      --  COMPIM
      COMPIM               : C2IMR1_COMPIM_Field := 16#0#;
      --  ADCIM
      ADCIM                : C2IMR1_ADCIM_Field := 16#0#;
      --  DACIM
      DACIM                : C2IMR1_DACIM_Field := 16#0#;
      --  unspecified
      Reserved_14_15       : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  EXTI0IM
      EXTI0IM              : C2IMR1_EXTI0IM_Field := 16#0#;
      --  EXTI1IM
      EXTI1IM              : C2IMR1_EXTI1IM_Field := 16#0#;
      --  EXTI2IM
      EXTI2IM              : C2IMR1_EXTI2IM_Field := 16#0#;
      --  EXTI3IM
      EXTI3IM              : C2IMR1_EXTI3IM_Field := 16#0#;
      --  EXTI4IM
      EXTI4IM              : C2IMR1_EXTI4IM_Field := 16#0#;
      --  EXTI5IM
      EXTI5IM              : C2IMR1_EXTI5IM_Field := 16#0#;
      --  EXTI6IM
      EXTI6IM              : C2IMR1_EXTI6IM_Field := 16#0#;
      --  EXTI7IM
      EXTI7IM              : C2IMR1_EXTI7IM_Field := 16#0#;
      --  EXTI8IM
      EXTI8IM              : C2IMR1_EXTI8IM_Field := 16#0#;
      --  EXTI9IM
      EXTI9IM              : C2IMR1_EXTI9IM_Field := 16#0#;
      --  EXTI10IM
      EXTI10IM             : C2IMR1_EXTI10IM_Field := 16#0#;
      --  EXTI11IM
      EXTI11IM             : C2IMR1_EXTI11IM_Field := 16#0#;
      --  EXTI12IM
      EXTI12IM             : C2IMR1_EXTI12IM_Field := 16#0#;
      --  EXTI13IM
      EXTI13IM             : C2IMR1_EXTI13IM_Field := 16#0#;
      --  EXTI14IM
      EXTI14IM             : C2IMR1_EXTI14IM_Field := 16#0#;
      --  EXTI15IM
      EXTI15IM             : C2IMR1_EXTI15IM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2IMR1_Register use record
      RTCSTAMPTAMPLSECSSIM at 0 range 0 .. 0;
      RTCALARMIM           at 0 range 1 .. 1;
      RTCSSRUIM            at 0 range 2 .. 2;
      RTCWKUPIM            at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      RCCIM                at 0 range 5 .. 5;
      FLASHIM              at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      PKAIM                at 0 range 8 .. 8;
      Reserved_9_9         at 0 range 9 .. 9;
      AESIM                at 0 range 10 .. 10;
      COMPIM               at 0 range 11 .. 11;
      ADCIM                at 0 range 12 .. 12;
      DACIM                at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      EXTI0IM              at 0 range 16 .. 16;
      EXTI1IM              at 0 range 17 .. 17;
      EXTI2IM              at 0 range 18 .. 18;
      EXTI3IM              at 0 range 19 .. 19;
      EXTI4IM              at 0 range 20 .. 20;
      EXTI5IM              at 0 range 21 .. 21;
      EXTI6IM              at 0 range 22 .. 22;
      EXTI7IM              at 0 range 23 .. 23;
      EXTI8IM              at 0 range 24 .. 24;
      EXTI9IM              at 0 range 25 .. 25;
      EXTI10IM             at 0 range 26 .. 26;
      EXTI11IM             at 0 range 27 .. 27;
      EXTI12IM             at 0 range 28 .. 28;
      EXTI13IM             at 0 range 29 .. 29;
      EXTI14IM             at 0 range 30 .. 30;
      EXTI15IM             at 0 range 31 .. 31;
   end record;

   subtype C2IMR2_DMA1CH1IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA1CH2IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA1CH3IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA1CH4IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA1CH5IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA1CH6IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA1CH7IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH1IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH2IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH3IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH4IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH5IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH6IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMA2CH7IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_DMAMUX1IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_PVM3IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR2_PVDIM_Field is Interfaces.Bit_Types.Bit;

   --  SYSCFG CPU2 interrupt mask register 2
   type C2IMR2_Register is record
      --  DMA1CH1IM
      DMA1CH1IM      : C2IMR2_DMA1CH1IM_Field := 16#0#;
      --  DMA1CH2IM
      DMA1CH2IM      : C2IMR2_DMA1CH2IM_Field := 16#0#;
      --  DMA1CH3IM
      DMA1CH3IM      : C2IMR2_DMA1CH3IM_Field := 16#0#;
      --  DMA1CH4IM
      DMA1CH4IM      : C2IMR2_DMA1CH4IM_Field := 16#0#;
      --  DMA1CH5IM
      DMA1CH5IM      : C2IMR2_DMA1CH5IM_Field := 16#0#;
      --  DMA1CH6IM
      DMA1CH6IM      : C2IMR2_DMA1CH6IM_Field := 16#0#;
      --  DMA1CH7IM
      DMA1CH7IM      : C2IMR2_DMA1CH7IM_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  DMA2CH1IM
      DMA2CH1IM      : C2IMR2_DMA2CH1IM_Field := 16#0#;
      --  DMA2CH2IM
      DMA2CH2IM      : C2IMR2_DMA2CH2IM_Field := 16#0#;
      --  DMA2CH3IM
      DMA2CH3IM      : C2IMR2_DMA2CH3IM_Field := 16#0#;
      --  DMA2CH4IM
      DMA2CH4IM      : C2IMR2_DMA2CH4IM_Field := 16#0#;
      --  DMA2CH5IM
      DMA2CH5IM      : C2IMR2_DMA2CH5IM_Field := 16#0#;
      --  DMA2CH6IM
      DMA2CH6IM      : C2IMR2_DMA2CH6IM_Field := 16#0#;
      --  DMA2CH7IM
      DMA2CH7IM      : C2IMR2_DMA2CH7IM_Field := 16#0#;
      --  DMAMUX1IM
      DMAMUX1IM      : C2IMR2_DMAMUX1IM_Field := 16#0#;
      --  unspecified
      Reserved_16_17 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PVM3IM
      PVM3IM         : C2IMR2_PVM3IM_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PVDIM
      PVDIM          : C2IMR2_PVDIM_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2IMR2_Register use record
      DMA1CH1IM      at 0 range 0 .. 0;
      DMA1CH2IM      at 0 range 1 .. 1;
      DMA1CH3IM      at 0 range 2 .. 2;
      DMA1CH4IM      at 0 range 3 .. 3;
      DMA1CH5IM      at 0 range 4 .. 4;
      DMA1CH6IM      at 0 range 5 .. 5;
      DMA1CH7IM      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DMA2CH1IM      at 0 range 8 .. 8;
      DMA2CH2IM      at 0 range 9 .. 9;
      DMA2CH3IM      at 0 range 10 .. 10;
      DMA2CH4IM      at 0 range 11 .. 11;
      DMA2CH5IM      at 0 range 12 .. 12;
      DMA2CH6IM      at 0 range 13 .. 13;
      DMA2CH7IM      at 0 range 14 .. 14;
      DMAMUX1IM      at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      PVM3IM         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PVDIM          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RFDCR_RFTBSEL_Field is Interfaces.Bit_Types.Bit;

   --  radio debug control register
   type RFDCR_Register is record
      --  radio debug test bus selection
      RFTBSEL       : RFDCR_RFTBSEL_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RFDCR_Register use record
      RFTBSEL       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype C2IMR1_AES1IM_Field is Interfaces.Bit_Types.Bit;
   subtype C2IMR1_DAC1IM_Field is Interfaces.Bit_Types.Bit;

   --  C2IMR1
   type C2IMR1_Register_1 is record
      --  Peripheral RTCSTAMPTAMPLSECSS interrupt mask to CPU2
      RTCSTAMPTAMPLSECSSIM : C2IMR1_RTCSTAMPTAMPLSECSSIM_Field := 16#0#;
      --  Peripheral RTCALARM interrupt mask to CPU2
      RTCALARMIM           : C2IMR1_RTCALARMIM_Field := 16#0#;
      --  RTCSSRUIM
      RTCSSRUIM            : C2IMR1_RTCSSRUIM_Field := 16#0#;
      --  Peripheral RTCWKUP interrupt mask to CPU2
      RTCWKUPIM            : C2IMR1_RTCWKUPIM_Field := 16#0#;
      --  unspecified
      Reserved_4_4         : Interfaces.Bit_Types.Bit := 16#0#;
      --  Peripheral RCC interrupt mask to CPU2
      RCCIM                : C2IMR1_RCCIM_Field := 16#0#;
      --  Peripheral FLASH interrupt mask to CPU2
      FLASHIM              : C2IMR1_FLASHIM_Field := 16#0#;
      --  unspecified
      Reserved_7_7         : Interfaces.Bit_Types.Bit := 16#0#;
      --  PKAIM
      PKAIM                : C2IMR1_PKAIM_Field := 16#0#;
      --  unspecified
      Reserved_9_9         : Interfaces.Bit_Types.Bit := 16#0#;
      --  AES1IM
      AES1IM               : C2IMR1_AES1IM_Field := 16#0#;
      --  Peripheral COMP interrupt mask to CPU2
      COMPIM               : C2IMR1_COMPIM_Field := 16#0#;
      --  Peripheral ADC interrupt mask to CPU2
      ADCIM                : C2IMR1_ADCIM_Field := 16#0#;
      --  Peripheral DAC1 interrupt mask to CPU2
      DAC1IM               : C2IMR1_DAC1IM_Field := 16#0#;
      --  unspecified
      Reserved_14_15       : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Peripheral EXTI0 interrupt mask to CPU2
      EXTI0IM              : C2IMR1_EXTI0IM_Field := 16#0#;
      --  Peripheral EXTI1 interrupt mask to CPU2
      EXTI1IM              : C2IMR1_EXTI1IM_Field := 16#0#;
      --  Peripheral EXTI2 interrupt mask to CPU2
      EXTI2IM              : C2IMR1_EXTI2IM_Field := 16#0#;
      --  Peripheral EXTI3 interrupt mask to CPU2
      EXTI3IM              : C2IMR1_EXTI3IM_Field := 16#0#;
      --  Peripheral EXTI4 interrupt mask to CPU2
      EXTI4IM              : C2IMR1_EXTI4IM_Field := 16#0#;
      --  Peripheral EXTI5 interrupt mask to CPU2
      EXTI5IM              : C2IMR1_EXTI5IM_Field := 16#0#;
      --  Peripheral EXTI6 interrupt mask to CPU2
      EXTI6IM              : C2IMR1_EXTI6IM_Field := 16#0#;
      --  Peripheral EXTI7 interrupt mask to CPU2
      EXTI7IM              : C2IMR1_EXTI7IM_Field := 16#0#;
      --  Peripheral EXTI8 interrupt mask to CPU2
      EXTI8IM              : C2IMR1_EXTI8IM_Field := 16#0#;
      --  Peripheral EXTI9 interrupt mask to CPU2
      EXTI9IM              : C2IMR1_EXTI9IM_Field := 16#0#;
      --  Peripheral EXTI10 interrupt mask to CPU2
      EXTI10IM             : C2IMR1_EXTI10IM_Field := 16#0#;
      --  Peripheral EXTI11 interrupt mask to CPU2
      EXTI11IM             : C2IMR1_EXTI11IM_Field := 16#0#;
      --  Peripheral EXTI12 interrupt mask to CPU2
      EXTI12IM             : C2IMR1_EXTI12IM_Field := 16#0#;
      --  Peripheral EXTI13 interrupt mask to CPU2
      EXTI13IM             : C2IMR1_EXTI13IM_Field := 16#0#;
      --  Peripheral EXTI14 interrupt mask to CPU2
      EXTI14IM             : C2IMR1_EXTI14IM_Field := 16#0#;
      --  Peripheral EXTI15 interrupt mask to CPU2
      EXTI15IM             : C2IMR1_EXTI15IM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2IMR1_Register_1 use record
      RTCSTAMPTAMPLSECSSIM at 0 range 0 .. 0;
      RTCALARMIM           at 0 range 1 .. 1;
      RTCSSRUIM            at 0 range 2 .. 2;
      RTCWKUPIM            at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      RCCIM                at 0 range 5 .. 5;
      FLASHIM              at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      PKAIM                at 0 range 8 .. 8;
      Reserved_9_9         at 0 range 9 .. 9;
      AES1IM               at 0 range 10 .. 10;
      COMPIM               at 0 range 11 .. 11;
      ADCIM                at 0 range 12 .. 12;
      DAC1IM               at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      EXTI0IM              at 0 range 16 .. 16;
      EXTI1IM              at 0 range 17 .. 17;
      EXTI2IM              at 0 range 18 .. 18;
      EXTI3IM              at 0 range 19 .. 19;
      EXTI4IM              at 0 range 20 .. 20;
      EXTI5IM              at 0 range 21 .. 21;
      EXTI6IM              at 0 range 22 .. 22;
      EXTI7IM              at 0 range 23 .. 23;
      EXTI8IM              at 0 range 24 .. 24;
      EXTI9IM              at 0 range 25 .. 25;
      EXTI10IM             at 0 range 26 .. 26;
      EXTI11IM             at 0 range 27 .. 27;
      EXTI12IM             at 0 range 28 .. 28;
      EXTI13IM             at 0 range 29 .. 29;
      EXTI14IM             at 0 range 30 .. 30;
      EXTI15IM             at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_Peripheral is record
      --  memory remap register
      MEMRMP  : aliased MEMRMP_Register;
      --  configuration register 1
      CFGR1   : aliased CFGR1_Register;
      --  external interrupt configuration register 1
      EXTICR1 : aliased EXTICR1_Register;
      --  external interrupt configuration register 2
      EXTICR2 : aliased EXTICR2_Register;
      --  external interrupt configuration register 3
      EXTICR3 : aliased EXTICR3_Register;
      --  external interrupt configuration register 4
      EXTICR4 : aliased EXTICR4_Register;
      --  SCSR
      SCSR    : aliased SCSR_Register;
      --  CFGR2
      CFGR2   : aliased CFGR2_Register;
      --  SWPR
      SWPR    : aliased SWPR_Register;
      --  SKR
      SKR     : aliased SKR_Register;
      --  SYSCFG CPU1 interrupt mask register 1
      IMR1    : aliased IMR1_Register;
      --  SYSCFG CPU1 interrupt mask register 2
      IMR2    : aliased IMR2_Register;
      --  SYSCFG CPU2 interrupt mask register 1
      C2IMR1  : aliased C2IMR1_Register;
      --  SYSCFG CPU2 interrupt mask register 2
      C2IMR2  : aliased C2IMR2_Register;
      --  radio debug control register
      RFDCR   : aliased RFDCR_Register;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      MEMRMP  at 16#0# range 0 .. 31;
      CFGR1   at 16#4# range 0 .. 31;
      EXTICR1 at 16#8# range 0 .. 31;
      EXTICR2 at 16#C# range 0 .. 31;
      EXTICR3 at 16#10# range 0 .. 31;
      EXTICR4 at 16#14# range 0 .. 31;
      SCSR    at 16#18# range 0 .. 31;
      CFGR2   at 16#1C# range 0 .. 31;
      SWPR    at 16#20# range 0 .. 31;
      SKR     at 16#24# range 0 .. 31;
      IMR1    at 16#100# range 0 .. 31;
      IMR2    at 16#104# range 0 .. 31;
      C2IMR1  at 16#108# range 0 .. 31;
      C2IMR2  at 16#10C# range 0 .. 31;
      RFDCR   at 16#208# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

   --  System configuration controller
   type SYSCFG_continue_Peripheral is record
      --  IMR1
      IMR1   : aliased IMR1_Register;
      --  IMR2
      IMR2   : aliased IMR2_Register;
      --  C2IMR1
      C2IMR1 : aliased C2IMR1_Register_1;
      --  C2IMR2
      C2IMR2 : aliased C2IMR2_Register;
   end record
     with Volatile;

   for SYSCFG_continue_Peripheral use record
      IMR1   at 16#0# range 0 .. 31;
      IMR2   at 16#4# range 0 .. 31;
      C2IMR1 at 16#8# range 0 .. 31;
      C2IMR2 at 16#C# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_continue_Periph : aliased SYSCFG_continue_Peripheral
     with Import, Address => SYSCFG_continue_Base;

end Interfaces.STM32.SYSCFG;
