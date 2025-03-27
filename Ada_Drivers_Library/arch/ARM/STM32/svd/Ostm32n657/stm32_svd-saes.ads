--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SAES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SAES_CR_DATATYPE_Field is HAL.UInt2;
   subtype SAES_CR_MODE_Field is HAL.UInt2;
   subtype SAES_CR_CHMOD_Field is HAL.UInt2;
   subtype SAES_CR_GCMPH_Field is HAL.UInt2;
   subtype SAES_CR_NPBLB_Field is HAL.UInt4;
   subtype SAES_CR_KMOD_Field is HAL.UInt2;
   subtype SAES_CR_KSHAREID_Field is HAL.UInt2;
   subtype SAES_CR_KEYSEL_Field is HAL.UInt3;

   --  SAES control register
   type SAES_CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Data type
      DATATYPE       : SAES_CR_DATATYPE_Field := 16#0#;
      --  Operating mode
      MODE           : SAES_CR_MODE_Field := 16#0#;
      --  CHMOD[1:0]: Chaining mode
      CHMOD          : SAES_CR_CHMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  DMA input enable
      DMAINEN        : Boolean := False;
      --  DMA output enable
      DMAOUTEN       : Boolean := False;
      --  GCM or CCM phase selection
      GCMPH          : SAES_CR_GCMPH_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHMOD[2]
      CHMOD_1        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Key size selection
      KEYSIZE        : Boolean := False;
      --  Key protection
      KEYPROT        : Boolean := False;
      --  Number of padding bytes in last block
      NPBLB          : SAES_CR_NPBLB_Field := 16#0#;
      --  Key mode selection
      KMOD           : SAES_CR_KMOD_Field := 16#0#;
      --  Key share identification
      KSHAREID       : SAES_CR_KSHAREID_Field := 16#0#;
      --  Key selection
      KEYSEL         : SAES_CR_KEYSEL_Field := 16#0#;
      --  SAES peripheral software reset
      IPRST          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_CR_Register use record
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
      KEYPROT        at 0 range 19 .. 19;
      NPBLB          at 0 range 20 .. 23;
      KMOD           at 0 range 24 .. 25;
      KSHAREID       at 0 range 26 .. 27;
      KEYSEL         at 0 range 28 .. 30;
      IPRST          at 0 range 31 .. 31;
   end record;

   --  SAES status register
   type SAES_SR_Register is record
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

   for SAES_SR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RDERRF        at 0 range 1 .. 1;
      WRERRF        at 0 range 2 .. 2;
      BUSY          at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      KEYVALID      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SAES interrupt enable register
   type SAES_IER_Register is record
      --  Computation complete flag interrupt enable
      CCFIE         : Boolean := False;
      --  Read or write error interrupt enable
      RWEIE         : Boolean := False;
      --  Key error interrupt enable
      KEIE          : Boolean := False;
      --  RNG error interrupt enable
      RNGEIE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_IER_Register use record
      CCFIE         at 0 range 0 .. 0;
      RWEIE         at 0 range 1 .. 1;
      KEIE          at 0 range 2 .. 2;
      RNGEIE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SAES interrupt status register
   type SAES_ISR_Register is record
      --  Read-only. Computation complete flag
      CCF           : Boolean;
      --  Read-only. Read or write error interrupt flag
      RWEIF         : Boolean;
      --  Read-only. Key error interrupt flag
      KEIF          : Boolean;
      --  Read-only. RNG error interrupt flag
      RNGEIF        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_ISR_Register use record
      CCF           at 0 range 0 .. 0;
      RWEIF         at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      RNGEIF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SAES interrupt clear register
   type SAES_ICR_Register is record
      --  Write-only. Computation complete flag clear
      CCF           : Boolean := False;
      --  Write-only. Read or write error interrupt flag clear
      RWEIF         : Boolean := False;
      --  Write-only. Key error interrupt flag clear
      KEIF          : Boolean := False;
      --  Write-only. RNG error interrupt flag clear
      RNGEIF        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_ICR_Register use record
      CCF           at 0 range 0 .. 0;
      RWEIF         at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      RNGEIF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Secure AES coprocessor
   type SAES_Peripheral is record
      --  SAES control register
      SAES_CR     : aliased SAES_CR_Register;
      --  SAES status register
      SAES_SR     : aliased SAES_SR_Register;
      --  SAES data input register
      SAES_DINR   : aliased HAL.UInt32;
      --  SAES data output register
      SAES_DOUTR  : aliased HAL.UInt32;
      --  SAES key register 0
      SAES_KEYR0  : aliased HAL.UInt32;
      --  SAES key register 1
      SAES_KEYR1  : aliased HAL.UInt32;
      --  SAES key register 2
      SAES_KEYR2  : aliased HAL.UInt32;
      --  SAES key register 3
      SAES_KEYR3  : aliased HAL.UInt32;
      --  SAES initialization vector register 0
      SAES_IVR0   : aliased HAL.UInt32;
      --  SAES initialization vector register 1
      SAES_IVR1   : aliased HAL.UInt32;
      --  SAES initialization vector register 2
      SAES_IVR2   : aliased HAL.UInt32;
      --  SAES initialization vector register 3
      SAES_IVR3   : aliased HAL.UInt32;
      --  SAES key register 4
      SAES_KEYR4  : aliased HAL.UInt32;
      --  SAES key register 5
      SAES_KEYR5  : aliased HAL.UInt32;
      --  SAES key register 6
      SAES_KEYR6  : aliased HAL.UInt32;
      --  SAES key register 7
      SAES_KEYR7  : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR0 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR1 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR2 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR3 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR4 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR5 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR6 : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSPR7 : aliased HAL.UInt32;
      --  SAES interrupt enable register
      SAES_IER    : aliased SAES_IER_Register;
      --  SAES interrupt status register
      SAES_ISR    : aliased SAES_ISR_Register;
      --  SAES interrupt clear register
      SAES_ICR    : aliased SAES_ICR_Register;
   end record
     with Volatile;

   for SAES_Peripheral use record
      SAES_CR     at 16#0# range 0 .. 31;
      SAES_SR     at 16#4# range 0 .. 31;
      SAES_DINR   at 16#8# range 0 .. 31;
      SAES_DOUTR  at 16#C# range 0 .. 31;
      SAES_KEYR0  at 16#10# range 0 .. 31;
      SAES_KEYR1  at 16#14# range 0 .. 31;
      SAES_KEYR2  at 16#18# range 0 .. 31;
      SAES_KEYR3  at 16#1C# range 0 .. 31;
      SAES_IVR0   at 16#20# range 0 .. 31;
      SAES_IVR1   at 16#24# range 0 .. 31;
      SAES_IVR2   at 16#28# range 0 .. 31;
      SAES_IVR3   at 16#2C# range 0 .. 31;
      SAES_KEYR4  at 16#30# range 0 .. 31;
      SAES_KEYR5  at 16#34# range 0 .. 31;
      SAES_KEYR6  at 16#38# range 0 .. 31;
      SAES_KEYR7  at 16#3C# range 0 .. 31;
      SAES_SUSPR0 at 16#40# range 0 .. 31;
      SAES_SUSPR1 at 16#44# range 0 .. 31;
      SAES_SUSPR2 at 16#48# range 0 .. 31;
      SAES_SUSPR3 at 16#4C# range 0 .. 31;
      SAES_SUSPR4 at 16#50# range 0 .. 31;
      SAES_SUSPR5 at 16#54# range 0 .. 31;
      SAES_SUSPR6 at 16#58# range 0 .. 31;
      SAES_SUSPR7 at 16#5C# range 0 .. 31;
      SAES_IER    at 16#300# range 0 .. 31;
      SAES_ISR    at 16#304# range 0 .. 31;
      SAES_ICR    at 16#308# range 0 .. 31;
   end record;

   --  Secure AES coprocessor
   SAES_Periph : aliased SAES_Peripheral
     with Import, Address => SAES_Base;

   --  Secure AES coprocessor
   SAES_S_Periph : aliased SAES_Peripheral
     with Import, Address => SAES_S_Base;

end STM32_SVD.SAES;
