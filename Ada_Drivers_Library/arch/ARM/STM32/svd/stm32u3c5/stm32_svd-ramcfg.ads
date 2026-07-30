--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RAMCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RAMCFG memory 1 interrupt status register
   type RAMCFG_M1ISR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Parity error detected
      PED           : Boolean;
      --  unspecified
      Reserved_2_7  : HAL.UInt6;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M1ISR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PED           at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_M1ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG memory 1 erase key register
   type RAMCFG_M1ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_M1ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M1ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG memory 2 interrupt enable register
   type RAMCFG_M2IER_Register is record
      --  Parity error interrupt enable
      PEIE          : Boolean := False;
      --  unspecified
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  Parity error NMI
      PENMI         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2IER_Register use record
      PEIE          at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      PENMI         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RAMCFG memory 2 interrupt status register
   type RAMCFG_M2ISR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Parity error detected
      PED           : Boolean;
      --  unspecified
      Reserved_2_7  : HAL.UInt6;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2ISR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PED           at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG memory 2 interrupt clear register
   type RAMCFG_M2ICR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Clear parity error detected
      CPED          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2ICR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CPED          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RAMCFG memory 2 write protection register 1
   type RAMCFG_M2WPR1_Register is record
      --  SRAM2 1-Kbyte page y write protection
      P0WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P1WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P2WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P3WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P4WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P5WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P6WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P7WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P8WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P9WP  : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P10WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P11WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P12WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P13WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P14WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P15WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P16WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P17WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P18WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P19WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P20WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P21WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P22WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P23WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P24WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P25WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P26WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P27WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P28WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P29WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P30WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P31WP : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2WPR1_Register use record
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

   --  RAMCFG memory 2 write protection register 2
   type RAMCFG_M2WPR2_Register is record
      --  SRAM2 1-Kbyte page y write protection
      P32WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P33WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P34WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P35WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P36WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P37WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P38WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P39WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P40WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P41WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P42WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P43WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P44WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P45WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P46WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P47WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P48WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P49WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P50WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P51WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P52WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P53WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P54WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P55WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P56WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P57WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P58WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P59WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P60WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P61WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P62WP : Boolean := False;
      --  SRAM2 1-Kbyte page y write protection
      P63WP : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2WPR2_Register use record
      P32WP at 0 range 0 .. 0;
      P33WP at 0 range 1 .. 1;
      P34WP at 0 range 2 .. 2;
      P35WP at 0 range 3 .. 3;
      P36WP at 0 range 4 .. 4;
      P37WP at 0 range 5 .. 5;
      P38WP at 0 range 6 .. 6;
      P39WP at 0 range 7 .. 7;
      P40WP at 0 range 8 .. 8;
      P41WP at 0 range 9 .. 9;
      P42WP at 0 range 10 .. 10;
      P43WP at 0 range 11 .. 11;
      P44WP at 0 range 12 .. 12;
      P45WP at 0 range 13 .. 13;
      P46WP at 0 range 14 .. 14;
      P47WP at 0 range 15 .. 15;
      P48WP at 0 range 16 .. 16;
      P49WP at 0 range 17 .. 17;
      P50WP at 0 range 18 .. 18;
      P51WP at 0 range 19 .. 19;
      P52WP at 0 range 20 .. 20;
      P53WP at 0 range 21 .. 21;
      P54WP at 0 range 22 .. 22;
      P55WP at 0 range 23 .. 23;
      P56WP at 0 range 24 .. 24;
      P57WP at 0 range 25 .. 25;
      P58WP at 0 range 26 .. 26;
      P59WP at 0 range 27 .. 27;
      P60WP at 0 range 28 .. 28;
      P61WP at 0 range 29 .. 29;
      P62WP at 0 range 30 .. 30;
      P63WP at 0 range 31 .. 31;
   end record;

   subtype RAMCFG_M2PARKEYR_PARKEY_Field is HAL.UInt8;

   --  RAMCFG memory 2 parity key register
   type RAMCFG_M2PARKEYR_Register is record
      --  Write-only. Parity write protection key
      PARKEY        : RAMCFG_M2PARKEYR_PARKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2PARKEYR_Register use record
      PARKEY        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_M2ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG memory 2 erase key register
   type RAMCFG_M2ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_M2ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M2ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG memory 3 interrupt enable register
   type RAMCFG_M3IER_Register is record
      --  Parity error interrupt enable
      PEIE          : Boolean := False;
      --  unspecified
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  Parity error NMI
      PENMI         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M3IER_Register use record
      PEIE          at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      PENMI         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RAMCFG memory 3 interrupt status register
   type RAMCFG_M3ISR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Parity error detected
      PED           : Boolean;
      --  unspecified
      Reserved_2_7  : HAL.UInt6;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M3ISR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PED           at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG memory 3 interrupt clear register
   type RAMCFG_M3ICR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Clear parity error detected
      CPED          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M3ICR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CPED          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RAMCFG_M3PARKEYR_PARKEY_Field is HAL.UInt8;

   --  RAMCFG memory 3 parity key register
   type RAMCFG_M3PARKEYR_Register is record
      --  Write-only. Parity write protection key
      PARKEY        : RAMCFG_M3PARKEYR_PARKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M3PARKEYR_Register use record
      PARKEY        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_M3ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG memory 3 erase key register
   type RAMCFG_M3ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_M3ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_M3ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RAMCFG register block
   type RAMCFG_Peripheral is record
      --  RAMCFG memory 1 interrupt status register
      RAMCFG_M1ISR     : aliased RAMCFG_M1ISR_Register;
      --  RAMCFG memory 1 erase key register
      RAMCFG_M1ERKEYR  : aliased RAMCFG_M1ERKEYR_Register;
      --  RAMCFG memory 2 interrupt enable register
      RAMCFG_M2IER     : aliased RAMCFG_M2IER_Register;
      --  RAMCFG memory 2 interrupt status register
      RAMCFG_M2ISR     : aliased RAMCFG_M2ISR_Register;
      --  RAMCFG memory 2 parity error address register
      RAMCFG_M2PEAR    : aliased HAL.UInt32;
      --  RAMCFG memory 2 interrupt clear register
      RAMCFG_M2ICR     : aliased RAMCFG_M2ICR_Register;
      --  RAMCFG memory 2 write protection register 1
      RAMCFG_M2WPR1    : aliased RAMCFG_M2WPR1_Register;
      --  RAMCFG memory 2 write protection register 2
      RAMCFG_M2WPR2    : aliased RAMCFG_M2WPR2_Register;
      --  RAMCFG memory 2 parity key register
      RAMCFG_M2PARKEYR : aliased RAMCFG_M2PARKEYR_Register;
      --  RAMCFG memory 2 erase key register
      RAMCFG_M2ERKEYR  : aliased RAMCFG_M2ERKEYR_Register;
      --  RAMCFG memory 3 interrupt enable register
      RAMCFG_M3IER     : aliased RAMCFG_M3IER_Register;
      --  RAMCFG memory 3 interrupt status register
      RAMCFG_M3ISR     : aliased RAMCFG_M3ISR_Register;
      --  RAMCFG memory 3 parity error address register
      RAMCFG_M3PEAR    : aliased HAL.UInt32;
      --  RAMCFG memory 3 interrupt clear register
      RAMCFG_M3ICR     : aliased RAMCFG_M3ICR_Register;
      --  RAMCFG memory 3 parity key register
      RAMCFG_M3PARKEYR : aliased RAMCFG_M3PARKEYR_Register;
      --  RAMCFG memory 3 erase key register
      RAMCFG_M3ERKEYR  : aliased RAMCFG_M3ERKEYR_Register;
   end record
     with Volatile;

   for RAMCFG_Peripheral use record
      RAMCFG_M1ISR     at 16#8# range 0 .. 31;
      RAMCFG_M1ERKEYR  at 16#28# range 0 .. 31;
      RAMCFG_M2IER     at 16#44# range 0 .. 31;
      RAMCFG_M2ISR     at 16#48# range 0 .. 31;
      RAMCFG_M2PEAR    at 16#50# range 0 .. 31;
      RAMCFG_M2ICR     at 16#54# range 0 .. 31;
      RAMCFG_M2WPR1    at 16#58# range 0 .. 31;
      RAMCFG_M2WPR2    at 16#5C# range 0 .. 31;
      RAMCFG_M2PARKEYR at 16#64# range 0 .. 31;
      RAMCFG_M2ERKEYR  at 16#68# range 0 .. 31;
      RAMCFG_M3IER     at 16#84# range 0 .. 31;
      RAMCFG_M3ISR     at 16#88# range 0 .. 31;
      RAMCFG_M3PEAR    at 16#90# range 0 .. 31;
      RAMCFG_M3ICR     at 16#94# range 0 .. 31;
      RAMCFG_M3PARKEYR at 16#A4# range 0 .. 31;
      RAMCFG_M3ERKEYR  at 16#A8# range 0 .. 31;
   end record;

   --  RAMCFG register block
   RAMCFG_Periph : aliased RAMCFG_Peripheral
     with Import, Address => RAMCFG_Base;

   --  RAMCFG register block
   SEC_RAMCFG_Periph : aliased RAMCFG_Peripheral
     with Import, Address => SEC_RAMCFG_Base;

end STM32_SVD.RAMCFG;
