--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WB55x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.I2C1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_DNF_Field is Interfaces.Bit_Types.UInt4;

   type CR1_Register is record
      PE             : Boolean := False;
      TXIE           : Boolean := False;
      RXIE           : Boolean := False;
      ADDRIE         : Boolean := False;
      NACKIE         : Boolean := False;
      STOPIE         : Boolean := False;
      TCIE           : Boolean := False;
      ERRIE          : Boolean := False;
      DNF            : CR1_DNF_Field := 16#0#;
      ANFOFF         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      TXDMAEN        : Boolean := False;
      RXDMAEN        : Boolean := False;
      SBC            : Boolean := False;
      NOSTRETCH      : Boolean := False;
      WUPEN          : Boolean := False;
      GCEN           : Boolean := False;
      SMBHEN         : Boolean := False;
      SMBDEN         : Boolean := False;
      ALERTEN        : Boolean := False;
      PECEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PE             at 0 range 0 .. 0;
      TXIE           at 0 range 1 .. 1;
      RXIE           at 0 range 2 .. 2;
      ADDRIE         at 0 range 3 .. 3;
      NACKIE         at 0 range 4 .. 4;
      STOPIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      ERRIE          at 0 range 7 .. 7;
      DNF            at 0 range 8 .. 11;
      ANFOFF         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TXDMAEN        at 0 range 14 .. 14;
      RXDMAEN        at 0 range 15 .. 15;
      SBC            at 0 range 16 .. 16;
      NOSTRETCH      at 0 range 17 .. 17;
      WUPEN          at 0 range 18 .. 18;
      GCEN           at 0 range 19 .. 19;
      SMBHEN         at 0 range 20 .. 20;
      SMBDEN         at 0 range 21 .. 21;
      ALERTEN        at 0 range 22 .. 22;
      PECEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CR2_SADD_Field is Interfaces.Bit_Types.UInt10;
   subtype CR2_NBYTES_Field is Interfaces.Bit_Types.Byte;

   type CR2_Register is record
      SADD           : CR2_SADD_Field := 16#0#;
      RD_WRN         : Boolean := False;
      ADD10          : Boolean := False;
      HEAD10R        : Boolean := False;
      START          : Boolean := False;
      STOP           : Boolean := False;
      NACK           : Boolean := False;
      NBYTES         : CR2_NBYTES_Field := 16#0#;
      RELOAD         : Boolean := False;
      AUTOEND        : Boolean := False;
      PECBYTE        : Boolean := False;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      SADD           at 0 range 0 .. 9;
      RD_WRN         at 0 range 10 .. 10;
      ADD10          at 0 range 11 .. 11;
      HEAD10R        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      NACK           at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      RELOAD         at 0 range 24 .. 24;
      AUTOEND        at 0 range 25 .. 25;
      PECBYTE        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OAR1_OA1_Field is Interfaces.Bit_Types.UInt10;

   type OAR1_Register is record
      OA1            : OAR1_OA1_Field := 16#0#;
      OA1MODE        : Boolean := False;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      OA1EN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register use record
      OA1            at 0 range 0 .. 9;
      OA1MODE        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA1EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_OA2_Field is Interfaces.Bit_Types.UInt7;
   subtype OAR2_OA2MSK_Field is Interfaces.Bit_Types.UInt3;

   type OAR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      OA2            : OAR2_OA2_Field := 16#0#;
      OA2MSK         : OAR2_OA2MSK_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      OA2EN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      OA2            at 0 range 1 .. 7;
      OA2MSK         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA2EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMINGR_SCLL_Field is Interfaces.Bit_Types.Byte;
   subtype TIMINGR_SCLH_Field is Interfaces.Bit_Types.Byte;
   subtype TIMINGR_SDADEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIMINGR_SCLDEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TIMINGR_PRESC_Field is Interfaces.Bit_Types.UInt4;

   type TIMINGR_Register is record
      SCLL           : TIMINGR_SCLL_Field := 16#0#;
      SCLH           : TIMINGR_SCLH_Field := 16#0#;
      SDADEL         : TIMINGR_SDADEL_Field := 16#0#;
      SCLDEL         : TIMINGR_SCLDEL_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      PRESC          : TIMINGR_PRESC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMINGR_Register use record
      SCLL           at 0 range 0 .. 7;
      SCLH           at 0 range 8 .. 15;
      SDADEL         at 0 range 16 .. 19;
      SCLDEL         at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PRESC          at 0 range 28 .. 31;
   end record;

   subtype TIMEOUTR_TIMEOUTA_Field is Interfaces.Bit_Types.UInt12;
   subtype TIMEOUTR_TIMEOUTB_Field is Interfaces.Bit_Types.UInt12;

   type TIMEOUTR_Register is record
      TIMEOUTA       : TIMEOUTR_TIMEOUTA_Field := 16#0#;
      TIDLE          : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      TIMOUTEN       : Boolean := False;
      TIMEOUTB       : TIMEOUTR_TIMEOUTB_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3 := 16#0#;
      TEXTEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUTR_Register use record
      TIMEOUTA       at 0 range 0 .. 11;
      TIDLE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TIMOUTEN       at 0 range 15 .. 15;
      TIMEOUTB       at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      TEXTEN         at 0 range 31 .. 31;
   end record;

   subtype ISR_ADDCODE_Field is Interfaces.Bit_Types.UInt7;

   type ISR_Register is record
      TXE            : Boolean := False;
      TXIS           : Boolean := False;
      RXNE           : Boolean := False;
      ADDR           : Boolean := False;
      NACKF          : Boolean := False;
      STOPF          : Boolean := False;
      TC             : Boolean := False;
      TCR            : Boolean := False;
      BERR           : Boolean := False;
      ARLO           : Boolean := False;
      OVR            : Boolean := False;
      PECERR         : Boolean := False;
      TIMEOUT        : Boolean := False;
      ALERT          : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      BUSY           : Boolean := False;
      DIR            : Boolean := False;
      ADDCODE        : ISR_ADDCODE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TXE            at 0 range 0 .. 0;
      TXIS           at 0 range 1 .. 1;
      RXNE           at 0 range 2 .. 2;
      ADDR           at 0 range 3 .. 3;
      NACKF          at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TCR            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      OVR            at 0 range 10 .. 10;
      PECERR         at 0 range 11 .. 11;
      TIMEOUT        at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
      DIR            at 0 range 16 .. 16;
      ADDCODE        at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   type ICR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      ADDRCF         : Boolean := False;
      NACKCF         : Boolean := False;
      STOPCF         : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      BERRCF         : Boolean := False;
      ARLOCF         : Boolean := False;
      OVRCF          : Boolean := False;
      PECCF          : Boolean := False;
      TIMOUTCF       : Boolean := False;
      ALERTCF        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      ADDRCF         at 0 range 3 .. 3;
      NACKCF         at 0 range 4 .. 4;
      STOPCF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BERRCF         at 0 range 8 .. 8;
      ARLOCF         at 0 range 9 .. 9;
      OVRCF          at 0 range 10 .. 10;
      PECCF          at 0 range 11 .. 11;
      TIMOUTCF       at 0 range 12 .. 12;
      ALERTCF        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PECR_PEC_Field is Interfaces.Bit_Types.Byte;

   type PECR_Register is record
      PEC           : PECR_PEC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDR_RXDATA_Field is Interfaces.Bit_Types.Byte;

   type RXDR_Register is record
      RXDATA        : RXDR_RXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXDR_TXDATA_Field is Interfaces.Bit_Types.Byte;

   type TXDR_Register is record
      TXDATA        : TXDR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type I2C1_Peripheral is record
      CR1      : aliased CR1_Register;
      CR2      : aliased CR2_Register;
      OAR1     : aliased OAR1_Register;
      OAR2     : aliased OAR2_Register;
      TIMINGR  : aliased TIMINGR_Register;
      TIMEOUTR : aliased TIMEOUTR_Register;
      ISR      : aliased ISR_Register;
      ICR      : aliased ICR_Register;
      PECR     : aliased PECR_Register;
      RXDR     : aliased RXDR_Register;
      TXDR     : aliased TXDR_Register;
   end record
     with Volatile;

   for I2C1_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      OAR1     at 16#8# range 0 .. 31;
      OAR2     at 16#C# range 0 .. 31;
      TIMINGR  at 16#10# range 0 .. 31;
      TIMEOUTR at 16#14# range 0 .. 31;
      ISR      at 16#18# range 0 .. 31;
      ICR      at 16#1C# range 0 .. 31;
      PECR     at 16#20# range 0 .. 31;
      RXDR     at 16#24# range 0 .. 31;
      TXDR     at 16#28# range 0 .. 31;
   end record;

   I2C1_Periph : aliased I2C1_Peripheral
     with Import, Address => I2C1_Base;

end Interfaces.STM32.I2C1;
