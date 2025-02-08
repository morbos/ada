--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.CRYP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CRYP_CR_ALGOMODE_Field is HAL.UInt3;
   subtype CRYP_CR_DATATYPE_Field is HAL.UInt2;
   subtype CRYP_CR_KEYSIZE_Field is HAL.UInt2;
   subtype CRYP_CR_GCM_CCMPH_Field is HAL.UInt2;
   subtype CRYP_CR_NPBLB_Field is HAL.UInt4;
   subtype CRYP_CR_KMOD_Field is HAL.UInt2;

   --  CRYP control register
   type CRYP_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Algorithm direction
      ALGODIR        : Boolean := False;
      --  ALGOMODE[2:0]: Algorithm mode
      ALGOMODE       : CRYP_CR_ALGOMODE_Field := 16#0#;
      --  Data type
      DATATYPE       : CRYP_CR_DATATYPE_Field := 16#0#;
      --  Key size selection
      KEYSIZE        : CRYP_CR_KEYSIZE_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  FIFO flush
      FFLUSH         : Boolean := False;
      --  CRYP enable
      CRYPEN         : Boolean := False;
      --  GCM or CCM phase selection
      GCM_CCMPH      : CRYP_CR_GCM_CCMPH_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  ALGOMODE[3]
      ALGOMODE_1     : Boolean := False;
      --  Number of padding bytes in last block
      NPBLB          : CRYP_CR_NPBLB_Field := 16#0#;
      --  Key mode selection
      KMOD           : CRYP_CR_KMOD_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  CRYP peripheral software reset
      IPRST          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ALGODIR        at 0 range 2 .. 2;
      ALGOMODE       at 0 range 3 .. 5;
      DATATYPE       at 0 range 6 .. 7;
      KEYSIZE        at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      FFLUSH         at 0 range 14 .. 14;
      CRYPEN         at 0 range 15 .. 15;
      GCM_CCMPH      at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      ALGOMODE_1     at 0 range 19 .. 19;
      NPBLB          at 0 range 20 .. 23;
      KMOD           at 0 range 24 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      IPRST          at 0 range 31 .. 31;
   end record;

   --  CRYP status register
   type CRYP_SR_Register is record
      --  Read-only. Input FIFO empty flag
      IFEM          : Boolean;
      --  Read-only. Input FIFO not full flag
      IFNF          : Boolean;
      --  Read-only. Output FIFO not empty flag
      OFNE          : Boolean;
      --  Read-only. Output FIFO full flag
      OFFU          : Boolean;
      --  Read-only. Busy bit
      BUSY          : Boolean;
      --  unspecified
      Reserved_5_5  : HAL.Bit;
      --  Read-only. Key error flag
      KERF          : Boolean;
      --  Read-only. Key valid flag
      KEYVALID      : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_SR_Register use record
      IFEM          at 0 range 0 .. 0;
      IFNF          at 0 range 1 .. 1;
      OFNE          at 0 range 2 .. 2;
      OFFU          at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      KERF          at 0 range 6 .. 6;
      KEYVALID      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CRYP DMA control register
   type CRYP_DMACR_Register is record
      --  DMA input enable
      DIEN          : Boolean := False;
      --  DMA output enable
      DOEN          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_DMACR_Register use record
      DIEN          at 0 range 0 .. 0;
      DOEN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP interrupt mask set/clear register
   type CRYP_IMSCR_Register is record
      --  Input FIFO service interrupt mask
      INIM          : Boolean := False;
      --  Output FIFO service interrupt mask
      OUTIM         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_IMSCR_Register use record
      INIM          at 0 range 0 .. 0;
      OUTIM         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP raw interrupt status register
   type CRYP_RISR_Register is record
      --  Read-only. Input FIFO service raw interrupt status
      INRIS         : Boolean;
      --  Read-only. Output FIFO service raw interrupt status
      OUTRIS        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_RISR_Register use record
      INRIS         at 0 range 0 .. 0;
      OUTRIS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP masked interrupt status register
   type CRYP_MISR_Register is record
      --  Read-only. Input FIFO service masked interrupt status
      INMIS         : Boolean;
      --  Read-only. Output FIFO service masked interrupt status
      OUTMIS        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_MISR_Register use record
      INMIS         at 0 range 0 .. 0;
      OUTMIS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cryptographic processor
   type CRYP_Peripheral is record
      --  CRYP control register
      CRYP_CR         : aliased CRYP_CR_Register;
      --  CRYP status register
      CRYP_SR         : aliased CRYP_SR_Register;
      --  CRYP data input register
      CRYP_DINR       : aliased HAL.UInt32;
      --  CRYP data output register
      CRYP_DOUTR      : aliased HAL.UInt32;
      --  CRYP DMA control register
      CRYP_DMACR      : aliased CRYP_DMACR_Register;
      --  CRYP interrupt mask set/clear register
      CRYP_IMSCR      : aliased CRYP_IMSCR_Register;
      --  CRYP raw interrupt status register
      CRYP_RISR       : aliased CRYP_RISR_Register;
      --  CRYP masked interrupt status register
      CRYP_MISR       : aliased CRYP_MISR_Register;
      --  CRYP key register 0L
      CRYP_K0LR       : aliased HAL.UInt32;
      --  CRYP key register 0R
      CRYP_K0RR       : aliased HAL.UInt32;
      --  CRYP key register 1L
      CRYP_K1LR       : aliased HAL.UInt32;
      --  CRYP key register 1R
      CRYP_K1RR       : aliased HAL.UInt32;
      --  CRYP key register 2L
      CRYP_K2LR       : aliased HAL.UInt32;
      --  CRYP key register 2R
      CRYP_K2RR       : aliased HAL.UInt32;
      --  CRYP key register 3L
      CRYP_K3LR       : aliased HAL.UInt32;
      --  CRYP key register 3R
      CRYP_K3RR       : aliased HAL.UInt32;
      --  CRYP initialization vector register 0L
      CRYP_IV0LR      : aliased HAL.UInt32;
      --  CRYP initialization vector register 0R
      CRYP_IV0RR      : aliased HAL.UInt32;
      --  CRYP initialization vector register 1L
      CRYP_IV1LR      : aliased HAL.UInt32;
      --  CRYP initialization vector register 1R
      CRYP_IV1RR      : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM0R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM1R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM2R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM3R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM4R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM5R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM6R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM7R : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM0R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM1R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM2R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM3R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM4R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM5R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM6R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM7R    : aliased HAL.UInt32;
   end record
     with Volatile;

   for CRYP_Peripheral use record
      CRYP_CR         at 16#0# range 0 .. 31;
      CRYP_SR         at 16#4# range 0 .. 31;
      CRYP_DINR       at 16#8# range 0 .. 31;
      CRYP_DOUTR      at 16#C# range 0 .. 31;
      CRYP_DMACR      at 16#10# range 0 .. 31;
      CRYP_IMSCR      at 16#14# range 0 .. 31;
      CRYP_RISR       at 16#18# range 0 .. 31;
      CRYP_MISR       at 16#1C# range 0 .. 31;
      CRYP_K0LR       at 16#20# range 0 .. 31;
      CRYP_K0RR       at 16#24# range 0 .. 31;
      CRYP_K1LR       at 16#28# range 0 .. 31;
      CRYP_K1RR       at 16#2C# range 0 .. 31;
      CRYP_K2LR       at 16#30# range 0 .. 31;
      CRYP_K2RR       at 16#34# range 0 .. 31;
      CRYP_K3LR       at 16#38# range 0 .. 31;
      CRYP_K3RR       at 16#3C# range 0 .. 31;
      CRYP_IV0LR      at 16#40# range 0 .. 31;
      CRYP_IV0RR      at 16#44# range 0 .. 31;
      CRYP_IV1LR      at 16#48# range 0 .. 31;
      CRYP_IV1RR      at 16#4C# range 0 .. 31;
      CRYP_CSGCMCCM0R at 16#50# range 0 .. 31;
      CRYP_CSGCMCCM1R at 16#54# range 0 .. 31;
      CRYP_CSGCMCCM2R at 16#58# range 0 .. 31;
      CRYP_CSGCMCCM3R at 16#5C# range 0 .. 31;
      CRYP_CSGCMCCM4R at 16#60# range 0 .. 31;
      CRYP_CSGCMCCM5R at 16#64# range 0 .. 31;
      CRYP_CSGCMCCM6R at 16#68# range 0 .. 31;
      CRYP_CSGCMCCM7R at 16#6C# range 0 .. 31;
      CRYP_CSGCM0R    at 16#70# range 0 .. 31;
      CRYP_CSGCM1R    at 16#74# range 0 .. 31;
      CRYP_CSGCM2R    at 16#78# range 0 .. 31;
      CRYP_CSGCM3R    at 16#7C# range 0 .. 31;
      CRYP_CSGCM4R    at 16#80# range 0 .. 31;
      CRYP_CSGCM5R    at 16#84# range 0 .. 31;
      CRYP_CSGCM6R    at 16#88# range 0 .. 31;
      CRYP_CSGCM7R    at 16#8C# range 0 .. 31;
   end record;

   --  Cryptographic processor
   CRYP_Periph : aliased CRYP_Peripheral
     with Import, Address => CRYP_Base;

   --  Cryptographic processor
   CRYP_S_Periph : aliased CRYP_Peripheral
     with Import, Address => CRYP_S_Base;

end STM32_SVD.CRYP;
