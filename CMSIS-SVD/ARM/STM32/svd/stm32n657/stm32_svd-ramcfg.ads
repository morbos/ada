--  This spec has been automatically generated from STM32N657.svd

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

   --  RAMCFG AXISRAM1 control register
   type RAMCFG_AXISRAM1CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM1CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG AXISRAM1 interrupt status register
   type RAMCFG_AXISRAM1ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM1ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AXISRAM1ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AXISRAM1 erase key register
   type RAMCFG_AXISRAM1ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AXISRAM1ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM1ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AXISRAM2 control register
   type RAMCFG_AXISRAM2CR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_19  : HAL.UInt11 := 16#0#;
      --  Shutdown AXISRAMx
      SRAMSD         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM2CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      SRAMSD         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAMCFG AXISRAM2 interrupt status register
   type RAMCFG_AXISRAM2ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM2ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AXISRAM2ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AXISRAM2 erase key register
   type RAMCFG_AXISRAM2ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AXISRAM2ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM2ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AXISRAM3 control register
   type RAMCFG_AXISRAM3CR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_19  : HAL.UInt11 := 16#0#;
      --  Shutdown AXISRAMx
      SRAMSD         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM3CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      SRAMSD         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAMCFG AXISRAM3 interrupt status register
   type RAMCFG_AXISRAM3ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM3ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AXISRAM3ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AXISRAM3 erase key register
   type RAMCFG_AXISRAM3ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AXISRAM3ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM3ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AXISRAM4 control register
   type RAMCFG_AXISRAM4CR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_19  : HAL.UInt11 := 16#0#;
      --  Shutdown AXISRAMx
      SRAMSD         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM4CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      SRAMSD         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAMCFG AXISRAM4 interrupt status register
   type RAMCFG_AXISRAM4ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM4ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AXISRAM4ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AXISRAM4 erase key register
   type RAMCFG_AXISRAM4ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AXISRAM4ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM4ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AXISRAM5 control register
   type RAMCFG_AXISRAM5CR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_19  : HAL.UInt11 := 16#0#;
      --  Shutdown AXISRAMx
      SRAMSD         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM5CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      SRAMSD         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAMCFG AXISRAM5 interrupt status register
   type RAMCFG_AXISRAM5ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM5ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AXISRAM5ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AXISRAM5 erase key register
   type RAMCFG_AXISRAM5ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AXISRAM5ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM5ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AXISRAM6 control register
   type RAMCFG_AXISRAM6CR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_19  : HAL.UInt11 := 16#0#;
      --  Shutdown AXISRAMx
      SRAMSD         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM6CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      SRAMSD         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAMCFG AXISRAM6 interrupt status register
   type RAMCFG_AXISRAM6ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM6ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AXISRAM6ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AXISRAM6 erase key register
   type RAMCFG_AXISRAM6ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AXISRAM6ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AXISRAM6ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AHBSRAM1 control register
   type RAMCFG_AHBSRAM1CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AHBSRAM1CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG AHBSRAM1 interrupt status register
   type RAMCFG_AHBSRAM1ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AHBSRAM1ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AHBSRAM1ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AHBSRAM1 erase key register
   type RAMCFG_AHBSRAM1ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AHBSRAM1ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AHBSRAM1ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG AHBSRAM2 control register
   type RAMCFG_AHBSRAM2CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AHBSRAM2CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG AHBSRAM2 interrupt status register
   type RAMCFG_AHBSRAM2ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AHBSRAM2ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_AHBSRAM2ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG AHBSRAM2 erase key register
   type RAMCFG_AHBSRAM2ERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_AHBSRAM2ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_AHBSRAM2ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG VENCRAM control register
   type RAMCFG_VENCRAMCR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_VENCRAMCR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG VENCRAM interrupt status register
   type RAMCFG_VENCRAMISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_VENCRAMISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_VENCRAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG VENCRAM erase key register
   type RAMCFG_VENCRAMERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_VENCRAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_VENCRAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG BKPSRAM control register
   type RAMCFG_BKPSRAMCR_Register is record
      --  ECC enable
      ECCE          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Address latch enable
      ALE           : Boolean := False;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  SRAM erase
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMCR_Register use record
      ECCE          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      ALE           at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG BKPSRAM interrupt enable register
   type RAMCFG_BKPSRAMIER_Register is record
      --  ECC single error interrupt enable
      SEIE          : Boolean := False;
      --  ECC double error interrupt enable
      DEIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMIER_Register use record
      SEIE          at 0 range 0 .. 0;
      DEIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RAMCFG BKPSRAM interrupt status register
   type RAMCFG_BKPSRAMISR_Register is record
      --  Read-only. ECC single error detected
      SEC           : Boolean;
      --  Read-only. ECC double-error interrupt enable
      DED           : Boolean;
      --  unspecified
      Reserved_2_7  : HAL.UInt6;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMISR_Register use record
      SEC           at 0 range 0 .. 0;
      DED           at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMESEAR_ESEA_Field is HAL.UInt11;

   --  RAMCFG BKPSRAM single error address register
   type RAMCFG_BKPSRAMESEAR_Register is record
      --  Write-only. ECC single error address
      ESEA           : RAMCFG_BKPSRAMESEAR_ESEA_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMESEAR_Register use record
      ESEA           at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMEDEAR_EDEA_Field is HAL.UInt11;

   --  RAMCFG BKPSRAM double error address register
   type RAMCFG_BKPSRAMEDEAR_Register is record
      --  Write-only. ECC double error address
      EDEA           : RAMCFG_BKPSRAMEDEAR_EDEA_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMEDEAR_Register use record
      EDEA           at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RAMCFG BKPSRAM interrupt clear register
   type RAMCFG_BKPSRAMICR_Register is record
      --  Write-only. Clear ECC single-error interrupt
      CSED          : Boolean := False;
      --  Write-only. Clear ECC double-error interrupt
      CDED          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMICR_Register use record
      CSED          at 0 range 0 .. 0;
      CDED          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMECCKEYR_ECCKEY_Field is HAL.UInt8;

   --  RAMCFG BKPSRAM ECC key register
   type RAMCFG_BKPSRAMECCKEYR_Register is record
      --  Write-only. ECC write protection key
      ECCKEY        : RAMCFG_BKPSRAMECCKEYR_ECCKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMECCKEYR_Register use record
      ECCKEY        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG BKPSRAM erase key register
   type RAMCFG_BKPSRAMERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_BKPSRAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_FLEXRAMCR_ITCMCFG_Field is HAL.UInt2;

   --  RAMCFG FLEXRAM control register
   type RAMCFG_FLEXRAMCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  SRAM hardware erase disable
      SRAMHWERDIS    : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Configuration of the FLEXMEM I-TCM extension
      ITCMCFG        : RAMCFG_FLEXRAMCR_ITCMCFG_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Configuration of the FLEXMEM D-TCM extension
      DTCMCFG        : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_FLEXRAMCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SRAMHWERDIS    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ITCMCFG        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      DTCMCFG        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RAMCFG FLEXRAM interrupt status register
   type RAMCFG_FLEXRAMISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_FLEXRAMISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_FLEXRAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG FLEXRAM erase key register
   type RAMCFG_FLEXRAMERKEYR_Register is record
      --  Write-only. Erase write protection key
      ERASEKEY      : RAMCFG_FLEXRAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_FLEXRAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SRAM configuration controller
   type RAMCFG_Peripheral is record
      --  RAMCFG AXISRAM1 control register
      RAMCFG_AXISRAM1CR     : aliased RAMCFG_AXISRAM1CR_Register;
      --  RAMCFG AXISRAM1 interrupt status register
      RAMCFG_AXISRAM1ISR    : aliased RAMCFG_AXISRAM1ISR_Register;
      --  RAMCFG AXISRAM1 erase key register
      RAMCFG_AXISRAM1ERKEYR : aliased RAMCFG_AXISRAM1ERKEYR_Register;
      --  RAMCFG AXISRAM2 control register
      RAMCFG_AXISRAM2CR     : aliased RAMCFG_AXISRAM2CR_Register;
      --  RAMCFG AXISRAM2 interrupt status register
      RAMCFG_AXISRAM2ISR    : aliased RAMCFG_AXISRAM2ISR_Register;
      --  RAMCFG AXISRAM2 erase key register
      RAMCFG_AXISRAM2ERKEYR : aliased RAMCFG_AXISRAM2ERKEYR_Register;
      --  RAMCFG AXISRAM3 control register
      RAMCFG_AXISRAM3CR     : aliased RAMCFG_AXISRAM3CR_Register;
      --  RAMCFG AXISRAM3 interrupt status register
      RAMCFG_AXISRAM3ISR    : aliased RAMCFG_AXISRAM3ISR_Register;
      --  RAMCFG AXISRAM3 erase key register
      RAMCFG_AXISRAM3ERKEYR : aliased RAMCFG_AXISRAM3ERKEYR_Register;
      --  RAMCFG AXISRAM4 control register
      RAMCFG_AXISRAM4CR     : aliased RAMCFG_AXISRAM4CR_Register;
      --  RAMCFG AXISRAM4 interrupt status register
      RAMCFG_AXISRAM4ISR    : aliased RAMCFG_AXISRAM4ISR_Register;
      --  RAMCFG AXISRAM4 erase key register
      RAMCFG_AXISRAM4ERKEYR : aliased RAMCFG_AXISRAM4ERKEYR_Register;
      --  RAMCFG AXISRAM5 control register
      RAMCFG_AXISRAM5CR     : aliased RAMCFG_AXISRAM5CR_Register;
      --  RAMCFG AXISRAM5 interrupt status register
      RAMCFG_AXISRAM5ISR    : aliased RAMCFG_AXISRAM5ISR_Register;
      --  RAMCFG AXISRAM5 erase key register
      RAMCFG_AXISRAM5ERKEYR : aliased RAMCFG_AXISRAM5ERKEYR_Register;
      --  RAMCFG AXISRAM6 control register
      RAMCFG_AXISRAM6CR     : aliased RAMCFG_AXISRAM6CR_Register;
      --  RAMCFG AXISRAM6 interrupt status register
      RAMCFG_AXISRAM6ISR    : aliased RAMCFG_AXISRAM6ISR_Register;
      --  RAMCFG AXISRAM6 erase key register
      RAMCFG_AXISRAM6ERKEYR : aliased RAMCFG_AXISRAM6ERKEYR_Register;
      --  RAMCFG AHBSRAM1 control register
      RAMCFG_AHBSRAM1CR     : aliased RAMCFG_AHBSRAM1CR_Register;
      --  RAMCFG AHBSRAM1 interrupt status register
      RAMCFG_AHBSRAM1ISR    : aliased RAMCFG_AHBSRAM1ISR_Register;
      --  RAMCFG AHBSRAM1 erase key register
      RAMCFG_AHBSRAM1ERKEYR : aliased RAMCFG_AHBSRAM1ERKEYR_Register;
      --  RAMCFG AHBSRAM2 control register
      RAMCFG_AHBSRAM2CR     : aliased RAMCFG_AHBSRAM2CR_Register;
      --  RAMCFG AHBSRAM2 interrupt status register
      RAMCFG_AHBSRAM2ISR    : aliased RAMCFG_AHBSRAM2ISR_Register;
      --  RAMCFG AHBSRAM2 erase key register
      RAMCFG_AHBSRAM2ERKEYR : aliased RAMCFG_AHBSRAM2ERKEYR_Register;
      --  RAMCFG VENCRAM control register
      RAMCFG_VENCRAMCR      : aliased RAMCFG_VENCRAMCR_Register;
      --  RAMCFG VENCRAM interrupt status register
      RAMCFG_VENCRAMISR     : aliased RAMCFG_VENCRAMISR_Register;
      --  RAMCFG VENCRAM erase key register
      RAMCFG_VENCRAMERKEYR  : aliased RAMCFG_VENCRAMERKEYR_Register;
      --  RAMCFG BKPSRAM control register
      RAMCFG_BKPSRAMCR      : aliased RAMCFG_BKPSRAMCR_Register;
      --  RAMCFG BKPSRAM interrupt enable register
      RAMCFG_BKPSRAMIER     : aliased RAMCFG_BKPSRAMIER_Register;
      --  RAMCFG BKPSRAM interrupt status register
      RAMCFG_BKPSRAMISR     : aliased RAMCFG_BKPSRAMISR_Register;
      --  RAMCFG BKPSRAM single error address register
      RAMCFG_BKPSRAMESEAR   : aliased RAMCFG_BKPSRAMESEAR_Register;
      --  RAMCFG BKPSRAM double error address register
      RAMCFG_BKPSRAMEDEAR   : aliased RAMCFG_BKPSRAMEDEAR_Register;
      --  RAMCFG BKPSRAM interrupt clear register
      RAMCFG_BKPSRAMICR     : aliased RAMCFG_BKPSRAMICR_Register;
      --  RAMCFG BKPSRAM ECC key register
      RAMCFG_BKPSRAMECCKEYR : aliased RAMCFG_BKPSRAMECCKEYR_Register;
      --  RAMCFG BKPSRAM erase key register
      RAMCFG_BKPSRAMERKEYR  : aliased RAMCFG_BKPSRAMERKEYR_Register;
      --  RAMCFG FLEXRAM control register
      RAMCFG_FLEXRAMCR      : aliased RAMCFG_FLEXRAMCR_Register;
      --  RAMCFG FLEXRAM interrupt status register
      RAMCFG_FLEXRAMISR     : aliased RAMCFG_FLEXRAMISR_Register;
      --  RAMCFG FLEXRAM erase key register
      RAMCFG_FLEXRAMERKEYR  : aliased RAMCFG_FLEXRAMERKEYR_Register;
   end record
     with Volatile;

   for RAMCFG_Peripheral use record
      RAMCFG_AXISRAM1CR     at 16#0# range 0 .. 31;
      RAMCFG_AXISRAM1ISR    at 16#8# range 0 .. 31;
      RAMCFG_AXISRAM1ERKEYR at 16#28# range 0 .. 31;
      RAMCFG_AXISRAM2CR     at 16#80# range 0 .. 31;
      RAMCFG_AXISRAM2ISR    at 16#88# range 0 .. 31;
      RAMCFG_AXISRAM2ERKEYR at 16#A8# range 0 .. 31;
      RAMCFG_AXISRAM3CR     at 16#100# range 0 .. 31;
      RAMCFG_AXISRAM3ISR    at 16#108# range 0 .. 31;
      RAMCFG_AXISRAM3ERKEYR at 16#128# range 0 .. 31;
      RAMCFG_AXISRAM4CR     at 16#180# range 0 .. 31;
      RAMCFG_AXISRAM4ISR    at 16#188# range 0 .. 31;
      RAMCFG_AXISRAM4ERKEYR at 16#1A8# range 0 .. 31;
      RAMCFG_AXISRAM5CR     at 16#200# range 0 .. 31;
      RAMCFG_AXISRAM5ISR    at 16#208# range 0 .. 31;
      RAMCFG_AXISRAM5ERKEYR at 16#228# range 0 .. 31;
      RAMCFG_AXISRAM6CR     at 16#280# range 0 .. 31;
      RAMCFG_AXISRAM6ISR    at 16#288# range 0 .. 31;
      RAMCFG_AXISRAM6ERKEYR at 16#2A8# range 0 .. 31;
      RAMCFG_AHBSRAM1CR     at 16#300# range 0 .. 31;
      RAMCFG_AHBSRAM1ISR    at 16#308# range 0 .. 31;
      RAMCFG_AHBSRAM1ERKEYR at 16#328# range 0 .. 31;
      RAMCFG_AHBSRAM2CR     at 16#380# range 0 .. 31;
      RAMCFG_AHBSRAM2ISR    at 16#388# range 0 .. 31;
      RAMCFG_AHBSRAM2ERKEYR at 16#3A8# range 0 .. 31;
      RAMCFG_VENCRAMCR      at 16#400# range 0 .. 31;
      RAMCFG_VENCRAMISR     at 16#408# range 0 .. 31;
      RAMCFG_VENCRAMERKEYR  at 16#428# range 0 .. 31;
      RAMCFG_BKPSRAMCR      at 16#480# range 0 .. 31;
      RAMCFG_BKPSRAMIER     at 16#484# range 0 .. 31;
      RAMCFG_BKPSRAMISR     at 16#488# range 0 .. 31;
      RAMCFG_BKPSRAMESEAR   at 16#48C# range 0 .. 31;
      RAMCFG_BKPSRAMEDEAR   at 16#490# range 0 .. 31;
      RAMCFG_BKPSRAMICR     at 16#494# range 0 .. 31;
      RAMCFG_BKPSRAMECCKEYR at 16#4A4# range 0 .. 31;
      RAMCFG_BKPSRAMERKEYR  at 16#4A8# range 0 .. 31;
      RAMCFG_FLEXRAMCR      at 16#500# range 0 .. 31;
      RAMCFG_FLEXRAMISR     at 16#508# range 0 .. 31;
      RAMCFG_FLEXRAMERKEYR  at 16#528# range 0 .. 31;
   end record;

   --  SRAM configuration controller
   RAMCFG_Periph : aliased RAMCFG_Peripheral
     with Import, Address => RAMCFG_Base;

   --  SRAM configuration controller
   RAMCFG_S_Periph : aliased RAMCFG_Peripheral
     with Import, Address => RAMCFG_S_Base;

end STM32_SVD.RAMCFG;
