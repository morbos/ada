--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.AES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype AES_CR_DATATYPE_Field is HAL.UInt2;
   subtype AES_CR_MODE_Field is HAL.UInt2;
   subtype AES_CR_CHMOD_Field is HAL.UInt2;
   subtype AES_CR_GCMPH_Field is HAL.UInt2;
   subtype AES_CR_NPBLB_Field is HAL.UInt4;
   subtype AES_CR_KMOD_Field is HAL.UInt2;

   --  AES control register
   type AES_CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Data type
      DATATYPE       : AES_CR_DATATYPE_Field := 16#0#;
      --  Operating mode
      MODE           : AES_CR_MODE_Field := 16#0#;
      --  CHMOD[1:0]: Chaining mode
      CHMOD          : AES_CR_CHMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  DMA input enable
      DMAINEN        : Boolean := False;
      --  DMA output enable
      DMAOUTEN       : Boolean := False;
      --  GCM or CCM phase selection
      GCMPH          : AES_CR_GCMPH_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHMOD[2]
      CHMOD_1        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Key size selection
      KEYSIZE        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Number of padding bytes in last block
      NPBLB          : AES_CR_NPBLB_Field := 16#0#;
      --  Key mode selection
      KMOD           : AES_CR_KMOD_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  AES peripheral software reset
      IPRST          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_CR_Register use record
      EN             at 0 range 0 .. 0;
      DATATYPE       at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 4;
      CHMOD          at 0 range 5 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      DMAINEN        at 0 range 11 .. 11;
      DMAOUTEN       at 0 range 12 .. 12;
      GCMPH          at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CHMOD_1        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      KEYSIZE        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      NPBLB          at 0 range 20 .. 23;
      KMOD           at 0 range 24 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      IPRST          at 0 range 31 .. 31;
   end record;

   --  AES status register
   type AES_SR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Read error flag
      RDERRF        : Boolean;
      --  Read-only. Write error flag
      WRERRF        : Boolean;
      --  Read-only. Busy
      BUSY          : Boolean;
      --  unspecified
      Reserved_4_6  : HAL.UInt3;
      --  Read-only. Key valid flag
      KEYVALID      : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_SR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RDERRF        at 0 range 1 .. 1;
      WRERRF        at 0 range 2 .. 2;
      BUSY          at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      KEYVALID      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AES interrupt enable register
   type AES_IER_Register is record
      --  Computation complete flag interrupt enable
      CCFIE         : Boolean := False;
      --  Read or write error interrupt enable
      RWEIE         : Boolean := False;
      --  Key error interrupt enable
      KEIE          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IER_Register use record
      CCFIE         at 0 range 0 .. 0;
      RWEIE         at 0 range 1 .. 1;
      KEIE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  AES interrupt status register
   type AES_ISR_Register is record
      --  Read-only. Computation complete flag
      CCF           : Boolean;
      --  Read-only. Read or write error interrupt flag
      RWEIF         : Boolean;
      --  Read-only. Key error interrupt flag
      KEIF          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_ISR_Register use record
      CCF           at 0 range 0 .. 0;
      RWEIF         at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  AES interrupt clear register
   type AES_ICR_Register is record
      --  Write-only. Computation complete flag clear
      CCF           : Boolean := False;
      --  Write-only. Read or write error interrupt flag clear
      RWEIF         : Boolean := False;
      --  Write-only. Key error interrupt flag clear
      KEIF          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_ICR_Register use record
      CCF           at 0 range 0 .. 0;
      RWEIF         at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AES register block
   type AES_Peripheral is record
      --  AES control register
      AES_CR     : aliased AES_CR_Register;
      --  AES status register
      AES_SR     : aliased AES_SR_Register;
      --  AES data input register
      AES_DINR   : aliased HAL.UInt32;
      --  AES data output register
      AES_DOUTR  : aliased HAL.UInt32;
      --  AES key register 0
      AES_KEYR0  : aliased HAL.UInt32;
      --  AES key register 1
      AES_KEYR1  : aliased HAL.UInt32;
      --  AES key register 2
      AES_KEYR2  : aliased HAL.UInt32;
      --  AES key register 3
      AES_KEYR3  : aliased HAL.UInt32;
      --  AES initialization vector register 0
      AES_IVR0   : aliased HAL.UInt32;
      --  AES initialization vector register 1
      AES_IVR1   : aliased HAL.UInt32;
      --  AES initialization vector register 2
      AES_IVR2   : aliased HAL.UInt32;
      --  AES initialization vector register 3
      AES_IVR3   : aliased HAL.UInt32;
      --  AES key register 4
      AES_KEYR4  : aliased HAL.UInt32;
      --  AES key register 5
      AES_KEYR5  : aliased HAL.UInt32;
      --  AES key register 6
      AES_KEYR6  : aliased HAL.UInt32;
      --  AES key register 7
      AES_KEYR7  : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR0 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR1 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR2 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR3 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR4 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR5 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR6 : aliased HAL.UInt32;
      --  AES suspend registers
      AES_SUSPR7 : aliased HAL.UInt32;
      --  AES interrupt enable register
      AES_IER    : aliased AES_IER_Register;
      --  AES interrupt status register
      AES_ISR    : aliased AES_ISR_Register;
      --  AES interrupt clear register
      AES_ICR    : aliased AES_ICR_Register;
   end record
     with Volatile;

   for AES_Peripheral use record
      AES_CR     at 16#0# range 0 .. 31;
      AES_SR     at 16#4# range 0 .. 31;
      AES_DINR   at 16#8# range 0 .. 31;
      AES_DOUTR  at 16#C# range 0 .. 31;
      AES_KEYR0  at 16#10# range 0 .. 31;
      AES_KEYR1  at 16#14# range 0 .. 31;
      AES_KEYR2  at 16#18# range 0 .. 31;
      AES_KEYR3  at 16#1C# range 0 .. 31;
      AES_IVR0   at 16#20# range 0 .. 31;
      AES_IVR1   at 16#24# range 0 .. 31;
      AES_IVR2   at 16#28# range 0 .. 31;
      AES_IVR3   at 16#2C# range 0 .. 31;
      AES_KEYR4  at 16#30# range 0 .. 31;
      AES_KEYR5  at 16#34# range 0 .. 31;
      AES_KEYR6  at 16#38# range 0 .. 31;
      AES_KEYR7  at 16#3C# range 0 .. 31;
      AES_SUSPR0 at 16#40# range 0 .. 31;
      AES_SUSPR1 at 16#44# range 0 .. 31;
      AES_SUSPR2 at 16#48# range 0 .. 31;
      AES_SUSPR3 at 16#4C# range 0 .. 31;
      AES_SUSPR4 at 16#50# range 0 .. 31;
      AES_SUSPR5 at 16#54# range 0 .. 31;
      AES_SUSPR6 at 16#58# range 0 .. 31;
      AES_SUSPR7 at 16#5C# range 0 .. 31;
      AES_IER    at 16#300# range 0 .. 31;
      AES_ISR    at 16#304# range 0 .. 31;
      AES_ICR    at 16#308# range 0 .. 31;
   end record;

   --  AES register block
   AES_Periph : aliased AES_Peripheral
     with Import, Address => AES_Base;

   --  AES register block
   SEC_AES_Periph : aliased AES_Peripheral
     with Import, Address => SEC_AES_Base;

end STM32_SVD.AES;
