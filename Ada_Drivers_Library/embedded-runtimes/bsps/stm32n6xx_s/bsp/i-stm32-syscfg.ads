--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

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

   --  SYSCFG boot pin control register
   type SYSCFG_BOOTCR_Register is record
      --  BOOT0 pin pull-down disable
      BOOT0_PD      : Boolean := False;
      --  BOOT1 pin pull-down disable
      BOOT1_PD      : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_BOOTCR_Register use record
      BOOT0_PD      at 0 range 0 .. 0;
      BOOT1_PD      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_CM55CR_FPU_IT_EN_Field is Interfaces.Bit_Types.UInt6;

   --  SYSCFG Cortex-M55 control register
   type SYSCFG_CM55CR_Register is record
      --  Enable FPU exception
      FPU_IT_EN      : SYSCFG_CM55CR_FPU_IT_EN_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Prevent changes to:
      LOCKSVTAIRCR   : Boolean := False;
      --  Prevent changes to the non-secure vector table base address.
      LOCKNSVTOR     : Boolean := False;
      --  Prevent changes to programmed secure MPU memory regions.
      LOCKSMPU       : Boolean := False;
      --  Prevent changes to non-secure MPU memory regions already programmed.
      LOCKNSMPU      : Boolean := False;
      --  Prevent changes to secure SAU memory regions already programmed.
      LOCKSAU        : Boolean := False;
      --  Disable access to the instruction cache direct cache access registers
      --  DCAICLR and DCAICRR.
      LOCKDCAIC      : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CM55CR_Register use record
      FPU_IT_EN      at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      LOCKSVTAIRCR   at 0 range 16 .. 16;
      LOCKNSVTOR     at 0 range 17 .. 17;
      LOCKSMPU       at 0 range 18 .. 18;
      LOCKNSMPU      at 0 range 19 .. 19;
      LOCKSAU        at 0 range 20 .. 20;
      LOCKDCAIC      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype SYSCFG_CM55TCMCR_CFGITCMSZ_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_CM55TCMCR_CFGDTCMSZ_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG Cortex-M55 TCM control register
   type SYSCFG_CM55TCMCR_Register is record
      --  Select ITCM memory size
      CFGITCMSZ      : SYSCFG_CM55TCMCR_CFGITCMSZ_Field := 16#7#;
      --  Select DTCM memory size
      CFGDTCMSZ      : SYSCFG_CM55TCMCR_CFGDTCMSZ_Field := 16#8#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Disable writes to registers associated with the TCM region
      LOCKTCM        : Boolean := False;
      --  Disable writes to registers associated with the ITCM interface
      --  security gating.
      LOCKITGU       : Boolean := False;
      --  Disable writes to registers associated with the DTCM interface
      --  security gating.
      LOCKDTGU       : Boolean := False;
      --  unspecified
      Reserved_19_22 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Disable wait-state applied by default on extended ITCM memory.
      ITCMWSDISABLE  : Boolean := False;
      --  Disable wait-state applied by default on extended DTCM memory.
      DTCMWSDISABLE  : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CM55TCMCR_Register use record
      CFGITCMSZ      at 0 range 0 .. 3;
      CFGDTCMSZ      at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LOCKTCM        at 0 range 16 .. 16;
      LOCKITGU       at 0 range 17 .. 17;
      LOCKDTGU       at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      ITCMWSDISABLE  at 0 range 23 .. 23;
      DTCMWSDISABLE  at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SYSCFG_CM55RWMCR_RM_TCM_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_CM55RWMCR_RM_CACHE_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG Cortex-CM55 memory RW margin register
   type SYSCFG_CM55RWMCR_Register is record
      --  RW margin enable input for TCM memories
      RME_TCM        : Boolean := False;
      --  External RW margin inputs for TCM memories
      RM_TCM         : SYSCFG_CM55RWMCR_RM_TCM_Field := 16#0#;
      --  Biasing level adjust input recommended for Vnom
      BC1_TCM        : Boolean := True;
      --  Biasing level adjust input recommended for Vnom + 10%
      BC2_TCM        : Boolean := False;
      --  RW margin enable input for caches memories
      RME_CACHE      : Boolean := False;
      --  External read/write (RW) margin inputs for caches memories
      RM_CACHE       : SYSCFG_CM55RWMCR_RM_CACHE_Field := 16#0#;
      --  Biasing level adjust input recommended for Vnom.
      BC1_CACHE      : Boolean := True;
      --  Biasing level adjust input recommended for Vnom + 10%
      BC2_CACHE      : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CM55RWMCR_Register use record
      RME_TCM        at 0 range 0 .. 0;
      RM_TCM         at 0 range 1 .. 4;
      BC1_TCM        at 0 range 5 .. 5;
      BC2_TCM        at 0 range 6 .. 6;
      RME_CACHE      at 0 range 7 .. 7;
      RM_CACHE       at 0 range 8 .. 11;
      BC1_CACHE      at 0 range 12 .. 12;
      BC2_CACHE      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SYSCFG_INITSVTORCR_SVTOR_ADDR_Field is Interfaces.Bit_Types.UInt25;

   --  SYSCFG Cortex-M55 SVTOR control register
   type SYSCFG_INITSVTORCR_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Secure vector table base address
      SVTOR_ADDR   : SYSCFG_INITSVTORCR_SVTOR_ADDR_Field := 16#300000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_INITSVTORCR_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      SVTOR_ADDR   at 0 range 7 .. 31;
   end record;

   subtype SYSCFG_INITNSVTORCR_NSVTOR_ADDR_Field is
     Interfaces.Bit_Types.UInt25;

   --  SYSCFG Cortex-M55 NSVTOR control register
   type SYSCFG_INITNSVTORCR_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Non-secure vector table base address
      NSVTOR_ADDR  : SYSCFG_INITNSVTORCR_NSVTOR_ADDR_Field := 16#100000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_INITNSVTORCR_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      NSVTOR_ADDR  at 0 range 7 .. 31;
   end record;

   --  SYSCFG Cortex-M55 reset type control register
   type SYSCFG_CM55RSTCR_Register is record
      --  Select reset to apply on core upon SYSRESETREQ
      CORE_RESET_TYPE : Boolean := False;
      --  Select action to perform on a lockup state on the core
      LOCKUP_RST_EN   : Boolean := False;
      --  Select action to perform on a lockup state on the core
      LOCKUP_NMI_EN   : Boolean := False;
      --  unspecified
      Reserved_3_31   : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CM55RSTCR_Register use record
      CORE_RESET_TYPE at 0 range 0 .. 0;
      LOCKUP_RST_EN   at 0 range 1 .. 1;
      LOCKUP_NMI_EN   at 0 range 2 .. 2;
      Reserved_3_31   at 0 range 3 .. 31;
   end record;

   --  SYSCFG Cortex-M55 P-AHB write posting control register
   type SYSCFG_CM55PAHBWPR_Register is record
      --  Error capture in write posting buffer
      PAHB_ERROR_ACK : Boolean := False;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CM55PAHBWPR_Register use record
      PAHB_ERROR_ACK at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  SYSCFG VENCRAM control register
   type SYSCFG_VENCRAMCR_Register is record
      --  VENCRAM allocation VENC if active, or to system (if VENC inactive)
      VENCRAM_EN    : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VENCRAMCR_Register use record
      VENCRAM_EN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG potential tamper reset register
   type SYSCFG_POTTAMPRSTCR_Register is record
      --  This bit can be set by software to mask PKA, SAES, CRYP1/2, and HASH
      --  reset, in case of potential tamper.
      POTTAMPERSETMASK : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_POTTAMPRSTCR_Register use record
      POTTAMPERSETMASK at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  SYSCFG AHB-AXI bridge early write response control	register
   type SYSCFG_ICNEWRCR_Register is record
      --  None
      SDMMC1_EARLY_WR_RSP_ENABLE : Boolean := False;
      --  None
      SDMMC2_EARLY_WR_RSP_ENABLE : Boolean := False;
      --  None
      USB1_EARLY_WR_RSP_ENABLE   : Boolean := False;
      --  None
      USB2_EARLY_WR_RSP_ENABLE   : Boolean := False;
      --  unspecified
      Reserved_4_31              : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNEWRCR_Register use record
      SDMMC1_EARLY_WR_RSP_ENABLE at 0 range 0 .. 0;
      SDMMC2_EARLY_WR_RSP_ENABLE at 0 range 1 .. 1;
      USB1_EARLY_WR_RSP_ENABLE   at 0 range 2 .. 2;
      USB2_EARLY_WR_RSP_ENABLE   at 0 range 3 .. 3;
      Reserved_4_31              at 0 range 4 .. 31;
   end record;

   subtype SYSCFG_VDDIO1CCCR_RANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO1CCCR_RAPSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO1 compensation cell control register
   type SYSCFG_VDDIO1CCCR_Register is record
      --  These bits are written by software to define an I/O compensation code
      --  for NMOS transistors. This code is applied to the I/O compensation
      --  cell when the CS = 1.
      RANSRC         : SYSCFG_VDDIO1CCCR_RANSRC_Field := 16#0#;
      --  These bits are written by software to define an I/O compensation code
      --  for PMOS transistors. This code is applied to the I/O compensation
      --  cell when CS = 1.
      RAPSRC         : SYSCFG_VDDIO1CCCR_RAPSRC_Field := 16#0#;
      --  Enables the compensation cell of I/Os supplied by VDDIOx.
      EN             : Boolean := False;
      --  Selects the code to be applied for the compensation cell of I/Os
      --  supplied by VDDIOx.
      CS             : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO1CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCFG_VDDIO1CCSR_ANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO1CCSR_APSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO1 compensation cell status register
   type SYSCFG_VDDIO1CCSR_Register is record
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for NMOS transistors.
      ANSRC         : SYSCFG_VDDIO1CCSR_ANSRC_Field;
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for PMOS transistors.
      APSRC         : SYSCFG_VDDIO1CCSR_APSRC_Field;
      --  Read-only. Provides the compensation cell status of I/Os supplied by
      --  VDDIOx
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO1CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIO2CCCR_RANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO2CCCR_RAPSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO2 compensation cell control register
   type SYSCFG_VDDIO2CCCR_Register is record
      --  These bits are written by software to define an I/O compensation code
      --  for NMOS transistors. This code is applied to the I/O compensation
      --  cell when the CS = 1.
      RANSRC         : SYSCFG_VDDIO2CCCR_RANSRC_Field := 16#0#;
      --  These bits are written by software to define an I/O compensation code
      --  for PMOS transistors. This code is applied to the I/O compensation
      --  cell when CS = 1.
      RAPSRC         : SYSCFG_VDDIO2CCCR_RAPSRC_Field := 16#0#;
      --  Enables the compensation cell of I/Os supplied by VDDIOx.
      EN             : Boolean := False;
      --  Selects the code to be applied for the compensation cell of I/Os
      --  supplied by VDDIOx.
      CS             : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO2CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCFG_VDDIO2CCSR_ANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO2CCSR_APSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO2 compensation cell status register
   type SYSCFG_VDDIO2CCSR_Register is record
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for NMOS transistors.
      ANSRC         : SYSCFG_VDDIO2CCSR_ANSRC_Field;
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for PMOS transistors.
      APSRC         : SYSCFG_VDDIO2CCSR_APSRC_Field;
      --  Read-only. Provides the compensation cell status of I/Os supplied by
      --  VDDIOx
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO2CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIO3CCCR_RANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO3CCCR_RAPSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO3 compensation cell control register
   type SYSCFG_VDDIO3CCCR_Register is record
      --  These bits are written by software to define an I/O compensation code
      --  for NMOS transistors. This code is applied to the I/O compensation
      --  cell when the CS = 1.
      RANSRC         : SYSCFG_VDDIO3CCCR_RANSRC_Field := 16#0#;
      --  These bits are written by software to define an I/O compensation code
      --  for PMOS transistors. This code is applied to the I/O compensation
      --  cell when CS = 1.
      RAPSRC         : SYSCFG_VDDIO3CCCR_RAPSRC_Field := 16#0#;
      --  Enables the compensation cell of I/Os supplied by VDDIOx.
      EN             : Boolean := False;
      --  Selects the code to be applied for the compensation cell of I/Os
      --  supplied by VDDIOx.
      CS             : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO3CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCFG_VDDIO3CCSR_ANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO3CCSR_APSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO3 compensation cell status register
   type SYSCFG_VDDIO3CCSR_Register is record
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for NMOS transistors.
      ANSRC         : SYSCFG_VDDIO3CCSR_ANSRC_Field;
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for PMOS transistors.
      APSRC         : SYSCFG_VDDIO3CCSR_APSRC_Field;
      --  Read-only. Provides the compensation cell status of I/Os supplied by
      --  VDDIOx
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO3CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIO4CCCR_RANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO4CCCR_RAPSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO4 compensation cell control register
   type SYSCFG_VDDIO4CCCR_Register is record
      --  These bits are written by software to define an I/O compensation code
      --  for NMOS transistors. This code is applied to the I/O compensation
      --  cell when the CS = 1.
      RANSRC         : SYSCFG_VDDIO4CCCR_RANSRC_Field := 16#0#;
      --  These bits are written by software to define an I/O compensation code
      --  for PMOS transistors. This code is applied to the I/O compensation
      --  cell when CS = 1.
      RAPSRC         : SYSCFG_VDDIO4CCCR_RAPSRC_Field := 16#0#;
      --  Enables the compensation cell of I/Os supplied by VDDIOx.
      EN             : Boolean := False;
      --  Selects the code to be applied for the compensation cell of I/Os
      --  supplied by VDDIOx.
      CS             : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO4CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCFG_VDDIO4CCSR_ANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIO4CCSR_APSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO4 compensation cell status register
   type SYSCFG_VDDIO4CCSR_Register is record
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for NMOS transistors.
      ANSRC         : SYSCFG_VDDIO4CCSR_ANSRC_Field;
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for PMOS transistors.
      APSRC         : SYSCFG_VDDIO4CCSR_APSRC_Field;
      --  Read-only. Provides the compensation cell status of I/Os supplied by
      --  VDDIOx
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO4CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIOCCCR_RANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIOCCCR_RAPSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO compensation cell control register
   type SYSCFG_VDDIOCCCR_Register is record
      --  These bits are written by software to define an I/O compensation code
      --  for NMOS transistors. This code is applied to the I/O compensation
      --  cell when CS = 1.
      RANSRC         : SYSCFG_VDDIOCCCR_RANSRC_Field := 16#0#;
      --  These bits are written by software to define an I/O compensation code
      --  for PMOS transistors. This code is applied to the I/O compensation
      --  cell when CS = 1.
      RAPSRC         : SYSCFG_VDDIOCCCR_RAPSRC_Field := 16#0#;
      --  Enables the compensation cell of I/Os supplied by VDDIO.
      EN             : Boolean := False;
      --  Selects the code to be applied for the compensation cell of I/Os
      --  supplied by VDDIO.
      CS             : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIOCCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCFG_VDDIOCCSR_ANSRC_Field is Interfaces.Bit_Types.UInt4;
   subtype SYSCFG_VDDIOCCSR_APSRC_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG VDDIO compensation cell status register
   type SYSCFG_VDDIOCCSR_Register is record
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for NMOS transistors.
      ANSRC         : SYSCFG_VDDIOCCSR_ANSRC_Field;
      --  Read-only. This value is provided by the cell, and can be used by the
      --  CPU to compute an I/O compensation cell code for PMOS transistors.
      APSRC         : SYSCFG_VDDIOCCSR_APSRC_Field;
      --  Read-only. Provides the compensation cell status of I/Os supplied by
      --  VDDIO
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIOCCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SYSCFG control timer break register
   type SYSCFG_CBR_Register is record
      --  CM55 lockup lock enable
      CM55L         : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  PVD lock enable
      PVDL_LOCK     : Boolean := False;
      --  Backup SRAM double ECC error lock
      BKPRAML       : Boolean := False;
      --  unspecified
      Reserved_4_4  : Interfaces.Bit_Types.Bit := 16#0#;
      --  CM55 cache double ECC error lock
      CM55CACHEL    : Boolean := False;
      --  CM55 TCM double ECC error lock
      CM55TCML      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CBR_Register use record
      CM55L         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PVDL_LOCK     at 0 range 2 .. 2;
      BKPRAML       at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      CM55CACHEL    at 0 range 5 .. 5;
      CM55TCML      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SYSCFG_SEC_AIDCR_DMACID_SEC_Field is Interfaces.Bit_Types.UInt3;

   --  SYSCFG DMA CID secure control register
   type SYSCFG_SEC_AIDCR_Register is record
      --  Secure OS allocates specific CID to DMA channel through these bits.
      DMACID_SEC    : SYSCFG_SEC_AIDCR_DMACID_SEC_Field := 16#1#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_SEC_AIDCR_Register use record
      DMACID_SEC    at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SYSCFG FMC retiming logic control register
   type SYSCFG_FMC_RETIMECR_Register is record
      --  Retiming on Rx path
      CFG_RETIME_RX : Boolean := False;
      --  Retiming on Tx path
      CFG_RETIME_TX : Boolean := False;
      --  Delay on feedback clock
      SDFBCLK_180   : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_FMC_RETIMECR_Register use record
      CFG_RETIME_RX at 0 range 0 .. 0;
      CFG_RETIME_TX at 0 range 1 .. 1;
      SDFBCLK_180   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SYSCFG NPU RAM interleaving control register
   type SYSCFG_NPU_ICNCR_Register is record
      --  Control interleaving on NPU RAMs
      INTERLEAVING_ACTIVE : Boolean := False;
      --  unspecified
      Reserved_1_31       : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_NPU_ICNCR_Register use record
      INTERLEAVING_ACTIVE at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  SYSCFG_BOOTSR_BOOT array
   type SYSCFG_BOOTSR_BOOT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCFG_BOOTSR_BOOT
   type SYSCFG_BOOTSR_BOOT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BOOT as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  BOOT as an array
            Arr : SYSCFG_BOOTSR_BOOT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCFG_BOOTSR_BOOT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SYSCFG boot pin status register
   type SYSCFG_BOOTSR_Register is record
      --  Read-only. BOOT0 pin value
      BOOT          : SYSCFG_BOOTSR_BOOT_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_BOOTSR_Register use record
      BOOT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_SMPSHDPCR_SMPSHDPSEL_Field is Interfaces.Bit_Types.UInt4;

   --  SYSCFG SMPS observable signals through HDP selection	configuration
   --  register
   type SYSCFG_SMPSHDPCR_Register is record
      --  Others: Reserved
      SMPSHDPSEL    : SYSCFG_SMPSHDPCR_SMPSHDPSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_SMPSHDPCR_Register use record
      SMPSHDPSEL    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SYSCFG_NONSEC_AIDCR_DMACID_NONSEC_Field is
     Interfaces.Bit_Types.UInt3;

   --  SYSCFG DMA CID non-secure control register
   type SYSCFG_NONSEC_AIDCR_Register is record
      --  Non-secure OS allocates specific CID to DMA channel through these
      --  bits
      DMACID_NONSEC : SYSCFG_NONSEC_AIDCR_DMACID_NONSEC_Field := 16#1#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_NONSEC_AIDCR_Register use record
      DMACID_NONSEC at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_Peripheral is record
      --  SYSCFG boot pin control register
      SYSCFG_BOOTCR         : aliased SYSCFG_BOOTCR_Register;
      --  SYSCFG Cortex-M55 control register
      SYSCFG_CM55CR         : aliased SYSCFG_CM55CR_Register;
      --  SYSCFG Cortex-M55 TCM control register
      SYSCFG_CM55TCMCR      : aliased SYSCFG_CM55TCMCR_Register;
      --  SYSCFG Cortex-CM55 memory RW margin register
      SYSCFG_CM55RWMCR      : aliased SYSCFG_CM55RWMCR_Register;
      --  SYSCFG Cortex-M55 SVTOR control register
      SYSCFG_INITSVTORCR    : aliased SYSCFG_INITSVTORCR_Register;
      --  SYSCFG Cortex-M55 NSVTOR control register
      SYSCFG_INITNSVTORCR   : aliased SYSCFG_INITNSVTORCR_Register;
      --  SYSCFG Cortex-M55 reset type control register
      SYSCFG_CM55RSTCR      : aliased SYSCFG_CM55RSTCR_Register;
      --  SYSCFG Cortex-M55 P-AHB write posting control register
      SYSCFG_CM55PAHBWPR    : aliased SYSCFG_CM55PAHBWPR_Register;
      --  SYSCFG VENCRAM control register
      SYSCFG_VENCRAMCR      : aliased SYSCFG_VENCRAMCR_Register;
      --  SYSCFG potential tamper reset register
      SYSCFG_POTTAMPRSTCR   : aliased SYSCFG_POTTAMPRSTCR_Register;
      --  SYSCFG AHB-AXI bridge early write response control	register
      SYSCFG_ICNEWRCR       : aliased SYSCFG_ICNEWRCR_Register;
      --  SYSCFG ICN clock gating control register
      SYSCFG_ICNCGCR        : aliased Interfaces.Bit_Types.UInt32;
      --  SYSCFG ICN bandwidth regulator control register
      SYSCFG_ICNBWRCR       : aliased Interfaces.Bit_Types.UInt32;
      --  SYSCFG /O control register
      SYSCFG_IOCR           : aliased Interfaces.Bit_Types.UInt32;
      --  SYSCFG VDDIO1 compensation cell control register
      SYSCFG_VDDIO1CCCR     : aliased SYSCFG_VDDIO1CCCR_Register;
      --  SYSCFG VDDIO1 compensation cell status register
      SYSCFG_VDDIO1CCSR     : aliased SYSCFG_VDDIO1CCSR_Register;
      --  SYSCFG VDDIO2 compensation cell control register
      SYSCFG_VDDIO2CCCR     : aliased SYSCFG_VDDIO2CCCR_Register;
      --  SYSCFG VDDIO2 compensation cell status register
      SYSCFG_VDDIO2CCSR     : aliased SYSCFG_VDDIO2CCSR_Register;
      --  SYSCFG VDDIO3 compensation cell control register
      SYSCFG_VDDIO3CCCR     : aliased SYSCFG_VDDIO3CCCR_Register;
      --  SYSCFG VDDIO3 compensation cell status register
      SYSCFG_VDDIO3CCSR     : aliased SYSCFG_VDDIO3CCSR_Register;
      --  SYSCFG VDDIO4 compensation cell control register
      SYSCFG_VDDIO4CCCR     : aliased SYSCFG_VDDIO4CCCR_Register;
      --  SYSCFG VDDIO4 compensation cell status register
      SYSCFG_VDDIO4CCSR     : aliased SYSCFG_VDDIO4CCSR_Register;
      --  SYSCFG VDDIO compensation cell control register
      SYSCFG_VDDIOCCCR      : aliased SYSCFG_VDDIOCCCR_Register;
      --  SYSCFG VDDIO compensation cell status register
      SYSCFG_VDDIOCCSR      : aliased SYSCFG_VDDIOCCSR_Register;
      --  SYSCFG control timer break register
      SYSCFG_CBR            : aliased SYSCFG_CBR_Register;
      --  SYSCFG DMA CID secure control register
      SYSCFG_SEC_AIDCR      : aliased SYSCFG_SEC_AIDCR_Register;
      --  SYSCFG FMC retiming logic control register
      SYSCFG_FMC_RETIMECR   : aliased SYSCFG_FMC_RETIMECR_Register;
      --  SYSCFG NPU RAM interleaving control register
      SYSCFG_NPU_ICNCR      : aliased SYSCFG_NPU_ICNCR_Register;
      --  SYSCFG boot pin status register
      SYSCFG_BOOTSR         : aliased SYSCFG_BOOTSR_Register;
      --  SYSCFG AHB write posting address error register
      SYSCFG_AHBWP_ERROR_SR : aliased Interfaces.Bit_Types.UInt32;
      --  SYSCFG SMPS observable signals through HDP selection	configuration
      --  register
      SYSCFG_SMPSHDPCR      : aliased SYSCFG_SMPSHDPCR_Register;
      --  SYSCFG DMA CID non-secure control register
      SYSCFG_NONSEC_AIDCR   : aliased SYSCFG_NONSEC_AIDCR_Register;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      SYSCFG_BOOTCR         at 16#0# range 0 .. 31;
      SYSCFG_CM55CR         at 16#4# range 0 .. 31;
      SYSCFG_CM55TCMCR      at 16#8# range 0 .. 31;
      SYSCFG_CM55RWMCR      at 16#C# range 0 .. 31;
      SYSCFG_INITSVTORCR    at 16#10# range 0 .. 31;
      SYSCFG_INITNSVTORCR   at 16#14# range 0 .. 31;
      SYSCFG_CM55RSTCR      at 16#18# range 0 .. 31;
      SYSCFG_CM55PAHBWPR    at 16#1C# range 0 .. 31;
      SYSCFG_VENCRAMCR      at 16#20# range 0 .. 31;
      SYSCFG_POTTAMPRSTCR   at 16#24# range 0 .. 31;
      SYSCFG_ICNEWRCR       at 16#34# range 0 .. 31;
      SYSCFG_ICNCGCR        at 16#38# range 0 .. 31;
      SYSCFG_ICNBWRCR       at 16#3C# range 0 .. 31;
      SYSCFG_IOCR           at 16#40# range 0 .. 31;
      SYSCFG_VDDIO1CCCR     at 16#44# range 0 .. 31;
      SYSCFG_VDDIO1CCSR     at 16#48# range 0 .. 31;
      SYSCFG_VDDIO2CCCR     at 16#4C# range 0 .. 31;
      SYSCFG_VDDIO2CCSR     at 16#50# range 0 .. 31;
      SYSCFG_VDDIO3CCCR     at 16#54# range 0 .. 31;
      SYSCFG_VDDIO3CCSR     at 16#58# range 0 .. 31;
      SYSCFG_VDDIO4CCCR     at 16#5C# range 0 .. 31;
      SYSCFG_VDDIO4CCSR     at 16#60# range 0 .. 31;
      SYSCFG_VDDIOCCCR      at 16#64# range 0 .. 31;
      SYSCFG_VDDIOCCSR      at 16#68# range 0 .. 31;
      SYSCFG_CBR            at 16#6C# range 0 .. 31;
      SYSCFG_SEC_AIDCR      at 16#70# range 0 .. 31;
      SYSCFG_FMC_RETIMECR   at 16#74# range 0 .. 31;
      SYSCFG_NPU_ICNCR      at 16#78# range 0 .. 31;
      SYSCFG_BOOTSR         at 16#100# range 0 .. 31;
      SYSCFG_AHBWP_ERROR_SR at 16#104# range 0 .. 31;
      SYSCFG_SMPSHDPCR      at 16#400# range 0 .. 31;
      SYSCFG_NONSEC_AIDCR   at 16#800# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

   --  System configuration controller
   SYSCFG_S_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_S_Base;

end Interfaces.STM32.SYSCFG;
