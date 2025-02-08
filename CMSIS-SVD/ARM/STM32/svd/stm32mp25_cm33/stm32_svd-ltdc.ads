--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.LTDC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LTDC_IDR_REV_Field is HAL.UInt8;
   subtype LTDC_IDR_MINVER_Field is HAL.UInt8;
   subtype LTDC_IDR_MAJVER_Field is HAL.UInt8;

   --  LTDC identification register
   type LTDC_IDR_Register is record
      --  Read-only. Revision
      REV            : LTDC_IDR_REV_Field;
      --  Read-only. LTDC minor version
      MINVER         : LTDC_IDR_MINVER_Field;
      --  Read-only. LTDC major version
      MAJVER         : LTDC_IDR_MAJVER_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_IDR_Register use record
      REV            at 0 range 0 .. 7;
      MINVER         at 0 range 8 .. 15;
      MAJVER         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTDC_LCR_LNBR_Field is HAL.UInt8;

   --  LDTC layer count register
   type LTDC_LCR_Register is record
      --  Read-only. Number of layers
      LNBR          : LTDC_LCR_LNBR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_LCR_Register use record
      LNBR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LTDC_SSCR_VSH_Field is HAL.UInt12;
   subtype LTDC_SSCR_HSW_Field is HAL.UInt12;

   --  LTDC synchronization size configuration register
   type LTDC_SSCR_Register is record
      --  Vertical synchronization height (in units of horizontal scan line)
      VSH            : LTDC_SSCR_VSH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Horizontal synchronization width (in units of pixel clock period)
      HSW            : LTDC_SSCR_HSW_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_SSCR_Register use record
      VSH            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HSW            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_BPCR_AVBP_Field is HAL.UInt12;
   subtype LTDC_BPCR_AHBP_Field is HAL.UInt12;

   --  LTDC back porch configuration register
   type LTDC_BPCR_Register is record
      --  Accumulated Vertical back porch (in units of horizontal scan line)
      AVBP           : LTDC_BPCR_AVBP_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Accumulated horizontal back porch (in units of pixel clock period)
      AHBP           : LTDC_BPCR_AHBP_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_BPCR_Register use record
      AVBP           at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      AHBP           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_AWCR_AAH_Field is HAL.UInt12;
   subtype LTDC_AWCR_AAW_Field is HAL.UInt12;

   --  LTDC active width configuration register
   type LTDC_AWCR_Register is record
      --  Accumulated active height (in units of horizontal scan line)
      AAH            : LTDC_AWCR_AAH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Accumulated active width (in units of pixel clock period)
      AAW            : LTDC_AWCR_AAW_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_AWCR_Register use record
      AAH            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      AAW            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_TWCR_TOTALH_Field is HAL.UInt12;
   subtype LTDC_TWCR_TOTALW_Field is HAL.UInt12;

   --  LTDC total width configuration register
   type LTDC_TWCR_Register is record
      --  Total height (in units of horizontal scan line)
      TOTALH         : LTDC_TWCR_TOTALH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Total width (in units of pixel clock period)
      TOTALW         : LTDC_TWCR_TOTALW_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_TWCR_Register use record
      TOTALH         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TOTALW         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_GCR_DBW_Field is HAL.UInt3;
   subtype LTDC_GCR_DGW_Field is HAL.UInt3;
   subtype LTDC_GCR_DRW_Field is HAL.UInt3;

   --  LTDC global control register
   type LTDC_GCR_Register is record
      --  LTDC global enable
      LTDCEN         : Boolean := False;
      --  Gamma correction enable
      GAMEN          : Boolean := False;
      --  Rotation enable
      ROTEN          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Read-only. Dither blue width
      DBW            : LTDC_GCR_DBW_Field := 16#2#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Read-only. Dither green width
      DGW            : LTDC_GCR_DGW_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. Dither red width
      DRW            : LTDC_GCR_DRW_Field := 16#2#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Dither enable
      DEN            : Boolean := False;
      --  unspecified
      Reserved_17_18 : HAL.UInt2 := 16#0#;
      --  CRC enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Single-frame mode enable
      SFEN           : Boolean := False;
      --  Write-only. Single-frame mode software trigger
      SFSWTR         : Boolean := False;
      --  Single-frame mode: external trigger enable
      SFEXEN         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Pixel clock polarity
      PCPOL          : Boolean := False;
      --  Blanking (no data/pixel) polarity
      DEPOL          : Boolean := False;
      --  Vertical synchronization polarity
      VSPOL          : Boolean := False;
      --  Horizontal synchronization polarity
      HSPOL          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_GCR_Register use record
      LTDCEN         at 0 range 0 .. 0;
      GAMEN          at 0 range 1 .. 1;
      ROTEN          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DBW            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DGW            at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DRW            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DEN            at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      CRCEN          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SFEN           at 0 range 24 .. 24;
      SFSWTR         at 0 range 25 .. 25;
      SFEXEN         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PCPOL          at 0 range 28 .. 28;
      DEPOL          at 0 range 29 .. 29;
      VSPOL          at 0 range 30 .. 30;
      HSPOL          at 0 range 31 .. 31;
   end record;

   subtype LTDC_GC1R_WBCH_Field is HAL.UInt4;
   subtype LTDC_GC1R_WGCH_Field is HAL.UInt4;
   subtype LTDC_GC1R_WRCH_Field is HAL.UInt4;
   subtype LTDC_GC1R_DT_Field is HAL.UInt2;
   subtype LTDC_GC1R_GCT_Field is HAL.UInt3;

   --  LTDC global configuration 1 register
   type LTDC_GC1R_Register is record
      --  Read-only. Width of blue channel output
      WBCH           : LTDC_GC1R_WBCH_Field;
      --  Read-only. Width of green channel output
      WGCH           : LTDC_GC1R_WGCH_Field;
      --  Read-only. Width of red channel output
      WRCH           : LTDC_GC1R_WRCH_Field;
      --  Read-only. Precise blending ability
      PRBA           : Boolean;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. Dithering technique implemented
      DT             : LTDC_GC1R_DT_Field;
      --  unspecified
      Reserved_16_16 : HAL.Bit;
      --  Read-only. Gamma correction technique implemented
      GCT            : LTDC_GC1R_GCT_Field;
      --  unspecified
      Reserved_20_20 : HAL.Bit;
      --  Read-only. Shadow register ability
      SHRA           : Boolean;
      --  Read-only. Background color programmability (unique color blended as
      --  background)
      BCP            : Boolean;
      --  Read-only. Background blending ability
      BBA            : Boolean;
      --  Read-only. Line-IRQ: line position programmability
      LNIP           : Boolean;
      --  Read-only. Timing programmability
      TP             : Boolean;
      --  unspecified
      Reserved_26_26 : HAL.Bit;
      --  Read-only. Sync polarity programmability
      SPP            : Boolean;
      --  Read-only. Dither width programmability
      DWP            : Boolean;
      --  Read-only. Status register ability
      STRA           : Boolean;
      --  Read-only. Configuration reading mode ability
      CRMA           : Boolean;
      --  Read-only. Blind mode ability
      BMA            : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_GC1R_Register use record
      WBCH           at 0 range 0 .. 3;
      WGCH           at 0 range 4 .. 7;
      WRCH           at 0 range 8 .. 11;
      PRBA           at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      DT             at 0 range 14 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GCT            at 0 range 17 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      SHRA           at 0 range 21 .. 21;
      BCP            at 0 range 22 .. 22;
      BBA            at 0 range 23 .. 23;
      LNIP           at 0 range 24 .. 24;
      TP             at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      SPP            at 0 range 27 .. 27;
      DWP            at 0 range 28 .. 28;
      STRA           at 0 range 29 .. 29;
      CRMA           at 0 range 30 .. 30;
      BMA            at 0 range 31 .. 31;
   end record;

   subtype LTDC_GC2R_BW_Field is HAL.UInt3;

   --  LTDC global configuration 2 register
   type LTDC_GC2R_Register is record
      --  Read-only. Background layer ability (pixels of background layer are
      --  read from memory)
      BLA            : Boolean;
      --  Read-only. Slave timings synchronization ability
      STSA           : Boolean;
      --  Read-only. Dual-view ability
      DVA            : Boolean;
      --  Read-only. Secondary RGB output port ability
      DPA            : Boolean;
      --  Read-only. Bus width (log2 of number of bytes)
      BW             : LTDC_GC2R_BW_Field;
      --  Read-only. External display control ability
      EDCA           : Boolean;
      --  Read-only. Output conversion ability (RGB to YCbCr)
      OCA            : Boolean;
      --  Read-only. AXIID ability
      AXIIDA         : Boolean;
      --  Read-only. Rotation support ability
      ROTA           : Boolean;
      --  Read-only. Second interrupt set ability
      SISA           : Boolean;
      --  Read-only. Single frame mode ability
      SFA            : Boolean;
      --  Read-only. CRC ability
      CRCA           : Boolean;
      --  unspecified
      Reserved_14_14 : HAL.Bit;
      --  Read-only. Blending order ability
      BOA            : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_GC2R_Register use record
      BLA            at 0 range 0 .. 0;
      STSA           at 0 range 1 .. 1;
      DVA            at 0 range 2 .. 2;
      DPA            at 0 range 3 .. 3;
      BW             at 0 range 4 .. 6;
      EDCA           at 0 range 7 .. 7;
      OCA            at 0 range 8 .. 8;
      AXIIDA         at 0 range 9 .. 9;
      ROTA           at 0 range 10 .. 10;
      SISA           at 0 range 11 .. 11;
      SFA            at 0 range 12 .. 12;
      CRCA           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BOA            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LTDC shadow reload configuration register
   type LTDC_SRCR_Register is record
      --  Immediate reload trigger
      IMR           : Boolean := False;
      --  Vertical blanking reload request
      VBR           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_SRCR_Register use record
      IMR           at 0 range 0 .. 0;
      VBR           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LTDC_GCCR_ADDR_Field is HAL.UInt8;
   subtype LTDC_GCCR_COMP_Field is HAL.UInt8;

   --  LTDC gamma correction configuration register
   type LTDC_GCCR_Register is record
      --  Write-only. Address of the R,G,B table where the COMP component is
      --  written
      ADDR           : LTDC_GCCR_ADDR_Field := 16#0#;
      --  Write-only. Color component to be written, in either (or all) the
      --  R,G,B tables
      COMP           : LTDC_GCCR_COMP_Field := 16#0#;
      --  Write-only. Write trigger to the blue table
      BEN            : Boolean := False;
      --  Write-only. Write trigger to the green table
      GEN            : Boolean := False;
      --  Write-only. Write trigger to the red table
      REN            : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_GCCR_Register use record
      ADDR           at 0 range 0 .. 7;
      COMP           at 0 range 8 .. 15;
      BEN            at 0 range 16 .. 16;
      GEN            at 0 range 17 .. 17;
      REN            at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LTDC_BCCR_BCBLUE_Field is HAL.UInt8;
   subtype LTDC_BCCR_BCGREEN_Field is HAL.UInt8;
   subtype LTDC_BCCR_BCRED_Field is HAL.UInt8;

   --  LTDC background color configuration register
   type LTDC_BCCR_Register is record
      --  Background color blue value
      BCBLUE         : LTDC_BCCR_BCBLUE_Field := 16#0#;
      --  Background color green value
      BCGREEN        : LTDC_BCCR_BCGREEN_Field := 16#0#;
      --  Background color red value
      BCRED          : LTDC_BCCR_BCRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_BCCR_Register use record
      BCBLUE         at 0 range 0 .. 7;
      BCGREEN        at 0 range 8 .. 15;
      BCRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  LTDC interrupt enable register
   type LTDC_IER_Register is record
      --  Line interrupt enable
      LIE           : Boolean := False;
      --  FIFO underrun warning interrupt enable
      FUWIE         : Boolean := False;
      --  Transfer error interrupt enable
      TERRIE        : Boolean := False;
      --  Register reload interrupt enable
      RRIE          : Boolean := False;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  FIFO underrun interrupt enable
      FUIE          : Boolean := False;
      --  CRC error interrupt enable
      CRCIE         : Boolean := False;
      --  FIFO underrun at rotation interrupt enable
      FURIE         : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_IER_Register use record
      LIE           at 0 range 0 .. 0;
      FUWIE         at 0 range 1 .. 1;
      TERRIE        at 0 range 2 .. 2;
      RRIE          at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FUIE          at 0 range 6 .. 6;
      CRCIE         at 0 range 7 .. 7;
      FURIE         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  LTDC interrupt status register
   type LTDC_ISR_Register is record
      --  Read-only. Line interrupt flag
      LIF           : Boolean;
      --  Read-only. FIFO underrun warning interrupt flag
      FUWIF         : Boolean;
      --  Read-only. Transfer error interrupt flag
      TERRIF        : Boolean;
      --  Read-only. Register reload interrupt flag
      RRIF          : Boolean;
      --  unspecified
      Reserved_4_5  : HAL.UInt2;
      --  Read-only. FIFO underrun interrupt flag
      FUIF          : Boolean;
      --  Read-only. CRC error interrupt flag
      CRCIF         : Boolean;
      --  Read-only. FIFO underrun at rotation interrupt flag
      FURIF         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_ISR_Register use record
      LIF           at 0 range 0 .. 0;
      FUWIF         at 0 range 1 .. 1;
      TERRIF        at 0 range 2 .. 2;
      RRIF          at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FUIF          at 0 range 6 .. 6;
      CRCIF         at 0 range 7 .. 7;
      FURIF         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  LTDC interrupt clear register
   type LTDC_ICR_Register is record
      --  Write-only. Line-interrupt flag clear
      CLIF          : Boolean := False;
      --  Write-only. FIFO underrun warning interrupt flag clear
      CFUWIF        : Boolean := False;
      --  Write-only. Transfer error interrupt flag clear
      CTERRIF       : Boolean := False;
      --  Write-only. Register reload interrupt flag clear
      CRRIF         : Boolean := False;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Write-only. FIFO underrun interrupt flag clear
      CFUIF         : Boolean := False;
      --  Write-only. CRC error interrupt flag clear
      CCRCIF        : Boolean := False;
      --  Write-only. FIFO underrun at rotation interrupt flag clear
      CFURIF        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_ICR_Register use record
      CLIF          at 0 range 0 .. 0;
      CFUWIF        at 0 range 1 .. 1;
      CTERRIF       at 0 range 2 .. 2;
      CRRIF         at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      CFUIF         at 0 range 6 .. 6;
      CCRCIF        at 0 range 7 .. 7;
      CFURIF        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LTDC_LIPCR_LIPOS_Field is HAL.UInt12;

   --  LTDC line interrupt position configuration register
   type LTDC_LIPCR_Register is record
      --  Line interrupt position
      LIPOS          : LTDC_LIPCR_LIPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_LIPCR_Register use record
      LIPOS          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_CPSR_CYPOS_Field is HAL.UInt12;
   subtype LTDC_CPSR_CXPOS_Field is HAL.UInt12;

   --  LTDC current position status register
   type LTDC_CPSR_Register is record
      --  Read-only. Current Y position
      CYPOS          : LTDC_CPSR_CYPOS_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Current X position
      CXPOS          : LTDC_CPSR_CXPOS_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_CPSR_Register use record
      CYPOS          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      CXPOS          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  LTDC current display status register
   type LTDC_CDSR_Register is record
      --  Read-only. Vertical data enable display status
      VDES          : Boolean;
      --  Read-only. Horizontal data enable display status
      HDES          : Boolean;
      --  Read-only. Vertical synchronization display status
      VSYNCS        : Boolean;
      --  Read-only. Horizontal synchronization display status
      HSYNCS        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_CDSR_Register use record
      VDES          at 0 range 0 .. 0;
      HDES          at 0 range 1 .. 1;
      VSYNCS        at 0 range 2 .. 2;
      HSYNCS        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LTDC external display control register
   type LTDC_EDCR_Register is record
      --  unspecified
      Reserved_0_24  : HAL.UInt25 := 16#0#;
      --  Output conversion to YCbCr 422 enable
      OCYEN          : Boolean := False;
      --  Output conversion to YCbCr 422
      OCYSEL         : Boolean := False;
      --  Output conversion to YCbCr 422
      OCYCO          : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_EDCR_Register use record
      Reserved_0_24  at 0 range 0 .. 24;
      OCYEN          at 0 range 25 .. 25;
      OCYSEL         at 0 range 26 .. 26;
      OCYCO          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_ECRCR_ECRC_Field is HAL.UInt16;

   --  LTDC expected CRC register
   type LTDC_ECRCR_Register is record
      --  Expected CRC of frame
      ECRC           : LTDC_ECRCR_ECRC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_ECRCR_Register use record
      ECRC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_CCRCR_CCRC_Field is HAL.UInt16;

   --  LTDC computed CRC register
   type LTDC_CCRCR_Register is record
      --  Read-only. Computed CRC of frame
      CCRC           : LTDC_CCRCR_CCRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_CCRCR_Register use record
      CCRC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_RBPR_PITCH_Field is HAL.UInt12;

   --  LTDC rotation buffer pitch register
   type LTDC_RBPR_Register is record
      --  Pitch in bytes of the rotation buffers 0 and 1
      PITCH          : LTDC_RBPR_PITCH_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_RBPR_Register use record
      PITCH          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_RIFCR_RIFBLUE_Field is HAL.UInt8;
   subtype LTDC_RIFCR_RIFGREEN_Field is HAL.UInt8;
   subtype LTDC_RIFCR_RIFRED_Field is HAL.UInt8;

   --  LTDC rotation intermediate frame color register
   type LTDC_RIFCR_Register is record
      --  Blue component of the rotation intermediate frame
      RIFBLUE        : LTDC_RIFCR_RIFBLUE_Field := 16#0#;
      --  Green component of the rotation intermediate frame
      RIFGREEN       : LTDC_RIFCR_RIFGREEN_Field := 16#0#;
      --  Red component of the rotation intermediate frame
      RIFRED         : LTDC_RIFCR_RIFRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_RIFCR_Register use record
      RIFBLUE        at 0 range 0 .. 7;
      RIFGREEN       at 0 range 8 .. 15;
      RIFRED         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTDC_FUTR_THRE_Field is HAL.UInt16;

   --  LTDC FIFO underrun threshold register
   type LTDC_FUTR_Register is record
      --  Threshold to trigger a FIFO underrun interrupt (per FIFO word, 64
      --  bits)
      THRE           : LTDC_FUTR_THRE_Field := 16#10#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_FUTR_Register use record
      THRE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LTDC layer 1 configuration 0 register
   type LTDC_L1C0R_Register is record
      --  Read-only. Color key transparency ability
      CKTA     : Boolean;
      --  Read-only. Color frame buffer duplication ability
      CFBDA    : Boolean;
      --  Read-only. Color frame buffer pitch ability
      CFBPA    : Boolean;
      --  Read-only. Alpha plane ability
      APA      : Boolean;
      --  Read-only. Default color programmability
      DCP      : Boolean;
      --  Read-only. Windowing ability
      WINA     : Boolean;
      --  Read-only. CLUT ability
      CLUTA    : Boolean;
      --  Read-only. Color key replace ability
      CKRA     : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21      : Boolean;
      --  Read-only. Blending factor 2, ability for 0.
      F20      : Boolean;
      --  Read-only. Blending factor 2, ability for pixel_alpha
      F2P      : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21P     : Boolean;
      --  Read-only. Blending factor 2, ability for constant_alpha
      F2C      : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21C     : Boolean;
      --  Read-only. Blending factor 2, ability for pixel_alpha *
      --  constant_alpha
      F2PC     : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21PC    : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11      : Boolean;
      --  Read-only. Blending factor 1,ability for 0.
      F10      : Boolean;
      --  Read-only. Blending factor 1, ability for pixel_alpha
      F1P      : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11P     : Boolean;
      --  Read-only. Blending factor 1, ability for constant_alpha
      F1C      : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11C     : Boolean;
      --  Read-only. Blending factor 1, ability for pixel_alpha *
      --  constant_alpha
      F1PC     : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11PC    : Boolean;
      --  Read-only. Flexible pixel format, ability
      FF       : Boolean;
      --  Read-only. Pixel format, ability for rgb888
      RGB888   : Boolean;
      --  Read-only. Pixel format, ability for bgr565
      BGR565   : Boolean;
      --  Read-only. Pixel format, ability for rgb565
      RGB565   : Boolean;
      --  Read-only. Pixel format, ability for bgra8888
      BGRA888  : Boolean;
      --  Read-only. Pixel format, ability for rgba8888
      RGBA8888 : Boolean;
      --  Read-only. Pixel format, ability for abgr8888
      ABGR8888 : Boolean;
      --  Read-only. Pixel format, ability for argb8888
      ARGB8888 : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1C0R_Register use record
      CKTA     at 0 range 0 .. 0;
      CFBDA    at 0 range 1 .. 1;
      CFBPA    at 0 range 2 .. 2;
      APA      at 0 range 3 .. 3;
      DCP      at 0 range 4 .. 4;
      WINA     at 0 range 5 .. 5;
      CLUTA    at 0 range 6 .. 6;
      CKRA     at 0 range 7 .. 7;
      F21      at 0 range 8 .. 8;
      F20      at 0 range 9 .. 9;
      F2P      at 0 range 10 .. 10;
      F21P     at 0 range 11 .. 11;
      F2C      at 0 range 12 .. 12;
      F21C     at 0 range 13 .. 13;
      F2PC     at 0 range 14 .. 14;
      F21PC    at 0 range 15 .. 15;
      F11      at 0 range 16 .. 16;
      F10      at 0 range 17 .. 17;
      F1P      at 0 range 18 .. 18;
      F11P     at 0 range 19 .. 19;
      F1C      at 0 range 20 .. 20;
      F11C     at 0 range 21 .. 21;
      F1PC     at 0 range 22 .. 22;
      F11PC    at 0 range 23 .. 23;
      FF       at 0 range 24 .. 24;
      RGB888   at 0 range 25 .. 25;
      BGR565   at 0 range 26 .. 26;
      RGB565   at 0 range 27 .. 27;
      BGRA888  at 0 range 28 .. 28;
      RGBA8888 at 0 range 29 .. 29;
      ABGR8888 at 0 range 30 .. 30;
      ARGB8888 at 0 range 31 .. 31;
   end record;

   --  LTDC layer 1 configuration 1 register
   type LTDC_L1C1R_Register is record
      --  Read-only. YCbCr 422 interleaved ability for this layer
      YIA           : Boolean;
      --  Read-only. YCbCr 420 semi-planar ability for this layer
      YSPA          : Boolean;
      --  Read-only. YCbCr 420 full-planar ability for this layer
      YFPA          : Boolean;
      --  unspecified
      Reserved_3_30 : HAL.UInt28;
      --  Read-only. Scaling ability for this layer
      SCA           : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1C1R_Register use record
      YIA           at 0 range 0 .. 0;
      YSPA          at 0 range 1 .. 1;
      YFPA          at 0 range 2 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      SCA           at 0 range 31 .. 31;
   end record;

   --  LTDC layer 1 reload control register
   type LTDC_L1RCR_Register is record
      --  Write-only. Immediate reload trigger
      IMR           : Boolean := False;
      --  Vertical blanking reload request
      VBR           : Boolean := False;
      --  Shadow reload control, global (centralized) reload masked
      GRMSK         : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1RCR_Register use record
      IMR           at 0 range 0 .. 0;
      VBR           at 0 range 1 .. 1;
      GRMSK         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  LTDC layer 1 control register
   type LTDC_L1CR_Register is record
      --  Layer enable
      LEN            : Boolean := False;
      --  Color keying enable
      CKEN           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Color look-up table enable
      CLUTEN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Horizontal mirroring enable
      HMEN           : Boolean := False;
      --  Default color blending enable
      DCBEN          : Boolean := False;
      --  Scaler enable
      SCEN           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CR_Register use record
      LEN            at 0 range 0 .. 0;
      CKEN           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CLUTEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      HMEN           at 0 range 8 .. 8;
      DCBEN          at 0 range 9 .. 9;
      SCEN           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype LTDC_L1WHPCR_WHSTPOS_Field is HAL.UInt12;
   subtype LTDC_L1WHPCR_WHSPPOS_Field is HAL.UInt12;

   --  LTDC layer 1 window horizontal position configuration register
   type LTDC_L1WHPCR_Register is record
      --  Window horizontal start position
      WHSTPOS        : LTDC_L1WHPCR_WHSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window horizontal stop position
      WHSPPOS        : LTDC_L1WHPCR_WHSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1WHPCR_Register use record
      WHSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WHSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L1WVPCR_WVSTPOS_Field is HAL.UInt12;
   subtype LTDC_L1WVPCR_WVSPPOS_Field is HAL.UInt12;

   --  LTDC layer 1 window vertical position configuration register
   type LTDC_L1WVPCR_Register is record
      --  Window vertical start position
      WVSTPOS        : LTDC_L1WVPCR_WVSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window vertical stop position
      WVSPPOS        : LTDC_L1WVPCR_WVSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1WVPCR_Register use record
      WVSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WVSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L1CKCR_CKBLUE_Field is HAL.UInt8;
   subtype LTDC_L1CKCR_CKGREEN_Field is HAL.UInt8;
   subtype LTDC_L1CKCR_CKRED_Field is HAL.UInt8;

   --  LTDC layer 1 color keying configuration register
   type LTDC_L1CKCR_Register is record
      --  Color key blue value
      CKBLUE         : LTDC_L1CKCR_CKBLUE_Field := 16#0#;
      --  Color key green value
      CKGREEN        : LTDC_L1CKCR_CKGREEN_Field := 16#0#;
      --  Color key red value
      CKRED          : LTDC_L1CKCR_CKRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CKCR_Register use record
      CKBLUE         at 0 range 0 .. 7;
      CKGREEN        at 0 range 8 .. 15;
      CKRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTDC_L1PFCR_PF_Field is HAL.UInt3;

   --  LTDC layer 1 pixel format configuration register
   type LTDC_L1PFCR_Register is record
      --  Pixel format
      PF            : LTDC_L1PFCR_PF_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1PFCR_Register use record
      PF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype LTDC_L1CACR_CONSTA_Field is HAL.UInt8;

   --  LTDC layer 1 constant alpha configuration register
   type LTDC_L1CACR_Register is record
      --  Constant alpha
      CONSTA        : LTDC_L1CACR_CONSTA_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CACR_Register use record
      CONSTA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LTDC_L1DCCR_DCBLUE_Field is HAL.UInt8;
   subtype LTDC_L1DCCR_DCGREEN_Field is HAL.UInt8;
   subtype LTDC_L1DCCR_DCRED_Field is HAL.UInt8;
   subtype LTDC_L1DCCR_DCALPHA_Field is HAL.UInt8;

   --  LTDC layer 1 default color configuration register
   type LTDC_L1DCCR_Register is record
      --  Default color blue
      DCBLUE  : LTDC_L1DCCR_DCBLUE_Field := 16#0#;
      --  Default color green
      DCGREEN : LTDC_L1DCCR_DCGREEN_Field := 16#0#;
      --  Default color red
      DCRED   : LTDC_L1DCCR_DCRED_Field := 16#0#;
      --  Default color alpha
      DCALPHA : LTDC_L1DCCR_DCALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1DCCR_Register use record
      DCBLUE  at 0 range 0 .. 7;
      DCGREEN at 0 range 8 .. 15;
      DCRED   at 0 range 16 .. 23;
      DCALPHA at 0 range 24 .. 31;
   end record;

   subtype LTDC_L1BFCR_BF2_Field is HAL.UInt3;
   subtype LTDC_L1BFCR_BF1_Field is HAL.UInt3;
   subtype LTDC_L1BFCR_BOR_Field is HAL.UInt3;

   --  LTDC layer 1 blending factors configuration register
   type LTDC_L1BFCR_Register is record
      --  Blending factor 2
      BF2            : LTDC_L1BFCR_BF2_Field := 16#7#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Default factor 1
      BF1            : LTDC_L1BFCR_BF1_Field := 16#6#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Blending order
      BOR            : LTDC_L1BFCR_BOR_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1BFCR_Register use record
      BF2            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BF1            at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BOR            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LTDC_L1BLCR_BL_Field is HAL.UInt5;

   --  LTDC layer 1 burst length configuration register
   type LTDC_L1BLCR_Register is record
      --  Burst length
      BL            : LTDC_L1BLCR_BL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1BLCR_Register use record
      BL            at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LTDC_L1PCR_YCM_Field is HAL.UInt2;

   --  LTDC layer 1 planar configuration register
   type LTDC_L1PCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  YCbCr-to-RGB conversion enable
      YCEN           : Boolean := False;
      --  YCbCr conversion mode
      YCM            : LTDC_L1PCR_YCM_Field := 16#0#;
      --  Y component first
      YF             : Boolean := False;
      --  Cb component first
      CBF            : Boolean := False;
      --  Odd pixel first
      OF_k           : Boolean := False;
      --  Y rescale enable for the color dynamic range
      YREN           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1PCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      YCEN           at 0 range 3 .. 3;
      YCM            at 0 range 4 .. 5;
      YF             at 0 range 6 .. 6;
      CBF            at 0 range 7 .. 7;
      OF_k           at 0 range 8 .. 8;
      YREN           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype LTDC_L1CFBLR_CFBLL_Field is HAL.UInt14;
   subtype LTDC_L1CFBLR_CFBP_Field is HAL.UInt15;

   --  LTDC layer 1 color frame buffer length register
   type LTDC_L1CFBLR_Register is record
      --  Color frame buffer line length
      CFBLL          : LTDC_L1CFBLR_CFBLL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Color frame buffer pitch in bytes
      CFBP           : LTDC_L1CFBLR_CFBP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CFBLR_Register use record
      CFBLL          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CFBP           at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LTDC_L1CFBLNR_CFBLNBR_Field is HAL.UInt12;

   --  LTDC layer 1 color frame buffer line number register
   type LTDC_L1CFBLNR_Register is record
      --  Frame buffer line number
      CFBLNBR        : LTDC_L1CFBLNR_CFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CFBLNR_Register use record
      CFBLNBR        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_L1AFBLR_AFBLL_Field is HAL.UInt14;
   subtype LTDC_L1AFBLR_AFBP_Field is HAL.UInt15;

   --  LTDC layer 1 auxiliary frame buffer length register
   type LTDC_L1AFBLR_Register is record
      --  Auxiliary frame buffer line length
      AFBLL          : LTDC_L1AFBLR_AFBLL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Auxiliary frame buffer pitch in bytes
      AFBP           : LTDC_L1AFBLR_AFBP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1AFBLR_Register use record
      AFBLL          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      AFBP           at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LTDC_L1AFBLNR_AFBLNBR_Field is HAL.UInt12;

   --  LTDC layer 1 auxiliary frame buffer line number register
   type LTDC_L1AFBLNR_Register is record
      --  Auxiliary frame buffer line number
      AFBLNBR        : LTDC_L1AFBLNR_AFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1AFBLNR_Register use record
      AFBLNBR        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_L1CLUTWR_BLUE_Field is HAL.UInt8;
   subtype LTDC_L1CLUTWR_GREEN_Field is HAL.UInt8;
   subtype LTDC_L1CLUTWR_RED_Field is HAL.UInt8;
   subtype LTDC_L1CLUTWR_CLUTADD_Field is HAL.UInt8;

   --  LTDC layer 1 CLUT write register
   type LTDC_L1CLUTWR_Register is record
      --  Write-only. Blue value
      BLUE    : LTDC_L1CLUTWR_BLUE_Field := 16#0#;
      --  Write-only. Green value
      GREEN   : LTDC_L1CLUTWR_GREEN_Field := 16#0#;
      --  Write-only. Red value
      RED     : LTDC_L1CLUTWR_RED_Field := 16#0#;
      --  Write-only. CLUT address
      CLUTADD : LTDC_L1CLUTWR_CLUTADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CLUTWR_Register use record
      BLUE    at 0 range 0 .. 7;
      GREEN   at 0 range 8 .. 15;
      RED     at 0 range 16 .. 23;
      CLUTADD at 0 range 24 .. 31;
   end record;

   subtype LTDC_L1SISR_SIH_Field is HAL.UInt12;
   subtype LTDC_L1SISR_SIV_Field is HAL.UInt12;

   --  LTDC layer 1 scaler input size register
   type LTDC_L1SISR_Register is record
      --  Scaler horizontal input size (input width)
      SIH            : LTDC_L1SISR_SIH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Scaler vertical input size (input height)
      SIV            : LTDC_L1SISR_SIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1SISR_Register use record
      SIH            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SIV            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L1SOSR_SOH_Field is HAL.UInt12;
   subtype LTDC_L1SOSR_SOV_Field is HAL.UInt12;

   --  LTDC layer 1 scaler output size register
   type LTDC_L1SOSR_Register is record
      --  Scaler horizontal output size (output width)
      SOH            : LTDC_L1SOSR_SOH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Scaler vertical output size (output height)
      SOV            : LTDC_L1SOSR_SOV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1SOSR_Register use record
      SOH            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SOV            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L1SVSFR_SVF_Field is HAL.UInt16;

   --  LTDC layer 1 scaler vertical scaling factor register
   type LTDC_L1SVSFR_Register is record
      --  Scaler vertical scaling factor
      SVF            : LTDC_L1SVSFR_SVF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1SVSFR_Register use record
      SVF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L1SVSPR_SVP_Field is HAL.UInt16;

   --  LTDC layer 1 scaler vertical scaling phase register
   type LTDC_L1SVSPR_Register is record
      --  Scaler vertical scaling factor
      SVP            : LTDC_L1SVSPR_SVP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1SVSPR_Register use record
      SVP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L1SHSFR_SHF_Field is HAL.UInt16;

   --  LTDC layer 1 scaler horizontal scaling factor register
   type LTDC_L1SHSFR_Register is record
      --  Scaler horizontal scaling factor
      SHF            : LTDC_L1SHSFR_SHF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1SHSFR_Register use record
      SHF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L1SHSPR_SHP_Field is HAL.UInt16;

   --  LTDC layer 1 scaler horizontal scaling phase register
   type LTDC_L1SHSPR_Register is record
      --  Scaler horizontal scaling phase
      SHP            : LTDC_L1SHSPR_SHP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1SHSPR_Register use record
      SHP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L1CYR0R_CR2R_Field is HAL.UInt10;
   subtype LTDC_L1CYR0R_CB2B_Field is HAL.UInt10;

   --  LTDC layer 1 conversion YCbCr RGB 0 register
   type LTDC_L1CYR0R_Register is record
      --  Cr-to-Red coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CR2R           : LTDC_L1CYR0R_CR2R_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Cb-to-Blue coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CB2B           : LTDC_L1CYR0R_CB2B_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CYR0R_Register use record
      CR2R           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CB2B           at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LTDC_L1CYR1R_CR2G_Field is HAL.UInt10;
   subtype LTDC_L1CYR1R_CB2G_Field is HAL.UInt10;

   --  LTDC layer 1 conversion YCbCr RGB 1 register
   type LTDC_L1CYR1R_Register is record
      --  Cr-to-Green coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CR2G           : LTDC_L1CYR1R_CR2G_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Cb-to-Green coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CB2G           : LTDC_L1CYR1R_CB2G_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1CYR1R_Register use record
      CR2G           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CB2G           at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LTDC_L1FPF0R_APOS_Field is HAL.UInt5;
   subtype LTDC_L1FPF0R_ALEN_Field is HAL.UInt4;
   subtype LTDC_L1FPF0R_RPOS_Field is HAL.UInt5;
   subtype LTDC_L1FPF0R_RLEN_Field is HAL.UInt4;

   --  LTDC layer 1 flexible pixel format 0 register
   type LTDC_L1FPF0R_Register is record
      --  Location of the alpha component inside the pixel memory word (in
      --  bits)
      APOS           : LTDC_L1FPF0R_APOS_Field := 16#0#;
      --  Width of the alpha component (in bits)
      ALEN           : LTDC_L1FPF0R_ALEN_Field := 16#8#;
      --  Location of the red component inside the pixel memory word (in bits)
      RPOS           : LTDC_L1FPF0R_RPOS_Field := 16#8#;
      --  Width of the red component (in bits)
      RLEN           : LTDC_L1FPF0R_RLEN_Field := 16#8#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1FPF0R_Register use record
      APOS           at 0 range 0 .. 4;
      ALEN           at 0 range 5 .. 8;
      RPOS           at 0 range 9 .. 13;
      RLEN           at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype LTDC_L1FPF1R_GPOS_Field is HAL.UInt5;
   subtype LTDC_L1FPF1R_GLEN_Field is HAL.UInt4;
   subtype LTDC_L1FPF1R_BPOS_Field is HAL.UInt5;
   subtype LTDC_L1FPF1R_BLEN_Field is HAL.UInt4;
   subtype LTDC_L1FPF1R_PSIZE_Field is HAL.UInt3;

   --  LTDC layer 1 flexible pixel format 1 register
   type LTDC_L1FPF1R_Register is record
      --  Location of the green component inside the pixel memory word (in
      --  bits)
      GPOS           : LTDC_L1FPF1R_GPOS_Field := 16#10#;
      --  Width of the green component (in bits)
      GLEN           : LTDC_L1FPF1R_GLEN_Field := 16#8#;
      --  Location of the blue component inside the pixel memory word (in bits)
      BPOS           : LTDC_L1FPF1R_BPOS_Field := 16#18#;
      --  Width of the blue component (in bits)
      BLEN           : LTDC_L1FPF1R_BLEN_Field := 16#8#;
      --  Pixel size (in bytes)
      PSIZE          : LTDC_L1FPF1R_PSIZE_Field := 16#4#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L1FPF1R_Register use record
      GPOS           at 0 range 0 .. 4;
      GLEN           at 0 range 5 .. 8;
      BPOS           at 0 range 9 .. 13;
      BLEN           at 0 range 14 .. 17;
      PSIZE          at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  LTDC layer 2 configuration 0 register
   type LTDC_L2C0R_Register is record
      --  Read-only. Color key transparency ability
      CKTA     : Boolean;
      --  Read-only. Color frame buffer duplication ability
      CFBDA    : Boolean;
      --  Read-only. Color frame buffer pitch ability
      CFBPA    : Boolean;
      --  Read-only. Alpha plane ability
      APA      : Boolean;
      --  Read-only. Default color programmability
      DCP      : Boolean;
      --  Read-only. Windowing ability
      WINA     : Boolean;
      --  Read-only. CLUT ability
      CLUTA    : Boolean;
      --  Read-only. Color key replace ability
      CKRA     : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21      : Boolean;
      --  Read-only. Blending factor 2, ability for 0.
      F20      : Boolean;
      --  Read-only. Blending factor 2, ability for pixel_alpha
      F2P      : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21P     : Boolean;
      --  Read-only. Blending factor 2, ability for constant_alpha
      F2C      : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21C     : Boolean;
      --  Read-only. Blending factor 2, ability for pixel_alpha *
      --  constant_alpha
      F2PC     : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21PC    : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11      : Boolean;
      --  Read-only. Blending factor 1,ability for 0.
      F10      : Boolean;
      --  Read-only. Blending factor 1, ability for pixel_alpha
      F1P      : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11P     : Boolean;
      --  Read-only. Blending factor 1, ability for constant_alpha
      F1C      : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11C     : Boolean;
      --  Read-only. Blending factor 1, ability for pixel_alpha *
      --  constant_alpha
      F1PC     : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11PC    : Boolean;
      --  Read-only. Flexible pixel format, ability
      FF       : Boolean;
      --  Read-only. Pixel format, ability for rgb888
      RGB888   : Boolean;
      --  Read-only. Pixel format, ability for bgr565
      BGR565   : Boolean;
      --  Read-only. Pixel format, ability for rgb565
      RGB565   : Boolean;
      --  Read-only. Pixel format, ability for bgra8888
      BGRA888  : Boolean;
      --  Read-only. Pixel format, ability for rgba8888
      RGBA8888 : Boolean;
      --  Read-only. Pixel format, ability for abgr8888
      ABGR8888 : Boolean;
      --  Read-only. Pixel format, ability for argb8888
      ARGB8888 : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2C0R_Register use record
      CKTA     at 0 range 0 .. 0;
      CFBDA    at 0 range 1 .. 1;
      CFBPA    at 0 range 2 .. 2;
      APA      at 0 range 3 .. 3;
      DCP      at 0 range 4 .. 4;
      WINA     at 0 range 5 .. 5;
      CLUTA    at 0 range 6 .. 6;
      CKRA     at 0 range 7 .. 7;
      F21      at 0 range 8 .. 8;
      F20      at 0 range 9 .. 9;
      F2P      at 0 range 10 .. 10;
      F21P     at 0 range 11 .. 11;
      F2C      at 0 range 12 .. 12;
      F21C     at 0 range 13 .. 13;
      F2PC     at 0 range 14 .. 14;
      F21PC    at 0 range 15 .. 15;
      F11      at 0 range 16 .. 16;
      F10      at 0 range 17 .. 17;
      F1P      at 0 range 18 .. 18;
      F11P     at 0 range 19 .. 19;
      F1C      at 0 range 20 .. 20;
      F11C     at 0 range 21 .. 21;
      F1PC     at 0 range 22 .. 22;
      F11PC    at 0 range 23 .. 23;
      FF       at 0 range 24 .. 24;
      RGB888   at 0 range 25 .. 25;
      BGR565   at 0 range 26 .. 26;
      RGB565   at 0 range 27 .. 27;
      BGRA888  at 0 range 28 .. 28;
      RGBA8888 at 0 range 29 .. 29;
      ABGR8888 at 0 range 30 .. 30;
      ARGB8888 at 0 range 31 .. 31;
   end record;

   --  LTDC layer 2 configuration 1 register
   type LTDC_L2C1R_Register is record
      --  Read-only. YCbCr 422 interleaved ability for this layer
      YIA           : Boolean;
      --  Read-only. YCbCr 420 semi-planar ability for this layer
      YSPA          : Boolean;
      --  Read-only. YCbCr 420 full-planar ability for this layer
      YFPA          : Boolean;
      --  unspecified
      Reserved_3_30 : HAL.UInt28;
      --  Read-only. Scaling ability for this layer
      SCA           : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2C1R_Register use record
      YIA           at 0 range 0 .. 0;
      YSPA          at 0 range 1 .. 1;
      YFPA          at 0 range 2 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      SCA           at 0 range 31 .. 31;
   end record;

   --  LTDC layer 2 reload control register
   type LTDC_L2RCR_Register is record
      --  Write-only. Immediate reload trigger
      IMR           : Boolean := False;
      --  Vertical blanking reload request
      VBR           : Boolean := False;
      --  Shadow reload control, global (centralized) reload masked
      GRMSK         : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2RCR_Register use record
      IMR           at 0 range 0 .. 0;
      VBR           at 0 range 1 .. 1;
      GRMSK         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  LTDC layer 2 control register
   type LTDC_L2CR_Register is record
      --  Layer enable
      LEN            : Boolean := False;
      --  Color keying enable
      CKEN           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Color look-up table enable
      CLUTEN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Horizontal mirroring enable
      HMEN           : Boolean := False;
      --  Default color blending enable
      DCBEN          : Boolean := False;
      --  Scaler enable
      SCEN           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CR_Register use record
      LEN            at 0 range 0 .. 0;
      CKEN           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CLUTEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      HMEN           at 0 range 8 .. 8;
      DCBEN          at 0 range 9 .. 9;
      SCEN           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype LTDC_L2WHPCR_WHSTPOS_Field is HAL.UInt12;
   subtype LTDC_L2WHPCR_WHSPPOS_Field is HAL.UInt12;

   --  LTDC layer 2 window horizontal position configuration register
   type LTDC_L2WHPCR_Register is record
      --  Window horizontal start position
      WHSTPOS        : LTDC_L2WHPCR_WHSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window horizontal stop position
      WHSPPOS        : LTDC_L2WHPCR_WHSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2WHPCR_Register use record
      WHSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WHSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L2WVPCR_WVSTPOS_Field is HAL.UInt12;
   subtype LTDC_L2WVPCR_WVSPPOS_Field is HAL.UInt12;

   --  LTDC layer 2 window vertical position configuration register
   type LTDC_L2WVPCR_Register is record
      --  Window vertical start position
      WVSTPOS        : LTDC_L2WVPCR_WVSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window vertical stop position
      WVSPPOS        : LTDC_L2WVPCR_WVSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2WVPCR_Register use record
      WVSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WVSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L2CKCR_CKBLUE_Field is HAL.UInt8;
   subtype LTDC_L2CKCR_CKGREEN_Field is HAL.UInt8;
   subtype LTDC_L2CKCR_CKRED_Field is HAL.UInt8;

   --  LTDC layer 2 color keying configuration register
   type LTDC_L2CKCR_Register is record
      --  Color key blue value
      CKBLUE         : LTDC_L2CKCR_CKBLUE_Field := 16#0#;
      --  Color key green value
      CKGREEN        : LTDC_L2CKCR_CKGREEN_Field := 16#0#;
      --  Color key red value
      CKRED          : LTDC_L2CKCR_CKRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CKCR_Register use record
      CKBLUE         at 0 range 0 .. 7;
      CKGREEN        at 0 range 8 .. 15;
      CKRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTDC_L2PFCR_PF_Field is HAL.UInt3;

   --  LTDC layer 2 pixel format configuration register
   type LTDC_L2PFCR_Register is record
      --  Pixel format
      PF            : LTDC_L2PFCR_PF_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2PFCR_Register use record
      PF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype LTDC_L2CACR_CONSTA_Field is HAL.UInt8;

   --  LTDC layer 2 constant alpha configuration register
   type LTDC_L2CACR_Register is record
      --  Constant alpha
      CONSTA        : LTDC_L2CACR_CONSTA_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CACR_Register use record
      CONSTA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LTDC_L2DCCR_DCBLUE_Field is HAL.UInt8;
   subtype LTDC_L2DCCR_DCGREEN_Field is HAL.UInt8;
   subtype LTDC_L2DCCR_DCRED_Field is HAL.UInt8;
   subtype LTDC_L2DCCR_DCALPHA_Field is HAL.UInt8;

   --  LTDC layer 2 default color configuration register
   type LTDC_L2DCCR_Register is record
      --  Default color blue
      DCBLUE  : LTDC_L2DCCR_DCBLUE_Field := 16#0#;
      --  Default color green
      DCGREEN : LTDC_L2DCCR_DCGREEN_Field := 16#0#;
      --  Default color red
      DCRED   : LTDC_L2DCCR_DCRED_Field := 16#0#;
      --  Default color alpha
      DCALPHA : LTDC_L2DCCR_DCALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2DCCR_Register use record
      DCBLUE  at 0 range 0 .. 7;
      DCGREEN at 0 range 8 .. 15;
      DCRED   at 0 range 16 .. 23;
      DCALPHA at 0 range 24 .. 31;
   end record;

   subtype LTDC_L2BFCR_BF2_Field is HAL.UInt3;
   subtype LTDC_L2BFCR_BF1_Field is HAL.UInt3;
   subtype LTDC_L2BFCR_BOR_Field is HAL.UInt3;

   --  LTDC layer 2 blending factors configuration register
   type LTDC_L2BFCR_Register is record
      --  Blending factor 2
      BF2            : LTDC_L2BFCR_BF2_Field := 16#7#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Default factor 1
      BF1            : LTDC_L2BFCR_BF1_Field := 16#6#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Blending order
      BOR            : LTDC_L2BFCR_BOR_Field := 16#1#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2BFCR_Register use record
      BF2            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BF1            at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BOR            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LTDC_L2BLCR_BL_Field is HAL.UInt5;

   --  LTDC layer 2 burst length configuration register
   type LTDC_L2BLCR_Register is record
      --  Burst length
      BL            : LTDC_L2BLCR_BL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2BLCR_Register use record
      BL            at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LTDC_L2PCR_YCM_Field is HAL.UInt2;

   --  LTDC layer 2 planar configuration register
   type LTDC_L2PCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  YCbCr-to-RGB conversion enable
      YCEN           : Boolean := False;
      --  YCbCr conversion mode
      YCM            : LTDC_L2PCR_YCM_Field := 16#0#;
      --  Y component first
      YF             : Boolean := False;
      --  Cb component first
      CBF            : Boolean := False;
      --  Odd pixel first
      OF_k           : Boolean := False;
      --  Y rescale enable for the color dynamic range
      YREN           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2PCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      YCEN           at 0 range 3 .. 3;
      YCM            at 0 range 4 .. 5;
      YF             at 0 range 6 .. 6;
      CBF            at 0 range 7 .. 7;
      OF_k           at 0 range 8 .. 8;
      YREN           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype LTDC_L2CFBLR_CFBLL_Field is HAL.UInt14;
   subtype LTDC_L2CFBLR_CFBP_Field is HAL.UInt15;

   --  LTDC layer 2 color frame buffer length register
   type LTDC_L2CFBLR_Register is record
      --  Color frame buffer line length
      CFBLL          : LTDC_L2CFBLR_CFBLL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Color frame buffer pitch in bytes
      CFBP           : LTDC_L2CFBLR_CFBP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CFBLR_Register use record
      CFBLL          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CFBP           at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LTDC_L2CFBLNR_CFBLNBR_Field is HAL.UInt12;

   --  LTDC layer 2 color frame buffer line number register
   type LTDC_L2CFBLNR_Register is record
      --  Frame buffer line number
      CFBLNBR        : LTDC_L2CFBLNR_CFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CFBLNR_Register use record
      CFBLNBR        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_L2AFBLR_AFBLL_Field is HAL.UInt14;
   subtype LTDC_L2AFBLR_AFBP_Field is HAL.UInt15;

   --  LTDC layer 2 auxiliary frame buffer length register
   type LTDC_L2AFBLR_Register is record
      --  Auxiliary frame buffer line length
      AFBLL          : LTDC_L2AFBLR_AFBLL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Auxiliary frame buffer pitch in bytes
      AFBP           : LTDC_L2AFBLR_AFBP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2AFBLR_Register use record
      AFBLL          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      AFBP           at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LTDC_L2AFBLNR_AFBLNBR_Field is HAL.UInt12;

   --  LTDC layer 2 auxiliary frame buffer line number register
   type LTDC_L2AFBLNR_Register is record
      --  Auxiliary frame buffer line number
      AFBLNBR        : LTDC_L2AFBLNR_AFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2AFBLNR_Register use record
      AFBLNBR        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_L2CLUTWR_BLUE_Field is HAL.UInt8;
   subtype LTDC_L2CLUTWR_GREEN_Field is HAL.UInt8;
   subtype LTDC_L2CLUTWR_RED_Field is HAL.UInt8;
   subtype LTDC_L2CLUTWR_CLUTADD_Field is HAL.UInt8;

   --  LTDC layer 2 CLUT write register
   type LTDC_L2CLUTWR_Register is record
      --  Write-only. Blue value
      BLUE    : LTDC_L2CLUTWR_BLUE_Field := 16#0#;
      --  Write-only. Green value
      GREEN   : LTDC_L2CLUTWR_GREEN_Field := 16#0#;
      --  Write-only. Red value
      RED     : LTDC_L2CLUTWR_RED_Field := 16#0#;
      --  Write-only. CLUT address
      CLUTADD : LTDC_L2CLUTWR_CLUTADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CLUTWR_Register use record
      BLUE    at 0 range 0 .. 7;
      GREEN   at 0 range 8 .. 15;
      RED     at 0 range 16 .. 23;
      CLUTADD at 0 range 24 .. 31;
   end record;

   subtype LTDC_L2SISR_SIH_Field is HAL.UInt12;
   subtype LTDC_L2SISR_SIV_Field is HAL.UInt12;

   --  LTDC layer 2 scaler input size register
   type LTDC_L2SISR_Register is record
      --  Scaler horizontal input size (input width)
      SIH            : LTDC_L2SISR_SIH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Scaler vertical input size (input height)
      SIV            : LTDC_L2SISR_SIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2SISR_Register use record
      SIH            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SIV            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L2SOSR_SOH_Field is HAL.UInt12;
   subtype LTDC_L2SOSR_SOV_Field is HAL.UInt12;

   --  LTDC layer 2 scaler output size register
   type LTDC_L2SOSR_Register is record
      --  Scaler horizontal output size (output width)
      SOH            : LTDC_L2SOSR_SOH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Scaler vertical output size (output height)
      SOV            : LTDC_L2SOSR_SOV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2SOSR_Register use record
      SOH            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SOV            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L2SVSFR_SVF_Field is HAL.UInt16;

   --  LTDC layer 2 scaler vertical scaling factor register
   type LTDC_L2SVSFR_Register is record
      --  Scaler vertical scaling factor
      SVF            : LTDC_L2SVSFR_SVF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2SVSFR_Register use record
      SVF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L2SVSPR_SVP_Field is HAL.UInt16;

   --  LTDC layer 2 scaler vertical scaling phase register
   type LTDC_L2SVSPR_Register is record
      --  Scaler vertical scaling factor
      SVP            : LTDC_L2SVSPR_SVP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2SVSPR_Register use record
      SVP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L2SHSFR_SHF_Field is HAL.UInt16;

   --  LTDC layer 2 scaler horizontal scaling factor register
   type LTDC_L2SHSFR_Register is record
      --  Scaler horizontal scaling factor
      SHF            : LTDC_L2SHSFR_SHF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2SHSFR_Register use record
      SHF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L2SHSPR_SHP_Field is HAL.UInt16;

   --  LTDC layer 2 scaler horizontal scaling phase register
   type LTDC_L2SHSPR_Register is record
      --  Scaler horizontal scaling phase
      SHP            : LTDC_L2SHSPR_SHP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2SHSPR_Register use record
      SHP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LTDC_L2CYR0R_CR2R_Field is HAL.UInt10;
   subtype LTDC_L2CYR0R_CB2B_Field is HAL.UInt10;

   --  LTDC layer 2 conversion YCbCr RGB 0 register
   type LTDC_L2CYR0R_Register is record
      --  Cr-to-Red coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CR2R           : LTDC_L2CYR0R_CR2R_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Cb-to-Blue coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CB2B           : LTDC_L2CYR0R_CB2B_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CYR0R_Register use record
      CR2R           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CB2B           at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LTDC_L2CYR1R_CR2G_Field is HAL.UInt10;
   subtype LTDC_L2CYR1R_CB2G_Field is HAL.UInt10;

   --  LTDC layer 2 conversion YCbCr RGB 1 register
   type LTDC_L2CYR1R_Register is record
      --  Cr-to-Green coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CR2G           : LTDC_L2CYR1R_CR2G_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Cb-to-Green coefficient, with bits 9:8 as positive integer and 7:0 as
      --  decimals.
      CB2G           : LTDC_L2CYR1R_CB2G_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2CYR1R_Register use record
      CR2G           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CB2G           at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LTDC_L2FPF0R_APOS_Field is HAL.UInt5;
   subtype LTDC_L2FPF0R_ALEN_Field is HAL.UInt4;
   subtype LTDC_L2FPF0R_RPOS_Field is HAL.UInt5;
   subtype LTDC_L2FPF0R_RLEN_Field is HAL.UInt4;

   --  LTDC layer 2 flexible pixel format 0 register
   type LTDC_L2FPF0R_Register is record
      --  Location of the alpha component inside the pixel memory word (in
      --  bits)
      APOS           : LTDC_L2FPF0R_APOS_Field := 16#0#;
      --  Width of the alpha component (in bits)
      ALEN           : LTDC_L2FPF0R_ALEN_Field := 16#8#;
      --  Location of the red component inside the pixel memory word (in bits)
      RPOS           : LTDC_L2FPF0R_RPOS_Field := 16#8#;
      --  Width of the red component (in bits)
      RLEN           : LTDC_L2FPF0R_RLEN_Field := 16#8#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2FPF0R_Register use record
      APOS           at 0 range 0 .. 4;
      ALEN           at 0 range 5 .. 8;
      RPOS           at 0 range 9 .. 13;
      RLEN           at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype LTDC_L2FPF1R_GPOS_Field is HAL.UInt5;
   subtype LTDC_L2FPF1R_GLEN_Field is HAL.UInt4;
   subtype LTDC_L2FPF1R_BPOS_Field is HAL.UInt5;
   subtype LTDC_L2FPF1R_BLEN_Field is HAL.UInt4;
   subtype LTDC_L2FPF1R_PSIZE_Field is HAL.UInt3;

   --  LTDC layer 2 flexible pixel format 1 register
   type LTDC_L2FPF1R_Register is record
      --  Location of the green component inside the pixel memory word (in
      --  bits)
      GPOS           : LTDC_L2FPF1R_GPOS_Field := 16#10#;
      --  Width of the green component (in bits)
      GLEN           : LTDC_L2FPF1R_GLEN_Field := 16#8#;
      --  Location of the blue component inside the pixel memory word (in bits)
      BPOS           : LTDC_L2FPF1R_BPOS_Field := 16#18#;
      --  Width of the blue component (in bits)
      BLEN           : LTDC_L2FPF1R_BLEN_Field := 16#8#;
      --  Pixel size (in bytes)
      PSIZE          : LTDC_L2FPF1R_PSIZE_Field := 16#4#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L2FPF1R_Register use record
      GPOS           at 0 range 0 .. 4;
      GLEN           at 0 range 5 .. 8;
      BPOS           at 0 range 9 .. 13;
      BLEN           at 0 range 14 .. 17;
      PSIZE          at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  LTDC layer 3 configuration 0 register
   type LTDC_L3C0R_Register is record
      --  Read-only. Color key transparency ability
      CKTA     : Boolean;
      --  Read-only. Color frame buffer duplication ability
      CFBDA    : Boolean;
      --  Read-only. Color frame buffer pitch ability
      CFBPA    : Boolean;
      --  Read-only. Alpha plane ability
      APA      : Boolean;
      --  Read-only. Default color programmability
      DCP      : Boolean;
      --  Read-only. Windowing ability
      WINA     : Boolean;
      --  Read-only. CLUT ability
      CLUTA    : Boolean;
      --  Read-only. Color key replace ability
      CKRA     : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21      : Boolean;
      --  Read-only. Blending factor 2, ability for 0.
      F20      : Boolean;
      --  Read-only. Blending factor 2, ability for pixel_alpha
      F2P      : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21P     : Boolean;
      --  Read-only. Blending factor 2, ability for constant_alpha
      F2C      : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21C     : Boolean;
      --  Read-only. Blending factor 2, ability for pixel_alpha *
      --  constant_alpha
      F2PC     : Boolean;
      --  Read-only. Blending factor 2, ability for 1.
      F21PC    : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11      : Boolean;
      --  Read-only. Blending factor 1,ability for 0.
      F10      : Boolean;
      --  Read-only. Blending factor 1, ability for pixel_alpha
      F1P      : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11P     : Boolean;
      --  Read-only. Blending factor 1, ability for constant_alpha
      F1C      : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11C     : Boolean;
      --  Read-only. Blending factor 1, ability for pixel_alpha *
      --  constant_alpha
      F1PC     : Boolean;
      --  Read-only. Blending factor 1, ability for 1.
      F11PC    : Boolean;
      --  Read-only. Flexible pixel format, ability
      FF       : Boolean;
      --  Read-only. Pixel format, ability for rgb888
      RGB888   : Boolean;
      --  Read-only. Pixel format, ability for bgr565
      BGR565   : Boolean;
      --  Read-only. Pixel format, ability for rgb565
      RGB565   : Boolean;
      --  Read-only. Pixel format, ability for bgra8888
      BGRA888  : Boolean;
      --  Read-only. Pixel format, ability for rgba8888
      RGBA8888 : Boolean;
      --  Read-only. Pixel format, ability for abgr8888
      ABGR8888 : Boolean;
      --  Read-only. Pixel format, ability for argb8888
      ARGB8888 : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3C0R_Register use record
      CKTA     at 0 range 0 .. 0;
      CFBDA    at 0 range 1 .. 1;
      CFBPA    at 0 range 2 .. 2;
      APA      at 0 range 3 .. 3;
      DCP      at 0 range 4 .. 4;
      WINA     at 0 range 5 .. 5;
      CLUTA    at 0 range 6 .. 6;
      CKRA     at 0 range 7 .. 7;
      F21      at 0 range 8 .. 8;
      F20      at 0 range 9 .. 9;
      F2P      at 0 range 10 .. 10;
      F21P     at 0 range 11 .. 11;
      F2C      at 0 range 12 .. 12;
      F21C     at 0 range 13 .. 13;
      F2PC     at 0 range 14 .. 14;
      F21PC    at 0 range 15 .. 15;
      F11      at 0 range 16 .. 16;
      F10      at 0 range 17 .. 17;
      F1P      at 0 range 18 .. 18;
      F11P     at 0 range 19 .. 19;
      F1C      at 0 range 20 .. 20;
      F11C     at 0 range 21 .. 21;
      F1PC     at 0 range 22 .. 22;
      F11PC    at 0 range 23 .. 23;
      FF       at 0 range 24 .. 24;
      RGB888   at 0 range 25 .. 25;
      BGR565   at 0 range 26 .. 26;
      RGB565   at 0 range 27 .. 27;
      BGRA888  at 0 range 28 .. 28;
      RGBA8888 at 0 range 29 .. 29;
      ABGR8888 at 0 range 30 .. 30;
      ARGB8888 at 0 range 31 .. 31;
   end record;

   --  LTDC layer 3 configuration 1 register
   type LTDC_L3C1R_Register is record
      --  Read-only. YCbCr 422 interleaved ability for this layer
      YIA           : Boolean;
      --  Read-only. YCbCr 420 semi-planar ability for this layer
      YSPA          : Boolean;
      --  Read-only. YCbCr 420 full-planar ability for this layer
      YFPA          : Boolean;
      --  unspecified
      Reserved_3_30 : HAL.UInt28;
      --  Read-only. Scaling ability for this layer
      SCA           : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3C1R_Register use record
      YIA           at 0 range 0 .. 0;
      YSPA          at 0 range 1 .. 1;
      YFPA          at 0 range 2 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      SCA           at 0 range 31 .. 31;
   end record;

   --  LTDC layer 3 reload control register
   type LTDC_L3RCR_Register is record
      --  Write-only. Immediate reload trigger
      IMR           : Boolean := False;
      --  Vertical blanking reload request
      VBR           : Boolean := False;
      --  Shadow reload control, global (centralized) reload masked
      GRMSK         : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3RCR_Register use record
      IMR           at 0 range 0 .. 0;
      VBR           at 0 range 1 .. 1;
      GRMSK         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  LTDC layer 3 control register
   type LTDC_L3CR_Register is record
      --  Layer enable
      LEN            : Boolean := False;
      --  Color keying enable
      CKEN           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Color look-up table enable
      CLUTEN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Horizontal mirroring enable
      HMEN           : Boolean := False;
      --  Default color blending enable
      DCBEN          : Boolean := False;
      --  Scaler enable
      SCEN           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3CR_Register use record
      LEN            at 0 range 0 .. 0;
      CKEN           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CLUTEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      HMEN           at 0 range 8 .. 8;
      DCBEN          at 0 range 9 .. 9;
      SCEN           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype LTDC_L3WHPCR_WHSTPOS_Field is HAL.UInt12;
   subtype LTDC_L3WHPCR_WHSPPOS_Field is HAL.UInt12;

   --  LTDC layer 3 window horizontal position configuration register
   type LTDC_L3WHPCR_Register is record
      --  Window horizontal start position
      WHSTPOS        : LTDC_L3WHPCR_WHSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window horizontal stop position
      WHSPPOS        : LTDC_L3WHPCR_WHSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3WHPCR_Register use record
      WHSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WHSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L3WVPCR_WVSTPOS_Field is HAL.UInt12;
   subtype LTDC_L3WVPCR_WVSPPOS_Field is HAL.UInt12;

   --  LTDC layer 3 window vertical position configuration register
   type LTDC_L3WVPCR_Register is record
      --  Window vertical start position
      WVSTPOS        : LTDC_L3WVPCR_WVSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window vertical stop position
      WVSPPOS        : LTDC_L3WVPCR_WVSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3WVPCR_Register use record
      WVSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WVSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LTDC_L3CKCR_CKBLUE_Field is HAL.UInt8;
   subtype LTDC_L3CKCR_CKGREEN_Field is HAL.UInt8;
   subtype LTDC_L3CKCR_CKRED_Field is HAL.UInt8;

   --  LTDC layer 3 color keying configuration register
   type LTDC_L3CKCR_Register is record
      --  Color key blue value
      CKBLUE         : LTDC_L3CKCR_CKBLUE_Field := 16#0#;
      --  Color key green value
      CKGREEN        : LTDC_L3CKCR_CKGREEN_Field := 16#0#;
      --  Color key red value
      CKRED          : LTDC_L3CKCR_CKRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3CKCR_Register use record
      CKBLUE         at 0 range 0 .. 7;
      CKGREEN        at 0 range 8 .. 15;
      CKRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTDC_L3PFCR_PF_Field is HAL.UInt3;

   --  LTDC layer 3 pixel format configuration register
   type LTDC_L3PFCR_Register is record
      --  Pixel format
      PF            : LTDC_L3PFCR_PF_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3PFCR_Register use record
      PF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype LTDC_L3CACR_CONSTA_Field is HAL.UInt8;

   --  LTDC layer 3 constant alpha configuration register
   type LTDC_L3CACR_Register is record
      --  Constant alpha
      CONSTA        : LTDC_L3CACR_CONSTA_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3CACR_Register use record
      CONSTA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LTDC_L3DCCR_DCBLUE_Field is HAL.UInt8;
   subtype LTDC_L3DCCR_DCGREEN_Field is HAL.UInt8;
   subtype LTDC_L3DCCR_DCRED_Field is HAL.UInt8;
   subtype LTDC_L3DCCR_DCALPHA_Field is HAL.UInt8;

   --  LTDC layer 3 default color configuration register
   type LTDC_L3DCCR_Register is record
      --  Default color blue
      DCBLUE  : LTDC_L3DCCR_DCBLUE_Field := 16#0#;
      --  Default color green
      DCGREEN : LTDC_L3DCCR_DCGREEN_Field := 16#0#;
      --  Default color red
      DCRED   : LTDC_L3DCCR_DCRED_Field := 16#0#;
      --  Default color alpha
      DCALPHA : LTDC_L3DCCR_DCALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3DCCR_Register use record
      DCBLUE  at 0 range 0 .. 7;
      DCGREEN at 0 range 8 .. 15;
      DCRED   at 0 range 16 .. 23;
      DCALPHA at 0 range 24 .. 31;
   end record;

   subtype LTDC_L3BFCR_BF2_Field is HAL.UInt3;
   subtype LTDC_L3BFCR_BF1_Field is HAL.UInt3;
   subtype LTDC_L3BFCR_BOR_Field is HAL.UInt3;

   --  LTDC layer 3 blending factors configuration register
   type LTDC_L3BFCR_Register is record
      --  Blending factor 2
      BF2            : LTDC_L3BFCR_BF2_Field := 16#7#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Default factor 1
      BF1            : LTDC_L3BFCR_BF1_Field := 16#6#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Blending order
      BOR            : LTDC_L3BFCR_BOR_Field := 16#2#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3BFCR_Register use record
      BF2            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BF1            at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BOR            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LTDC_L3BLCR_BL_Field is HAL.UInt5;

   --  LTDC layer 3 burst length configuration register
   type LTDC_L3BLCR_Register is record
      --  Burst length
      BL            : LTDC_L3BLCR_BL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3BLCR_Register use record
      BL            at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LTDC_L3CFBLR_CFBLL_Field is HAL.UInt14;
   subtype LTDC_L3CFBLR_CFBP_Field is HAL.UInt15;

   --  LTDC layer 3 color frame buffer length register
   type LTDC_L3CFBLR_Register is record
      --  Color frame buffer line length
      CFBLL          : LTDC_L3CFBLR_CFBLL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Color frame buffer pitch in bytes
      CFBP           : LTDC_L3CFBLR_CFBP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3CFBLR_Register use record
      CFBLL          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CFBP           at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LTDC_L3CFBLNR_CFBLNBR_Field is HAL.UInt12;

   --  LTDC layer 3 color frame buffer line number register
   type LTDC_L3CFBLNR_Register is record
      --  Frame buffer line number
      CFBLNBR        : LTDC_L3CFBLNR_CFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3CFBLNR_Register use record
      CFBLNBR        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTDC_L3CLUTWR_BLUE_Field is HAL.UInt8;
   subtype LTDC_L3CLUTWR_GREEN_Field is HAL.UInt8;
   subtype LTDC_L3CLUTWR_RED_Field is HAL.UInt8;
   subtype LTDC_L3CLUTWR_CLUTADD_Field is HAL.UInt8;

   --  LTDC layer 3 CLUT write register
   type LTDC_L3CLUTWR_Register is record
      --  Write-only. Blue value
      BLUE    : LTDC_L3CLUTWR_BLUE_Field := 16#0#;
      --  Write-only. Green value
      GREEN   : LTDC_L3CLUTWR_GREEN_Field := 16#0#;
      --  Write-only. Red value
      RED     : LTDC_L3CLUTWR_RED_Field := 16#0#;
      --  Write-only. CLUT address
      CLUTADD : LTDC_L3CLUTWR_CLUTADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3CLUTWR_Register use record
      BLUE    at 0 range 0 .. 7;
      GREEN   at 0 range 8 .. 15;
      RED     at 0 range 16 .. 23;
      CLUTADD at 0 range 24 .. 31;
   end record;

   subtype LTDC_L3FPF0R_APOS_Field is HAL.UInt5;
   subtype LTDC_L3FPF0R_ALEN_Field is HAL.UInt4;
   subtype LTDC_L3FPF0R_RPOS_Field is HAL.UInt5;
   subtype LTDC_L3FPF0R_RLEN_Field is HAL.UInt4;

   --  LTDC layer 3 flexible pixel format 0 register
   type LTDC_L3FPF0R_Register is record
      --  Location of the alpha component inside the pixel memory word (in
      --  bits)
      APOS           : LTDC_L3FPF0R_APOS_Field := 16#0#;
      --  Width of the alpha component (in bits)
      ALEN           : LTDC_L3FPF0R_ALEN_Field := 16#8#;
      --  Location of the red component inside the pixel memory word (in bits)
      RPOS           : LTDC_L3FPF0R_RPOS_Field := 16#8#;
      --  Width of the red component (in bits)
      RLEN           : LTDC_L3FPF0R_RLEN_Field := 16#8#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3FPF0R_Register use record
      APOS           at 0 range 0 .. 4;
      ALEN           at 0 range 5 .. 8;
      RPOS           at 0 range 9 .. 13;
      RLEN           at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype LTDC_L3FPF1R_GPOS_Field is HAL.UInt5;
   subtype LTDC_L3FPF1R_GLEN_Field is HAL.UInt4;
   subtype LTDC_L3FPF1R_BPOS_Field is HAL.UInt5;
   subtype LTDC_L3FPF1R_BLEN_Field is HAL.UInt4;
   subtype LTDC_L3FPF1R_PSIZE_Field is HAL.UInt3;

   --  LTDC layer 3 flexible pixel format 1 register
   type LTDC_L3FPF1R_Register is record
      --  Location of the green component inside the pixel memory word (in
      --  bits)
      GPOS           : LTDC_L3FPF1R_GPOS_Field := 16#10#;
      --  Width of the green component (in bits)
      GLEN           : LTDC_L3FPF1R_GLEN_Field := 16#8#;
      --  Location of the blue component inside the pixel memory word (in bits)
      BPOS           : LTDC_L3FPF1R_BPOS_Field := 16#18#;
      --  Width of the blue component (in bits)
      BLEN           : LTDC_L3FPF1R_BLEN_Field := 16#8#;
      --  Pixel size (in bytes)
      PSIZE          : LTDC_L3FPF1R_PSIZE_Field := 16#4#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTDC_L3FPF1R_Register use record
      GPOS           at 0 range 0 .. 4;
      GLEN           at 0 range 5 .. 8;
      BPOS           at 0 range 9 .. 13;
      BLEN           at 0 range 14 .. 17;
      PSIZE          at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LTDC register block
   type LTDC_Peripheral is record
      --  LTDC identification register
      LTDC_IDR      : aliased LTDC_IDR_Register;
      --  LDTC layer count register
      LTDC_LCR      : aliased LTDC_LCR_Register;
      --  LTDC synchronization size configuration register
      LTDC_SSCR     : aliased LTDC_SSCR_Register;
      --  LTDC back porch configuration register
      LTDC_BPCR     : aliased LTDC_BPCR_Register;
      --  LTDC active width configuration register
      LTDC_AWCR     : aliased LTDC_AWCR_Register;
      --  LTDC total width configuration register
      LTDC_TWCR     : aliased LTDC_TWCR_Register;
      --  LTDC global control register
      LTDC_GCR      : aliased LTDC_GCR_Register;
      --  LTDC global configuration 1 register
      LTDC_GC1R     : aliased LTDC_GC1R_Register;
      --  LTDC global configuration 2 register
      LTDC_GC2R     : aliased LTDC_GC2R_Register;
      --  LTDC shadow reload configuration register
      LTDC_SRCR     : aliased LTDC_SRCR_Register;
      --  LTDC gamma correction configuration register
      LTDC_GCCR     : aliased LTDC_GCCR_Register;
      --  LTDC background color configuration register
      LTDC_BCCR     : aliased LTDC_BCCR_Register;
      --  LTDC interrupt enable register
      LTDC_IER      : aliased LTDC_IER_Register;
      --  LTDC interrupt status register
      LTDC_ISR      : aliased LTDC_ISR_Register;
      --  LTDC interrupt clear register
      LTDC_ICR      : aliased LTDC_ICR_Register;
      --  LTDC line interrupt position configuration register
      LTDC_LIPCR    : aliased LTDC_LIPCR_Register;
      --  LTDC current position status register
      LTDC_CPSR     : aliased LTDC_CPSR_Register;
      --  LTDC current display status register
      LTDC_CDSR     : aliased LTDC_CDSR_Register;
      --  LTDC external display control register
      LTDC_EDCR     : aliased LTDC_EDCR_Register;
      --  LTDC interrupt enable register 2
      LTDC_IER2     : aliased LTDC_IER_Register;
      --  LTDC interrupt status register 2
      LTDC_ISR2     : aliased LTDC_ISR_Register;
      --  LTDC interrupt clear register 2
      LTDC_ICR2     : aliased LTDC_ICR_Register;
      --  LTDC line interrupt position configuration register 2
      LTDC_LIPCR2   : aliased LTDC_LIPCR_Register;
      --  LTDC expected CRC register
      LTDC_ECRCR    : aliased LTDC_ECRCR_Register;
      --  LTDC computed CRC register
      LTDC_CCRCR    : aliased LTDC_CCRCR_Register;
      --  LTDC rotation buffer 0 address register
      LTDC_RB0AR    : aliased HAL.UInt32;
      --  LTDC rotation buffer 1 address register
      LTDC_RB1AR    : aliased HAL.UInt32;
      --  LTDC rotation buffer pitch register
      LTDC_RBPR     : aliased LTDC_RBPR_Register;
      --  LTDC rotation intermediate frame color register
      LTDC_RIFCR    : aliased LTDC_RIFCR_Register;
      --  LTDC FIFO underrun threshold register
      LTDC_FUTR     : aliased LTDC_FUTR_Register;
      --  LTDC layer 1 configuration 0 register
      LTDC_L1C0R    : aliased LTDC_L1C0R_Register;
      --  LTDC layer 1 configuration 1 register
      LTDC_L1C1R    : aliased LTDC_L1C1R_Register;
      --  LTDC layer 1 reload control register
      LTDC_L1RCR    : aliased LTDC_L1RCR_Register;
      --  LTDC layer 1 control register
      LTDC_L1CR     : aliased LTDC_L1CR_Register;
      --  LTDC layer 1 window horizontal position configuration register
      LTDC_L1WHPCR  : aliased LTDC_L1WHPCR_Register;
      --  LTDC layer 1 window vertical position configuration register
      LTDC_L1WVPCR  : aliased LTDC_L1WVPCR_Register;
      --  LTDC layer 1 color keying configuration register
      LTDC_L1CKCR   : aliased LTDC_L1CKCR_Register;
      --  LTDC layer 1 pixel format configuration register
      LTDC_L1PFCR   : aliased LTDC_L1PFCR_Register;
      --  LTDC layer 1 constant alpha configuration register
      LTDC_L1CACR   : aliased LTDC_L1CACR_Register;
      --  LTDC layer 1 default color configuration register
      LTDC_L1DCCR   : aliased LTDC_L1DCCR_Register;
      --  LTDC layer 1 blending factors configuration register
      LTDC_L1BFCR   : aliased LTDC_L1BFCR_Register;
      --  LTDC layer 1 burst length configuration register
      LTDC_L1BLCR   : aliased LTDC_L1BLCR_Register;
      --  LTDC layer 1 planar configuration register
      LTDC_L1PCR    : aliased LTDC_L1PCR_Register;
      --  LTDC layer 1 color frame buffer address register
      LTDC_L1CFBAR  : aliased HAL.UInt32;
      --  LTDC layer 1 color frame buffer length register
      LTDC_L1CFBLR  : aliased LTDC_L1CFBLR_Register;
      --  LTDC layer 1 color frame buffer line number register
      LTDC_L1CFBLNR : aliased LTDC_L1CFBLNR_Register;
      --  LTDC layer 1 auxiliary frame buffer address 0 register
      LTDC_L1AFBA0R : aliased HAL.UInt32;
      --  LTDC layer 1 auxiliary frame buffer address 1 register
      LTDC_L1AFBA1R : aliased HAL.UInt32;
      --  LTDC layer 1 auxiliary frame buffer length register
      LTDC_L1AFBLR  : aliased LTDC_L1AFBLR_Register;
      --  LTDC layer 1 auxiliary frame buffer line number register
      LTDC_L1AFBLNR : aliased LTDC_L1AFBLNR_Register;
      --  LTDC layer 1 CLUT write register
      LTDC_L1CLUTWR : aliased LTDC_L1CLUTWR_Register;
      --  LTDC layer 1 scaler input size register
      LTDC_L1SISR   : aliased LTDC_L1SISR_Register;
      --  LTDC layer 1 scaler output size register
      LTDC_L1SOSR   : aliased LTDC_L1SOSR_Register;
      --  LTDC layer 1 scaler vertical scaling factor register
      LTDC_L1SVSFR  : aliased LTDC_L1SVSFR_Register;
      --  LTDC layer 1 scaler vertical scaling phase register
      LTDC_L1SVSPR  : aliased LTDC_L1SVSPR_Register;
      --  LTDC layer 1 scaler horizontal scaling factor register
      LTDC_L1SHSFR  : aliased LTDC_L1SHSFR_Register;
      --  LTDC layer 1 scaler horizontal scaling phase register
      LTDC_L1SHSPR  : aliased LTDC_L1SHSPR_Register;
      --  LTDC layer 1 conversion YCbCr RGB 0 register
      LTDC_L1CYR0R  : aliased LTDC_L1CYR0R_Register;
      --  LTDC layer 1 conversion YCbCr RGB 1 register
      LTDC_L1CYR1R  : aliased LTDC_L1CYR1R_Register;
      --  LTDC layer 1 flexible pixel format 0 register
      LTDC_L1FPF0R  : aliased LTDC_L1FPF0R_Register;
      --  LTDC layer 1 flexible pixel format 1 register
      LTDC_L1FPF1R  : aliased LTDC_L1FPF1R_Register;
      --  LTDC layer 2 configuration 0 register
      LTDC_L2C0R    : aliased LTDC_L2C0R_Register;
      --  LTDC layer 2 configuration 1 register
      LTDC_L2C1R    : aliased LTDC_L2C1R_Register;
      --  LTDC layer 2 reload control register
      LTDC_L2RCR    : aliased LTDC_L2RCR_Register;
      --  LTDC layer 2 control register
      LTDC_L2CR     : aliased LTDC_L2CR_Register;
      --  LTDC layer 2 window horizontal position configuration register
      LTDC_L2WHPCR  : aliased LTDC_L2WHPCR_Register;
      --  LTDC layer 2 window vertical position configuration register
      LTDC_L2WVPCR  : aliased LTDC_L2WVPCR_Register;
      --  LTDC layer 2 color keying configuration register
      LTDC_L2CKCR   : aliased LTDC_L2CKCR_Register;
      --  LTDC layer 2 pixel format configuration register
      LTDC_L2PFCR   : aliased LTDC_L2PFCR_Register;
      --  LTDC layer 2 constant alpha configuration register
      LTDC_L2CACR   : aliased LTDC_L2CACR_Register;
      --  LTDC layer 2 default color configuration register
      LTDC_L2DCCR   : aliased LTDC_L2DCCR_Register;
      --  LTDC layer 2 blending factors configuration register
      LTDC_L2BFCR   : aliased LTDC_L2BFCR_Register;
      --  LTDC layer 2 burst length configuration register
      LTDC_L2BLCR   : aliased LTDC_L2BLCR_Register;
      --  LTDC layer 2 planar configuration register
      LTDC_L2PCR    : aliased LTDC_L2PCR_Register;
      --  LTDC layer 2 color frame buffer address register
      LTDC_L2CFBAR  : aliased HAL.UInt32;
      --  LTDC layer 2 color frame buffer length register
      LTDC_L2CFBLR  : aliased LTDC_L2CFBLR_Register;
      --  LTDC layer 2 color frame buffer line number register
      LTDC_L2CFBLNR : aliased LTDC_L2CFBLNR_Register;
      --  LTDC layer 2 auxiliary frame buffer address 0 register
      LTDC_L2AFBA0R : aliased HAL.UInt32;
      --  LTDC layer 2 auxiliary frame buffer address 1 register
      LTDC_L2AFBA1R : aliased HAL.UInt32;
      --  LTDC layer 2 auxiliary frame buffer length register
      LTDC_L2AFBLR  : aliased LTDC_L2AFBLR_Register;
      --  LTDC layer 2 auxiliary frame buffer line number register
      LTDC_L2AFBLNR : aliased LTDC_L2AFBLNR_Register;
      --  LTDC layer 2 CLUT write register
      LTDC_L2CLUTWR : aliased LTDC_L2CLUTWR_Register;
      --  LTDC layer 2 scaler input size register
      LTDC_L2SISR   : aliased LTDC_L2SISR_Register;
      --  LTDC layer 2 scaler output size register
      LTDC_L2SOSR   : aliased LTDC_L2SOSR_Register;
      --  LTDC layer 2 scaler vertical scaling factor register
      LTDC_L2SVSFR  : aliased LTDC_L2SVSFR_Register;
      --  LTDC layer 2 scaler vertical scaling phase register
      LTDC_L2SVSPR  : aliased LTDC_L2SVSPR_Register;
      --  LTDC layer 2 scaler horizontal scaling factor register
      LTDC_L2SHSFR  : aliased LTDC_L2SHSFR_Register;
      --  LTDC layer 2 scaler horizontal scaling phase register
      LTDC_L2SHSPR  : aliased LTDC_L2SHSPR_Register;
      --  LTDC layer 2 conversion YCbCr RGB 0 register
      LTDC_L2CYR0R  : aliased LTDC_L2CYR0R_Register;
      --  LTDC layer 2 conversion YCbCr RGB 1 register
      LTDC_L2CYR1R  : aliased LTDC_L2CYR1R_Register;
      --  LTDC layer 2 flexible pixel format 0 register
      LTDC_L2FPF0R  : aliased LTDC_L2FPF0R_Register;
      --  LTDC layer 2 flexible pixel format 1 register
      LTDC_L2FPF1R  : aliased LTDC_L2FPF1R_Register;
      --  LTDC layer 3 configuration 0 register
      LTDC_L3C0R    : aliased LTDC_L3C0R_Register;
      --  LTDC layer 3 configuration 1 register
      LTDC_L3C1R    : aliased LTDC_L3C1R_Register;
      --  LTDC layer 3 reload control register
      LTDC_L3RCR    : aliased LTDC_L3RCR_Register;
      --  LTDC layer 3 control register
      LTDC_L3CR     : aliased LTDC_L3CR_Register;
      --  LTDC layer 3 window horizontal position configuration register
      LTDC_L3WHPCR  : aliased LTDC_L3WHPCR_Register;
      --  LTDC layer 3 window vertical position configuration register
      LTDC_L3WVPCR  : aliased LTDC_L3WVPCR_Register;
      --  LTDC layer 3 color keying configuration register
      LTDC_L3CKCR   : aliased LTDC_L3CKCR_Register;
      --  LTDC layer 3 pixel format configuration register
      LTDC_L3PFCR   : aliased LTDC_L3PFCR_Register;
      --  LTDC layer 3 constant alpha configuration register
      LTDC_L3CACR   : aliased LTDC_L3CACR_Register;
      --  LTDC layer 3 default color configuration register
      LTDC_L3DCCR   : aliased LTDC_L3DCCR_Register;
      --  LTDC layer 3 blending factors configuration register
      LTDC_L3BFCR   : aliased LTDC_L3BFCR_Register;
      --  LTDC layer 3 burst length configuration register
      LTDC_L3BLCR   : aliased LTDC_L3BLCR_Register;
      --  LTDC layer 3 color frame buffer address register
      LTDC_L3CFBAR  : aliased HAL.UInt32;
      --  LTDC layer 3 color frame buffer length register
      LTDC_L3CFBLR  : aliased LTDC_L3CFBLR_Register;
      --  LTDC layer 3 color frame buffer line number register
      LTDC_L3CFBLNR : aliased LTDC_L3CFBLNR_Register;
      --  LTDC layer 3 CLUT write register
      LTDC_L3CLUTWR : aliased LTDC_L3CLUTWR_Register;
      --  LTDC layer 3 flexible pixel format 0 register
      LTDC_L3FPF0R  : aliased LTDC_L3FPF0R_Register;
      --  LTDC layer 3 flexible pixel format 1 register
      LTDC_L3FPF1R  : aliased LTDC_L3FPF1R_Register;
   end record
     with Volatile;

   for LTDC_Peripheral use record
      LTDC_IDR      at 16#0# range 0 .. 31;
      LTDC_LCR      at 16#4# range 0 .. 31;
      LTDC_SSCR     at 16#8# range 0 .. 31;
      LTDC_BPCR     at 16#C# range 0 .. 31;
      LTDC_AWCR     at 16#10# range 0 .. 31;
      LTDC_TWCR     at 16#14# range 0 .. 31;
      LTDC_GCR      at 16#18# range 0 .. 31;
      LTDC_GC1R     at 16#1C# range 0 .. 31;
      LTDC_GC2R     at 16#20# range 0 .. 31;
      LTDC_SRCR     at 16#24# range 0 .. 31;
      LTDC_GCCR     at 16#28# range 0 .. 31;
      LTDC_BCCR     at 16#2C# range 0 .. 31;
      LTDC_IER      at 16#34# range 0 .. 31;
      LTDC_ISR      at 16#38# range 0 .. 31;
      LTDC_ICR      at 16#3C# range 0 .. 31;
      LTDC_LIPCR    at 16#40# range 0 .. 31;
      LTDC_CPSR     at 16#44# range 0 .. 31;
      LTDC_CDSR     at 16#48# range 0 .. 31;
      LTDC_EDCR     at 16#60# range 0 .. 31;
      LTDC_IER2     at 16#64# range 0 .. 31;
      LTDC_ISR2     at 16#68# range 0 .. 31;
      LTDC_ICR2     at 16#6C# range 0 .. 31;
      LTDC_LIPCR2   at 16#70# range 0 .. 31;
      LTDC_ECRCR    at 16#78# range 0 .. 31;
      LTDC_CCRCR    at 16#7C# range 0 .. 31;
      LTDC_RB0AR    at 16#80# range 0 .. 31;
      LTDC_RB1AR    at 16#84# range 0 .. 31;
      LTDC_RBPR     at 16#88# range 0 .. 31;
      LTDC_RIFCR    at 16#8C# range 0 .. 31;
      LTDC_FUTR     at 16#90# range 0 .. 31;
      LTDC_L1C0R    at 16#100# range 0 .. 31;
      LTDC_L1C1R    at 16#104# range 0 .. 31;
      LTDC_L1RCR    at 16#108# range 0 .. 31;
      LTDC_L1CR     at 16#10C# range 0 .. 31;
      LTDC_L1WHPCR  at 16#110# range 0 .. 31;
      LTDC_L1WVPCR  at 16#114# range 0 .. 31;
      LTDC_L1CKCR   at 16#118# range 0 .. 31;
      LTDC_L1PFCR   at 16#11C# range 0 .. 31;
      LTDC_L1CACR   at 16#120# range 0 .. 31;
      LTDC_L1DCCR   at 16#124# range 0 .. 31;
      LTDC_L1BFCR   at 16#128# range 0 .. 31;
      LTDC_L1BLCR   at 16#12C# range 0 .. 31;
      LTDC_L1PCR    at 16#130# range 0 .. 31;
      LTDC_L1CFBAR  at 16#134# range 0 .. 31;
      LTDC_L1CFBLR  at 16#138# range 0 .. 31;
      LTDC_L1CFBLNR at 16#13C# range 0 .. 31;
      LTDC_L1AFBA0R at 16#140# range 0 .. 31;
      LTDC_L1AFBA1R at 16#144# range 0 .. 31;
      LTDC_L1AFBLR  at 16#148# range 0 .. 31;
      LTDC_L1AFBLNR at 16#14C# range 0 .. 31;
      LTDC_L1CLUTWR at 16#150# range 0 .. 31;
      LTDC_L1SISR   at 16#154# range 0 .. 31;
      LTDC_L1SOSR   at 16#158# range 0 .. 31;
      LTDC_L1SVSFR  at 16#15C# range 0 .. 31;
      LTDC_L1SVSPR  at 16#160# range 0 .. 31;
      LTDC_L1SHSFR  at 16#164# range 0 .. 31;
      LTDC_L1SHSPR  at 16#168# range 0 .. 31;
      LTDC_L1CYR0R  at 16#16C# range 0 .. 31;
      LTDC_L1CYR1R  at 16#170# range 0 .. 31;
      LTDC_L1FPF0R  at 16#174# range 0 .. 31;
      LTDC_L1FPF1R  at 16#178# range 0 .. 31;
      LTDC_L2C0R    at 16#200# range 0 .. 31;
      LTDC_L2C1R    at 16#204# range 0 .. 31;
      LTDC_L2RCR    at 16#208# range 0 .. 31;
      LTDC_L2CR     at 16#20C# range 0 .. 31;
      LTDC_L2WHPCR  at 16#210# range 0 .. 31;
      LTDC_L2WVPCR  at 16#214# range 0 .. 31;
      LTDC_L2CKCR   at 16#218# range 0 .. 31;
      LTDC_L2PFCR   at 16#21C# range 0 .. 31;
      LTDC_L2CACR   at 16#220# range 0 .. 31;
      LTDC_L2DCCR   at 16#224# range 0 .. 31;
      LTDC_L2BFCR   at 16#228# range 0 .. 31;
      LTDC_L2BLCR   at 16#22C# range 0 .. 31;
      LTDC_L2PCR    at 16#230# range 0 .. 31;
      LTDC_L2CFBAR  at 16#234# range 0 .. 31;
      LTDC_L2CFBLR  at 16#238# range 0 .. 31;
      LTDC_L2CFBLNR at 16#23C# range 0 .. 31;
      LTDC_L2AFBA0R at 16#240# range 0 .. 31;
      LTDC_L2AFBA1R at 16#244# range 0 .. 31;
      LTDC_L2AFBLR  at 16#248# range 0 .. 31;
      LTDC_L2AFBLNR at 16#24C# range 0 .. 31;
      LTDC_L2CLUTWR at 16#250# range 0 .. 31;
      LTDC_L2SISR   at 16#254# range 0 .. 31;
      LTDC_L2SOSR   at 16#258# range 0 .. 31;
      LTDC_L2SVSFR  at 16#25C# range 0 .. 31;
      LTDC_L2SVSPR  at 16#260# range 0 .. 31;
      LTDC_L2SHSFR  at 16#264# range 0 .. 31;
      LTDC_L2SHSPR  at 16#268# range 0 .. 31;
      LTDC_L2CYR0R  at 16#26C# range 0 .. 31;
      LTDC_L2CYR1R  at 16#270# range 0 .. 31;
      LTDC_L2FPF0R  at 16#274# range 0 .. 31;
      LTDC_L2FPF1R  at 16#278# range 0 .. 31;
      LTDC_L3C0R    at 16#300# range 0 .. 31;
      LTDC_L3C1R    at 16#304# range 0 .. 31;
      LTDC_L3RCR    at 16#308# range 0 .. 31;
      LTDC_L3CR     at 16#30C# range 0 .. 31;
      LTDC_L3WHPCR  at 16#310# range 0 .. 31;
      LTDC_L3WVPCR  at 16#314# range 0 .. 31;
      LTDC_L3CKCR   at 16#318# range 0 .. 31;
      LTDC_L3PFCR   at 16#31C# range 0 .. 31;
      LTDC_L3CACR   at 16#320# range 0 .. 31;
      LTDC_L3DCCR   at 16#324# range 0 .. 31;
      LTDC_L3BFCR   at 16#328# range 0 .. 31;
      LTDC_L3BLCR   at 16#32C# range 0 .. 31;
      LTDC_L3CFBAR  at 16#334# range 0 .. 31;
      LTDC_L3CFBLR  at 16#338# range 0 .. 31;
      LTDC_L3CFBLNR at 16#33C# range 0 .. 31;
      LTDC_L3CLUTWR at 16#350# range 0 .. 31;
      LTDC_L3FPF0R  at 16#374# range 0 .. 31;
      LTDC_L3FPF1R  at 16#378# range 0 .. 31;
   end record;

   --  LTDC register block
   LTDC_Periph : aliased LTDC_Peripheral
     with Import, Address => LTDC_Base;

   --  LTDC register block
   LTDC_S_Periph : aliased LTDC_Peripheral
     with Import, Address => LTDC_S_Base;

end STM32_SVD.LTDC;
