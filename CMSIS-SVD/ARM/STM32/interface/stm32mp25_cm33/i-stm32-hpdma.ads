--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.HPDMA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  HPDMA_SECCFGR_SEC array
   type HPDMA_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for HPDMA_SECCFGR_SEC
   type HPDMA_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : HPDMA_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HPDMA_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HPDMA secure configuration register
   type HPDMA_SECCFGR_Register is record
      --  Secure state of channel x
      SEC            : HPDMA_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HPDMA_PRIVCFGR_PRIV array
   type HPDMA_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for HPDMA_PRIVCFGR_PRIV
   type HPDMA_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : HPDMA_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HPDMA_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HPDMA privileged configuration register
   type HPDMA_PRIVCFGR_Register is record
      --  Privileged state of channel x
      PRIV           : HPDMA_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HPDMA_RCFGLOCKR_LOCK array
   type HPDMA_RCFGLOCKR_LOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for HPDMA_RCFGLOCKR_LOCK
   type HPDMA_RCFGLOCKR_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LOCK as an array
            Arr : HPDMA_RCFGLOCKR_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HPDMA_RCFGLOCKR_LOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HPDMA configuration lock register
   type HPDMA_RCFGLOCKR_Register is record
      --  Lock of the configuration of HPDMA_SECCFGR.
      LOCK           : HPDMA_RCFGLOCKR_LOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_RCFGLOCKR_Register use record
      LOCK           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HPDMA_MISR_MIS array
   type HPDMA_MISR_MIS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for HPDMA_MISR_MIS
   type HPDMA_MISR_MIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  MIS as an array
            Arr : HPDMA_MISR_MIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HPDMA_MISR_MIS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HPDMA nonsecure masked interrupt status register
   type HPDMA_MISR_Register is record
      --  Read-only. Masked interrupt status of channel x
      MIS            : HPDMA_MISR_MIS_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_MISR_Register use record
      MIS            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HPDMA_SMISR_MIS array
   type HPDMA_SMISR_MIS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for HPDMA_SMISR_MIS
   type HPDMA_SMISR_MIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  MIS as an array
            Arr : HPDMA_SMISR_MIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HPDMA_SMISR_MIS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HPDMA secure masked interrupt status register
   type HPDMA_SMISR_Register is record
      --  Read-only. Masked interrupt status of the secure channel x
      MIS            : HPDMA_SMISR_MIS_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_SMISR_Register use record
      MIS            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C0LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 0 linked-list base address register
   type HPDMA_C0LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C0LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C0CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C0CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C0CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C0CIDCFGR_SEM_WLIST_CID
   type HPDMA_C0CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C0CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C0CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 0 CID register
   type HPDMA_C0CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C0CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C0CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C0SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 0 semaphore control register
   type HPDMA_C0SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C0SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 0 flag clear register
   type HPDMA_C0FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C0SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 0 status register
   type HPDMA_C0SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C0SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C0CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 0 control register
   type HPDMA_C0CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C0CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C0TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C0TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C0TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C0TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C0TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 0 transfer register 1
   type HPDMA_C0TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C0TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C0TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C0TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C0TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C0TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C0TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C0TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C0TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C0TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C0TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 0 transfer register 2
   type HPDMA_C0TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C0TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C0TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C0TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C0TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C0TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C0BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 0 block register 1
   type HPDMA_C0BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C0BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C0LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 0 linked-list address register
   type HPDMA_C0LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C0LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C0LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C1LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 1 linked-list base address register
   type HPDMA_C1LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C1LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C1CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C1CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C1CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C1CIDCFGR_SEM_WLIST_CID
   type HPDMA_C1CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C1CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C1CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 1 CID register
   type HPDMA_C1CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C1CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C1CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C1SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 1 semaphore control register
   type HPDMA_C1SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C1SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 1 flag clear register
   type HPDMA_C1FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C1SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 1 status register
   type HPDMA_C1SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C1SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C1CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 1 control register
   type HPDMA_C1CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C1CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C1TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C1TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C1TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C1TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C1TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 1 transfer register 1
   type HPDMA_C1TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C1TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C1TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C1TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C1TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C1TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C1TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C1TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C1TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C1TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C1TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 1 transfer register 2
   type HPDMA_C1TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C1TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C1TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C1TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C1TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C1TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C1BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 1 block register 1
   type HPDMA_C1BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C1BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C1LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 1 linked-list address register
   type HPDMA_C1LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C1LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C1LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C2LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 2 linked-list base address register
   type HPDMA_C2LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C2LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C2CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C2CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C2CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C2CIDCFGR_SEM_WLIST_CID
   type HPDMA_C2CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C2CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C2CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 2 CID register
   type HPDMA_C2CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C2CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C2CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C2SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 2 semaphore control register
   type HPDMA_C2SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C2SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 2 flag clear register
   type HPDMA_C2FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C2SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 2 status register
   type HPDMA_C2SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C2SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C2CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 2 control register
   type HPDMA_C2CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C2CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C2TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C2TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C2TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C2TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C2TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 2 transfer register 1
   type HPDMA_C2TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C2TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C2TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C2TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C2TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C2TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C2TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C2TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C2TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C2TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C2TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 2 transfer register 2
   type HPDMA_C2TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C2TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C2TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C2TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C2TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C2TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C2BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 2 block register 1
   type HPDMA_C2BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C2BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C2LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 2 linked-list address register
   type HPDMA_C2LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C2LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C2LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C3LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 3 linked-list base address register
   type HPDMA_C3LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C3LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C3CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C3CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C3CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C3CIDCFGR_SEM_WLIST_CID
   type HPDMA_C3CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C3CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C3CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 3 CID register
   type HPDMA_C3CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C3CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C3CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C3SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 3 semaphore control register
   type HPDMA_C3SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C3SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 3 flag clear register
   type HPDMA_C3FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C3SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 3 status register
   type HPDMA_C3SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C3SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C3CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 3 control register
   type HPDMA_C3CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C3CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C3TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C3TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C3TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C3TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C3TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 3 transfer register 1
   type HPDMA_C3TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C3TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C3TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C3TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C3TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C3TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C3TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C3TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C3TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C3TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C3TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 3 transfer register 2
   type HPDMA_C3TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C3TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C3TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C3TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C3TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C3TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C3BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 3 block register 1
   type HPDMA_C3BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C3BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C3LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 3 linked-list address register
   type HPDMA_C3LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C3LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C3LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C4LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 4 linked-list base address register
   type HPDMA_C4LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C4LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C4CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C4CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C4CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C4CIDCFGR_SEM_WLIST_CID
   type HPDMA_C4CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C4CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C4CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 4 CID register
   type HPDMA_C4CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C4CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C4CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C4SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 4 semaphore control register
   type HPDMA_C4SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C4SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 4 flag clear register
   type HPDMA_C4FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C4SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 4 status register
   type HPDMA_C4SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C4SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C4CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 4 control register
   type HPDMA_C4CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C4CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C4TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C4TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C4TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C4TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C4TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 4 transfer register 1
   type HPDMA_C4TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C4TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C4TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C4TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C4TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C4TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C4TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C4TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C4TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C4TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C4TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 4 transfer register 2
   type HPDMA_C4TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C4TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C4TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C4TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C4TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C4TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C4BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 4 block register 1
   type HPDMA_C4BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C4BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C4LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 4 linked-list address register
   type HPDMA_C4LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C4LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C4LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C5LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 5 linked-list base address register
   type HPDMA_C5LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C5LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C5CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C5CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C5CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C5CIDCFGR_SEM_WLIST_CID
   type HPDMA_C5CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C5CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C5CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 5 CID register
   type HPDMA_C5CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C5CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C5CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C5SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 5 semaphore control register
   type HPDMA_C5SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C5SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 5 flag clear register
   type HPDMA_C5FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C5SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 5 status register
   type HPDMA_C5SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C5SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C5CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 5 control register
   type HPDMA_C5CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C5CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C5TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C5TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C5TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C5TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C5TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 5 transfer register 1
   type HPDMA_C5TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C5TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C5TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C5TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C5TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C5TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C5TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C5TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C5TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C5TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C5TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 5 transfer register 2
   type HPDMA_C5TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C5TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C5TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C5TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C5TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C5TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C5BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 5 block register 1
   type HPDMA_C5BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C5BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C5LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 5 linked-list address register
   type HPDMA_C5LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C5LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C5LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C6LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 6 linked-list base address register
   type HPDMA_C6LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C6LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C6CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C6CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C6CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C6CIDCFGR_SEM_WLIST_CID
   type HPDMA_C6CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C6CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C6CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 6 CID register
   type HPDMA_C6CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C6CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C6CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C6SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 6 semaphore control register
   type HPDMA_C6SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C6SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 6 flag clear register
   type HPDMA_C6FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C6SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 6 status register
   type HPDMA_C6SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C6SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C6CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 6 control register
   type HPDMA_C6CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C6CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C6TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C6TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C6TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C6TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C6TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 6 transfer register 1
   type HPDMA_C6TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C6TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C6TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C6TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C6TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C6TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C6TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C6TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C6TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C6TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C6TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 6 transfer register 2
   type HPDMA_C6TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C6TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C6TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C6TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C6TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C6TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C6BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 6 block register 1
   type HPDMA_C6BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C6BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C6LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 6 linked-list address register
   type HPDMA_C6LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C6LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C6LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C7LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 7 linked-list base address register
   type HPDMA_C7LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C7LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C7CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C7CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C7CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C7CIDCFGR_SEM_WLIST_CID
   type HPDMA_C7CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C7CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C7CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 7 CID register
   type HPDMA_C7CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C7CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C7CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C7SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 7 semaphore control register
   type HPDMA_C7SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C7SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 7 flag clear register
   type HPDMA_C7FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C7SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 7 status register
   type HPDMA_C7SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C7SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C7CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 7 control register
   type HPDMA_C7CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C7CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C7TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C7TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C7TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C7TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C7TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 7 transfer register 1
   type HPDMA_C7TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C7TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C7TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C7TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C7TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C7TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C7TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C7TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C7TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C7TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C7TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 7 transfer register 2
   type HPDMA_C7TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C7TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C7TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C7TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C7TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C7TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C7BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 7 block register 1
   type HPDMA_C7BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C7BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C7LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 7 linked-list address register
   type HPDMA_C7LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C7LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C7LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C8LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 8 linked-list base address register
   type HPDMA_C8LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C8LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C8CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C8CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C8CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C8CIDCFGR_SEM_WLIST_CID
   type HPDMA_C8CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C8CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C8CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 8 CID register
   type HPDMA_C8CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C8CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C8CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C8SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 8 semaphore control register
   type HPDMA_C8SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C8SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 8 flag clear register
   type HPDMA_C8FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C8SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 8 status register
   type HPDMA_C8SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C8SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C8CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 8 control register
   type HPDMA_C8CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C8CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C8TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C8TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C8TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C8TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C8TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 8 transfer register 1
   type HPDMA_C8TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C8TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C8TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C8TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C8TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C8TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C8TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C8TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C8TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C8TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C8TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 8 transfer register 2
   type HPDMA_C8TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C8TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C8TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C8TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C8TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C8TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C8BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 8 block register 1
   type HPDMA_C8BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C8BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C8LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 8 linked-list address register
   type HPDMA_C8LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C8LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C8LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C9LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 9 linked-list base address register
   type HPDMA_C9LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C9LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C9CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C9CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C9CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C9CIDCFGR_SEM_WLIST_CID
   type HPDMA_C9CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C9CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C9CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 9 CID register
   type HPDMA_C9CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C9CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C9CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C9SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 9 semaphore control register
   type HPDMA_C9SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C9SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 9 flag clear register
   type HPDMA_C9FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C9SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 9 status register
   type HPDMA_C9SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C9SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C9CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 9 control register
   type HPDMA_C9CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C9CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C9TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C9TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C9TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C9TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C9TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 9 transfer register 1
   type HPDMA_C9TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C9TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C9TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C9TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C9TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C9TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C9TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C9TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C9TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C9TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C9TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 9 transfer register 2
   type HPDMA_C9TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C9TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C9TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C9TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C9TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C9TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C9BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 9 block register 1
   type HPDMA_C9BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C9BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C9LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 9 linked-list address register
   type HPDMA_C9LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C9LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C9LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C10LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 10 linked-list base address register
   type HPDMA_C10LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C10LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C10CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C10CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C10CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C10CIDCFGR_SEM_WLIST_CID
   type HPDMA_C10CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C10CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C10CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 10 CID register
   type HPDMA_C10CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C10CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C10CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C10SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 10 semaphore control register
   type HPDMA_C10SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C10SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 10 flag clear register
   type HPDMA_C10FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C10SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 10 status register
   type HPDMA_C10SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C10SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C10CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 10 control register
   type HPDMA_C10CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C10CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C10TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C10TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C10TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C10TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C10TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 10 transfer register 1
   type HPDMA_C10TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C10TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C10TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C10TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C10TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C10TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C10TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C10TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C10TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C10TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C10TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 10 transfer register 2
   type HPDMA_C10TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C10TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C10TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C10TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C10TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C10TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C10BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 10 block register 1
   type HPDMA_C10BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C10BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C10LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 10 linked-list address register
   type HPDMA_C10LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C10LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C10LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C11LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 11 linked-list base address register
   type HPDMA_C11LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C11LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C11CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C11CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C11CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C11CIDCFGR_SEM_WLIST_CID
   type HPDMA_C11CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C11CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C11CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 11 CID register
   type HPDMA_C11CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C11CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C11CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C11SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 11 semaphore control register
   type HPDMA_C11SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C11SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 11 flag clear register
   type HPDMA_C11FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C11SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 11 status register
   type HPDMA_C11SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C11SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C11CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 11 control register
   type HPDMA_C11CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C11CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C11TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C11TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C11TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C11TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C11TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 11 transfer register 1
   type HPDMA_C11TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C11TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C11TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C11TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C11TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C11TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C11TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C11TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C11TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C11TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C11TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 11 transfer register 2
   type HPDMA_C11TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C11TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C11TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C11TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C11TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C11TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C11BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 11 block register 1
   type HPDMA_C11BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C11BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C11LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 11 linked-list address register
   type HPDMA_C11LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C11LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C11LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C12LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 12 linked-list base address register
   type HPDMA_C12LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C12LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C12CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C12CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C12CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C12CIDCFGR_SEM_WLIST_CID
   type HPDMA_C12CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C12CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C12CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 12 CID register
   type HPDMA_C12CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C12CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C12CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C12SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 12 semaphore control register
   type HPDMA_C12SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C12SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 12 flag clear register
   type HPDMA_C12FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C12SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 12 status register
   type HPDMA_C12SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C12SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C12CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 12 control register
   type HPDMA_C12CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C12CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C12TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C12TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C12TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C12TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C12TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 12 transfer register 1
   type HPDMA_C12TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C12TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C12TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C12TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C12TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C12TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C12TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C12TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C12TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C12TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C12TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 12 transfer register 2
   type HPDMA_C12TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C12TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C12TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C12TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C12TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C12TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C12BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C12BR1_BRC_Field is Interfaces.Bit_Types.UInt11;

   --  HPDMA channel 12 alternate block register 1
   type HPDMA_C12BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C12BR1_BNDT_Field := 16#0#;
      --  Block repeat counter
      BRC            : HPDMA_C12BR1_BRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  source address decrement
      SDEC           : Boolean := False;
      --  destination address decrement
      DDEC           : Boolean := False;
      --  Block repeat source address decrement
      BRSDEC         : Boolean := False;
      --  Block repeat destination address decrement
      BRDDEC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      BRC            at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SDEC           at 0 range 28 .. 28;
      DDEC           at 0 range 29 .. 29;
      BRSDEC         at 0 range 30 .. 30;
      BRDDEC         at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C12TR3_SAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C12TR3_BAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C12TR3_DAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C12TR3_BRAM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 12 transfer register 3
   type HPDMA_C12TR3_Register is record
      --  Source address offset increment
      SAO            : HPDMA_C12TR3_SAO_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block alignment mode
      BAM            : HPDMA_C12TR3_BAM_Field := 16#0#;
      --  Destination address offset increment
      DAO            : HPDMA_C12TR3_DAO_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block repeated alignment mode
      BRAM           : HPDMA_C12TR3_BRAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12TR3_Register use record
      SAO            at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BAM            at 0 range 14 .. 15;
      DAO            at 0 range 16 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BRAM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C12BR2_BRSAO_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C12BR2_BRDAO_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 12 block register 2
   type HPDMA_C12BR2_Register is record
      --  Block repeated source address offset
      BRSAO : HPDMA_C12BR2_BRSAO_Field := 16#0#;
      --  Block repeated destination address offset
      BRDAO : HPDMA_C12BR2_BRDAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12BR2_Register use record
      BRSAO at 0 range 0 .. 15;
      BRDAO at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C12LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 12 alternate linked-list address register
   type HPDMA_C12LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C12LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_24 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Update HPDMA_CxBR2 from memory
      UB2            : Boolean := False;
      --  Update HPDMA_CxTR3 from memory
      UT3            : Boolean := False;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C12LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      UB2            at 0 range 25 .. 25;
      UT3            at 0 range 26 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C13LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 13 linked-list base address register
   type HPDMA_C13LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C13LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C13CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C13CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C13CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C13CIDCFGR_SEM_WLIST_CID
   type HPDMA_C13CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C13CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C13CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 13 CID register
   type HPDMA_C13CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C13CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C13CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C13SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 13 semaphore control register
   type HPDMA_C13SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C13SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 13 flag clear register
   type HPDMA_C13FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C13SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 13 status register
   type HPDMA_C13SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C13SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C13CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 13 control register
   type HPDMA_C13CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C13CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C13TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C13TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C13TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C13TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C13TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 13 transfer register 1
   type HPDMA_C13TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C13TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C13TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C13TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C13TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C13TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C13TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C13TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C13TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C13TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C13TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 13 transfer register 2
   type HPDMA_C13TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C13TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C13TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C13TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C13TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C13TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C13BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C13BR1_BRC_Field is Interfaces.Bit_Types.UInt11;

   --  HPDMA channel 13 alternate block register 1
   type HPDMA_C13BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C13BR1_BNDT_Field := 16#0#;
      --  Block repeat counter
      BRC            : HPDMA_C13BR1_BRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  source address decrement
      SDEC           : Boolean := False;
      --  destination address decrement
      DDEC           : Boolean := False;
      --  Block repeat source address decrement
      BRSDEC         : Boolean := False;
      --  Block repeat destination address decrement
      BRDDEC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      BRC            at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SDEC           at 0 range 28 .. 28;
      DDEC           at 0 range 29 .. 29;
      BRSDEC         at 0 range 30 .. 30;
      BRDDEC         at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C13TR3_SAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C13TR3_BAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C13TR3_DAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C13TR3_BRAM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 13 transfer register 3
   type HPDMA_C13TR3_Register is record
      --  Source address offset increment
      SAO            : HPDMA_C13TR3_SAO_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block alignment mode
      BAM            : HPDMA_C13TR3_BAM_Field := 16#0#;
      --  Destination address offset increment
      DAO            : HPDMA_C13TR3_DAO_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block repeated alignment mode
      BRAM           : HPDMA_C13TR3_BRAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13TR3_Register use record
      SAO            at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BAM            at 0 range 14 .. 15;
      DAO            at 0 range 16 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BRAM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C13BR2_BRSAO_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C13BR2_BRDAO_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 13 block register 2
   type HPDMA_C13BR2_Register is record
      --  Block repeated source address offset
      BRSAO : HPDMA_C13BR2_BRSAO_Field := 16#0#;
      --  Block repeated destination address offset
      BRDAO : HPDMA_C13BR2_BRDAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13BR2_Register use record
      BRSAO at 0 range 0 .. 15;
      BRDAO at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C13LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 13 alternate linked-list address register
   type HPDMA_C13LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C13LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_24 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Update HPDMA_CxBR2 from memory
      UB2            : Boolean := False;
      --  Update HPDMA_CxTR3 from memory
      UT3            : Boolean := False;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C13LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      UB2            at 0 range 25 .. 25;
      UT3            at 0 range 26 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C14LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 14 linked-list base address register
   type HPDMA_C14LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C14LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C14CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C14CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C14CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C14CIDCFGR_SEM_WLIST_CID
   type HPDMA_C14CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C14CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C14CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 14 CID register
   type HPDMA_C14CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C14CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C14CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C14SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 14 semaphore control register
   type HPDMA_C14SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C14SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 14 flag clear register
   type HPDMA_C14FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C14SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 14 status register
   type HPDMA_C14SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C14SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C14CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 14 control register
   type HPDMA_C14CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C14CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C14TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C14TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C14TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C14TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C14TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 14 transfer register 1
   type HPDMA_C14TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C14TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C14TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C14TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C14TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C14TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C14TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C14TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C14TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C14TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C14TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 14 transfer register 2
   type HPDMA_C14TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C14TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C14TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C14TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C14TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C14TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C14BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C14BR1_BRC_Field is Interfaces.Bit_Types.UInt11;

   --  HPDMA channel 14 alternate block register 1
   type HPDMA_C14BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C14BR1_BNDT_Field := 16#0#;
      --  Block repeat counter
      BRC            : HPDMA_C14BR1_BRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  source address decrement
      SDEC           : Boolean := False;
      --  destination address decrement
      DDEC           : Boolean := False;
      --  Block repeat source address decrement
      BRSDEC         : Boolean := False;
      --  Block repeat destination address decrement
      BRDDEC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      BRC            at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SDEC           at 0 range 28 .. 28;
      DDEC           at 0 range 29 .. 29;
      BRSDEC         at 0 range 30 .. 30;
      BRDDEC         at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C14TR3_SAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C14TR3_BAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C14TR3_DAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C14TR3_BRAM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 14 transfer register 3
   type HPDMA_C14TR3_Register is record
      --  Source address offset increment
      SAO            : HPDMA_C14TR3_SAO_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block alignment mode
      BAM            : HPDMA_C14TR3_BAM_Field := 16#0#;
      --  Destination address offset increment
      DAO            : HPDMA_C14TR3_DAO_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block repeated alignment mode
      BRAM           : HPDMA_C14TR3_BRAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14TR3_Register use record
      SAO            at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BAM            at 0 range 14 .. 15;
      DAO            at 0 range 16 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BRAM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C14BR2_BRSAO_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C14BR2_BRDAO_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 14 block register 2
   type HPDMA_C14BR2_Register is record
      --  Block repeated source address offset
      BRSAO : HPDMA_C14BR2_BRSAO_Field := 16#0#;
      --  Block repeated destination address offset
      BRDAO : HPDMA_C14BR2_BRDAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14BR2_Register use record
      BRSAO at 0 range 0 .. 15;
      BRDAO at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C14LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 14 alternate linked-list address register
   type HPDMA_C14LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C14LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_24 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Update HPDMA_CxBR2 from memory
      UB2            : Boolean := False;
      --  Update HPDMA_CxTR3 from memory
      UT3            : Boolean := False;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C14LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      UB2            at 0 range 25 .. 25;
      UT3            at 0 range 26 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C15LBAR_LBA_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 15 linked-list base address register
   type HPDMA_C15LBAR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Linked-list base address of HPDMA channel x
      LBA           : HPDMA_C15LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C15CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA_C15CIDCFGR_SEM_WLIST_CID array
   type HPDMA_C15CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HPDMA_C15CIDCFGR_SEM_WLIST_CID
   type HPDMA_C15CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : HPDMA_C15CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HPDMA_C15CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HPDMA channel 15 CID register
   type HPDMA_C15CIDCFGR_Register is record
      --  CID filtering enable of the channel x
      CFEN           : Boolean := False;
      --  Semaphore mode enable (for the CID allocation policy to the channel
      --  x)
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Allocation of a static/single CID to the channel x (for when the
      --  channel x CID configuration is not in semaphore mode)
      SCID           : HPDMA_C15CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  White-listed CID0 in the CID allocation pool (for when the channel x
      SEM_WLIST_CID  : HPDMA_C15CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HPDMA_C15SEMCR_SEM_CCID_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 15 semaphore control register
   type HPDMA_C15SEMCR_Register is record
      --  Mutual exclusion semaphore for the CID allocation of the channel x
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to the channel x (in semaphore mode)
      SEM_CCID      : HPDMA_C15SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HPDMA channel 15 flag clear register
   type HPDMA_C15FCR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. Half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. Data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. Update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. User setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. Completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. Trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_C15SR_FIFOL_Field is Interfaces.Bit_Types.UInt9;

   --  HPDMA channel 15 status register
   type HPDMA_C15SR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. None
      FIFOL          : HPDMA_C15SR_FIFOL_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15SR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOL          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype HPDMA_C15CR_PRIO_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 15 control register
   type HPDMA_C15CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Write-only. Reset
      RESET          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  Half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  Data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  Update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  User setting error interrupt enable
      USEIE          : Boolean := False;
      --  cCmpleted suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  Trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Link step mode
      LSM            : Boolean := False;
      --  lLnked-list allocated port
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Priority level of the channel x HPDMA transfer versus others
      PRIO           : HPDMA_C15CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HPDMA_C15TR1_SDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C15TR1_SBL_1_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_C15TR1_PAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C15TR1_DDW_LOG2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C15TR1_DBL_1_Field is Interfaces.Bit_Types.UInt6;

   --  HPDMA channel 15 transfer register 1
   type HPDMA_C15TR1_Register is record
      --  Binary logarithm of the source data width of a burst in bytes
      SDW_LOG2       : HPDMA_C15TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source incrementing burst
      SINC           : Boolean := False;
      --  Source burst length minus 1, between 0 and 63
      SBL_1          : HPDMA_C15TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Padding/alignment mode
      PAM            : HPDMA_C15TR1_PAM_Field := 16#0#;
      --  Source byte exchange within the unaligned half-word of each source
      --  word
      SBX            : Boolean := False;
      --  Source allocated port
      SAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer from the source
      SSEC           : Boolean := False;
      --  Binary logarithm of the destination data width of a burst, in bytes
      DDW_LOG2       : HPDMA_C15TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination incrementing burst
      DINC           : Boolean := False;
      --  Destination burst length minus 1, between 0 and 63
      DBL_1          : HPDMA_C15TR1_DBL_1_Field := 16#0#;
      --  Destination byte exchange
      DBX            : Boolean := False;
      --  Destination half-word exchange
      DHX            : Boolean := False;
      --  Destination word exchange
      DWX            : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Destination allocated port
      DAP            : Boolean := False;
      --  Security attribute of the HPDMA transfer to the destination
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBX            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBX            at 0 range 26 .. 26;
      DHX            at 0 range 27 .. 27;
      DWX            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C15TR2_REQSEL_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_C15TR2_TRIGM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C15TR2_TRIGSEL_Field is Interfaces.Bit_Types.UInt7;
   subtype HPDMA_C15TR2_TRIGPOL_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C15TR2_TCEM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 15 transfer register 2
   type HPDMA_C15TR2_Register is record
      --  Hardware request selection
      REQSEL         : HPDMA_C15TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software request
      SWREQ          : Boolean := False;
      --  Destination hardware request
      DREQ           : Boolean := False;
      --  Block hardware request
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger mode
      TRIGM          : HPDMA_C15TR2_TRIGM_Field := 16#0#;
      --  Trigger event input selection
      TRIGSEL        : HPDMA_C15TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger event polarity
      TRIGPOL        : HPDMA_C15TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transfer complete event mode
      TCEM           : HPDMA_C15TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15TR2_Register use record
      REQSEL         at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C15BR1_BNDT_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C15BR1_BRC_Field is Interfaces.Bit_Types.UInt11;

   --  HPDMA channel 15 alternate block register 1
   type HPDMA_C15BR1_Register is record
      --  Block number of data bytes to transfer from the source
      BNDT           : HPDMA_C15BR1_BNDT_Field := 16#0#;
      --  Block repeat counter
      BRC            : HPDMA_C15BR1_BRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  source address decrement
      SDEC           : Boolean := False;
      --  destination address decrement
      DDEC           : Boolean := False;
      --  Block repeat source address decrement
      BRSDEC         : Boolean := False;
      --  Block repeat destination address decrement
      BRDDEC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      BRC            at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SDEC           at 0 range 28 .. 28;
      DDEC           at 0 range 29 .. 29;
      BRSDEC         at 0 range 30 .. 30;
      BRDDEC         at 0 range 31 .. 31;
   end record;

   subtype HPDMA_C15TR3_SAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C15TR3_BAM_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_C15TR3_DAO_Field is Interfaces.Bit_Types.UInt13;
   subtype HPDMA_C15TR3_BRAM_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA channel 15 transfer register 3
   type HPDMA_C15TR3_Register is record
      --  Source address offset increment
      SAO            : HPDMA_C15TR3_SAO_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block alignment mode
      BAM            : HPDMA_C15TR3_BAM_Field := 16#0#;
      --  Destination address offset increment
      DAO            : HPDMA_C15TR3_DAO_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Block repeated alignment mode
      BRAM           : HPDMA_C15TR3_BRAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15TR3_Register use record
      SAO            at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BAM            at 0 range 14 .. 15;
      DAO            at 0 range 16 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BRAM           at 0 range 30 .. 31;
   end record;

   subtype HPDMA_C15BR2_BRSAO_Field is Interfaces.Bit_Types.UInt16;
   subtype HPDMA_C15BR2_BRDAO_Field is Interfaces.Bit_Types.UInt16;

   --  HPDMA channel 15 block register 2
   type HPDMA_C15BR2_Register is record
      --  Block repeated source address offset
      BRSAO : HPDMA_C15BR2_BRSAO_Field := 16#0#;
      --  Block repeated destination address offset
      BRDAO : HPDMA_C15BR2_BRDAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15BR2_Register use record
      BRSAO at 0 range 0 .. 15;
      BRDAO at 0 range 16 .. 31;
   end record;

   subtype HPDMA_C15LLR_LA_Field is Interfaces.Bit_Types.UInt14;

   --  HPDMA channel 15 alternate linked-list address register
   type HPDMA_C15LLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pointer (16-bit low-significant address) to the next linked-list data
      --  structure
      LA             : HPDMA_C15LLR_LA_Field := 16#0#;
      --  Update HPDMA_CxLLR register from memory
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_24 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Update HPDMA_CxBR2 from memory
      UB2            : Boolean := False;
      --  Update HPDMA_CxTR3 from memory
      UT3            : Boolean := False;
      --  Update HPDMA_CxDAR register from memory
      UDA            : Boolean := False;
      --  Update HPDMA_CxSAR from memory
      USA            : Boolean := False;
      --  Update HPDMA_CxBR1 from memory
      UB1            : Boolean := False;
      --  Update HPDMA_CxTR2 from memory
      UT2            : Boolean := False;
      --  Update HPDMA_CxTR1 from memory
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_C15LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      UB2            at 0 range 25 .. 25;
      UT3            at 0 range 26 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   --  HPDMA hardware configuration 13 register
   type HPDMA_HWCFGR13_Register is record
      --  Read-only. DMA transfer type for channel 8
      G_PER_CTRL8    : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 9
      G_PER_CTRL9    : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 10
      G_PER_CTRL10   : Boolean;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 11
      G_PER_CTRL11   : Boolean;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 12
      G_PER_CTRL12   : Boolean;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 13
      G_PER_CTRL13   : Boolean;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 14
      G_PER_CTRL14   : Boolean;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 15
      G_PER_CTRL15   : Boolean;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR13_Register use record
      G_PER_CTRL8    at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_PER_CTRL9    at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_PER_CTRL10   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_PER_CTRL11   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_PER_CTRL12   at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_PER_CTRL13   at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_PER_CTRL14   at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_PER_CTRL15   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  HPDMA hardware configuration 12 register
   type HPDMA_HWCFGR12_Register is record
      --  Read-only. DMA transfer type for channel 0
      G_PER_CTRL0    : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 1
      G_PER_CTRL1    : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 2
      G_PER_CTRL2    : Boolean;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 3
      G_PER_CTRL3    : Boolean;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 4
      G_PER_CTRL4    : Boolean;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 5
      G_PER_CTRL5    : Boolean;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 6
      G_PER_CTRL6    : Boolean;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 7
      G_PER_CTRL7    : Boolean;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR12_Register use record
      G_PER_CTRL0    at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_PER_CTRL1    at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_PER_CTRL2    at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_PER_CTRL3    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_PER_CTRL4    at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_PER_CTRL5    at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_PER_CTRL6    at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_PER_CTRL7    at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype HPDMA_HWCFGR11_G_NONSEC_OPTIONREG_Field is
     Interfaces.Bit_Types.UInt6;
   subtype HPDMA_HWCFGR11_G_SEC_OPTIONREG_Field is Interfaces.Bit_Types.UInt6;
   subtype HPDMA_HWCFGR11_G_CID_WIDTH_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR11_G_NUM_RESYNC_FFS_Field is Interfaces.Bit_Types.UInt3;

   --  HPDMA hardware configuration 11 register
   type HPDMA_HWCFGR11_Register is record
      --  Read-only. nonsecure optional register width, in the range 0 to 32
      G_NONSEC_OPTIONREG : HPDMA_HWCFGR11_G_NONSEC_OPTIONREG_Field;
      --  unspecified
      Reserved_6_7       : Interfaces.Bit_Types.UInt2;
      --  Read-only. Secure optional register width, in the range 0 to 32
      G_SEC_OPTIONREG    : HPDMA_HWCFGR11_G_SEC_OPTIONREG_Field;
      --  unspecified
      Reserved_14_15     : Interfaces.Bit_Types.UInt2;
      --  Read-only. CID bus width, in the range 1 to 4
      G_CID_WIDTH        : HPDMA_HWCFGR11_G_CID_WIDTH_Field;
      --  unspecified
      Reserved_19_19     : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of resynchronization flip-flops, in the range 2 to
      --  6
      G_NUM_RESYNC_FFS   : HPDMA_HWCFGR11_G_NUM_RESYNC_FFS_Field;
      --  unspecified
      Reserved_23_23     : Interfaces.Bit_Types.Bit;
      --  Read-only. Master port for the link transfer (DFT purpose only)
      G_TST_LL_IMPORT    : Boolean;
      --  unspecified
      Reserved_25_31     : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR11_Register use record
      G_NONSEC_OPTIONREG at 0 range 0 .. 5;
      Reserved_6_7       at 0 range 6 .. 7;
      G_SEC_OPTIONREG    at 0 range 8 .. 13;
      Reserved_14_15     at 0 range 14 .. 15;
      G_CID_WIDTH        at 0 range 16 .. 18;
      Reserved_19_19     at 0 range 19 .. 19;
      G_NUM_RESYNC_FFS   at 0 range 20 .. 22;
      Reserved_23_23     at 0 range 23 .. 23;
      G_TST_LL_IMPORT    at 0 range 24 .. 24;
      Reserved_25_31     at 0 range 25 .. 31;
   end record;

   subtype HPDMA_HWCFGR10_G_ADDRESSING8_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING9_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING10_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING11_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING12_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING13_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING14_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR10_G_ADDRESSING15_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA hardware configuration 10 register
   type HPDMA_HWCFGR10_Register is record
      --  Read-only. DMA transfer type for channel 8
      G_ADDRESSING8  : HPDMA_HWCFGR10_G_ADDRESSING8_Field;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 9
      G_ADDRESSING9  : HPDMA_HWCFGR10_G_ADDRESSING9_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 10
      G_ADDRESSING10 : HPDMA_HWCFGR10_G_ADDRESSING10_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 11
      G_ADDRESSING11 : HPDMA_HWCFGR10_G_ADDRESSING11_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 12
      G_ADDRESSING12 : HPDMA_HWCFGR10_G_ADDRESSING12_Field;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 13
      G_ADDRESSING13 : HPDMA_HWCFGR10_G_ADDRESSING13_Field;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 14
      G_ADDRESSING14 : HPDMA_HWCFGR10_G_ADDRESSING14_Field;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 15
      G_ADDRESSING15 : HPDMA_HWCFGR10_G_ADDRESSING15_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR10_Register use record
      G_ADDRESSING8  at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      G_ADDRESSING9  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      G_ADDRESSING10 at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      G_ADDRESSING11 at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      G_ADDRESSING12 at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      G_ADDRESSING13 at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      G_ADDRESSING14 at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      G_ADDRESSING15 at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HPDMA_HWCFGR9_G_ADDRESSING0_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING1_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING2_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING3_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING4_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING5_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING6_Field is Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR9_G_ADDRESSING7_Field is Interfaces.Bit_Types.UInt2;

   --  HPDMA hardware configuration 9 register
   type HPDMA_HWCFGR9_Register is record
      --  Read-only. DMA transfer type for channel 0
      G_ADDRESSING0  : HPDMA_HWCFGR9_G_ADDRESSING0_Field;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 1
      G_ADDRESSING1  : HPDMA_HWCFGR9_G_ADDRESSING1_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 2
      G_ADDRESSING2  : HPDMA_HWCFGR9_G_ADDRESSING2_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 3
      G_ADDRESSING3  : HPDMA_HWCFGR9_G_ADDRESSING3_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 4
      G_ADDRESSING4  : HPDMA_HWCFGR9_G_ADDRESSING4_Field;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 5
      G_ADDRESSING5  : HPDMA_HWCFGR9_G_ADDRESSING5_Field;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 6
      G_ADDRESSING6  : HPDMA_HWCFGR9_G_ADDRESSING6_Field;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2;
      --  Read-only. DMA transfer type for channel 7
      G_ADDRESSING7  : HPDMA_HWCFGR9_G_ADDRESSING7_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR9_Register use record
      G_ADDRESSING0  at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      G_ADDRESSING1  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      G_ADDRESSING2  at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      G_ADDRESSING3  at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      G_ADDRESSING4  at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      G_ADDRESSING5  at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      G_ADDRESSING6  at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      G_ADDRESSING7  at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  HPDMA hardware configuration 8 register
   type HPDMA_HWCFGR8_Register is record
      --  Read-only. DMA transfer type for channel 8
      G_LINKED_LIST8  : Boolean;
      --  unspecified
      Reserved_1_3    : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 9
      G_LINKED_LIST9  : Boolean;
      --  unspecified
      Reserved_5_7    : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 10
      G_LINKED_LIST10 : Boolean;
      --  unspecified
      Reserved_9_11   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 11
      G_LINKED_LIST11 : Boolean;
      --  unspecified
      Reserved_13_15  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 12
      G_LINKED_LIST12 : Boolean;
      --  unspecified
      Reserved_17_19  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 13
      G_LINKED_LIST13 : Boolean;
      --  unspecified
      Reserved_21_23  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 14
      G_LINKED_LIST14 : Boolean;
      --  unspecified
      Reserved_25_27  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 15
      G_LINKED_LIST15 : Boolean;
      --  unspecified
      Reserved_29_31  : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR8_Register use record
      G_LINKED_LIST8  at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      G_LINKED_LIST9  at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      G_LINKED_LIST10 at 0 range 8 .. 8;
      Reserved_9_11   at 0 range 9 .. 11;
      G_LINKED_LIST11 at 0 range 12 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      G_LINKED_LIST12 at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      G_LINKED_LIST13 at 0 range 20 .. 20;
      Reserved_21_23  at 0 range 21 .. 23;
      G_LINKED_LIST14 at 0 range 24 .. 24;
      Reserved_25_27  at 0 range 25 .. 27;
      G_LINKED_LIST15 at 0 range 28 .. 28;
      Reserved_29_31  at 0 range 29 .. 31;
   end record;

   --  HPDMA hardware configuration 7 register
   type HPDMA_HWCFGR7_Register is record
      --  Read-only. DMA transfer type for channel 0
      G_LINKED_LIST0 : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 1
      G_LINKED_LIST1 : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 2
      G_LINKED_LIST2 : Boolean;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 3
      G_LINKED_LIST3 : Boolean;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 4
      G_LINKED_LIST4 : Boolean;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 5
      G_LINKED_LIST5 : Boolean;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 6
      G_LINKED_LIST6 : Boolean;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 7
      G_LINKED_LIST7 : Boolean;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR7_Register use record
      G_LINKED_LIST0 at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_LINKED_LIST1 at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_LINKED_LIST2 at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_LINKED_LIST3 at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_LINKED_LIST4 at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_LINKED_LIST5 at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_LINKED_LIST6 at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_LINKED_LIST7 at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  HPDMA hardware configuration 6 register
   type HPDMA_HWCFGR6_Register is record
      --  Read-only. DMA transfer type for channel 8
      G_TRANSFERS8   : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 9
      G_TRANSFERS9   : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 10
      G_TRANSFERS10  : Boolean;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 11
      G_TRANSFERS11  : Boolean;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 12
      G_TRANSFERS12  : Boolean;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 13
      G_TRANSFERS13  : Boolean;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 14
      G_TRANSFERS14  : Boolean;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 15
      G_TRANSFERS15  : Boolean;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR6_Register use record
      G_TRANSFERS8   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_TRANSFERS9   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_TRANSFERS10  at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_TRANSFERS11  at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_TRANSFERS12  at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_TRANSFERS13  at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_TRANSFERS14  at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_TRANSFERS15  at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  HPDMA hardware configuration 5 register
   type HPDMA_HWCFGR5_Register is record
      --  Read-only. DMA transfer type for channel 0
      G_TRANSFERS0   : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 1
      G_TRANSFERS1   : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 2
      G_TRANSFERS2   : Boolean;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 3
      G_TRANSFERS3   : Boolean;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 4
      G_TRANSFERS4   : Boolean;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 5
      G_TRANSFERS5   : Boolean;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 6
      G_TRANSFERS6   : Boolean;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3;
      --  Read-only. DMA transfer type for channel 7
      G_TRANSFERS7   : Boolean;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR5_Register use record
      G_TRANSFERS0   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_TRANSFERS1   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_TRANSFERS2   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_TRANSFERS3   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_TRANSFERS4   at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_TRANSFERS5   at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_TRANSFERS6   at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_TRANSFERS7   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype HPDMA_HWCFGR4_G_FIFO_SIZE8_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE9_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE10_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE11_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE12_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE13_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE14_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR4_G_FIFO_SIZE15_Field is Interfaces.Bit_Types.UInt3;

   --  HPDMA hardware configuration 4 register
   type HPDMA_HWCFGR4_Register is record
      --  Read-only. FIFO size for the channel 8, in the range 0 to 7
      G_FIFO_SIZE8   : HPDMA_HWCFGR4_G_FIFO_SIZE8_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 9, in the range 0 to 7
      G_FIFO_SIZE9   : HPDMA_HWCFGR4_G_FIFO_SIZE9_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 10, in the range 0 to 7
      G_FIFO_SIZE10  : HPDMA_HWCFGR4_G_FIFO_SIZE10_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 11, in the range 0 to 7
      G_FIFO_SIZE11  : HPDMA_HWCFGR4_G_FIFO_SIZE11_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 12, in the range 0 to 7
      G_FIFO_SIZE12  : HPDMA_HWCFGR4_G_FIFO_SIZE12_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 13, in the range 0 to 7
      G_FIFO_SIZE13  : HPDMA_HWCFGR4_G_FIFO_SIZE13_Field;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 14, in the range 0 to 7
      G_FIFO_SIZE14  : HPDMA_HWCFGR4_G_FIFO_SIZE14_Field;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 15, in the range 0 to 7
      G_FIFO_SIZE15  : HPDMA_HWCFGR4_G_FIFO_SIZE15_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR4_Register use record
      G_FIFO_SIZE8   at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      G_FIFO_SIZE9   at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      G_FIFO_SIZE10  at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      G_FIFO_SIZE11  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      G_FIFO_SIZE12  at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      G_FIFO_SIZE13  at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      G_FIFO_SIZE14  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      G_FIFO_SIZE15  at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HPDMA_HWCFGR3_G_FIFO_SIZE0_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE1_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE2_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE3_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE4_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE5_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE6_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR3_G_FIFO_SIZE7_Field is Interfaces.Bit_Types.UInt3;

   --  HPDMA hardware configuration 3 register
   type HPDMA_HWCFGR3_Register is record
      --  Read-only. FIFO size for the channel 0, in the range 0 to 7
      G_FIFO_SIZE0   : HPDMA_HWCFGR3_G_FIFO_SIZE0_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 1, in the range 0 to 7
      G_FIFO_SIZE1   : HPDMA_HWCFGR3_G_FIFO_SIZE1_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 2, in the range 0 to 7
      G_FIFO_SIZE2   : HPDMA_HWCFGR3_G_FIFO_SIZE2_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 3, in the range 0 to 7
      G_FIFO_SIZE3   : HPDMA_HWCFGR3_G_FIFO_SIZE3_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 4, in the range 0 to 7
      G_FIFO_SIZE4   : HPDMA_HWCFGR3_G_FIFO_SIZE4_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 5, in the range 0 to 7
      G_FIFO_SIZE5   : HPDMA_HWCFGR3_G_FIFO_SIZE5_Field;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 6, in the range 0 to 7
      G_FIFO_SIZE6   : HPDMA_HWCFGR3_G_FIFO_SIZE6_Field;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO size for the channel 7, in the range 0 to 7
      G_FIFO_SIZE7   : HPDMA_HWCFGR3_G_FIFO_SIZE7_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR3_Register use record
      G_FIFO_SIZE0   at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      G_FIFO_SIZE1   at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      G_FIFO_SIZE2   at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      G_FIFO_SIZE3   at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      G_FIFO_SIZE4   at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      G_FIFO_SIZE5   at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      G_FIFO_SIZE6   at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      G_FIFO_SIZE7   at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HPDMA_HWCFGR2_G_MAX_REQ_ID_Field is Interfaces.Bit_Types.Byte;
   subtype HPDMA_HWCFGR2_G_MAX_TRIG_ID_Field is Interfaces.Bit_Types.UInt7;

   --  HPDMA hardware configuration 2 register
   type HPDMA_HWCFGR2_Register is record
      --  Read-only. Maximum peripheral request identification (in the range 0
      --  to 255)
      G_MAX_REQ_ID   : HPDMA_HWCFGR2_G_MAX_REQ_ID_Field;
      --  Read-only. Maximum trigger event identification (in the range 0 to
      --  127)
      G_MAX_TRIG_ID  : HPDMA_HWCFGR2_G_MAX_TRIG_ID_Field;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR2_Register use record
      G_MAX_REQ_ID   at 0 range 0 .. 7;
      G_MAX_TRIG_ID  at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPDMA_HWCFGR1_G_MASTER_PORTS_Field is Interfaces.Bit_Types.UInt3;
   subtype HPDMA_HWCFGR1_G_NUM_CHANNELS_Field is Interfaces.Bit_Types.UInt5;
   subtype HPDMA_HWCFGR1_G_MAX_CID_Field is Interfaces.Bit_Types.UInt4;
   subtype HPDMA_HWCFGR1_G_M0_DATA_WIDTH_ENC_Field is
     Interfaces.Bit_Types.UInt2;
   subtype HPDMA_HWCFGR1_G_M1_DATA_WIDTH_ENC_Field is
     Interfaces.Bit_Types.UInt2;

   --  HPDMA hardware configuration 1 register
   type HPDMA_HWCFGR1_Register is record
      --  Read-only. in the range 0 to 5
      G_MASTER_PORTS      : HPDMA_HWCFGR1_G_MASTER_PORTS_Field;
      --  unspecified
      Reserved_3_3        : Interfaces.Bit_Types.Bit;
      --  Read-only. privilege
      G_PRIVILEGE         : Boolean;
      --  unspecified
      Reserved_5_7        : Interfaces.Bit_Types.UInt3;
      --  Read-only. in the range 2 to 16
      G_NUM_CHANNELS      : HPDMA_HWCFGR1_G_NUM_CHANNELS_Field;
      --  unspecified
      Reserved_13_15      : Interfaces.Bit_Types.UInt3;
      --  Read-only. TrustZone
      G_TRUSTZONE         : Boolean;
      --  unspecified
      Reserved_17_19      : Interfaces.Bit_Types.UInt3;
      --  Read-only. in the range 0 to 15
      G_MAX_CID           : HPDMA_HWCFGR1_G_MAX_CID_Field;
      --  Read-only. in the range 0 to 2
      G_M0_DATA_WIDTH_ENC : HPDMA_HWCFGR1_G_M0_DATA_WIDTH_ENC_Field;
      --  unspecified
      Reserved_26_27      : Interfaces.Bit_Types.UInt2;
      --  Read-only. in the range 0 to 2
      G_M1_DATA_WIDTH_ENC : HPDMA_HWCFGR1_G_M1_DATA_WIDTH_ENC_Field;
      --  unspecified
      Reserved_30_31      : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_HWCFGR1_Register use record
      G_MASTER_PORTS      at 0 range 0 .. 2;
      Reserved_3_3        at 0 range 3 .. 3;
      G_PRIVILEGE         at 0 range 4 .. 4;
      Reserved_5_7        at 0 range 5 .. 7;
      G_NUM_CHANNELS      at 0 range 8 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      G_TRUSTZONE         at 0 range 16 .. 16;
      Reserved_17_19      at 0 range 17 .. 19;
      G_MAX_CID           at 0 range 20 .. 23;
      G_M0_DATA_WIDTH_ENC at 0 range 24 .. 25;
      Reserved_26_27      at 0 range 26 .. 27;
      G_M1_DATA_WIDTH_ENC at 0 range 28 .. 29;
      Reserved_30_31      at 0 range 30 .. 31;
   end record;

   subtype HPDMA_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype HPDMA_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  HPDMA version register
   type HPDMA_VERR_Register is record
      --  Read-only. HPDMA minor revision
      MINREV        : HPDMA_VERR_MINREV_Field;
      --  Read-only. HPDMA major revision
      MAJREV        : HPDMA_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPDMA_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HPDMA register block
   type HPDMA_Peripheral is record
      --  HPDMA secure configuration register
      HPDMA_SECCFGR    : aliased HPDMA_SECCFGR_Register;
      --  HPDMA privileged configuration register
      HPDMA_PRIVCFGR   : aliased HPDMA_PRIVCFGR_Register;
      --  HPDMA configuration lock register
      HPDMA_RCFGLOCKR  : aliased HPDMA_RCFGLOCKR_Register;
      --  HPDMA nonsecure masked interrupt status register
      HPDMA_MISR       : aliased HPDMA_MISR_Register;
      --  HPDMA secure masked interrupt status register
      HPDMA_SMISR      : aliased HPDMA_SMISR_Register;
      --  HPDMA channel 0 linked-list base address register
      HPDMA_C0LBAR     : aliased HPDMA_C0LBAR_Register;
      --  HPDMA channel 0 CID register
      HPDMA_C0CIDCFGR  : aliased HPDMA_C0CIDCFGR_Register;
      --  HPDMA channel 0 semaphore control register
      HPDMA_C0SEMCR    : aliased HPDMA_C0SEMCR_Register;
      --  HPDMA channel 0 flag clear register
      HPDMA_C0FCR      : aliased HPDMA_C0FCR_Register;
      --  HPDMA channel 0 status register
      HPDMA_C0SR       : aliased HPDMA_C0SR_Register;
      --  HPDMA channel 0 control register
      HPDMA_C0CR       : aliased HPDMA_C0CR_Register;
      --  HPDMA channel 0 transfer register 1
      HPDMA_C0TR1      : aliased HPDMA_C0TR1_Register;
      --  HPDMA channel 0 transfer register 2
      HPDMA_C0TR2      : aliased HPDMA_C0TR2_Register;
      --  HPDMA channel 0 block register 1
      HPDMA_C0BR1      : aliased HPDMA_C0BR1_Register;
      --  HPDMA channel 0 source address register
      HPDMA_C0SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 0 destination address register
      HPDMA_C0DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 0 linked-list address register
      HPDMA_C0LLR      : aliased HPDMA_C0LLR_Register;
      --  HPDMA channel 1 linked-list base address register
      HPDMA_C1LBAR     : aliased HPDMA_C1LBAR_Register;
      --  HPDMA channel 1 CID register
      HPDMA_C1CIDCFGR  : aliased HPDMA_C1CIDCFGR_Register;
      --  HPDMA channel 1 semaphore control register
      HPDMA_C1SEMCR    : aliased HPDMA_C1SEMCR_Register;
      --  HPDMA channel 1 flag clear register
      HPDMA_C1FCR      : aliased HPDMA_C1FCR_Register;
      --  HPDMA channel 1 status register
      HPDMA_C1SR       : aliased HPDMA_C1SR_Register;
      --  HPDMA channel 1 control register
      HPDMA_C1CR       : aliased HPDMA_C1CR_Register;
      --  HPDMA channel 1 transfer register 1
      HPDMA_C1TR1      : aliased HPDMA_C1TR1_Register;
      --  HPDMA channel 1 transfer register 2
      HPDMA_C1TR2      : aliased HPDMA_C1TR2_Register;
      --  HPDMA channel 1 block register 1
      HPDMA_C1BR1      : aliased HPDMA_C1BR1_Register;
      --  HPDMA channel 1 source address register
      HPDMA_C1SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 1 destination address register
      HPDMA_C1DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 1 linked-list address register
      HPDMA_C1LLR      : aliased HPDMA_C1LLR_Register;
      --  HPDMA channel 2 linked-list base address register
      HPDMA_C2LBAR     : aliased HPDMA_C2LBAR_Register;
      --  HPDMA channel 2 CID register
      HPDMA_C2CIDCFGR  : aliased HPDMA_C2CIDCFGR_Register;
      --  HPDMA channel 2 semaphore control register
      HPDMA_C2SEMCR    : aliased HPDMA_C2SEMCR_Register;
      --  HPDMA channel 2 flag clear register
      HPDMA_C2FCR      : aliased HPDMA_C2FCR_Register;
      --  HPDMA channel 2 status register
      HPDMA_C2SR       : aliased HPDMA_C2SR_Register;
      --  HPDMA channel 2 control register
      HPDMA_C2CR       : aliased HPDMA_C2CR_Register;
      --  HPDMA channel 2 transfer register 1
      HPDMA_C2TR1      : aliased HPDMA_C2TR1_Register;
      --  HPDMA channel 2 transfer register 2
      HPDMA_C2TR2      : aliased HPDMA_C2TR2_Register;
      --  HPDMA channel 2 block register 1
      HPDMA_C2BR1      : aliased HPDMA_C2BR1_Register;
      --  HPDMA channel 2 source address register
      HPDMA_C2SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 2 destination address register
      HPDMA_C2DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 2 linked-list address register
      HPDMA_C2LLR      : aliased HPDMA_C2LLR_Register;
      --  HPDMA channel 3 linked-list base address register
      HPDMA_C3LBAR     : aliased HPDMA_C3LBAR_Register;
      --  HPDMA channel 3 CID register
      HPDMA_C3CIDCFGR  : aliased HPDMA_C3CIDCFGR_Register;
      --  HPDMA channel 3 semaphore control register
      HPDMA_C3SEMCR    : aliased HPDMA_C3SEMCR_Register;
      --  HPDMA channel 3 flag clear register
      HPDMA_C3FCR      : aliased HPDMA_C3FCR_Register;
      --  HPDMA channel 3 status register
      HPDMA_C3SR       : aliased HPDMA_C3SR_Register;
      --  HPDMA channel 3 control register
      HPDMA_C3CR       : aliased HPDMA_C3CR_Register;
      --  HPDMA channel 3 transfer register 1
      HPDMA_C3TR1      : aliased HPDMA_C3TR1_Register;
      --  HPDMA channel 3 transfer register 2
      HPDMA_C3TR2      : aliased HPDMA_C3TR2_Register;
      --  HPDMA channel 3 block register 1
      HPDMA_C3BR1      : aliased HPDMA_C3BR1_Register;
      --  HPDMA channel 3 source address register
      HPDMA_C3SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 3 destination address register
      HPDMA_C3DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 3 linked-list address register
      HPDMA_C3LLR      : aliased HPDMA_C3LLR_Register;
      --  HPDMA channel 4 linked-list base address register
      HPDMA_C4LBAR     : aliased HPDMA_C4LBAR_Register;
      --  HPDMA channel 4 CID register
      HPDMA_C4CIDCFGR  : aliased HPDMA_C4CIDCFGR_Register;
      --  HPDMA channel 4 semaphore control register
      HPDMA_C4SEMCR    : aliased HPDMA_C4SEMCR_Register;
      --  HPDMA channel 4 flag clear register
      HPDMA_C4FCR      : aliased HPDMA_C4FCR_Register;
      --  HPDMA channel 4 status register
      HPDMA_C4SR       : aliased HPDMA_C4SR_Register;
      --  HPDMA channel 4 control register
      HPDMA_C4CR       : aliased HPDMA_C4CR_Register;
      --  HPDMA channel 4 transfer register 1
      HPDMA_C4TR1      : aliased HPDMA_C4TR1_Register;
      --  HPDMA channel 4 transfer register 2
      HPDMA_C4TR2      : aliased HPDMA_C4TR2_Register;
      --  HPDMA channel 4 block register 1
      HPDMA_C4BR1      : aliased HPDMA_C4BR1_Register;
      --  HPDMA channel 4 source address register
      HPDMA_C4SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 4 destination address register
      HPDMA_C4DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 4 linked-list address register
      HPDMA_C4LLR      : aliased HPDMA_C4LLR_Register;
      --  HPDMA channel 5 linked-list base address register
      HPDMA_C5LBAR     : aliased HPDMA_C5LBAR_Register;
      --  HPDMA channel 5 CID register
      HPDMA_C5CIDCFGR  : aliased HPDMA_C5CIDCFGR_Register;
      --  HPDMA channel 5 semaphore control register
      HPDMA_C5SEMCR    : aliased HPDMA_C5SEMCR_Register;
      --  HPDMA channel 5 flag clear register
      HPDMA_C5FCR      : aliased HPDMA_C5FCR_Register;
      --  HPDMA channel 5 status register
      HPDMA_C5SR       : aliased HPDMA_C5SR_Register;
      --  HPDMA channel 5 control register
      HPDMA_C5CR       : aliased HPDMA_C5CR_Register;
      --  HPDMA channel 5 transfer register 1
      HPDMA_C5TR1      : aliased HPDMA_C5TR1_Register;
      --  HPDMA channel 5 transfer register 2
      HPDMA_C5TR2      : aliased HPDMA_C5TR2_Register;
      --  HPDMA channel 5 block register 1
      HPDMA_C5BR1      : aliased HPDMA_C5BR1_Register;
      --  HPDMA channel 5 source address register
      HPDMA_C5SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 5 destination address register
      HPDMA_C5DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 5 linked-list address register
      HPDMA_C5LLR      : aliased HPDMA_C5LLR_Register;
      --  HPDMA channel 6 linked-list base address register
      HPDMA_C6LBAR     : aliased HPDMA_C6LBAR_Register;
      --  HPDMA channel 6 CID register
      HPDMA_C6CIDCFGR  : aliased HPDMA_C6CIDCFGR_Register;
      --  HPDMA channel 6 semaphore control register
      HPDMA_C6SEMCR    : aliased HPDMA_C6SEMCR_Register;
      --  HPDMA channel 6 flag clear register
      HPDMA_C6FCR      : aliased HPDMA_C6FCR_Register;
      --  HPDMA channel 6 status register
      HPDMA_C6SR       : aliased HPDMA_C6SR_Register;
      --  HPDMA channel 6 control register
      HPDMA_C6CR       : aliased HPDMA_C6CR_Register;
      --  HPDMA channel 6 transfer register 1
      HPDMA_C6TR1      : aliased HPDMA_C6TR1_Register;
      --  HPDMA channel 6 transfer register 2
      HPDMA_C6TR2      : aliased HPDMA_C6TR2_Register;
      --  HPDMA channel 6 block register 1
      HPDMA_C6BR1      : aliased HPDMA_C6BR1_Register;
      --  HPDMA channel 6 source address register
      HPDMA_C6SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 6 destination address register
      HPDMA_C6DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 6 linked-list address register
      HPDMA_C6LLR      : aliased HPDMA_C6LLR_Register;
      --  HPDMA channel 7 linked-list base address register
      HPDMA_C7LBAR     : aliased HPDMA_C7LBAR_Register;
      --  HPDMA channel 7 CID register
      HPDMA_C7CIDCFGR  : aliased HPDMA_C7CIDCFGR_Register;
      --  HPDMA channel 7 semaphore control register
      HPDMA_C7SEMCR    : aliased HPDMA_C7SEMCR_Register;
      --  HPDMA channel 7 flag clear register
      HPDMA_C7FCR      : aliased HPDMA_C7FCR_Register;
      --  HPDMA channel 7 status register
      HPDMA_C7SR       : aliased HPDMA_C7SR_Register;
      --  HPDMA channel 7 control register
      HPDMA_C7CR       : aliased HPDMA_C7CR_Register;
      --  HPDMA channel 7 transfer register 1
      HPDMA_C7TR1      : aliased HPDMA_C7TR1_Register;
      --  HPDMA channel 7 transfer register 2
      HPDMA_C7TR2      : aliased HPDMA_C7TR2_Register;
      --  HPDMA channel 7 block register 1
      HPDMA_C7BR1      : aliased HPDMA_C7BR1_Register;
      --  HPDMA channel 7 source address register
      HPDMA_C7SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 7 destination address register
      HPDMA_C7DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 7 linked-list address register
      HPDMA_C7LLR      : aliased HPDMA_C7LLR_Register;
      --  HPDMA channel 8 linked-list base address register
      HPDMA_C8LBAR     : aliased HPDMA_C8LBAR_Register;
      --  HPDMA channel 8 CID register
      HPDMA_C8CIDCFGR  : aliased HPDMA_C8CIDCFGR_Register;
      --  HPDMA channel 8 semaphore control register
      HPDMA_C8SEMCR    : aliased HPDMA_C8SEMCR_Register;
      --  HPDMA channel 8 flag clear register
      HPDMA_C8FCR      : aliased HPDMA_C8FCR_Register;
      --  HPDMA channel 8 status register
      HPDMA_C8SR       : aliased HPDMA_C8SR_Register;
      --  HPDMA channel 8 control register
      HPDMA_C8CR       : aliased HPDMA_C8CR_Register;
      --  HPDMA channel 8 transfer register 1
      HPDMA_C8TR1      : aliased HPDMA_C8TR1_Register;
      --  HPDMA channel 8 transfer register 2
      HPDMA_C8TR2      : aliased HPDMA_C8TR2_Register;
      --  HPDMA channel 8 block register 1
      HPDMA_C8BR1      : aliased HPDMA_C8BR1_Register;
      --  HPDMA channel 8 source address register
      HPDMA_C8SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 8 destination address register
      HPDMA_C8DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 8 linked-list address register
      HPDMA_C8LLR      : aliased HPDMA_C8LLR_Register;
      --  HPDMA channel 9 linked-list base address register
      HPDMA_C9LBAR     : aliased HPDMA_C9LBAR_Register;
      --  HPDMA channel 9 CID register
      HPDMA_C9CIDCFGR  : aliased HPDMA_C9CIDCFGR_Register;
      --  HPDMA channel 9 semaphore control register
      HPDMA_C9SEMCR    : aliased HPDMA_C9SEMCR_Register;
      --  HPDMA channel 9 flag clear register
      HPDMA_C9FCR      : aliased HPDMA_C9FCR_Register;
      --  HPDMA channel 9 status register
      HPDMA_C9SR       : aliased HPDMA_C9SR_Register;
      --  HPDMA channel 9 control register
      HPDMA_C9CR       : aliased HPDMA_C9CR_Register;
      --  HPDMA channel 9 transfer register 1
      HPDMA_C9TR1      : aliased HPDMA_C9TR1_Register;
      --  HPDMA channel 9 transfer register 2
      HPDMA_C9TR2      : aliased HPDMA_C9TR2_Register;
      --  HPDMA channel 9 block register 1
      HPDMA_C9BR1      : aliased HPDMA_C9BR1_Register;
      --  HPDMA channel 9 source address register
      HPDMA_C9SAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 9 destination address register
      HPDMA_C9DAR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 9 linked-list address register
      HPDMA_C9LLR      : aliased HPDMA_C9LLR_Register;
      --  HPDMA channel 10 linked-list base address register
      HPDMA_C10LBAR    : aliased HPDMA_C10LBAR_Register;
      --  HPDMA channel 10 CID register
      HPDMA_C10CIDCFGR : aliased HPDMA_C10CIDCFGR_Register;
      --  HPDMA channel 10 semaphore control register
      HPDMA_C10SEMCR   : aliased HPDMA_C10SEMCR_Register;
      --  HPDMA channel 10 flag clear register
      HPDMA_C10FCR     : aliased HPDMA_C10FCR_Register;
      --  HPDMA channel 10 status register
      HPDMA_C10SR      : aliased HPDMA_C10SR_Register;
      --  HPDMA channel 10 control register
      HPDMA_C10CR      : aliased HPDMA_C10CR_Register;
      --  HPDMA channel 10 transfer register 1
      HPDMA_C10TR1     : aliased HPDMA_C10TR1_Register;
      --  HPDMA channel 10 transfer register 2
      HPDMA_C10TR2     : aliased HPDMA_C10TR2_Register;
      --  HPDMA channel 10 block register 1
      HPDMA_C10BR1     : aliased HPDMA_C10BR1_Register;
      --  HPDMA channel 10 source address register
      HPDMA_C10SAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 10 destination address register
      HPDMA_C10DAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 10 linked-list address register
      HPDMA_C10LLR     : aliased HPDMA_C10LLR_Register;
      --  HPDMA channel 11 linked-list base address register
      HPDMA_C11LBAR    : aliased HPDMA_C11LBAR_Register;
      --  HPDMA channel 11 CID register
      HPDMA_C11CIDCFGR : aliased HPDMA_C11CIDCFGR_Register;
      --  HPDMA channel 11 semaphore control register
      HPDMA_C11SEMCR   : aliased HPDMA_C11SEMCR_Register;
      --  HPDMA channel 11 flag clear register
      HPDMA_C11FCR     : aliased HPDMA_C11FCR_Register;
      --  HPDMA channel 11 status register
      HPDMA_C11SR      : aliased HPDMA_C11SR_Register;
      --  HPDMA channel 11 control register
      HPDMA_C11CR      : aliased HPDMA_C11CR_Register;
      --  HPDMA channel 11 transfer register 1
      HPDMA_C11TR1     : aliased HPDMA_C11TR1_Register;
      --  HPDMA channel 11 transfer register 2
      HPDMA_C11TR2     : aliased HPDMA_C11TR2_Register;
      --  HPDMA channel 11 block register 1
      HPDMA_C11BR1     : aliased HPDMA_C11BR1_Register;
      --  HPDMA channel 11 source address register
      HPDMA_C11SAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 11 destination address register
      HPDMA_C11DAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 11 linked-list address register
      HPDMA_C11LLR     : aliased HPDMA_C11LLR_Register;
      --  HPDMA channel 12 linked-list base address register
      HPDMA_C12LBAR    : aliased HPDMA_C12LBAR_Register;
      --  HPDMA channel 12 CID register
      HPDMA_C12CIDCFGR : aliased HPDMA_C12CIDCFGR_Register;
      --  HPDMA channel 12 semaphore control register
      HPDMA_C12SEMCR   : aliased HPDMA_C12SEMCR_Register;
      --  HPDMA channel 12 flag clear register
      HPDMA_C12FCR     : aliased HPDMA_C12FCR_Register;
      --  HPDMA channel 12 status register
      HPDMA_C12SR      : aliased HPDMA_C12SR_Register;
      --  HPDMA channel 12 control register
      HPDMA_C12CR      : aliased HPDMA_C12CR_Register;
      --  HPDMA channel 12 transfer register 1
      HPDMA_C12TR1     : aliased HPDMA_C12TR1_Register;
      --  HPDMA channel 12 transfer register 2
      HPDMA_C12TR2     : aliased HPDMA_C12TR2_Register;
      --  HPDMA channel 12 alternate block register 1
      HPDMA_C12BR1     : aliased HPDMA_C12BR1_Register;
      --  HPDMA channel 12 source address register
      HPDMA_C12SAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 12 destination address register
      HPDMA_C12DAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 12 transfer register 3
      HPDMA_C12TR3     : aliased HPDMA_C12TR3_Register;
      --  HPDMA channel 12 block register 2
      HPDMA_C12BR2     : aliased HPDMA_C12BR2_Register;
      --  HPDMA channel 12 alternate linked-list address register
      HPDMA_C12LLR     : aliased HPDMA_C12LLR_Register;
      --  HPDMA channel 13 linked-list base address register
      HPDMA_C13LBAR    : aliased HPDMA_C13LBAR_Register;
      --  HPDMA channel 13 CID register
      HPDMA_C13CIDCFGR : aliased HPDMA_C13CIDCFGR_Register;
      --  HPDMA channel 13 semaphore control register
      HPDMA_C13SEMCR   : aliased HPDMA_C13SEMCR_Register;
      --  HPDMA channel 13 flag clear register
      HPDMA_C13FCR     : aliased HPDMA_C13FCR_Register;
      --  HPDMA channel 13 status register
      HPDMA_C13SR      : aliased HPDMA_C13SR_Register;
      --  HPDMA channel 13 control register
      HPDMA_C13CR      : aliased HPDMA_C13CR_Register;
      --  HPDMA channel 13 transfer register 1
      HPDMA_C13TR1     : aliased HPDMA_C13TR1_Register;
      --  HPDMA channel 13 transfer register 2
      HPDMA_C13TR2     : aliased HPDMA_C13TR2_Register;
      --  HPDMA channel 13 alternate block register 1
      HPDMA_C13BR1     : aliased HPDMA_C13BR1_Register;
      --  HPDMA channel 13 source address register
      HPDMA_C13SAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 13 destination address register
      HPDMA_C13DAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 13 transfer register 3
      HPDMA_C13TR3     : aliased HPDMA_C13TR3_Register;
      --  HPDMA channel 13 block register 2
      HPDMA_C13BR2     : aliased HPDMA_C13BR2_Register;
      --  HPDMA channel 13 alternate linked-list address register
      HPDMA_C13LLR     : aliased HPDMA_C13LLR_Register;
      --  HPDMA channel 14 linked-list base address register
      HPDMA_C14LBAR    : aliased HPDMA_C14LBAR_Register;
      --  HPDMA channel 14 CID register
      HPDMA_C14CIDCFGR : aliased HPDMA_C14CIDCFGR_Register;
      --  HPDMA channel 14 semaphore control register
      HPDMA_C14SEMCR   : aliased HPDMA_C14SEMCR_Register;
      --  HPDMA channel 14 flag clear register
      HPDMA_C14FCR     : aliased HPDMA_C14FCR_Register;
      --  HPDMA channel 14 status register
      HPDMA_C14SR      : aliased HPDMA_C14SR_Register;
      --  HPDMA channel 14 control register
      HPDMA_C14CR      : aliased HPDMA_C14CR_Register;
      --  HPDMA channel 14 transfer register 1
      HPDMA_C14TR1     : aliased HPDMA_C14TR1_Register;
      --  HPDMA channel 14 transfer register 2
      HPDMA_C14TR2     : aliased HPDMA_C14TR2_Register;
      --  HPDMA channel 14 alternate block register 1
      HPDMA_C14BR1     : aliased HPDMA_C14BR1_Register;
      --  HPDMA channel 14 source address register
      HPDMA_C14SAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 14 destination address register
      HPDMA_C14DAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 14 transfer register 3
      HPDMA_C14TR3     : aliased HPDMA_C14TR3_Register;
      --  HPDMA channel 14 block register 2
      HPDMA_C14BR2     : aliased HPDMA_C14BR2_Register;
      --  HPDMA channel 14 alternate linked-list address register
      HPDMA_C14LLR     : aliased HPDMA_C14LLR_Register;
      --  HPDMA channel 15 linked-list base address register
      HPDMA_C15LBAR    : aliased HPDMA_C15LBAR_Register;
      --  HPDMA channel 15 CID register
      HPDMA_C15CIDCFGR : aliased HPDMA_C15CIDCFGR_Register;
      --  HPDMA channel 15 semaphore control register
      HPDMA_C15SEMCR   : aliased HPDMA_C15SEMCR_Register;
      --  HPDMA channel 15 flag clear register
      HPDMA_C15FCR     : aliased HPDMA_C15FCR_Register;
      --  HPDMA channel 15 status register
      HPDMA_C15SR      : aliased HPDMA_C15SR_Register;
      --  HPDMA channel 15 control register
      HPDMA_C15CR      : aliased HPDMA_C15CR_Register;
      --  HPDMA channel 15 transfer register 1
      HPDMA_C15TR1     : aliased HPDMA_C15TR1_Register;
      --  HPDMA channel 15 transfer register 2
      HPDMA_C15TR2     : aliased HPDMA_C15TR2_Register;
      --  HPDMA channel 15 alternate block register 1
      HPDMA_C15BR1     : aliased HPDMA_C15BR1_Register;
      --  HPDMA channel 15 source address register
      HPDMA_C15SAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 15 destination address register
      HPDMA_C15DAR     : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA channel 15 transfer register 3
      HPDMA_C15TR3     : aliased HPDMA_C15TR3_Register;
      --  HPDMA channel 15 block register 2
      HPDMA_C15BR2     : aliased HPDMA_C15BR2_Register;
      --  HPDMA channel 15 alternate linked-list address register
      HPDMA_C15LLR     : aliased HPDMA_C15LLR_Register;
      --  HPDMA hardware configuration 13 register
      HPDMA_HWCFGR13   : aliased HPDMA_HWCFGR13_Register;
      --  HPDMA hardware configuration 12 register
      HPDMA_HWCFGR12   : aliased HPDMA_HWCFGR12_Register;
      --  HPDMA hardware configuration 11 register
      HPDMA_HWCFGR11   : aliased HPDMA_HWCFGR11_Register;
      --  HPDMA hardware configuration 10 register
      HPDMA_HWCFGR10   : aliased HPDMA_HWCFGR10_Register;
      --  HPDMA hardware configuration 9 register
      HPDMA_HWCFGR9    : aliased HPDMA_HWCFGR9_Register;
      --  HPDMA hardware configuration 8 register
      HPDMA_HWCFGR8    : aliased HPDMA_HWCFGR8_Register;
      --  HPDMA hardware configuration 7 register
      HPDMA_HWCFGR7    : aliased HPDMA_HWCFGR7_Register;
      --  HPDMA hardware configuration 6 register
      HPDMA_HWCFGR6    : aliased HPDMA_HWCFGR6_Register;
      --  HPDMA hardware configuration 5 register
      HPDMA_HWCFGR5    : aliased HPDMA_HWCFGR5_Register;
      --  HPDMA hardware configuration 4 register
      HPDMA_HWCFGR4    : aliased HPDMA_HWCFGR4_Register;
      --  HPDMA hardware configuration 3 register
      HPDMA_HWCFGR3    : aliased HPDMA_HWCFGR3_Register;
      --  HPDMA hardware configuration 2 register
      HPDMA_HWCFGR2    : aliased HPDMA_HWCFGR2_Register;
      --  HPDMA hardware configuration 1 register
      HPDMA_HWCFGR1    : aliased HPDMA_HWCFGR1_Register;
      --  HPDMA version register
      HPDMA_VERR       : aliased HPDMA_VERR_Register;
      --  HPDMA identification register
      HPDMA_IPIDR      : aliased Interfaces.Bit_Types.UInt32;
      --  HPDMA size identification register
      HPDMA_SIDR       : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for HPDMA_Peripheral use record
      HPDMA_SECCFGR    at 16#0# range 0 .. 31;
      HPDMA_PRIVCFGR   at 16#4# range 0 .. 31;
      HPDMA_RCFGLOCKR  at 16#8# range 0 .. 31;
      HPDMA_MISR       at 16#C# range 0 .. 31;
      HPDMA_SMISR      at 16#10# range 0 .. 31;
      HPDMA_C0LBAR     at 16#50# range 0 .. 31;
      HPDMA_C0CIDCFGR  at 16#54# range 0 .. 31;
      HPDMA_C0SEMCR    at 16#58# range 0 .. 31;
      HPDMA_C0FCR      at 16#5C# range 0 .. 31;
      HPDMA_C0SR       at 16#60# range 0 .. 31;
      HPDMA_C0CR       at 16#64# range 0 .. 31;
      HPDMA_C0TR1      at 16#90# range 0 .. 31;
      HPDMA_C0TR2      at 16#94# range 0 .. 31;
      HPDMA_C0BR1      at 16#98# range 0 .. 31;
      HPDMA_C0SAR      at 16#9C# range 0 .. 31;
      HPDMA_C0DAR      at 16#A0# range 0 .. 31;
      HPDMA_C0LLR      at 16#CC# range 0 .. 31;
      HPDMA_C1LBAR     at 16#D0# range 0 .. 31;
      HPDMA_C1CIDCFGR  at 16#D4# range 0 .. 31;
      HPDMA_C1SEMCR    at 16#D8# range 0 .. 31;
      HPDMA_C1FCR      at 16#DC# range 0 .. 31;
      HPDMA_C1SR       at 16#E0# range 0 .. 31;
      HPDMA_C1CR       at 16#E4# range 0 .. 31;
      HPDMA_C1TR1      at 16#110# range 0 .. 31;
      HPDMA_C1TR2      at 16#114# range 0 .. 31;
      HPDMA_C1BR1      at 16#118# range 0 .. 31;
      HPDMA_C1SAR      at 16#11C# range 0 .. 31;
      HPDMA_C1DAR      at 16#120# range 0 .. 31;
      HPDMA_C1LLR      at 16#14C# range 0 .. 31;
      HPDMA_C2LBAR     at 16#150# range 0 .. 31;
      HPDMA_C2CIDCFGR  at 16#154# range 0 .. 31;
      HPDMA_C2SEMCR    at 16#158# range 0 .. 31;
      HPDMA_C2FCR      at 16#15C# range 0 .. 31;
      HPDMA_C2SR       at 16#160# range 0 .. 31;
      HPDMA_C2CR       at 16#164# range 0 .. 31;
      HPDMA_C2TR1      at 16#190# range 0 .. 31;
      HPDMA_C2TR2      at 16#194# range 0 .. 31;
      HPDMA_C2BR1      at 16#198# range 0 .. 31;
      HPDMA_C2SAR      at 16#19C# range 0 .. 31;
      HPDMA_C2DAR      at 16#1A0# range 0 .. 31;
      HPDMA_C2LLR      at 16#1CC# range 0 .. 31;
      HPDMA_C3LBAR     at 16#1D0# range 0 .. 31;
      HPDMA_C3CIDCFGR  at 16#1D4# range 0 .. 31;
      HPDMA_C3SEMCR    at 16#1D8# range 0 .. 31;
      HPDMA_C3FCR      at 16#1DC# range 0 .. 31;
      HPDMA_C3SR       at 16#1E0# range 0 .. 31;
      HPDMA_C3CR       at 16#1E4# range 0 .. 31;
      HPDMA_C3TR1      at 16#210# range 0 .. 31;
      HPDMA_C3TR2      at 16#214# range 0 .. 31;
      HPDMA_C3BR1      at 16#218# range 0 .. 31;
      HPDMA_C3SAR      at 16#21C# range 0 .. 31;
      HPDMA_C3DAR      at 16#220# range 0 .. 31;
      HPDMA_C3LLR      at 16#24C# range 0 .. 31;
      HPDMA_C4LBAR     at 16#250# range 0 .. 31;
      HPDMA_C4CIDCFGR  at 16#254# range 0 .. 31;
      HPDMA_C4SEMCR    at 16#258# range 0 .. 31;
      HPDMA_C4FCR      at 16#25C# range 0 .. 31;
      HPDMA_C4SR       at 16#260# range 0 .. 31;
      HPDMA_C4CR       at 16#264# range 0 .. 31;
      HPDMA_C4TR1      at 16#290# range 0 .. 31;
      HPDMA_C4TR2      at 16#294# range 0 .. 31;
      HPDMA_C4BR1      at 16#298# range 0 .. 31;
      HPDMA_C4SAR      at 16#29C# range 0 .. 31;
      HPDMA_C4DAR      at 16#2A0# range 0 .. 31;
      HPDMA_C4LLR      at 16#2CC# range 0 .. 31;
      HPDMA_C5LBAR     at 16#2D0# range 0 .. 31;
      HPDMA_C5CIDCFGR  at 16#2D4# range 0 .. 31;
      HPDMA_C5SEMCR    at 16#2D8# range 0 .. 31;
      HPDMA_C5FCR      at 16#2DC# range 0 .. 31;
      HPDMA_C5SR       at 16#2E0# range 0 .. 31;
      HPDMA_C5CR       at 16#2E4# range 0 .. 31;
      HPDMA_C5TR1      at 16#310# range 0 .. 31;
      HPDMA_C5TR2      at 16#314# range 0 .. 31;
      HPDMA_C5BR1      at 16#318# range 0 .. 31;
      HPDMA_C5SAR      at 16#31C# range 0 .. 31;
      HPDMA_C5DAR      at 16#320# range 0 .. 31;
      HPDMA_C5LLR      at 16#34C# range 0 .. 31;
      HPDMA_C6LBAR     at 16#350# range 0 .. 31;
      HPDMA_C6CIDCFGR  at 16#354# range 0 .. 31;
      HPDMA_C6SEMCR    at 16#358# range 0 .. 31;
      HPDMA_C6FCR      at 16#35C# range 0 .. 31;
      HPDMA_C6SR       at 16#360# range 0 .. 31;
      HPDMA_C6CR       at 16#364# range 0 .. 31;
      HPDMA_C6TR1      at 16#390# range 0 .. 31;
      HPDMA_C6TR2      at 16#394# range 0 .. 31;
      HPDMA_C6BR1      at 16#398# range 0 .. 31;
      HPDMA_C6SAR      at 16#39C# range 0 .. 31;
      HPDMA_C6DAR      at 16#3A0# range 0 .. 31;
      HPDMA_C6LLR      at 16#3CC# range 0 .. 31;
      HPDMA_C7LBAR     at 16#3D0# range 0 .. 31;
      HPDMA_C7CIDCFGR  at 16#3D4# range 0 .. 31;
      HPDMA_C7SEMCR    at 16#3D8# range 0 .. 31;
      HPDMA_C7FCR      at 16#3DC# range 0 .. 31;
      HPDMA_C7SR       at 16#3E0# range 0 .. 31;
      HPDMA_C7CR       at 16#3E4# range 0 .. 31;
      HPDMA_C7TR1      at 16#410# range 0 .. 31;
      HPDMA_C7TR2      at 16#414# range 0 .. 31;
      HPDMA_C7BR1      at 16#418# range 0 .. 31;
      HPDMA_C7SAR      at 16#41C# range 0 .. 31;
      HPDMA_C7DAR      at 16#420# range 0 .. 31;
      HPDMA_C7LLR      at 16#44C# range 0 .. 31;
      HPDMA_C8LBAR     at 16#450# range 0 .. 31;
      HPDMA_C8CIDCFGR  at 16#454# range 0 .. 31;
      HPDMA_C8SEMCR    at 16#458# range 0 .. 31;
      HPDMA_C8FCR      at 16#45C# range 0 .. 31;
      HPDMA_C8SR       at 16#460# range 0 .. 31;
      HPDMA_C8CR       at 16#464# range 0 .. 31;
      HPDMA_C8TR1      at 16#490# range 0 .. 31;
      HPDMA_C8TR2      at 16#494# range 0 .. 31;
      HPDMA_C8BR1      at 16#498# range 0 .. 31;
      HPDMA_C8SAR      at 16#49C# range 0 .. 31;
      HPDMA_C8DAR      at 16#4A0# range 0 .. 31;
      HPDMA_C8LLR      at 16#4CC# range 0 .. 31;
      HPDMA_C9LBAR     at 16#4D0# range 0 .. 31;
      HPDMA_C9CIDCFGR  at 16#4D4# range 0 .. 31;
      HPDMA_C9SEMCR    at 16#4D8# range 0 .. 31;
      HPDMA_C9FCR      at 16#4DC# range 0 .. 31;
      HPDMA_C9SR       at 16#4E0# range 0 .. 31;
      HPDMA_C9CR       at 16#4E4# range 0 .. 31;
      HPDMA_C9TR1      at 16#510# range 0 .. 31;
      HPDMA_C9TR2      at 16#514# range 0 .. 31;
      HPDMA_C9BR1      at 16#518# range 0 .. 31;
      HPDMA_C9SAR      at 16#51C# range 0 .. 31;
      HPDMA_C9DAR      at 16#520# range 0 .. 31;
      HPDMA_C9LLR      at 16#54C# range 0 .. 31;
      HPDMA_C10LBAR    at 16#550# range 0 .. 31;
      HPDMA_C10CIDCFGR at 16#554# range 0 .. 31;
      HPDMA_C10SEMCR   at 16#558# range 0 .. 31;
      HPDMA_C10FCR     at 16#55C# range 0 .. 31;
      HPDMA_C10SR      at 16#560# range 0 .. 31;
      HPDMA_C10CR      at 16#564# range 0 .. 31;
      HPDMA_C10TR1     at 16#590# range 0 .. 31;
      HPDMA_C10TR2     at 16#594# range 0 .. 31;
      HPDMA_C10BR1     at 16#598# range 0 .. 31;
      HPDMA_C10SAR     at 16#59C# range 0 .. 31;
      HPDMA_C10DAR     at 16#5A0# range 0 .. 31;
      HPDMA_C10LLR     at 16#5CC# range 0 .. 31;
      HPDMA_C11LBAR    at 16#5D0# range 0 .. 31;
      HPDMA_C11CIDCFGR at 16#5D4# range 0 .. 31;
      HPDMA_C11SEMCR   at 16#5D8# range 0 .. 31;
      HPDMA_C11FCR     at 16#5DC# range 0 .. 31;
      HPDMA_C11SR      at 16#5E0# range 0 .. 31;
      HPDMA_C11CR      at 16#5E4# range 0 .. 31;
      HPDMA_C11TR1     at 16#610# range 0 .. 31;
      HPDMA_C11TR2     at 16#614# range 0 .. 31;
      HPDMA_C11BR1     at 16#618# range 0 .. 31;
      HPDMA_C11SAR     at 16#61C# range 0 .. 31;
      HPDMA_C11DAR     at 16#620# range 0 .. 31;
      HPDMA_C11LLR     at 16#64C# range 0 .. 31;
      HPDMA_C12LBAR    at 16#650# range 0 .. 31;
      HPDMA_C12CIDCFGR at 16#654# range 0 .. 31;
      HPDMA_C12SEMCR   at 16#658# range 0 .. 31;
      HPDMA_C12FCR     at 16#65C# range 0 .. 31;
      HPDMA_C12SR      at 16#660# range 0 .. 31;
      HPDMA_C12CR      at 16#664# range 0 .. 31;
      HPDMA_C12TR1     at 16#690# range 0 .. 31;
      HPDMA_C12TR2     at 16#694# range 0 .. 31;
      HPDMA_C12BR1     at 16#698# range 0 .. 31;
      HPDMA_C12SAR     at 16#69C# range 0 .. 31;
      HPDMA_C12DAR     at 16#6A0# range 0 .. 31;
      HPDMA_C12TR3     at 16#6A4# range 0 .. 31;
      HPDMA_C12BR2     at 16#6A8# range 0 .. 31;
      HPDMA_C12LLR     at 16#6CC# range 0 .. 31;
      HPDMA_C13LBAR    at 16#6D0# range 0 .. 31;
      HPDMA_C13CIDCFGR at 16#6D4# range 0 .. 31;
      HPDMA_C13SEMCR   at 16#6D8# range 0 .. 31;
      HPDMA_C13FCR     at 16#6DC# range 0 .. 31;
      HPDMA_C13SR      at 16#6E0# range 0 .. 31;
      HPDMA_C13CR      at 16#6E4# range 0 .. 31;
      HPDMA_C13TR1     at 16#710# range 0 .. 31;
      HPDMA_C13TR2     at 16#714# range 0 .. 31;
      HPDMA_C13BR1     at 16#718# range 0 .. 31;
      HPDMA_C13SAR     at 16#71C# range 0 .. 31;
      HPDMA_C13DAR     at 16#720# range 0 .. 31;
      HPDMA_C13TR3     at 16#724# range 0 .. 31;
      HPDMA_C13BR2     at 16#728# range 0 .. 31;
      HPDMA_C13LLR     at 16#74C# range 0 .. 31;
      HPDMA_C14LBAR    at 16#750# range 0 .. 31;
      HPDMA_C14CIDCFGR at 16#754# range 0 .. 31;
      HPDMA_C14SEMCR   at 16#758# range 0 .. 31;
      HPDMA_C14FCR     at 16#75C# range 0 .. 31;
      HPDMA_C14SR      at 16#760# range 0 .. 31;
      HPDMA_C14CR      at 16#764# range 0 .. 31;
      HPDMA_C14TR1     at 16#790# range 0 .. 31;
      HPDMA_C14TR2     at 16#794# range 0 .. 31;
      HPDMA_C14BR1     at 16#798# range 0 .. 31;
      HPDMA_C14SAR     at 16#79C# range 0 .. 31;
      HPDMA_C14DAR     at 16#7A0# range 0 .. 31;
      HPDMA_C14TR3     at 16#7A4# range 0 .. 31;
      HPDMA_C14BR2     at 16#7A8# range 0 .. 31;
      HPDMA_C14LLR     at 16#7CC# range 0 .. 31;
      HPDMA_C15LBAR    at 16#7D0# range 0 .. 31;
      HPDMA_C15CIDCFGR at 16#7D4# range 0 .. 31;
      HPDMA_C15SEMCR   at 16#7D8# range 0 .. 31;
      HPDMA_C15FCR     at 16#7DC# range 0 .. 31;
      HPDMA_C15SR      at 16#7E0# range 0 .. 31;
      HPDMA_C15CR      at 16#7E4# range 0 .. 31;
      HPDMA_C15TR1     at 16#810# range 0 .. 31;
      HPDMA_C15TR2     at 16#814# range 0 .. 31;
      HPDMA_C15BR1     at 16#818# range 0 .. 31;
      HPDMA_C15SAR     at 16#81C# range 0 .. 31;
      HPDMA_C15DAR     at 16#820# range 0 .. 31;
      HPDMA_C15TR3     at 16#824# range 0 .. 31;
      HPDMA_C15BR2     at 16#828# range 0 .. 31;
      HPDMA_C15LLR     at 16#84C# range 0 .. 31;
      HPDMA_HWCFGR13   at 16#FC0# range 0 .. 31;
      HPDMA_HWCFGR12   at 16#FC4# range 0 .. 31;
      HPDMA_HWCFGR11   at 16#FC8# range 0 .. 31;
      HPDMA_HWCFGR10   at 16#FCC# range 0 .. 31;
      HPDMA_HWCFGR9    at 16#FD0# range 0 .. 31;
      HPDMA_HWCFGR8    at 16#FD4# range 0 .. 31;
      HPDMA_HWCFGR7    at 16#FD8# range 0 .. 31;
      HPDMA_HWCFGR6    at 16#FDC# range 0 .. 31;
      HPDMA_HWCFGR5    at 16#FE0# range 0 .. 31;
      HPDMA_HWCFGR4    at 16#FE4# range 0 .. 31;
      HPDMA_HWCFGR3    at 16#FE8# range 0 .. 31;
      HPDMA_HWCFGR2    at 16#FEC# range 0 .. 31;
      HPDMA_HWCFGR1    at 16#FF0# range 0 .. 31;
      HPDMA_VERR       at 16#FF4# range 0 .. 31;
      HPDMA_IPIDR      at 16#FF8# range 0 .. 31;
      HPDMA_SIDR       at 16#FFC# range 0 .. 31;
   end record;

   --  HPDMA register block
   HPDMA_Periph : aliased HPDMA_Peripheral
     with Import, Address => HPDMA_Base;

   --  HPDMA register block
   HPDMA1_S_Periph : aliased HPDMA_Peripheral
     with Import, Address => HPDMA1_S_Base;

   --  HPDMA register block
   HPDMA2_Periph : aliased HPDMA_Peripheral
     with Import, Address => HPDMA2_Base;

   --  HPDMA register block
   HPDMA2_S_Periph : aliased HPDMA_Peripheral
     with Import, Address => HPDMA2_S_Base;

   --  HPDMA register block
   HPDMA3_Periph : aliased HPDMA_Peripheral
     with Import, Address => HPDMA3_Base;

   --  HPDMA register block
   HPDMA3_S_Periph : aliased HPDMA_Peripheral
     with Import, Address => HPDMA3_S_Base;

end Interfaces.STM32.HPDMA;
