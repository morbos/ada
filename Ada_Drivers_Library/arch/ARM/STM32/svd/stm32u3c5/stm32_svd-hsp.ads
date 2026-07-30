--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.HSP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype HSP_CR_CDRLCK_Field is HAL.UInt2;
   subtype HSP_CR_BARB_Field is HAL.UInt2;
   subtype HSP_CR_BSTAT_Field is HAL.UInt4;

   --  HSP control register
   type HSP_CR_Register is record
      --  Boot enable control
      BOOTEN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  HSP_CTRL clock gating disable
      CTRLCGDIS      : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  MMC clock gating disable
      MMCCGDIS       : Boolean := False;
      --  SPE clock gating disable
      SPECGDIS       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Direct command event enable
      DCMDEVEN       : Boolean := False;
      --  CRAM and DRAM lock access control
      CDRLCK         : HSP_CR_CDRLCK_Field := 16#0#;
      --  Register write lock access control
      REGLCK         : Boolean := False;
      --  Reset request
      RSTREQ         : Boolean := False;
      --  Read-only. Reset request accepted
      RSTOK          : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  BRAM arbitration
      BARB           : HSP_CR_BARB_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Read-only. Boot status
      BSTAT          : HSP_CR_BSTAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_CR_Register use record
      BOOTEN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CTRLCGDIS      at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      MMCCGDIS       at 0 range 6 .. 6;
      SPECGDIS       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      DCMDEVEN       at 0 range 12 .. 12;
      CDRLCK         at 0 range 13 .. 14;
      REGLCK         at 0 range 15 .. 15;
      RSTREQ         at 0 range 16 .. 16;
      RSTOK          at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      BARB           at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      BSTAT          at 0 range 28 .. 31;
   end record;

   --  HSP CPU-to-HSP semaphore register
   type HSP_C2HSEMR_Register is record
      --  CPU to HSP semaphore
      C2HSEM        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_C2HSEMR_Register use record
      C2HSEM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HSP HSP-to-CPU semaphore register
   type HSP_H2CSEMR_Register is record
      --  HSP to CPU semaphore
      H2CSEM        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_H2CSEMR_Register use record
      H2CSEM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HSP DCMD command status register
   type HSP_DCMDSR_Register is record
      --  Read-only. Direct command busy flag
      DCBSY         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_DCMDSR_Register use record
      DCBSY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HSP_DCMDPTSR_PTRF array
   type HSP_DCMDPTSR_PTRF_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HSP_DCMDPTSR_PTRF
   type HSP_DCMDPTSR_PTRF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PTRF as a value
            Val : HAL.UInt3;
         when True =>
            --  PTRF as an array
            Arr : HSP_DCMDPTSR_PTRF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HSP_DCMDPTSR_PTRF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HSP DCMD pointer status register
   type HSP_DCMDPTSR_Register is record
      --  Read-only. Address pointer 0 flag
      PTRF           : HSP_DCMDPTSR_PTRF_Field;
      --  unspecified
      Reserved_3_14  : HAL.UInt12;
      --  Read-only. Read ongoing indicator
      RDOG           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_DCMDPTSR_Register use record
      PTRF           at 0 range 0 .. 2;
      Reserved_3_14  at 0 range 3 .. 14;
      RDOG           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSP_DCMDIDR_CMDID_Field is HAL.UInt16;

   --  HSP DCMD command ID register
   type HSP_DCMDIDR_Register is record
      --  Command ID
      CMDID          : HSP_DCMDIDR_CMDID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_DCMDIDR_Register use record
      CMDID          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSP_EVTENR_EVTEN_Field is HAL.UInt22;

   --  HSP event enable register
   type HSP_EVTENR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Events enable
      EVTEN          : HSP_EVTENR_EVTEN_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVTENR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EVTEN          at 0 range 1 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype HSP_ESYNCENR_EVTSYNCEN_Field is HAL.UInt22;

   --  HSP event synchronization enable register
   type HSP_ESYNCENR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Event synchronization enable
      EVTSYNCEN      : HSP_ESYNCENR_EVTSYNCEN_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  CPU dedicated event synchronization enable
      CDEGSYNCEN     : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ESYNCENR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EVTSYNCEN      at 0 range 1 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      CDEGSYNCEN     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype HSP_ESYNC0SRCR_EV1SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV2SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV3SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV4SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV5SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV6SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV7SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC0SRCR_EV8SSRC_Field is HAL.UInt2;

   --  HSP event synchronization source register 0
   type HSP_ESYNC0SRCR_Register is record
      --  Event 1 synchronization source
      EV1SSRC        : HSP_ESYNC0SRCR_EV1SSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Event 2 synchronization source
      EV2SSRC        : HSP_ESYNC0SRCR_EV2SSRC_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Event 3 synchronization source
      EV3SSRC        : HSP_ESYNC0SRCR_EV3SSRC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Event 4 synchronization source
      EV4SSRC        : HSP_ESYNC0SRCR_EV4SSRC_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Event 5 synchronization source
      EV5SSRC        : HSP_ESYNC0SRCR_EV5SSRC_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Event 6 synchronization source
      EV6SSRC        : HSP_ESYNC0SRCR_EV6SSRC_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Event 7 synchronization source
      EV7SSRC        : HSP_ESYNC0SRCR_EV7SSRC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Event 8 synchronization source
      EV8SSRC        : HSP_ESYNC0SRCR_EV8SSRC_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ESYNC0SRCR_Register use record
      EV1SSRC        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EV2SSRC        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EV3SSRC        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      EV4SSRC        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EV5SSRC        at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      EV6SSRC        at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EV7SSRC        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      EV8SSRC        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HSP_ESYNC1SRCR_EV9SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV10SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV11SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV12SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV13SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV14SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV15SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC1SRCR_EV16SSRC_Field is HAL.UInt2;

   --  HSP event synchronization source register 1
   type HSP_ESYNC1SRCR_Register is record
      --  Event 9 synchronization source
      EV9SSRC        : HSP_ESYNC1SRCR_EV9SSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Event 10 synchronization source
      EV10SSRC       : HSP_ESYNC1SRCR_EV10SSRC_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Event 11 synchronization source
      EV11SSRC       : HSP_ESYNC1SRCR_EV11SSRC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Event 12 synchronization source
      EV12SSRC       : HSP_ESYNC1SRCR_EV12SSRC_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Event 13 synchronization source
      EV13SSRC       : HSP_ESYNC1SRCR_EV13SSRC_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Event 14 synchronization source
      EV14SSRC       : HSP_ESYNC1SRCR_EV14SSRC_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Event 15 synchronization source
      EV15SSRC       : HSP_ESYNC1SRCR_EV15SSRC_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Event 16 synchronization source
      EV16SSRC       : HSP_ESYNC1SRCR_EV16SSRC_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ESYNC1SRCR_Register use record
      EV9SSRC        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EV10SSRC       at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EV11SSRC       at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      EV12SSRC       at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EV13SSRC       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      EV14SSRC       at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EV15SSRC       at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      EV16SSRC       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HSP_ESYNC2SRCR_EV17SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC2SRCR_EV18SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC2SRCR_EV19SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC2SRCR_EV20SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC2SRCR_EV21SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC2SRCR_EV22SSRC_Field is HAL.UInt2;
   subtype HSP_ESYNC2SRCR_CDEGSSRC_Field is HAL.UInt2;

   --  HSP event synchronization source register 2
   type HSP_ESYNC2SRCR_Register is record
      --  Event 17 synchronization source
      EV17SSRC       : HSP_ESYNC2SRCR_EV17SSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Event 18 synchronization source
      EV18SSRC       : HSP_ESYNC2SRCR_EV18SSRC_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Event 19 synchronization source
      EV19SSRC       : HSP_ESYNC2SRCR_EV19SSRC_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Event 20 synchronization source
      EV20SSRC       : HSP_ESYNC2SRCR_EV20SSRC_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Event 21 synchronization source
      EV21SSRC       : HSP_ESYNC2SRCR_EV21SSRC_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Event 22 synchronization source
      EV22SSRC       : HSP_ESYNC2SRCR_EV22SSRC_Field := 16#0#;
      --  unspecified
      Reserved_22_29 : HAL.UInt8 := 16#0#;
      --  CPU dedicated event synchronization source
      CDEGSSRC       : HSP_ESYNC2SRCR_CDEGSSRC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ESYNC2SRCR_Register use record
      EV17SSRC       at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EV18SSRC       at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EV19SSRC       at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      EV20SSRC       at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EV21SSRC       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      EV22SSRC       at 0 range 20 .. 21;
      Reserved_22_29 at 0 range 22 .. 29;
      CDEGSSRC       at 0 range 30 .. 31;
   end record;

   subtype HSP_PEVTLR_EVTL_Field is HAL.UInt28;

   --  HSP pending event level register
   type HSP_PEVTLR_Register is record
      --  Read-only. Event level
      EVTL           : HSP_PEVTLR_EVTL_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_PEVTLR_Register use record
      EVTL           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  HSP interface enable register
   type HSP_ITFENR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  STREAM enable
      STREAMEN       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  TRGO enable bit
      TRGOEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  TRGINx enable bit
      TRGI0EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI1EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI2EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI3EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI4EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI5EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI6EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI7EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI8EN        : Boolean := False;
      --  TRGINx enable bit
      TRGI9EN        : Boolean := False;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Read-Write-once. Direct command interface disable bit
      DCMDDIS        : Boolean := False;
      --  CSEG interface enable bit
      CSEGEN         : Boolean := False;
      --  CDEG interface enable bit
      CDEGEN         : Boolean := False;
      --  Read-only. HSEG interface enable bit
      HSEGEN         : Boolean := False;
      --  Read-only. HDEG interface enable bit
      HDEGEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ITFENR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      STREAMEN       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGOEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TRGI0EN        at 0 range 16 .. 16;
      TRGI1EN        at 0 range 17 .. 17;
      TRGI2EN        at 0 range 18 .. 18;
      TRGI3EN        at 0 range 19 .. 19;
      TRGI4EN        at 0 range 20 .. 20;
      TRGI5EN        at 0 range 21 .. 21;
      TRGI6EN        at 0 range 22 .. 22;
      TRGI7EN        at 0 range 23 .. 23;
      TRGI8EN        at 0 range 24 .. 24;
      TRGI9EN        at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      DCMDDIS        at 0 range 27 .. 27;
      CSEGEN         at 0 range 28 .. 28;
      CDEGEN         at 0 range 29 .. 29;
      HSEGEN         at 0 range 30 .. 30;
      HDEGEN         at 0 range 31 .. 31;
   end record;

   subtype HSP_EVTSRC0R_EVT1SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT2SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT3SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT4SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT5SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT6SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT7SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC0R_EVT8SRC_Field is HAL.UInt3;

   --  HSP event source register 0
   type HSP_EVTSRC0R_Register is record
      --  Event source selection for priority encoder input 1
      EVT1SRC        : HSP_EVTSRC0R_EVT1SRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 2
      EVT2SRC        : HSP_EVTSRC0R_EVT2SRC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 3
      EVT3SRC        : HSP_EVTSRC0R_EVT3SRC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 4
      EVT4SRC        : HSP_EVTSRC0R_EVT4SRC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 5
      EVT5SRC        : HSP_EVTSRC0R_EVT5SRC_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 6
      EVT6SRC        : HSP_EVTSRC0R_EVT6SRC_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 7
      EVT7SRC        : HSP_EVTSRC0R_EVT7SRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 8
      EVT8SRC        : HSP_EVTSRC0R_EVT8SRC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVTSRC0R_Register use record
      EVT1SRC        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EVT2SRC        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EVT3SRC        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EVT4SRC        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EVT5SRC        at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      EVT6SRC        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EVT7SRC        at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      EVT8SRC        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HSP_EVTSRC1R_EVT9SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT10SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT11SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT12SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT13SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT14SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT15SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC1R_EVT16SRC_Field is HAL.UInt3;

   --  HSP event source register 1
   type HSP_EVTSRC1R_Register is record
      --  Event source selection for priority encoder input 9
      EVT9SRC        : HSP_EVTSRC1R_EVT9SRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 10
      EVT10SRC       : HSP_EVTSRC1R_EVT10SRC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 11
      EVT11SRC       : HSP_EVTSRC1R_EVT11SRC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 12
      EVT12SRC       : HSP_EVTSRC1R_EVT12SRC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 13
      EVT13SRC       : HSP_EVTSRC1R_EVT13SRC_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 14
      EVT14SRC       : HSP_EVTSRC1R_EVT14SRC_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 15
      EVT15SRC       : HSP_EVTSRC1R_EVT15SRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 16
      EVT16SRC       : HSP_EVTSRC1R_EVT16SRC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVTSRC1R_Register use record
      EVT9SRC        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EVT10SRC       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EVT11SRC       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EVT12SRC       at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EVT13SRC       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      EVT14SRC       at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EVT15SRC       at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      EVT16SRC       at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HSP_EVTSRC2R_EVT17SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC2R_EVT18SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC2R_EVT19SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC2R_EVT20SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC2R_EVT21SRC_Field is HAL.UInt3;
   subtype HSP_EVTSRC2R_EVT22SRC_Field is HAL.UInt3;

   --  HSP event source register 2
   type HSP_EVTSRC2R_Register is record
      --  Event source selection for priority encoder input 17
      EVT17SRC       : HSP_EVTSRC2R_EVT17SRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 18
      EVT18SRC       : HSP_EVTSRC2R_EVT18SRC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 19
      EVT19SRC       : HSP_EVTSRC2R_EVT19SRC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 20
      EVT20SRC       : HSP_EVTSRC2R_EVT20SRC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 21
      EVT21SRC       : HSP_EVTSRC2R_EVT21SRC_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Event source selection for priority encoder input 22
      EVT22SRC       : HSP_EVTSRC2R_EVT22SRC_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVTSRC2R_Register use record
      EVT17SRC       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EVT18SRC       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EVT19SRC       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EVT20SRC       at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EVT21SRC       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      EVT22SRC       at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  HSP_BUFFCFGR_COMB array
   type HSP_BUFFCFGR_COMB_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for HSP_BUFFCFGR_COMB
   type HSP_BUFFCFGR_COMB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMB as a value
            Val : HAL.UInt3;
         when True =>
            --  COMB as an array
            Arr : HSP_BUFFCFGR_COMB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HSP_BUFFCFGR_COMB_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HSP BUFF configuration register
   type HSP_BUFFCFGR_Register is record
      --  Direction selection of BUFFx
      BUFF0DIR       : Boolean := False;
      --  Direction selection of BUFFx
      BUFF1DIR       : Boolean := False;
      --  Direction selection of BUFFx
      BUFF2DIR       : Boolean := False;
      --  Direction selection of BUFFx
      BUFF3DIR       : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Integer to float32 conversion
      I2FEN          : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  BUFCMB control for buff_evt[x]
      COMB           : HSP_BUFFCFGR_COMB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_BUFFCFGR_Register use record
      BUFF0DIR       at 0 range 0 .. 0;
      BUFF1DIR       at 0 range 1 .. 1;
      BUFF2DIR       at 0 range 2 .. 2;
      BUFF3DIR       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      I2FEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      COMB           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  HSP TRGIN configuration register
   type HSP_TRGINCFGR_Register is record
      --  Polarity selection for TRGINx
      TRG0POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG1POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG2POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG3POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG4POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG5POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG6POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG7POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG8POL        : Boolean := False;
      --  Polarity selection for TRGINx
      TRG9POL        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TRGINCFGR_Register use record
      TRG0POL        at 0 range 0 .. 0;
      TRG1POL        at 0 range 1 .. 1;
      TRG2POL        at 0 range 2 .. 2;
      TRG3POL        at 0 range 3 .. 3;
      TRG4POL        at 0 range 4 .. 4;
      TRG5POL        at 0 range 5 .. 5;
      TRG6POL        at 0 range 6 .. 6;
      TRG7POL        at 0 range 7 .. 7;
      TRG8POL        at 0 range 8 .. 8;
      TRG9POL        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype HSP_TRGOCFGR_TRGO0SRC_Field is HAL.UInt2;
   subtype HSP_TRGOCFGR_TRGO1SRC_Field is HAL.UInt2;
   subtype HSP_TRGOCFGR_TRGO2SRC_Field is HAL.UInt2;
   subtype HSP_TRGOCFGR_TRGO3SRC_Field is HAL.UInt2;

   --  HSP TRGO configuration register
   type HSP_TRGOCFGR_Register is record
      --  Trigger source selection for hsp_trgo[x]
      TRGO0SRC      : HSP_TRGOCFGR_TRGO0SRC_Field := 16#0#;
      --  Trigger source selection for hsp_trgo[x]
      TRGO1SRC      : HSP_TRGOCFGR_TRGO1SRC_Field := 16#0#;
      --  Trigger source selection for hsp_trgo[x]
      TRGO2SRC      : HSP_TRGOCFGR_TRGO2SRC_Field := 16#0#;
      --  Trigger source selection for hsp_trgo[x]
      TRGO3SRC      : HSP_TRGOCFGR_TRGO3SRC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TRGOCFGR_Register use record
      TRGO0SRC      at 0 range 0 .. 1;
      TRGO1SRC      at 0 range 2 .. 3;
      TRGO2SRC      at 0 range 4 .. 5;
      TRGO3SRC      at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HSP_CSEGR_CSEVT_Field is HAL.UInt22;

   --  HSP CPU shared event generator register
   type HSP_CSEGR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  CPU shared software event
      CSEVT          : HSP_CSEGR_CSEVT_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_CSEGR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      CSEVT          at 0 range 1 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype HSP_CDEGR_CTSKN_Field is HAL.UInt6;

   --  HSP CPU dedicated event generation register
   type HSP_CDEGR_Register is record
      --  CPU task number
      CTSKN         : HSP_CDEGR_CTSKN_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. CPU dedicated event generator busy
      CDEGBSY       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_CDEGR_Register use record
      CTSKN         at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CDEGBSY       at 0 range 31 .. 31;
   end record;

   subtype HSP_TRGINSELR0_TRG0SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR0_TRG1SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR0_TRG2SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR0_TRG3SEL_Field is HAL.UInt6;

   --  HSP TRGIN input selection register 0
   type HSP_TRGINSELR0_Register is record
      --  Input trigger selection for TRGIN0
      TRG0SEL        : HSP_TRGINSELR0_TRG0SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN1
      TRG1SEL        : HSP_TRGINSELR0_TRG1SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN2
      TRG2SEL        : HSP_TRGINSELR0_TRG2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN3
      TRG3SEL        : HSP_TRGINSELR0_TRG3SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TRGINSELR0_Register use record
      TRG0SEL        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TRG1SEL        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TRG2SEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRG3SEL        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HSP_TRGINSELR1_TRG4SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR1_TRG5SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR1_TRG6SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR1_TRG7SEL_Field is HAL.UInt6;

   --  HSP TRGIN input selection register 1
   type HSP_TRGINSELR1_Register is record
      --  Input trigger selection for TRGIN4
      TRG4SEL        : HSP_TRGINSELR1_TRG4SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN5
      TRG5SEL        : HSP_TRGINSELR1_TRG5SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN6
      TRG6SEL        : HSP_TRGINSELR1_TRG6SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN7
      TRG7SEL        : HSP_TRGINSELR1_TRG7SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TRGINSELR1_Register use record
      TRG4SEL        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TRG5SEL        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TRG6SEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRG7SEL        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HSP_TRGINSELR2_TRG8SEL_Field is HAL.UInt6;
   subtype HSP_TRGINSELR2_TRG9SEL_Field is HAL.UInt6;

   --  HSP TRGIN input selection register 2
   type HSP_TRGINSELR2_Register is record
      --  Input trigger selection for TRGIN8
      TRG8SEL        : HSP_TRGINSELR2_TRG8SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input trigger selection for TRGIN9
      TRG9SEL        : HSP_TRGINSELR2_TRG9SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TRGINSELR2_Register use record
      TRG8SEL        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TRG9SEL        at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  HSP break output configuration register 0
   type HSP_BKO0CFGR_Register is record
      --  Access error break enable for ACCERRF
      ACCEREN        : Boolean := False;
      --  FPU error break enable for FPUERRF
      FPUEREN        : Boolean := False;
      --  Opcode error break enable for OPCOERRF
      OPCEREN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Processing function flag break enable for PFCTF[x]
      PFCT28EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT29EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT30EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT31EN       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Firmware error break enable for FWERRF
      FWEREN         : Boolean := False;
      --  HSP dedicated event generator overrun break enable for HDEGOVRF
      HDEGOVEN       : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_BKO0CFGR_Register use record
      ACCEREN        at 0 range 0 .. 0;
      FPUEREN        at 0 range 1 .. 1;
      OPCEREN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PFCT28EN       at 0 range 4 .. 4;
      PFCT29EN       at 0 range 5 .. 5;
      PFCT30EN       at 0 range 6 .. 6;
      PFCT31EN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      FWEREN         at 0 range 12 .. 12;
      HDEGOVEN       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  HSP break output configuration register 1
   type HSP_BKO1CFGR_Register is record
      --  Access error break enable for ACCERRF
      ACCEREN        : Boolean := False;
      --  FPU error break enable for FPUERRF
      FPUEREN        : Boolean := False;
      --  Opcode error break enable for OPCOERRF
      OPCEREN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Processing function flag break enable for PFCTF[x]
      PFCT28EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT29EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT30EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT31EN       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Firmware error break enable for FWERRF
      FWEREN         : Boolean := False;
      --  HSP dedicated event generator overrun break enable for HDEGOVRF
      HDEGOVEN       : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_BKO1CFGR_Register use record
      ACCEREN        at 0 range 0 .. 0;
      FPUEREN        at 0 range 1 .. 1;
      OPCEREN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PFCT28EN       at 0 range 4 .. 4;
      PFCT29EN       at 0 range 5 .. 5;
      PFCT30EN       at 0 range 6 .. 6;
      PFCT31EN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      FWEREN         at 0 range 12 .. 12;
      HDEGOVEN       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  HSP break output configuration register 2
   type HSP_BKO2CFGR_Register is record
      --  Access error break enable for ACCERRF
      ACCEREN        : Boolean := False;
      --  FPU error break enable for FPUERRF
      FPUEREN        : Boolean := False;
      --  Opcode error break enable for OPCOERRF
      OPCEREN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Processing function flag break enable for PFCTF[x]
      PFCT28EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT29EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT30EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT31EN       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Firmware error break enable for FWERRF
      FWEREN         : Boolean := False;
      --  HSP dedicated event generator overrun break enable for HDEGOVRF
      HDEGOVEN       : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_BKO2CFGR_Register use record
      ACCEREN        at 0 range 0 .. 0;
      FPUEREN        at 0 range 1 .. 1;
      OPCEREN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PFCT28EN       at 0 range 4 .. 4;
      PFCT29EN       at 0 range 5 .. 5;
      PFCT30EN       at 0 range 6 .. 6;
      PFCT31EN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      FWEREN         at 0 range 12 .. 12;
      HDEGOVEN       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  HSP break output configuration register 3
   type HSP_BKO3CFGR_Register is record
      --  Access error break enable for ACCERRF
      ACCEREN        : Boolean := False;
      --  FPU error break enable for FPUERRF
      FPUEREN        : Boolean := False;
      --  Opcode error break enable for OPCOERRF
      OPCEREN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Processing function flag break enable for PFCTF[x]
      PFCT28EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT29EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT30EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT31EN       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Firmware error break enable for FWERRF
      FWEREN         : Boolean := False;
      --  HSP dedicated event generator overrun break enable for HDEGOVRF
      HDEGOVEN       : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_BKO3CFGR_Register use record
      ACCEREN        at 0 range 0 .. 0;
      FPUEREN        at 0 range 1 .. 1;
      OPCEREN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PFCT28EN       at 0 range 4 .. 4;
      PFCT29EN       at 0 range 5 .. 5;
      PFCT30EN       at 0 range 6 .. 6;
      PFCT31EN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      FWEREN         at 0 range 12 .. 12;
      HDEGOVEN       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  HSP break input configuration register
   type HSP_BKICFGR_Register is record
      --  Access error break enable for ACCERRF
      ACCEREN        : Boolean := False;
      --  FPU error break enable for FPUERRF
      FPUEREN        : Boolean := False;
      --  Opcode error break enable for OPCOERRF
      OPCEREN        : Boolean := False;
      --  Break enable for hsp_break_in signal
      BKIEN          : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT28EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT29EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT30EN       : Boolean := False;
      --  Processing function flag break enable for PFCTF[x]
      PFCT31EN       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Firmware error break enable for FWERRF
      FWEREN         : Boolean := False;
      --  HSP dedicated event generator overrun break enable for HDEGOVRF
      HDEGOVEN       : Boolean := False;
      --  FPU saturation break enable for FPUSATF
      FSATEN         : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Single step enable
      SSEN           : Boolean := False;
      --  Break enable input polarity
      BKIP           : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_BKICFGR_Register use record
      ACCEREN        at 0 range 0 .. 0;
      FPUEREN        at 0 range 1 .. 1;
      OPCEREN        at 0 range 2 .. 2;
      BKIEN          at 0 range 3 .. 3;
      PFCT28EN       at 0 range 4 .. 4;
      PFCT29EN       at 0 range 5 .. 5;
      PFCT30EN       at 0 range 6 .. 6;
      PFCT31EN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      FWEREN         at 0 range 12 .. 12;
      HDEGOVEN       at 0 range 13 .. 13;
      FSATEN         at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      SSEN           at 0 range 17 .. 17;
      BKIP           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HSP_FWERR_FWERRN_Field is HAL.UInt10;

   --  HSP firmware error register
   type HSP_FWERR_Register is record
      --  Read-only. Firmware error number
      FWERRN         : HSP_FWERR_FWERRN_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_FWERR_Register use record
      FWERRN         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  HSP SPE interrupt enable register
   type HSP_SPE_IER_Register is record
      --  Read-only. CPU to SPE message ready interrupt enable
      C2HMRDYIE     : Boolean;
      --  Read-only. SPE to CPU message free interrupt enable
      H2CMFREEIE    : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_SPE_IER_Register use record
      C2HMRDYIE     at 0 range 0 .. 0;
      H2CMFREEIE    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HSP SPE interrupt status register
   type HSP_SPE_ISR_Register is record
      --  Read-only. CPU to SPE message box status
      C2HMRDYF       : Boolean;
      --  Read-only. SPE to CPU message box status
      H2CMFREEF      : Boolean;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. HSP reset request
      RSTREQF        : Boolean;
      --  unspecified
      Reserved_5_11  : HAL.UInt7;
      --  Read-only. BUFFx status
      BUF0EVTF       : Boolean;
      --  Read-only. BUFFx status
      BUF1EVTF       : Boolean;
      --  Read-only. BUFFx status
      BUF2EVTF       : Boolean;
      --  Read-only. BUFFx status
      BUF3EVTF       : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_SPE_ISR_Register use record
      C2HMRDYF       at 0 range 0 .. 0;
      H2CMFREEF      at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RSTREQF        at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      BUF0EVTF       at 0 range 12 .. 12;
      BUF1EVTF       at 0 range 13 .. 13;
      BUF2EVTF       at 0 range 14 .. 14;
      BUF3EVTF       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSP_TCUCFGR_TSKCMP0_Field is HAL.UInt6;
   subtype HSP_TCUCFGR_TSKCMP1_Field is HAL.UInt6;
   subtype HSP_TCUCFGR_TSKCMP2_Field is HAL.UInt6;
   subtype HSP_TCUCFGR_TSKCMP3_Field is HAL.UInt6;

   --  HSP task comparator unit register
   type HSP_TCUCFGR_Register is record
      --  Task compare 0
      TSKCMP0        : HSP_TCUCFGR_TSKCMP0_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Task comparator 0 enable
      TC0EN          : Boolean := False;
      --  Task compare 1
      TSKCMP1        : HSP_TCUCFGR_TSKCMP1_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Task comparator 1 enable
      TC1EN          : Boolean := False;
      --  Task compare 2
      TSKCMP2        : HSP_TCUCFGR_TSKCMP2_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Task comparator 2 enable
      TC2EN          : Boolean := False;
      --  Task compare 3
      TSKCMP3        : HSP_TCUCFGR_TSKCMP3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Task comparator 3 enable
      TC3EN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TCUCFGR_Register use record
      TSKCMP0        at 0 range 0 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      TC0EN          at 0 range 7 .. 7;
      TSKCMP1        at 0 range 8 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TC1EN          at 0 range 15 .. 15;
      TSKCMP2        at 0 range 16 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      TC2EN          at 0 range 23 .. 23;
      TSKCMP3        at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      TC3EN          at 0 range 31 .. 31;
   end record;

   subtype HSP_TOVLPCR_LTNB_Field is HAL.UInt6;
   subtype HSP_TOVLPCR_HTNB_Field is HAL.UInt6;

   --  HSP task overlap control register
   type HSP_TOVLPCR_Register is record
      --  Task overlap enable
      TOVLPEN        : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Lower task number value
      LTNB           : HSP_TOVLPCR_LTNB_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Higher task number value
      HTNB           : HSP_TOVLPCR_HTNB_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_TOVLPCR_Register use record
      TOVLPEN        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      LTNB           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      HTNB           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype HSP_SNPR_SNPSELA_Field is HAL.UInt3;
   subtype HSP_SNPR_SNPSELB_Field is HAL.UInt3;

   --  HSP SNOOP register
   type HSP_SNPR_Register is record
      --  SNOOP group A signal selection
      SNPSELA       : HSP_SNPR_SNPSELA_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  SNOOP group B signal selection
      SNPSELB       : HSP_SNPR_SNPSELB_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_SNPR_Register use record
      SNPSELA       at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SNPSELB       at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype HSP_CAPDR_TSTAMP_Field is HAL.UInt14;
   subtype HSP_CAPDR_IFHIST_Field is HAL.UInt8;
   subtype HSP_CAPDR_IFCNT_Field is HAL.UInt4;
   subtype HSP_CAPDR_TSKNB_Field is HAL.UInt6;

   --  HSP data capture register
   type HSP_CAPDR_Register is record
      --  Read-only. Time-stamp value
      TSTAMP : HSP_CAPDR_TSTAMP_Field;
      --  Read-only. IF condition history
      IFHIST : HSP_CAPDR_IFHIST_Field;
      --  Read-only. IF instruction counter
      IFCNT  : HSP_CAPDR_IFCNT_Field;
      --  Read-only. Last captured task number
      TSKNB  : HSP_CAPDR_TSKNB_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_CAPDR_Register use record
      TSTAMP at 0 range 0 .. 13;
      IFHIST at 0 range 14 .. 21;
      IFCNT  at 0 range 22 .. 25;
      TSKNB  at 0 range 26 .. 31;
   end record;

   subtype HSP_CAPDR_ALTERNATE1_IFHIST_Field is HAL.UInt15;
   subtype HSP_CAPDR_ALTERNATE1_PFCTNB_Field is HAL.UInt6;
   subtype HSP_CAPDR_ALTERNATE1_IFCNT_Field is HAL.UInt4;
   subtype HSP_CAPDR_ALTERNATE1_TSKNB_Field is HAL.UInt6;

   --  HSP data capture register
   type HSP_CAPDR_ALTERNATE1_Register is record
      --  Read-only. IF condition history
      IFHIST         : HSP_CAPDR_ALTERNATE1_IFHIST_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Last captured processing function number
      PFCTNB         : HSP_CAPDR_ALTERNATE1_PFCTNB_Field;
      --  Read-only. IF instruction counter
      IFCNT          : HSP_CAPDR_ALTERNATE1_IFCNT_Field;
      --  Read-only. Last captured task number
      TSKNB          : HSP_CAPDR_ALTERNATE1_TSKNB_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_CAPDR_ALTERNATE1_Register use record
      IFHIST         at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PFCTNB         at 0 range 16 .. 21;
      IFCNT          at 0 range 22 .. 25;
      TSKNB          at 0 range 26 .. 31;
   end record;

   subtype HSP_CAPCR_CAPMOD_Field is HAL.UInt2;
   subtype HSP_CAPCR_PRESC_Field is HAL.UInt5;

   --  HSP capture control register
   type HSP_CAPCR_Register is record
      --  Capture mode
      CAPMOD         : HSP_CAPCR_CAPMOD_Field := 16#0#;
      --  Free-running counter enable
      FRCNTEN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Time-stamp prescaler value
      PRESC          : HSP_CAPCR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Task filter enable
      TSKFLT         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Conflict counter enable
      CCNTREN        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_CAPCR_Register use record
      CAPMOD         at 0 range 0 .. 1;
      FRCNTEN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRESC          at 0 range 4 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TSKFLT         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CCNTREN        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  HSP error interrupt enable register
   type HSP_ERR_IER_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  TRGITF overrun interrupt enable
      TRGIOVRIE      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  H2CBUFFx underrun or C2HBUFFx overrun interrupt enable
      B0ERRIE        : Boolean := False;
      --  H2CBUFFx underrun or C2HBUFFx overrun interrupt enable
      B1ERRIE        : Boolean := False;
      --  H2CBUFFx underrun or C2HBUFFx overrun interrupt enable
      B2ERRIE        : Boolean := False;
      --  H2CBUFFx underrun or C2HBUFFx overrun interrupt enable
      B3ERRIE        : Boolean := False;
      --  Capture register overrun interrupt enable
      CAPOVRIE       : Boolean := False;
      --  Firmware error interrupt enable
      FWERRIE        : Boolean := False;
      --  Scheduler error interrupt enable
      SCHERRIE       : Boolean := False;
      --  Break input interrupt enable
      BKINIE         : Boolean := False;
      --  SPE event overrun interrupt enable
      HDEGOVRIE      : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Invalid OpCode error interrupt enable
      OPCOERRIE      : Boolean := False;
      --  SPE access error interrupt enable
      ACCERRIE       : Boolean := False;
      --  FPU underflow exception interrupt enable
      UDFIE          : Boolean := False;
      --  FPU overflow exception interrupt enable
      OVFIE          : Boolean := False;
      --  FPU division-by-zero exception interrupt enable
      DBZIE          : Boolean := False;
      --  FPU Invalid exception interrupt enable
      INVIE          : Boolean := False;
      --  FPU denormal interrupt enable
      DENORMIE       : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ERR_IER_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TRGIOVRIE      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      B0ERRIE        at 0 range 12 .. 12;
      B1ERRIE        at 0 range 13 .. 13;
      B2ERRIE        at 0 range 14 .. 14;
      B3ERRIE        at 0 range 15 .. 15;
      CAPOVRIE       at 0 range 16 .. 16;
      FWERRIE        at 0 range 17 .. 17;
      SCHERRIE       at 0 range 18 .. 18;
      BKINIE         at 0 range 19 .. 19;
      HDEGOVRIE      at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      OPCOERRIE      at 0 range 22 .. 22;
      ACCERRIE       at 0 range 23 .. 23;
      UDFIE          at 0 range 24 .. 24;
      OVFIE          at 0 range 25 .. 25;
      DBZIE          at 0 range 26 .. 26;
      INVIE          at 0 range 27 .. 27;
      DENORMIE       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  HSP events interrupt enable register
   type HSP_EVT_IER_Register is record
      --  HSP to CPU message ready interrupt enable
      H2CMRDYIE      : Boolean := False;
      --  CPU to HSP message box free interrupt enable
      C2HMFREEIE     : Boolean := False;
      --  Direct command done interrupt enable
      DCDONEIE       : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Capture buffer data ready interrupt enable
      CAPRDYIE       : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  CPU dedicated event generator ready interrupt enable
      CDEGRDYIE      : Boolean := False;
      --  Start of WFE interrupt enable
      SOFWFEIE       : Boolean := False;
      --  End of WFE interrupt enable
      EOFWFEIE       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  BUFFx event interrupt enable
      B0EVTIE        : Boolean := False;
      --  BUFFx event interrupt enable
      B1EVTIE        : Boolean := False;
      --  BUFFx event interrupt enable
      B2EVTIE        : Boolean := False;
      --  BUFFx event interrupt enable
      B3EVTIE        : Boolean := False;
      --  Start of task generated by event comparator x interrupt enable
      SOTECP0IE      : Boolean := False;
      --  Start of task generated by event comparator x interrupt enable
      SOTECP1IE      : Boolean := False;
      --  Start of task generated by event comparator x interrupt enable
      SOTECP2IE      : Boolean := False;
      --  Start of task generated by event comparator x interrupt enable
      SOTECP3IE      : Boolean := False;
      --  End of task generated by event comparator x interrupt enable
      EOTECP0IE      : Boolean := False;
      --  End of task generated by event comparator x interrupt enable
      EOTECP1IE      : Boolean := False;
      --  End of task generated by event comparator x interrupt enable
      EOTECP2IE      : Boolean := False;
      --  End of task generated by event comparator x interrupt enable
      EOTECP3IE      : Boolean := False;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Task overlap flag interrupt enable
      TOVLPIE        : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Saturation flag interrupt enable
      FPUSATIE       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVT_IER_Register use record
      H2CMRDYIE      at 0 range 0 .. 0;
      C2HMFREEIE     at 0 range 1 .. 1;
      DCDONEIE       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CAPRDYIE       at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CDEGRDYIE      at 0 range 7 .. 7;
      SOFWFEIE       at 0 range 8 .. 8;
      EOFWFEIE       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      B0EVTIE        at 0 range 12 .. 12;
      B1EVTIE        at 0 range 13 .. 13;
      B2EVTIE        at 0 range 14 .. 14;
      B3EVTIE        at 0 range 15 .. 15;
      SOTECP0IE      at 0 range 16 .. 16;
      SOTECP1IE      at 0 range 17 .. 17;
      SOTECP2IE      at 0 range 18 .. 18;
      SOTECP3IE      at 0 range 19 .. 19;
      EOTECP0IE      at 0 range 20 .. 20;
      EOTECP1IE      at 0 range 21 .. 21;
      EOTECP2IE      at 0 range 22 .. 22;
      EOTECP3IE      at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      TOVLPIE        at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FPUSATIE       at 0 range 31 .. 31;
   end record;

   --  HSP error interrupt status register
   type HSP_ERR_ISR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. TRGITF overrun flag
      TRGIOVRF       : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. H2CBUFFx underrun or C2HBUFFx overrun flag
      B0ERRF         : Boolean;
      --  Read-only. H2CBUFFx underrun or C2HBUFFx overrun flag
      B1ERRF         : Boolean;
      --  Read-only. H2CBUFFx underrun or C2HBUFFx overrun flag
      B2ERRF         : Boolean;
      --  Read-only. H2CBUFFx underrun or C2HBUFFx overrun flag
      B3ERRF         : Boolean;
      --  Read-only. Capture register overrun flag
      CAPOVRF        : Boolean;
      --  Read-only. Firmware error flag
      FWERRF         : Boolean;
      --  Read-only. Scheduler error flag
      SCHERRF        : Boolean;
      --  Read-only. Break input flag
      BKINF          : Boolean;
      --  Read-only. SPE event overrun flag
      HDEGOVRF       : Boolean;
      --  unspecified
      Reserved_21_21 : HAL.Bit;
      --  Read-only. Invalid OpCode error flag
      OPCOERRF       : Boolean;
      --  Read-only. SPE Access error flag
      ACCERRF        : Boolean;
      --  Read-only. Computation error flag
      FPUERRF        : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ERR_ISR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TRGIOVRF       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      B0ERRF         at 0 range 12 .. 12;
      B1ERRF         at 0 range 13 .. 13;
      B2ERRF         at 0 range 14 .. 14;
      B3ERRF         at 0 range 15 .. 15;
      CAPOVRF        at 0 range 16 .. 16;
      FWERRF         at 0 range 17 .. 17;
      SCHERRF        at 0 range 18 .. 18;
      BKINF          at 0 range 19 .. 19;
      HDEGOVRF       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      OPCOERRF       at 0 range 22 .. 22;
      ACCERRF        at 0 range 23 .. 23;
      FPUERRF        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  HSP events interrupt status register
   type HSP_EVT_ISR_Register is record
      --  Read-only. HSP to CPU message ready flag
      H2CMRDYF       : Boolean;
      --  Read-only. CPU to HSP message box free flag
      C2HMFREEF      : Boolean;
      --  Read-only. Direct command done flag
      DCDONEF        : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Capture buffer data ready flag
      CAPRDYF        : Boolean;
      --  unspecified
      Reserved_5_6   : HAL.UInt2;
      --  Read-only. CPU dedicated event generator ready flag
      CDEGRDYF       : Boolean;
      --  Read-only. Start of WFE flag
      SOFWFEF        : Boolean;
      --  Read-only. End of WFE flag
      EOFWFEF        : Boolean;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. BUFFx event flag
      B0EVTF         : Boolean;
      --  Read-only. BUFFx event flag
      B1EVTF         : Boolean;
      --  Read-only. BUFFx event flag
      B2EVTF         : Boolean;
      --  Read-only. BUFFx event flag
      B3EVTF         : Boolean;
      --  Read-only. Start of task flag, for event comparator x
      SOTECP0F       : Boolean;
      --  Read-only. Start of task flag, for event comparator x
      SOTECP1F       : Boolean;
      --  Read-only. Start of task flag, for event comparator x
      SOTECP2F       : Boolean;
      --  Read-only. Start of task flag, for event comparator x
      SOTECP3F       : Boolean;
      --  Read-only. End of task flag, for event comparator x
      EOTECP0F       : Boolean;
      --  Read-only. End of task flag, for event comparator x
      EOTECP1F       : Boolean;
      --  Read-only. End of task flag, for event comparator x
      EOTECP2F       : Boolean;
      --  Read-only. End of task flag, for event comparator x
      EOTECP3F       : Boolean;
      --  unspecified
      Reserved_24_27 : HAL.UInt4;
      --  Read-only. Task overlap flag
      TOVLPF         : Boolean;
      --  unspecified
      Reserved_29_30 : HAL.UInt2;
      --  Read-only. FPU saturation flag
      FPUSATF        : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVT_ISR_Register use record
      H2CMRDYF       at 0 range 0 .. 0;
      C2HMFREEF      at 0 range 1 .. 1;
      DCDONEF        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CAPRDYF        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CDEGRDYF       at 0 range 7 .. 7;
      SOFWFEF        at 0 range 8 .. 8;
      EOFWFEF        at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      B0EVTF         at 0 range 12 .. 12;
      B1EVTF         at 0 range 13 .. 13;
      B2EVTF         at 0 range 14 .. 14;
      B3EVTF         at 0 range 15 .. 15;
      SOTECP0F       at 0 range 16 .. 16;
      SOTECP1F       at 0 range 17 .. 17;
      SOTECP2F       at 0 range 18 .. 18;
      SOTECP3F       at 0 range 19 .. 19;
      EOTECP0F       at 0 range 20 .. 20;
      EOTECP1F       at 0 range 21 .. 21;
      EOTECP2F       at 0 range 22 .. 22;
      EOTECP3F       at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      TOVLPF         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FPUSATF        at 0 range 31 .. 31;
   end record;

   subtype HSP_ERRINFR_TRGIERR_Field is HAL.UInt10;

   --  HSP error information register
   type HSP_ERRINFR_Register is record
      --  Read-only. Inexact exception flag
      INEXACT        : Boolean;
      --  Read-only. Underflow exception flag
      UDFLOW         : Boolean;
      --  Read-only. Overflow exception flag
      OVFLOW         : Boolean;
      --  Read-only. Division by zero exception flag
      DIVZERO        : Boolean;
      --  Read-only. Invalid exception flag
      INVALID        : Boolean;
      --  Read-only. Denormal exception flag
      DENORM         : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Code memory access error flag
      CMERR          : Boolean;
      --  Read-only. Data memory access error flag
      DMERR          : Boolean;
      --  unspecified
      Reserved_10_10 : HAL.Bit;
      --  Read-only. Internal AHB access error flag
      MAHBERR        : Boolean;
      --  Read-only. Slave AHB access error flag
      SAHBERR        : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. TRGIN error information
      TRGIERR        : HSP_ERRINFR_TRGIERR_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ERRINFR_Register use record
      INEXACT        at 0 range 0 .. 0;
      UDFLOW         at 0 range 1 .. 1;
      OVFLOW         at 0 range 2 .. 2;
      DIVZERO        at 0 range 3 .. 3;
      INVALID        at 0 range 4 .. 4;
      DENORM         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CMERR          at 0 range 8 .. 8;
      DMERR          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      MAHBERR        at 0 range 11 .. 11;
      SAHBERR        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TRGIERR        at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  HSP error interrupt clear register
   type HSP_ERR_ICR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. TRGIOVRF flag clear
      TRGIOVRC       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. B0ERRF flag clear
      B0ERRC         : Boolean := False;
      --  Write-only. B1ERRF flag clear
      B1ERRC         : Boolean := False;
      --  Write-only. B2ERRF flag clear
      B2ERRC         : Boolean := False;
      --  Write-only. B3ERRF flag clear
      B3ERRC         : Boolean := False;
      --  Write-only. CAPOVRF flag clear
      CAPOVRC        : Boolean := False;
      --  Write-only. FWERRF flag clear
      FWERRC         : Boolean := False;
      --  Write-only. SCHERRF flag clear
      SCHERRC        : Boolean := False;
      --  Write-only. BKINF flag clear
      BKINC          : Boolean := False;
      --  Write-only. HDEGOVRF flag clear
      HDEGOVRC       : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Write-only. OPCOERRF flag clear
      OPCOERRC       : Boolean := False;
      --  Write-only. ACCERRF flag clear
      ACCERRC        : Boolean := False;
      --  Write-only. FPUERRF flag clear
      FPUERRC        : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_ERR_ICR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TRGIOVRC       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      B0ERRC         at 0 range 12 .. 12;
      B1ERRC         at 0 range 13 .. 13;
      B2ERRC         at 0 range 14 .. 14;
      B3ERRC         at 0 range 15 .. 15;
      CAPOVRC        at 0 range 16 .. 16;
      FWERRC         at 0 range 17 .. 17;
      SCHERRC        at 0 range 18 .. 18;
      BKINC          at 0 range 19 .. 19;
      HDEGOVRC       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      OPCOERRC       at 0 range 22 .. 22;
      ACCERRC        at 0 range 23 .. 23;
      FPUERRC        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  HSP events interrupt clear register
   type HSP_EVT_ICR_Register is record
      --  Write-only. H2CMRDYF flag clear
      H2CMRDYC       : Boolean := False;
      --  Write-only. C2HMFREEF flag clear
      C2HMFREEC      : Boolean := False;
      --  Write-only. DCDONEF flag clear
      DCDONEC        : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Write-only. CDEGRDYF flag clear
      CDEGRDYC       : Boolean := False;
      --  Write-only. SOFWFEF flag clear
      SOFWFEC        : Boolean := False;
      --  Write-only. EOFWFEF flag clear
      EOFWFEC        : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. SOTECPxF flag clear
      SOTECP0C       : Boolean := False;
      --  Write-only. SOTECPxF flag clear
      SOTECP1C       : Boolean := False;
      --  Write-only. SOTECPxF flag clear
      SOTECP2C       : Boolean := False;
      --  Write-only. SOTECPxF flag clear
      SOTECP3C       : Boolean := False;
      --  Write-only. EOTECPxF flag clear
      EOTECP0C       : Boolean := False;
      --  Write-only. EOTECPxF flag clear
      EOTECP1C       : Boolean := False;
      --  Write-only. EOTECPxF flag clear
      EOTECP2C       : Boolean := False;
      --  Write-only. EOTECPxF flag clear
      EOTECP3C       : Boolean := False;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Write-only. TOVLPF flag clear
      TOVLPC         : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Write-only. FPUSATF flag clear
      FPUSATC        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSP_EVT_ICR_Register use record
      H2CMRDYC       at 0 range 0 .. 0;
      C2HMFREEC      at 0 range 1 .. 1;
      DCDONEC        at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      CDEGRDYC       at 0 range 7 .. 7;
      SOFWFEC        at 0 range 8 .. 8;
      EOFWFEC        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SOTECP0C       at 0 range 16 .. 16;
      SOTECP1C       at 0 range 17 .. 17;
      SOTECP2C       at 0 range 18 .. 18;
      SOTECP3C       at 0 range 19 .. 19;
      EOTECP0C       at 0 range 20 .. 20;
      EOTECP1C       at 0 range 21 .. 21;
      EOTECP2C       at 0 range 22 .. 22;
      EOTECP3C       at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      TOVLPC         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FPUSATC        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type HSP_Disc is
     (Default,
      Alternate1);

   --  HSP register block
   type HSP_Peripheral
     (Discriminent : HSP_Disc := Default)
   is record
      --  HSP control register
      HSP_CR               : aliased HSP_CR_Register;
      --  HSP CPU-to-HSP semaphore register
      HSP_C2HSEMR          : aliased HSP_C2HSEMR_Register;
      --  HSP CPU-to-HSP message data register
      HSP_C2HMSGDR         : aliased HAL.UInt32;
      --  HSP HSP-to-CPU semaphore register
      HSP_H2CSEMR          : aliased HSP_H2CSEMR_Register;
      --  HSP HSP-to-CPU message data register
      HSP_H2CMSGDR         : aliased HAL.UInt32;
      --  HSP DCMD command status register
      HSP_DCMDSR           : aliased HSP_DCMDSR_Register;
      --  HSP DCMD pointer status register
      HSP_DCMDPTSR         : aliased HSP_DCMDPTSR_Register;
      --  HSP DCMD command ID register
      HSP_DCMDIDR          : aliased HSP_DCMDIDR_Register;
      --  HSP DCMD address pointer register 0
      HSP_DCMDPTR0         : aliased HAL.UInt32;
      --  HSP DCMD address pointer register 1
      HSP_DCMDPTR1         : aliased HAL.UInt32;
      --  HSP DCMD address pointer register 2
      HSP_DCMDPTR2         : aliased HAL.UInt32;
      --  HSP event enable register
      HSP_EVTENR           : aliased HSP_EVTENR_Register;
      --  HSP event synchronization enable register
      HSP_ESYNCENR         : aliased HSP_ESYNCENR_Register;
      --  HSP event synchronization source register 0
      HSP_ESYNC0SRCR       : aliased HSP_ESYNC0SRCR_Register;
      --  HSP event synchronization source register 1
      HSP_ESYNC1SRCR       : aliased HSP_ESYNC1SRCR_Register;
      --  HSP event synchronization source register 2
      HSP_ESYNC2SRCR       : aliased HSP_ESYNC2SRCR_Register;
      --  HSP pending event level register
      HSP_PEVTLR           : aliased HSP_PEVTLR_Register;
      --  HSP interface enable register
      HSP_ITFENR           : aliased HSP_ITFENR_Register;
      --  HSP event source register 0
      HSP_EVTSRC0R         : aliased HSP_EVTSRC0R_Register;
      --  HSP event source register 1
      HSP_EVTSRC1R         : aliased HSP_EVTSRC1R_Register;
      --  HSP event source register 2
      HSP_EVTSRC2R         : aliased HSP_EVTSRC2R_Register;
      --  HSP BUFF configuration register
      HSP_BUFFCFGR         : aliased HSP_BUFFCFGR_Register;
      --  HSP BUFF0 data register 0
      HSP_BUFF0DR          : aliased HAL.UInt32;
      --  HSP BUFF1 data register 1
      HSP_BUFF1DR          : aliased HAL.UInt32;
      --  HSP BUFF2 data register 2
      HSP_BUFF2DR          : aliased HAL.UInt32;
      --  HSP BUFF3 data register 3
      HSP_BUFF3DR          : aliased HAL.UInt32;
      --  HSP TRGIN configuration register
      HSP_TRGINCFGR        : aliased HSP_TRGINCFGR_Register;
      --  HSP TRGO configuration register
      HSP_TRGOCFGR         : aliased HSP_TRGOCFGR_Register;
      --  HSP CPU shared event generator register
      HSP_CSEGR            : aliased HSP_CSEGR_Register;
      --  HSP CPU dedicated event generation register
      HSP_CDEGR            : aliased HSP_CDEGR_Register;
      --  HSP TRGIN input selection register 0
      HSP_TRGINSELR0       : aliased HSP_TRGINSELR0_Register;
      --  HSP TRGIN input selection register 1
      HSP_TRGINSELR1       : aliased HSP_TRGINSELR1_Register;
      --  HSP TRGIN input selection register 2
      HSP_TRGINSELR2       : aliased HSP_TRGINSELR2_Register;
      --  HSP break output configuration register 0
      HSP_BKO0CFGR         : aliased HSP_BKO0CFGR_Register;
      --  HSP break output configuration register 1
      HSP_BKO1CFGR         : aliased HSP_BKO1CFGR_Register;
      --  HSP break output configuration register 2
      HSP_BKO2CFGR         : aliased HSP_BKO2CFGR_Register;
      --  HSP break output configuration register 3
      HSP_BKO3CFGR         : aliased HSP_BKO3CFGR_Register;
      --  HSP break input configuration register
      HSP_BKICFGR          : aliased HSP_BKICFGR_Register;
      --  HSP firmware error register
      HSP_FWERR            : aliased HSP_FWERR_Register;
      --  HSP parameter register 0
      HSP_PARAMR0          : aliased HAL.UInt32;
      --  HSP parameter register 1
      HSP_PARAMR1          : aliased HAL.UInt32;
      --  HSP parameter register 2
      HSP_PARAMR2          : aliased HAL.UInt32;
      --  HSP parameter register 3
      HSP_PARAMR3          : aliased HAL.UInt32;
      --  HSP parameter register 4
      HSP_PARAMR4          : aliased HAL.UInt32;
      --  HSP parameter register 5
      HSP_PARAMR5          : aliased HAL.UInt32;
      --  HSP parameter register 6
      HSP_PARAMR6          : aliased HAL.UInt32;
      --  HSP parameter register 7
      HSP_PARAMR7          : aliased HAL.UInt32;
      --  HSP parameter register 8
      HSP_PARAMR8          : aliased HAL.UInt32;
      --  HSP parameter register 9
      HSP_PARAMR9          : aliased HAL.UInt32;
      --  HSP parameter register 10
      HSP_PARAMR10         : aliased HAL.UInt32;
      --  HSP parameter register 11
      HSP_PARAMR11         : aliased HAL.UInt32;
      --  HSP parameter register 12
      HSP_PARAMR12         : aliased HAL.UInt32;
      --  HSP parameter register 13
      HSP_PARAMR13         : aliased HAL.UInt32;
      --  HSP parameter register 14
      HSP_PARAMR14         : aliased HAL.UInt32;
      --  HSP parameter register 15
      HSP_PARAMR15         : aliased HAL.UInt32;
      --  HSP SPE interrupt enable register
      HSP_SPE_IER          : aliased HSP_SPE_IER_Register;
      --  HSP SPE interrupt status register
      HSP_SPE_ISR          : aliased HSP_SPE_ISR_Register;
      --  HSP task comparator unit register
      HSP_TCUCFGR          : aliased HSP_TCUCFGR_Register;
      --  HSP task overlap control register
      HSP_TOVLPCR          : aliased HSP_TOVLPCR_Register;
      --  HSP SNOOP register
      HSP_SNPR             : aliased HSP_SNPR_Register;
      --  HSP conflict counter register
      HSP_CCNTR            : aliased HAL.UInt32;
      --  HSP capture control register
      HSP_CAPCR            : aliased HSP_CAPCR_Register;
      --  HSP error interrupt enable register
      HSP_ERR_IER          : aliased HSP_ERR_IER_Register;
      --  HSP events interrupt enable register
      HSP_EVT_IER          : aliased HSP_EVT_IER_Register;
      --  HSP processing event interrupt enable register
      HSP_PFCTEVT_IER      : aliased HAL.UInt32;
      --  HSP error interrupt status register
      HSP_ERR_ISR          : aliased HSP_ERR_ISR_Register;
      --  HSP events interrupt status register
      HSP_EVT_ISR          : aliased HSP_EVT_ISR_Register;
      --  HSP processing event interrupt status register
      HSP_PFCTEVT_ISR      : aliased HAL.UInt32;
      --  HSP error information register
      HSP_ERRINFR          : aliased HSP_ERRINFR_Register;
      --  HSP error interrupt clear register
      HSP_ERR_ICR          : aliased HSP_ERR_ICR_Register;
      --  HSP events interrupt clear register
      HSP_EVT_ICR          : aliased HSP_EVT_ICR_Register;
      --  HSP processing event interrupt clear register
      HSP_PFCTEVT_ICR      : aliased HAL.UInt32;
      case Discriminent is
         when Default =>
            --  HSP data capture register
            HSP_CAPDR : aliased HSP_CAPDR_Register;
         when Alternate1 =>
            --  HSP data capture register
            HSP_CAPDR_ALTERNATE1 : aliased HSP_CAPDR_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for HSP_Peripheral use record
      HSP_CR               at 16#0# range 0 .. 31;
      HSP_C2HSEMR          at 16#40# range 0 .. 31;
      HSP_C2HMSGDR         at 16#44# range 0 .. 31;
      HSP_H2CSEMR          at 16#48# range 0 .. 31;
      HSP_H2CMSGDR         at 16#4C# range 0 .. 31;
      HSP_DCMDSR           at 16#58# range 0 .. 31;
      HSP_DCMDPTSR         at 16#5C# range 0 .. 31;
      HSP_DCMDIDR          at 16#60# range 0 .. 31;
      HSP_DCMDPTR0         at 16#64# range 0 .. 31;
      HSP_DCMDPTR1         at 16#68# range 0 .. 31;
      HSP_DCMDPTR2         at 16#6C# range 0 .. 31;
      HSP_EVTENR           at 16#80# range 0 .. 31;
      HSP_ESYNCENR         at 16#84# range 0 .. 31;
      HSP_ESYNC0SRCR       at 16#88# range 0 .. 31;
      HSP_ESYNC1SRCR       at 16#8C# range 0 .. 31;
      HSP_ESYNC2SRCR       at 16#90# range 0 .. 31;
      HSP_PEVTLR           at 16#98# range 0 .. 31;
      HSP_ITFENR           at 16#A0# range 0 .. 31;
      HSP_EVTSRC0R         at 16#B4# range 0 .. 31;
      HSP_EVTSRC1R         at 16#B8# range 0 .. 31;
      HSP_EVTSRC2R         at 16#BC# range 0 .. 31;
      HSP_BUFFCFGR         at 16#F4# range 0 .. 31;
      HSP_BUFF0DR          at 16#F8# range 0 .. 31;
      HSP_BUFF1DR          at 16#FC# range 0 .. 31;
      HSP_BUFF2DR          at 16#100# range 0 .. 31;
      HSP_BUFF3DR          at 16#104# range 0 .. 31;
      HSP_TRGINCFGR        at 16#120# range 0 .. 31;
      HSP_TRGOCFGR         at 16#124# range 0 .. 31;
      HSP_CSEGR            at 16#12C# range 0 .. 31;
      HSP_CDEGR            at 16#130# range 0 .. 31;
      HSP_TRGINSELR0       at 16#150# range 0 .. 31;
      HSP_TRGINSELR1       at 16#154# range 0 .. 31;
      HSP_TRGINSELR2       at 16#158# range 0 .. 31;
      HSP_BKO0CFGR         at 16#168# range 0 .. 31;
      HSP_BKO1CFGR         at 16#16C# range 0 .. 31;
      HSP_BKO2CFGR         at 16#170# range 0 .. 31;
      HSP_BKO3CFGR         at 16#174# range 0 .. 31;
      HSP_BKICFGR          at 16#178# range 0 .. 31;
      HSP_FWERR            at 16#188# range 0 .. 31;
      HSP_PARAMR0          at 16#194# range 0 .. 31;
      HSP_PARAMR1          at 16#198# range 0 .. 31;
      HSP_PARAMR2          at 16#19C# range 0 .. 31;
      HSP_PARAMR3          at 16#1A0# range 0 .. 31;
      HSP_PARAMR4          at 16#1A4# range 0 .. 31;
      HSP_PARAMR5          at 16#1A8# range 0 .. 31;
      HSP_PARAMR6          at 16#1AC# range 0 .. 31;
      HSP_PARAMR7          at 16#1B0# range 0 .. 31;
      HSP_PARAMR8          at 16#1B4# range 0 .. 31;
      HSP_PARAMR9          at 16#1B8# range 0 .. 31;
      HSP_PARAMR10         at 16#1BC# range 0 .. 31;
      HSP_PARAMR11         at 16#1C0# range 0 .. 31;
      HSP_PARAMR12         at 16#1C4# range 0 .. 31;
      HSP_PARAMR13         at 16#1C8# range 0 .. 31;
      HSP_PARAMR14         at 16#1CC# range 0 .. 31;
      HSP_PARAMR15         at 16#1D0# range 0 .. 31;
      HSP_SPE_IER          at 16#280# range 0 .. 31;
      HSP_SPE_ISR          at 16#284# range 0 .. 31;
      HSP_TCUCFGR          at 16#340# range 0 .. 31;
      HSP_TOVLPCR          at 16#344# range 0 .. 31;
      HSP_SNPR             at 16#378# range 0 .. 31;
      HSP_CCNTR            at 16#37C# range 0 .. 31;
      HSP_CAPCR            at 16#384# range 0 .. 31;
      HSP_ERR_IER          at 16#398# range 0 .. 31;
      HSP_EVT_IER          at 16#39C# range 0 .. 31;
      HSP_PFCTEVT_IER      at 16#3A0# range 0 .. 31;
      HSP_ERR_ISR          at 16#3A4# range 0 .. 31;
      HSP_EVT_ISR          at 16#3A8# range 0 .. 31;
      HSP_PFCTEVT_ISR      at 16#3AC# range 0 .. 31;
      HSP_ERRINFR          at 16#3B0# range 0 .. 31;
      HSP_ERR_ICR          at 16#3B4# range 0 .. 31;
      HSP_EVT_ICR          at 16#3B8# range 0 .. 31;
      HSP_PFCTEVT_ICR      at 16#3BC# range 0 .. 31;
      HSP_CAPDR            at 16#380# range 0 .. 31;
      HSP_CAPDR_ALTERNATE1 at 16#380# range 0 .. 31;
   end record;

   --  HSP register block
   HSP_Periph : aliased HSP_Peripheral
     with Import, Address => HSP_Base;

   --  HSP register block
   HSP_S_Periph : aliased HSP_Peripheral
     with Import, Address => HSP_S_Base;

end STM32_SVD.HSP;
