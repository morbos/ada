--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DMA2D is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype DMA2D_CR_MODE_Field is Interfaces.Bit_Types.UInt3;

   --  DMA2D control register
   type DMA2D_CR_Register is record
      --  Start
      START          : Boolean := False;
      --  Suspend
      SUSP           : Boolean := False;
      --  Abort
      ABORT_k        : Boolean := False;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Line offset mode
      LOM            : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Transfer error (TE) interrupt enable
      TEIE           : Boolean := False;
      --  Transfer complete (TC) interrupt enable
      TCIE           : Boolean := False;
      --  Transfer watermark (TW) interrupt enable
      TWIE           : Boolean := False;
      --  CLUT access error (CAE) interrupt enable
      CAEIE          : Boolean := False;
      --  CLUT transfer complete (CTC) interrupt enable
      CTCIE          : Boolean := False;
      --  Configuration error (CE) interrupt enable
      CEIE           : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DMA2D mode
      MODE           : DMA2D_CR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_CR_Register use record
      START          at 0 range 0 .. 0;
      SUSP           at 0 range 1 .. 1;
      ABORT_k        at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      LOM            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TEIE           at 0 range 8 .. 8;
      TCIE           at 0 range 9 .. 9;
      TWIE           at 0 range 10 .. 10;
      CAEIE          at 0 range 11 .. 11;
      CTCIE          at 0 range 12 .. 12;
      CEIE           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      MODE           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  DMA2D interrupt status register
   type DMA2D_ISR_Register is record
      --  Read-only. Transfer error interrupt flag
      TEIF          : Boolean;
      --  Read-only. Transfer complete interrupt flag
      TCIF          : Boolean;
      --  Read-only. Transfer watermark interrupt flag
      TWIF          : Boolean;
      --  Read-only. CLUT access error interrupt flag
      CAEIF         : Boolean;
      --  Read-only. CLUT transfer complete interrupt flag
      CTCIF         : Boolean;
      --  Read-only. Configuration error interrupt flag
      CEIF          : Boolean;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_ISR_Register use record
      TEIF          at 0 range 0 .. 0;
      TCIF          at 0 range 1 .. 1;
      TWIF          at 0 range 2 .. 2;
      CAEIF         at 0 range 3 .. 3;
      CTCIF         at 0 range 4 .. 4;
      CEIF          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DMA2D interrupt flag clear register
   type DMA2D_IFCR_Register is record
      --  Clear transfer error interrupt flag
      CTEIF         : Boolean := False;
      --  Clear transfer complete interrupt flag
      CTCIF         : Boolean := False;
      --  Clear transfer watermark interrupt flag
      CTWIF         : Boolean := False;
      --  Clear CLUT access error interrupt flag
      CAECIF        : Boolean := False;
      --  Clear CLUT transfer complete interrupt flag
      CCTCIF        : Boolean := False;
      --  Clear configuration error interrupt flag
      CCEIF         : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_IFCR_Register use record
      CTEIF         at 0 range 0 .. 0;
      CTCIF         at 0 range 1 .. 1;
      CTWIF         at 0 range 2 .. 2;
      CAECIF        at 0 range 3 .. 3;
      CCTCIF        at 0 range 4 .. 4;
      CCEIF         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DMA2D_FGOR_LO_Field is Interfaces.Bit_Types.UInt16;

   --  DMA2D foreground offset register
   type DMA2D_FGOR_Register is record
      --  Line offset
      LO             : DMA2D_FGOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGOR_Register use record
      LO             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_BGOR_LO_Field is Interfaces.Bit_Types.UInt16;

   --  DMA2D background offset register
   type DMA2D_BGOR_Register is record
      --  Line offset
      LO             : DMA2D_BGOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGOR_Register use record
      LO             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_FGPFCCR_CM_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2D_FGPFCCR_CS_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_FGPFCCR_AM_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA2D_FGPFCCR_CSS_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA2D_FGPFCCR_ALPHA_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D foreground PFC control register
   type DMA2D_FGPFCCR_Register is record
      --  Color mode
      CM             : DMA2D_FGPFCCR_CM_Field := 16#0#;
      --  CLUT color mode
      CCM            : Boolean := False;
      --  Start
      START          : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CLUT size
      CS             : DMA2D_FGPFCCR_CS_Field := 16#0#;
      --  Alpha mode
      AM             : DMA2D_FGPFCCR_AM_Field := 16#0#;
      --  Chroma subsampling
      CSS            : DMA2D_FGPFCCR_CSS_Field := 16#0#;
      --  Alpha inverted
      AI             : Boolean := False;
      --  Red/Blue swap
      RBS            : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alpha value
      ALPHA          : DMA2D_FGPFCCR_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGPFCCR_Register use record
      CM             at 0 range 0 .. 3;
      CCM            at 0 range 4 .. 4;
      START          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CS             at 0 range 8 .. 15;
      AM             at 0 range 16 .. 17;
      CSS            at 0 range 18 .. 19;
      AI             at 0 range 20 .. 20;
      RBS            at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ALPHA          at 0 range 24 .. 31;
   end record;

   subtype DMA2D_FGCOLR_BLUE_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_FGCOLR_GREEN_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_FGCOLR_RED_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D foreground color register
   type DMA2D_FGCOLR_Register is record
      --  Blue value for the A4 or A8 mode of the foreground image
      BLUE           : DMA2D_FGCOLR_BLUE_Field := 16#0#;
      --  Green value for the A4 or A8 mode of the foreground image
      GREEN          : DMA2D_FGCOLR_GREEN_Field := 16#0#;
      --  Red value for the A4 or A8 mode of the foreground image
      RED            : DMA2D_FGCOLR_RED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGCOLR_Register use record
      BLUE           at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      RED            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMA2D_BGPFCCR_CM_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2D_BGPFCCR_CS_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_BGPFCCR_AM_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA2D_BGPFCCR_ALPHA_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D background PFC control register
   type DMA2D_BGPFCCR_Register is record
      --  Color mode
      CM             : DMA2D_BGPFCCR_CM_Field := 16#0#;
      --  CLUT color mode
      CCM            : Boolean := False;
      --  Start
      START          : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CLUT size
      CS             : DMA2D_BGPFCCR_CS_Field := 16#0#;
      --  Alpha mode
      AM             : DMA2D_BGPFCCR_AM_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alpha Inverted
      AI             : Boolean := False;
      --  Red/Blue swap
      RBS            : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alpha value
      ALPHA          : DMA2D_BGPFCCR_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGPFCCR_Register use record
      CM             at 0 range 0 .. 3;
      CCM            at 0 range 4 .. 4;
      START          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CS             at 0 range 8 .. 15;
      AM             at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      AI             at 0 range 20 .. 20;
      RBS            at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ALPHA          at 0 range 24 .. 31;
   end record;

   subtype DMA2D_BGCOLR_BLUE_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_BGCOLR_GREEN_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_BGCOLR_RED_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D background color register
   type DMA2D_BGCOLR_Register is record
      --  Blue value for the A4 or A8 mode of the background
      BLUE           : DMA2D_BGCOLR_BLUE_Field := 16#0#;
      --  Green value for the A4 or A8 mode of the background
      GREEN          : DMA2D_BGCOLR_GREEN_Field := 16#0#;
      --  Red value for the A4 or A8 mode of the background
      RED            : DMA2D_BGCOLR_RED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGCOLR_Register use record
      BLUE           at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      RED            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMA2D_OPFCCR_CM_Field is Interfaces.Bit_Types.UInt3;

   --  DMA2D output PFC control register
   type DMA2D_OPFCCR_Register is record
      --  Color mode
      CM             : DMA2D_OPFCCR_CM_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Swap bytes
      SB             : Boolean := False;
      --  unspecified
      Reserved_9_19  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Alpha Inverted
      AI             : Boolean := False;
      --  Red/Blue swap
      RBS            : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OPFCCR_Register use record
      CM             at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SB             at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      AI             at 0 range 20 .. 20;
      RBS            at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DMA2D_OCOLR_RGB888_BLUE_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_OCOLR_RGB888_GREEN_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_OCOLR_RGB888_RED_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_OCOLR_RGB888_ALPHA_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D output color register
   type DMA2D_OCOLR_RGB888_Register is record
      --  Blue value of the output image in ARGB8888 or RGB888
      BLUE  : DMA2D_OCOLR_RGB888_BLUE_Field := 16#0#;
      --  Green value of the output image in ARGB8888 or RGB888
      GREEN : DMA2D_OCOLR_RGB888_GREEN_Field := 16#0#;
      --  Red value of the output image in ARGB8888 or RGB888 mode
      RED   : DMA2D_OCOLR_RGB888_RED_Field := 16#0#;
      --  Alpha channel value of the output color in ARGB8888 mode (otherwise
      --  reserved)
      ALPHA : DMA2D_OCOLR_RGB888_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OCOLR_RGB888_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      ALPHA at 0 range 24 .. 31;
   end record;

   subtype DMA2D_OCOLR_RGB565_BLUE_Field is Interfaces.Bit_Types.UInt5;
   subtype DMA2D_OCOLR_RGB565_GREEN_Field is Interfaces.Bit_Types.UInt6;
   subtype DMA2D_OCOLR_RGB565_RED_Field is Interfaces.Bit_Types.UInt5;

   --  DMA2D output color register
   type DMA2D_OCOLR_RGB565_Register is record
      --  Blue value of the output image in RGB565 mode
      BLUE           : DMA2D_OCOLR_RGB565_BLUE_Field := 16#0#;
      --  Green value of the output image in RGB565 mode
      GREEN          : DMA2D_OCOLR_RGB565_GREEN_Field := 16#0#;
      --  Red value of the output image in RGB565 mode
      RED            : DMA2D_OCOLR_RGB565_RED_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OCOLR_RGB565_Register use record
      BLUE           at 0 range 0 .. 4;
      GREEN          at 0 range 5 .. 10;
      RED            at 0 range 11 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_OCOLR_ARGB1555_BLUE_Field is Interfaces.Bit_Types.UInt5;
   subtype DMA2D_OCOLR_ARGB1555_GREEN_Field is Interfaces.Bit_Types.UInt5;
   subtype DMA2D_OCOLR_ARGB1555_RED_Field is Interfaces.Bit_Types.UInt5;

   --  DMA2D output color register
   type DMA2D_OCOLR_ARGB1555_Register is record
      --  Blue value of the output image in ARGB1555 mode
      BLUE           : DMA2D_OCOLR_ARGB1555_BLUE_Field := 16#0#;
      --  Green value of the output image in ARGB1555 mode
      GREEN          : DMA2D_OCOLR_ARGB1555_GREEN_Field := 16#0#;
      --  Red value of the output image in ARGB1555 mode
      RED            : DMA2D_OCOLR_ARGB1555_RED_Field := 16#0#;
      --  Alpha channel value of the output color in ARGB1555 mode
      A              : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OCOLR_ARGB1555_Register use record
      BLUE           at 0 range 0 .. 4;
      GREEN          at 0 range 5 .. 9;
      RED            at 0 range 10 .. 14;
      A              at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_OCOLR_ARGB4444_BLUE_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2D_OCOLR_ARGB4444_GREEN_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2D_OCOLR_ARGB4444_RED_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2D_OCOLR_ARGB4444_ALPHA_Field is Interfaces.Bit_Types.UInt4;

   --  DMA2D output color register
   type DMA2D_OCOLR_ARGB4444_Register is record
      --  Blue value of the output image in ARGB4444 mode
      BLUE           : DMA2D_OCOLR_ARGB4444_BLUE_Field := 16#0#;
      --  Green value of the output image in ARGB4444 mode
      GREEN          : DMA2D_OCOLR_ARGB4444_GREEN_Field := 16#0#;
      --  Red value of the output image in ARGB4444 mode
      RED            : DMA2D_OCOLR_ARGB4444_RED_Field := 16#0#;
      --  Alpha channel of the output color value in ARGB4444
      ALPHA          : DMA2D_OCOLR_ARGB4444_ALPHA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OCOLR_ARGB4444_Register use record
      BLUE           at 0 range 0 .. 3;
      GREEN          at 0 range 4 .. 7;
      RED            at 0 range 8 .. 11;
      ALPHA          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_OOR_LO_Field is Interfaces.Bit_Types.UInt16;

   --  DMA2D output offset register
   type DMA2D_OOR_Register is record
      --  Line offset
      LO             : DMA2D_OOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OOR_Register use record
      LO             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_NLR_NL_Field is Interfaces.Bit_Types.UInt16;
   subtype DMA2D_NLR_PL_Field is Interfaces.Bit_Types.UInt14;

   --  DMA2D number of line register
   type DMA2D_NLR_Register is record
      --  Number of lines of the area to be transferred.
      NL             : DMA2D_NLR_NL_Field := 16#0#;
      --  Pixel per lines per lines of the area to be transferred
      PL             : DMA2D_NLR_PL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_NLR_Register use record
      NL             at 0 range 0 .. 15;
      PL             at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DMA2D_LWR_LW_Field is Interfaces.Bit_Types.UInt16;

   --  DMA2D line watermark register
   type DMA2D_LWR_Register is record
      --  Line watermark for interrupt generation
      LW             : DMA2D_LWR_LW_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_LWR_Register use record
      LW             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_AMTCR_DT_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D AXI master timer configuration register
   type DMA2D_AMTCR_Register is record
      --  Dead-time functionality enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Dead time
      DT             : DMA2D_AMTCR_DT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_AMTCR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_FGCLUT_BLUE_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_FGCLUT_GREEN_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_FGCLUT_RED_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_FGCLUT_ALPHA_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D foreground CLUT
   type DMA2D_FGCLUT_Register is record
      --  Blue
      BLUE  : DMA2D_FGCLUT_BLUE_Field := 16#0#;
      --  Green
      GREEN : DMA2D_FGCLUT_GREEN_Field := 16#0#;
      --  Red
      RED   : DMA2D_FGCLUT_RED_Field := 16#0#;
      --  Alpha
      ALPHA : DMA2D_FGCLUT_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGCLUT_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      ALPHA at 0 range 24 .. 31;
   end record;

   subtype DMA2D_BGCLUT_BLUE_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_BGCLUT_GREEN_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_BGCLUT_RED_Field is Interfaces.Bit_Types.Byte;
   subtype DMA2D_BGCLUT_ALPHA_Field is Interfaces.Bit_Types.Byte;

   --  DMA2D background CLUT
   type DMA2D_BGCLUT_Register is record
      --  Blue
      BLUE  : DMA2D_BGCLUT_BLUE_Field := 16#0#;
      --  Green
      GREEN : DMA2D_BGCLUT_GREEN_Field := 16#0#;
      --  Red
      RED   : DMA2D_BGCLUT_RED_Field := 16#0#;
      --  Alpha
      ALPHA : DMA2D_BGCLUT_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGCLUT_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      ALPHA at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type DMA2D_Disc is
     (Rgb888,
      Rgb565,
      Argb1555,
      Argb4444);

   --  Chrom-ART Accelerator controller
   type DMA2D_Peripheral
     (Discriminent : DMA2D_Disc := Rgb888)
   is record
      --  DMA2D control register
      DMA2D_CR             : aliased DMA2D_CR_Register;
      --  DMA2D interrupt status register
      DMA2D_ISR            : aliased DMA2D_ISR_Register;
      --  DMA2D interrupt flag clear register
      DMA2D_IFCR           : aliased DMA2D_IFCR_Register;
      --  DMA2D foreground memory address register
      DMA2D_FGMAR          : aliased Interfaces.Bit_Types.UInt32;
      --  DMA2D foreground offset register
      DMA2D_FGOR           : aliased DMA2D_FGOR_Register;
      --  DMA2D background memory address register
      DMA2D_BGMAR          : aliased Interfaces.Bit_Types.UInt32;
      --  DMA2D background offset register
      DMA2D_BGOR           : aliased DMA2D_BGOR_Register;
      --  DMA2D foreground PFC control register
      DMA2D_FGPFCCR        : aliased DMA2D_FGPFCCR_Register;
      --  DMA2D foreground color register
      DMA2D_FGCOLR         : aliased DMA2D_FGCOLR_Register;
      --  DMA2D background PFC control register
      DMA2D_BGPFCCR        : aliased DMA2D_BGPFCCR_Register;
      --  DMA2D background color register
      DMA2D_BGCOLR         : aliased DMA2D_BGCOLR_Register;
      --  DMA2D foreground CLUT memory address register
      DMA2D_FGCMAR         : aliased Interfaces.Bit_Types.UInt32;
      --  DMA2D background CLUT memory address register
      DMA2D_BGCMAR         : aliased Interfaces.Bit_Types.UInt32;
      --  DMA2D output PFC control register
      DMA2D_OPFCCR         : aliased DMA2D_OPFCCR_Register;
      --  DMA2D output memory address register
      DMA2D_OMAR           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA2D output offset register
      DMA2D_OOR            : aliased DMA2D_OOR_Register;
      --  DMA2D number of line register
      DMA2D_NLR            : aliased DMA2D_NLR_Register;
      --  DMA2D line watermark register
      DMA2D_LWR            : aliased DMA2D_LWR_Register;
      --  DMA2D AXI master timer configuration register
      DMA2D_AMTCR          : aliased DMA2D_AMTCR_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT0        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT1        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT2        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT3        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT4        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT5        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT6        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT7        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT8        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT9        : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT10       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT11       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT12       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT13       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT14       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT15       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT16       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT17       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT18       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT19       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT20       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT21       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT22       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT23       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT24       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT25       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT26       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT27       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT28       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT29       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT30       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT31       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT32       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT33       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT34       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT35       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT36       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT37       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT38       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT39       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT40       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT41       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT42       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT43       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT44       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT45       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT46       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT47       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT48       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT49       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT50       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT51       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT52       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT53       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT54       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT55       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT56       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT57       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT58       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT59       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT60       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT61       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT62       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT63       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT64       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT65       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT66       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT67       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT68       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT69       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT70       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT71       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT72       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT73       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT74       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT75       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT76       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT77       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT78       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT79       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT80       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT81       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT82       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT83       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT84       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT85       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT86       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT87       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT88       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT89       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT90       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT91       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT92       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT93       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT94       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT95       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT96       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT97       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT98       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT99       : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT100      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT101      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT102      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT103      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT104      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT105      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT106      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT107      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT108      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT109      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT110      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT111      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT112      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT113      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT114      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT115      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT116      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT117      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT118      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT119      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT120      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT121      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT122      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT123      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT124      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT125      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT126      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT127      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT128      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT129      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT130      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT131      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT132      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT133      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT134      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT135      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT136      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT137      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT138      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT139      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT140      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT141      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT142      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT143      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT144      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT145      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT146      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT147      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT148      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT149      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT150      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT151      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT152      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT153      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT154      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT155      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT156      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT157      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT158      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT159      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT160      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT161      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT162      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT163      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT164      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT165      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT166      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT167      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT168      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT169      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT170      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT171      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT172      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT173      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT174      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT175      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT176      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT177      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT178      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT179      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT180      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT181      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT182      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT183      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT184      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT185      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT186      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT187      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT188      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT189      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT190      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT191      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT192      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT193      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT194      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT195      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT196      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT197      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT198      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT199      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT200      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT201      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT202      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT203      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT204      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT205      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT206      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT207      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT208      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT209      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT210      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT211      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT212      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT213      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT214      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT215      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT216      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT217      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT218      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT219      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT220      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT221      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT222      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT223      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT224      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT225      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT226      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT227      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT228      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT229      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT230      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT231      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT232      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT233      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT234      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT235      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT236      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT237      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT238      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT239      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT240      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT241      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT242      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT243      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT244      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT245      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT246      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT247      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT248      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT249      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT250      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT251      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT252      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT253      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT254      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D foreground CLUT
      DMA2D_FGCLUT255      : aliased DMA2D_FGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT0        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT1        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT2        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT3        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT4        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT5        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT6        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT7        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT8        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT9        : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT10       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT11       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT12       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT13       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT14       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT15       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT16       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT17       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT18       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT19       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT20       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT21       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT22       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT23       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT24       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT25       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT26       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT27       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT28       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT29       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT30       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT31       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT32       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT33       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT34       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT35       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT36       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT37       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT38       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT39       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT40       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT41       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT42       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT43       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT44       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT45       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT46       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT47       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT48       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT49       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT50       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT51       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT52       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT53       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT54       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT55       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT56       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT57       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT58       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT59       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT60       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT61       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT62       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT63       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT64       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT65       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT66       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT67       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT68       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT69       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT70       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT71       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT72       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT73       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT74       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT75       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT76       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT77       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT78       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT79       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT80       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT81       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT82       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT83       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT84       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT85       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT86       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT87       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT88       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT89       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT90       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT91       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT92       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT93       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT94       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT95       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT96       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT97       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT98       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT99       : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT100      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT101      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT102      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT103      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT104      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT105      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT106      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT107      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT108      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT109      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT110      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT111      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT112      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT113      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT114      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT115      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT116      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT117      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT118      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT119      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT120      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT121      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT122      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT123      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT124      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT125      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT126      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT127      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT128      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT129      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT130      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT131      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT132      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT133      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT134      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT135      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT136      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT137      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT138      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT139      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT140      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT141      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT142      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT143      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT144      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT145      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT146      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT147      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT148      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT149      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT150      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT151      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT152      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT153      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT154      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT155      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT156      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT157      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT158      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT159      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT160      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT161      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT162      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT163      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT164      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT165      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT166      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT167      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT168      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT169      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT170      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT171      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT172      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT173      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT174      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT175      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT176      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT177      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT178      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT179      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT180      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT181      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT182      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT183      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT184      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT185      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT186      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT187      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT188      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT189      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT190      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT191      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT192      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT193      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT194      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT195      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT196      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT197      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT198      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT199      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT200      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT201      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT202      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT203      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT204      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT205      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT206      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT207      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT208      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT209      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT210      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT211      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT212      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT213      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT214      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT215      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT216      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT217      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT218      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT219      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT220      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT221      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT222      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT223      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT224      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT225      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT226      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT227      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT228      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT229      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT230      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT231      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT232      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT233      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT234      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT235      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT236      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT237      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT238      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT239      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT240      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT241      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT242      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT243      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT244      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT245      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT246      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT247      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT248      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT249      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT250      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT251      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT252      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT253      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT254      : aliased DMA2D_BGCLUT_Register;
      --  DMA2D background CLUT
      DMA2D_BGCLUT255      : aliased DMA2D_BGCLUT_Register;
      case Discriminent is
         when Rgb888 =>
            --  DMA2D output color register
            DMA2D_OCOLR_RGB888 : aliased DMA2D_OCOLR_RGB888_Register;
         when Rgb565 =>
            --  DMA2D output color register
            DMA2D_OCOLR_RGB565 : aliased DMA2D_OCOLR_RGB565_Register;
         when Argb1555 =>
            --  DMA2D output color register
            DMA2D_OCOLR_ARGB1555 : aliased DMA2D_OCOLR_ARGB1555_Register;
         when Argb4444 =>
            --  DMA2D output color register
            DMA2D_OCOLR_ARGB4444 : aliased DMA2D_OCOLR_ARGB4444_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for DMA2D_Peripheral use record
      DMA2D_CR             at 16#0# range 0 .. 31;
      DMA2D_ISR            at 16#4# range 0 .. 31;
      DMA2D_IFCR           at 16#8# range 0 .. 31;
      DMA2D_FGMAR          at 16#C# range 0 .. 31;
      DMA2D_FGOR           at 16#10# range 0 .. 31;
      DMA2D_BGMAR          at 16#14# range 0 .. 31;
      DMA2D_BGOR           at 16#18# range 0 .. 31;
      DMA2D_FGPFCCR        at 16#1C# range 0 .. 31;
      DMA2D_FGCOLR         at 16#20# range 0 .. 31;
      DMA2D_BGPFCCR        at 16#24# range 0 .. 31;
      DMA2D_BGCOLR         at 16#28# range 0 .. 31;
      DMA2D_FGCMAR         at 16#2C# range 0 .. 31;
      DMA2D_BGCMAR         at 16#30# range 0 .. 31;
      DMA2D_OPFCCR         at 16#34# range 0 .. 31;
      DMA2D_OMAR           at 16#3C# range 0 .. 31;
      DMA2D_OOR            at 16#40# range 0 .. 31;
      DMA2D_NLR            at 16#44# range 0 .. 31;
      DMA2D_LWR            at 16#48# range 0 .. 31;
      DMA2D_AMTCR          at 16#4C# range 0 .. 31;
      DMA2D_FGCLUT0        at 16#400# range 0 .. 31;
      DMA2D_FGCLUT1        at 16#404# range 0 .. 31;
      DMA2D_FGCLUT2        at 16#408# range 0 .. 31;
      DMA2D_FGCLUT3        at 16#40C# range 0 .. 31;
      DMA2D_FGCLUT4        at 16#410# range 0 .. 31;
      DMA2D_FGCLUT5        at 16#414# range 0 .. 31;
      DMA2D_FGCLUT6        at 16#418# range 0 .. 31;
      DMA2D_FGCLUT7        at 16#41C# range 0 .. 31;
      DMA2D_FGCLUT8        at 16#420# range 0 .. 31;
      DMA2D_FGCLUT9        at 16#424# range 0 .. 31;
      DMA2D_FGCLUT10       at 16#428# range 0 .. 31;
      DMA2D_FGCLUT11       at 16#42C# range 0 .. 31;
      DMA2D_FGCLUT12       at 16#430# range 0 .. 31;
      DMA2D_FGCLUT13       at 16#434# range 0 .. 31;
      DMA2D_FGCLUT14       at 16#438# range 0 .. 31;
      DMA2D_FGCLUT15       at 16#43C# range 0 .. 31;
      DMA2D_FGCLUT16       at 16#440# range 0 .. 31;
      DMA2D_FGCLUT17       at 16#444# range 0 .. 31;
      DMA2D_FGCLUT18       at 16#448# range 0 .. 31;
      DMA2D_FGCLUT19       at 16#44C# range 0 .. 31;
      DMA2D_FGCLUT20       at 16#450# range 0 .. 31;
      DMA2D_FGCLUT21       at 16#454# range 0 .. 31;
      DMA2D_FGCLUT22       at 16#458# range 0 .. 31;
      DMA2D_FGCLUT23       at 16#45C# range 0 .. 31;
      DMA2D_FGCLUT24       at 16#460# range 0 .. 31;
      DMA2D_FGCLUT25       at 16#464# range 0 .. 31;
      DMA2D_FGCLUT26       at 16#468# range 0 .. 31;
      DMA2D_FGCLUT27       at 16#46C# range 0 .. 31;
      DMA2D_FGCLUT28       at 16#470# range 0 .. 31;
      DMA2D_FGCLUT29       at 16#474# range 0 .. 31;
      DMA2D_FGCLUT30       at 16#478# range 0 .. 31;
      DMA2D_FGCLUT31       at 16#47C# range 0 .. 31;
      DMA2D_FGCLUT32       at 16#480# range 0 .. 31;
      DMA2D_FGCLUT33       at 16#484# range 0 .. 31;
      DMA2D_FGCLUT34       at 16#488# range 0 .. 31;
      DMA2D_FGCLUT35       at 16#48C# range 0 .. 31;
      DMA2D_FGCLUT36       at 16#490# range 0 .. 31;
      DMA2D_FGCLUT37       at 16#494# range 0 .. 31;
      DMA2D_FGCLUT38       at 16#498# range 0 .. 31;
      DMA2D_FGCLUT39       at 16#49C# range 0 .. 31;
      DMA2D_FGCLUT40       at 16#4A0# range 0 .. 31;
      DMA2D_FGCLUT41       at 16#4A4# range 0 .. 31;
      DMA2D_FGCLUT42       at 16#4A8# range 0 .. 31;
      DMA2D_FGCLUT43       at 16#4AC# range 0 .. 31;
      DMA2D_FGCLUT44       at 16#4B0# range 0 .. 31;
      DMA2D_FGCLUT45       at 16#4B4# range 0 .. 31;
      DMA2D_FGCLUT46       at 16#4B8# range 0 .. 31;
      DMA2D_FGCLUT47       at 16#4BC# range 0 .. 31;
      DMA2D_FGCLUT48       at 16#4C0# range 0 .. 31;
      DMA2D_FGCLUT49       at 16#4C4# range 0 .. 31;
      DMA2D_FGCLUT50       at 16#4C8# range 0 .. 31;
      DMA2D_FGCLUT51       at 16#4CC# range 0 .. 31;
      DMA2D_FGCLUT52       at 16#4D0# range 0 .. 31;
      DMA2D_FGCLUT53       at 16#4D4# range 0 .. 31;
      DMA2D_FGCLUT54       at 16#4D8# range 0 .. 31;
      DMA2D_FGCLUT55       at 16#4DC# range 0 .. 31;
      DMA2D_FGCLUT56       at 16#4E0# range 0 .. 31;
      DMA2D_FGCLUT57       at 16#4E4# range 0 .. 31;
      DMA2D_FGCLUT58       at 16#4E8# range 0 .. 31;
      DMA2D_FGCLUT59       at 16#4EC# range 0 .. 31;
      DMA2D_FGCLUT60       at 16#4F0# range 0 .. 31;
      DMA2D_FGCLUT61       at 16#4F4# range 0 .. 31;
      DMA2D_FGCLUT62       at 16#4F8# range 0 .. 31;
      DMA2D_FGCLUT63       at 16#4FC# range 0 .. 31;
      DMA2D_FGCLUT64       at 16#500# range 0 .. 31;
      DMA2D_FGCLUT65       at 16#504# range 0 .. 31;
      DMA2D_FGCLUT66       at 16#508# range 0 .. 31;
      DMA2D_FGCLUT67       at 16#50C# range 0 .. 31;
      DMA2D_FGCLUT68       at 16#510# range 0 .. 31;
      DMA2D_FGCLUT69       at 16#514# range 0 .. 31;
      DMA2D_FGCLUT70       at 16#518# range 0 .. 31;
      DMA2D_FGCLUT71       at 16#51C# range 0 .. 31;
      DMA2D_FGCLUT72       at 16#520# range 0 .. 31;
      DMA2D_FGCLUT73       at 16#524# range 0 .. 31;
      DMA2D_FGCLUT74       at 16#528# range 0 .. 31;
      DMA2D_FGCLUT75       at 16#52C# range 0 .. 31;
      DMA2D_FGCLUT76       at 16#530# range 0 .. 31;
      DMA2D_FGCLUT77       at 16#534# range 0 .. 31;
      DMA2D_FGCLUT78       at 16#538# range 0 .. 31;
      DMA2D_FGCLUT79       at 16#53C# range 0 .. 31;
      DMA2D_FGCLUT80       at 16#540# range 0 .. 31;
      DMA2D_FGCLUT81       at 16#544# range 0 .. 31;
      DMA2D_FGCLUT82       at 16#548# range 0 .. 31;
      DMA2D_FGCLUT83       at 16#54C# range 0 .. 31;
      DMA2D_FGCLUT84       at 16#550# range 0 .. 31;
      DMA2D_FGCLUT85       at 16#554# range 0 .. 31;
      DMA2D_FGCLUT86       at 16#558# range 0 .. 31;
      DMA2D_FGCLUT87       at 16#55C# range 0 .. 31;
      DMA2D_FGCLUT88       at 16#560# range 0 .. 31;
      DMA2D_FGCLUT89       at 16#564# range 0 .. 31;
      DMA2D_FGCLUT90       at 16#568# range 0 .. 31;
      DMA2D_FGCLUT91       at 16#56C# range 0 .. 31;
      DMA2D_FGCLUT92       at 16#570# range 0 .. 31;
      DMA2D_FGCLUT93       at 16#574# range 0 .. 31;
      DMA2D_FGCLUT94       at 16#578# range 0 .. 31;
      DMA2D_FGCLUT95       at 16#57C# range 0 .. 31;
      DMA2D_FGCLUT96       at 16#580# range 0 .. 31;
      DMA2D_FGCLUT97       at 16#584# range 0 .. 31;
      DMA2D_FGCLUT98       at 16#588# range 0 .. 31;
      DMA2D_FGCLUT99       at 16#58C# range 0 .. 31;
      DMA2D_FGCLUT100      at 16#590# range 0 .. 31;
      DMA2D_FGCLUT101      at 16#594# range 0 .. 31;
      DMA2D_FGCLUT102      at 16#598# range 0 .. 31;
      DMA2D_FGCLUT103      at 16#59C# range 0 .. 31;
      DMA2D_FGCLUT104      at 16#5A0# range 0 .. 31;
      DMA2D_FGCLUT105      at 16#5A4# range 0 .. 31;
      DMA2D_FGCLUT106      at 16#5A8# range 0 .. 31;
      DMA2D_FGCLUT107      at 16#5AC# range 0 .. 31;
      DMA2D_FGCLUT108      at 16#5B0# range 0 .. 31;
      DMA2D_FGCLUT109      at 16#5B4# range 0 .. 31;
      DMA2D_FGCLUT110      at 16#5B8# range 0 .. 31;
      DMA2D_FGCLUT111      at 16#5BC# range 0 .. 31;
      DMA2D_FGCLUT112      at 16#5C0# range 0 .. 31;
      DMA2D_FGCLUT113      at 16#5C4# range 0 .. 31;
      DMA2D_FGCLUT114      at 16#5C8# range 0 .. 31;
      DMA2D_FGCLUT115      at 16#5CC# range 0 .. 31;
      DMA2D_FGCLUT116      at 16#5D0# range 0 .. 31;
      DMA2D_FGCLUT117      at 16#5D4# range 0 .. 31;
      DMA2D_FGCLUT118      at 16#5D8# range 0 .. 31;
      DMA2D_FGCLUT119      at 16#5DC# range 0 .. 31;
      DMA2D_FGCLUT120      at 16#5E0# range 0 .. 31;
      DMA2D_FGCLUT121      at 16#5E4# range 0 .. 31;
      DMA2D_FGCLUT122      at 16#5E8# range 0 .. 31;
      DMA2D_FGCLUT123      at 16#5EC# range 0 .. 31;
      DMA2D_FGCLUT124      at 16#5F0# range 0 .. 31;
      DMA2D_FGCLUT125      at 16#5F4# range 0 .. 31;
      DMA2D_FGCLUT126      at 16#5F8# range 0 .. 31;
      DMA2D_FGCLUT127      at 16#5FC# range 0 .. 31;
      DMA2D_FGCLUT128      at 16#600# range 0 .. 31;
      DMA2D_FGCLUT129      at 16#604# range 0 .. 31;
      DMA2D_FGCLUT130      at 16#608# range 0 .. 31;
      DMA2D_FGCLUT131      at 16#60C# range 0 .. 31;
      DMA2D_FGCLUT132      at 16#610# range 0 .. 31;
      DMA2D_FGCLUT133      at 16#614# range 0 .. 31;
      DMA2D_FGCLUT134      at 16#618# range 0 .. 31;
      DMA2D_FGCLUT135      at 16#61C# range 0 .. 31;
      DMA2D_FGCLUT136      at 16#620# range 0 .. 31;
      DMA2D_FGCLUT137      at 16#624# range 0 .. 31;
      DMA2D_FGCLUT138      at 16#628# range 0 .. 31;
      DMA2D_FGCLUT139      at 16#62C# range 0 .. 31;
      DMA2D_FGCLUT140      at 16#630# range 0 .. 31;
      DMA2D_FGCLUT141      at 16#634# range 0 .. 31;
      DMA2D_FGCLUT142      at 16#638# range 0 .. 31;
      DMA2D_FGCLUT143      at 16#63C# range 0 .. 31;
      DMA2D_FGCLUT144      at 16#640# range 0 .. 31;
      DMA2D_FGCLUT145      at 16#644# range 0 .. 31;
      DMA2D_FGCLUT146      at 16#648# range 0 .. 31;
      DMA2D_FGCLUT147      at 16#64C# range 0 .. 31;
      DMA2D_FGCLUT148      at 16#650# range 0 .. 31;
      DMA2D_FGCLUT149      at 16#654# range 0 .. 31;
      DMA2D_FGCLUT150      at 16#658# range 0 .. 31;
      DMA2D_FGCLUT151      at 16#65C# range 0 .. 31;
      DMA2D_FGCLUT152      at 16#660# range 0 .. 31;
      DMA2D_FGCLUT153      at 16#664# range 0 .. 31;
      DMA2D_FGCLUT154      at 16#668# range 0 .. 31;
      DMA2D_FGCLUT155      at 16#66C# range 0 .. 31;
      DMA2D_FGCLUT156      at 16#670# range 0 .. 31;
      DMA2D_FGCLUT157      at 16#674# range 0 .. 31;
      DMA2D_FGCLUT158      at 16#678# range 0 .. 31;
      DMA2D_FGCLUT159      at 16#67C# range 0 .. 31;
      DMA2D_FGCLUT160      at 16#680# range 0 .. 31;
      DMA2D_FGCLUT161      at 16#684# range 0 .. 31;
      DMA2D_FGCLUT162      at 16#688# range 0 .. 31;
      DMA2D_FGCLUT163      at 16#68C# range 0 .. 31;
      DMA2D_FGCLUT164      at 16#690# range 0 .. 31;
      DMA2D_FGCLUT165      at 16#694# range 0 .. 31;
      DMA2D_FGCLUT166      at 16#698# range 0 .. 31;
      DMA2D_FGCLUT167      at 16#69C# range 0 .. 31;
      DMA2D_FGCLUT168      at 16#6A0# range 0 .. 31;
      DMA2D_FGCLUT169      at 16#6A4# range 0 .. 31;
      DMA2D_FGCLUT170      at 16#6A8# range 0 .. 31;
      DMA2D_FGCLUT171      at 16#6AC# range 0 .. 31;
      DMA2D_FGCLUT172      at 16#6B0# range 0 .. 31;
      DMA2D_FGCLUT173      at 16#6B4# range 0 .. 31;
      DMA2D_FGCLUT174      at 16#6B8# range 0 .. 31;
      DMA2D_FGCLUT175      at 16#6BC# range 0 .. 31;
      DMA2D_FGCLUT176      at 16#6C0# range 0 .. 31;
      DMA2D_FGCLUT177      at 16#6C4# range 0 .. 31;
      DMA2D_FGCLUT178      at 16#6C8# range 0 .. 31;
      DMA2D_FGCLUT179      at 16#6CC# range 0 .. 31;
      DMA2D_FGCLUT180      at 16#6D0# range 0 .. 31;
      DMA2D_FGCLUT181      at 16#6D4# range 0 .. 31;
      DMA2D_FGCLUT182      at 16#6D8# range 0 .. 31;
      DMA2D_FGCLUT183      at 16#6DC# range 0 .. 31;
      DMA2D_FGCLUT184      at 16#6E0# range 0 .. 31;
      DMA2D_FGCLUT185      at 16#6E4# range 0 .. 31;
      DMA2D_FGCLUT186      at 16#6E8# range 0 .. 31;
      DMA2D_FGCLUT187      at 16#6EC# range 0 .. 31;
      DMA2D_FGCLUT188      at 16#6F0# range 0 .. 31;
      DMA2D_FGCLUT189      at 16#6F4# range 0 .. 31;
      DMA2D_FGCLUT190      at 16#6F8# range 0 .. 31;
      DMA2D_FGCLUT191      at 16#6FC# range 0 .. 31;
      DMA2D_FGCLUT192      at 16#700# range 0 .. 31;
      DMA2D_FGCLUT193      at 16#704# range 0 .. 31;
      DMA2D_FGCLUT194      at 16#708# range 0 .. 31;
      DMA2D_FGCLUT195      at 16#70C# range 0 .. 31;
      DMA2D_FGCLUT196      at 16#710# range 0 .. 31;
      DMA2D_FGCLUT197      at 16#714# range 0 .. 31;
      DMA2D_FGCLUT198      at 16#718# range 0 .. 31;
      DMA2D_FGCLUT199      at 16#71C# range 0 .. 31;
      DMA2D_FGCLUT200      at 16#720# range 0 .. 31;
      DMA2D_FGCLUT201      at 16#724# range 0 .. 31;
      DMA2D_FGCLUT202      at 16#728# range 0 .. 31;
      DMA2D_FGCLUT203      at 16#72C# range 0 .. 31;
      DMA2D_FGCLUT204      at 16#730# range 0 .. 31;
      DMA2D_FGCLUT205      at 16#734# range 0 .. 31;
      DMA2D_FGCLUT206      at 16#738# range 0 .. 31;
      DMA2D_FGCLUT207      at 16#73C# range 0 .. 31;
      DMA2D_FGCLUT208      at 16#740# range 0 .. 31;
      DMA2D_FGCLUT209      at 16#744# range 0 .. 31;
      DMA2D_FGCLUT210      at 16#748# range 0 .. 31;
      DMA2D_FGCLUT211      at 16#74C# range 0 .. 31;
      DMA2D_FGCLUT212      at 16#750# range 0 .. 31;
      DMA2D_FGCLUT213      at 16#754# range 0 .. 31;
      DMA2D_FGCLUT214      at 16#758# range 0 .. 31;
      DMA2D_FGCLUT215      at 16#75C# range 0 .. 31;
      DMA2D_FGCLUT216      at 16#760# range 0 .. 31;
      DMA2D_FGCLUT217      at 16#764# range 0 .. 31;
      DMA2D_FGCLUT218      at 16#768# range 0 .. 31;
      DMA2D_FGCLUT219      at 16#76C# range 0 .. 31;
      DMA2D_FGCLUT220      at 16#770# range 0 .. 31;
      DMA2D_FGCLUT221      at 16#774# range 0 .. 31;
      DMA2D_FGCLUT222      at 16#778# range 0 .. 31;
      DMA2D_FGCLUT223      at 16#77C# range 0 .. 31;
      DMA2D_FGCLUT224      at 16#780# range 0 .. 31;
      DMA2D_FGCLUT225      at 16#784# range 0 .. 31;
      DMA2D_FGCLUT226      at 16#788# range 0 .. 31;
      DMA2D_FGCLUT227      at 16#78C# range 0 .. 31;
      DMA2D_FGCLUT228      at 16#790# range 0 .. 31;
      DMA2D_FGCLUT229      at 16#794# range 0 .. 31;
      DMA2D_FGCLUT230      at 16#798# range 0 .. 31;
      DMA2D_FGCLUT231      at 16#79C# range 0 .. 31;
      DMA2D_FGCLUT232      at 16#7A0# range 0 .. 31;
      DMA2D_FGCLUT233      at 16#7A4# range 0 .. 31;
      DMA2D_FGCLUT234      at 16#7A8# range 0 .. 31;
      DMA2D_FGCLUT235      at 16#7AC# range 0 .. 31;
      DMA2D_FGCLUT236      at 16#7B0# range 0 .. 31;
      DMA2D_FGCLUT237      at 16#7B4# range 0 .. 31;
      DMA2D_FGCLUT238      at 16#7B8# range 0 .. 31;
      DMA2D_FGCLUT239      at 16#7BC# range 0 .. 31;
      DMA2D_FGCLUT240      at 16#7C0# range 0 .. 31;
      DMA2D_FGCLUT241      at 16#7C4# range 0 .. 31;
      DMA2D_FGCLUT242      at 16#7C8# range 0 .. 31;
      DMA2D_FGCLUT243      at 16#7CC# range 0 .. 31;
      DMA2D_FGCLUT244      at 16#7D0# range 0 .. 31;
      DMA2D_FGCLUT245      at 16#7D4# range 0 .. 31;
      DMA2D_FGCLUT246      at 16#7D8# range 0 .. 31;
      DMA2D_FGCLUT247      at 16#7DC# range 0 .. 31;
      DMA2D_FGCLUT248      at 16#7E0# range 0 .. 31;
      DMA2D_FGCLUT249      at 16#7E4# range 0 .. 31;
      DMA2D_FGCLUT250      at 16#7E8# range 0 .. 31;
      DMA2D_FGCLUT251      at 16#7EC# range 0 .. 31;
      DMA2D_FGCLUT252      at 16#7F0# range 0 .. 31;
      DMA2D_FGCLUT253      at 16#7F4# range 0 .. 31;
      DMA2D_FGCLUT254      at 16#7F8# range 0 .. 31;
      DMA2D_FGCLUT255      at 16#7FC# range 0 .. 31;
      DMA2D_BGCLUT0        at 16#800# range 0 .. 31;
      DMA2D_BGCLUT1        at 16#804# range 0 .. 31;
      DMA2D_BGCLUT2        at 16#808# range 0 .. 31;
      DMA2D_BGCLUT3        at 16#80C# range 0 .. 31;
      DMA2D_BGCLUT4        at 16#810# range 0 .. 31;
      DMA2D_BGCLUT5        at 16#814# range 0 .. 31;
      DMA2D_BGCLUT6        at 16#818# range 0 .. 31;
      DMA2D_BGCLUT7        at 16#81C# range 0 .. 31;
      DMA2D_BGCLUT8        at 16#820# range 0 .. 31;
      DMA2D_BGCLUT9        at 16#824# range 0 .. 31;
      DMA2D_BGCLUT10       at 16#828# range 0 .. 31;
      DMA2D_BGCLUT11       at 16#82C# range 0 .. 31;
      DMA2D_BGCLUT12       at 16#830# range 0 .. 31;
      DMA2D_BGCLUT13       at 16#834# range 0 .. 31;
      DMA2D_BGCLUT14       at 16#838# range 0 .. 31;
      DMA2D_BGCLUT15       at 16#83C# range 0 .. 31;
      DMA2D_BGCLUT16       at 16#840# range 0 .. 31;
      DMA2D_BGCLUT17       at 16#844# range 0 .. 31;
      DMA2D_BGCLUT18       at 16#848# range 0 .. 31;
      DMA2D_BGCLUT19       at 16#84C# range 0 .. 31;
      DMA2D_BGCLUT20       at 16#850# range 0 .. 31;
      DMA2D_BGCLUT21       at 16#854# range 0 .. 31;
      DMA2D_BGCLUT22       at 16#858# range 0 .. 31;
      DMA2D_BGCLUT23       at 16#85C# range 0 .. 31;
      DMA2D_BGCLUT24       at 16#860# range 0 .. 31;
      DMA2D_BGCLUT25       at 16#864# range 0 .. 31;
      DMA2D_BGCLUT26       at 16#868# range 0 .. 31;
      DMA2D_BGCLUT27       at 16#86C# range 0 .. 31;
      DMA2D_BGCLUT28       at 16#870# range 0 .. 31;
      DMA2D_BGCLUT29       at 16#874# range 0 .. 31;
      DMA2D_BGCLUT30       at 16#878# range 0 .. 31;
      DMA2D_BGCLUT31       at 16#87C# range 0 .. 31;
      DMA2D_BGCLUT32       at 16#880# range 0 .. 31;
      DMA2D_BGCLUT33       at 16#884# range 0 .. 31;
      DMA2D_BGCLUT34       at 16#888# range 0 .. 31;
      DMA2D_BGCLUT35       at 16#88C# range 0 .. 31;
      DMA2D_BGCLUT36       at 16#890# range 0 .. 31;
      DMA2D_BGCLUT37       at 16#894# range 0 .. 31;
      DMA2D_BGCLUT38       at 16#898# range 0 .. 31;
      DMA2D_BGCLUT39       at 16#89C# range 0 .. 31;
      DMA2D_BGCLUT40       at 16#8A0# range 0 .. 31;
      DMA2D_BGCLUT41       at 16#8A4# range 0 .. 31;
      DMA2D_BGCLUT42       at 16#8A8# range 0 .. 31;
      DMA2D_BGCLUT43       at 16#8AC# range 0 .. 31;
      DMA2D_BGCLUT44       at 16#8B0# range 0 .. 31;
      DMA2D_BGCLUT45       at 16#8B4# range 0 .. 31;
      DMA2D_BGCLUT46       at 16#8B8# range 0 .. 31;
      DMA2D_BGCLUT47       at 16#8BC# range 0 .. 31;
      DMA2D_BGCLUT48       at 16#8C0# range 0 .. 31;
      DMA2D_BGCLUT49       at 16#8C4# range 0 .. 31;
      DMA2D_BGCLUT50       at 16#8C8# range 0 .. 31;
      DMA2D_BGCLUT51       at 16#8CC# range 0 .. 31;
      DMA2D_BGCLUT52       at 16#8D0# range 0 .. 31;
      DMA2D_BGCLUT53       at 16#8D4# range 0 .. 31;
      DMA2D_BGCLUT54       at 16#8D8# range 0 .. 31;
      DMA2D_BGCLUT55       at 16#8DC# range 0 .. 31;
      DMA2D_BGCLUT56       at 16#8E0# range 0 .. 31;
      DMA2D_BGCLUT57       at 16#8E4# range 0 .. 31;
      DMA2D_BGCLUT58       at 16#8E8# range 0 .. 31;
      DMA2D_BGCLUT59       at 16#8EC# range 0 .. 31;
      DMA2D_BGCLUT60       at 16#8F0# range 0 .. 31;
      DMA2D_BGCLUT61       at 16#8F4# range 0 .. 31;
      DMA2D_BGCLUT62       at 16#8F8# range 0 .. 31;
      DMA2D_BGCLUT63       at 16#8FC# range 0 .. 31;
      DMA2D_BGCLUT64       at 16#900# range 0 .. 31;
      DMA2D_BGCLUT65       at 16#904# range 0 .. 31;
      DMA2D_BGCLUT66       at 16#908# range 0 .. 31;
      DMA2D_BGCLUT67       at 16#90C# range 0 .. 31;
      DMA2D_BGCLUT68       at 16#910# range 0 .. 31;
      DMA2D_BGCLUT69       at 16#914# range 0 .. 31;
      DMA2D_BGCLUT70       at 16#918# range 0 .. 31;
      DMA2D_BGCLUT71       at 16#91C# range 0 .. 31;
      DMA2D_BGCLUT72       at 16#920# range 0 .. 31;
      DMA2D_BGCLUT73       at 16#924# range 0 .. 31;
      DMA2D_BGCLUT74       at 16#928# range 0 .. 31;
      DMA2D_BGCLUT75       at 16#92C# range 0 .. 31;
      DMA2D_BGCLUT76       at 16#930# range 0 .. 31;
      DMA2D_BGCLUT77       at 16#934# range 0 .. 31;
      DMA2D_BGCLUT78       at 16#938# range 0 .. 31;
      DMA2D_BGCLUT79       at 16#93C# range 0 .. 31;
      DMA2D_BGCLUT80       at 16#940# range 0 .. 31;
      DMA2D_BGCLUT81       at 16#944# range 0 .. 31;
      DMA2D_BGCLUT82       at 16#948# range 0 .. 31;
      DMA2D_BGCLUT83       at 16#94C# range 0 .. 31;
      DMA2D_BGCLUT84       at 16#950# range 0 .. 31;
      DMA2D_BGCLUT85       at 16#954# range 0 .. 31;
      DMA2D_BGCLUT86       at 16#958# range 0 .. 31;
      DMA2D_BGCLUT87       at 16#95C# range 0 .. 31;
      DMA2D_BGCLUT88       at 16#960# range 0 .. 31;
      DMA2D_BGCLUT89       at 16#964# range 0 .. 31;
      DMA2D_BGCLUT90       at 16#968# range 0 .. 31;
      DMA2D_BGCLUT91       at 16#96C# range 0 .. 31;
      DMA2D_BGCLUT92       at 16#970# range 0 .. 31;
      DMA2D_BGCLUT93       at 16#974# range 0 .. 31;
      DMA2D_BGCLUT94       at 16#978# range 0 .. 31;
      DMA2D_BGCLUT95       at 16#97C# range 0 .. 31;
      DMA2D_BGCLUT96       at 16#980# range 0 .. 31;
      DMA2D_BGCLUT97       at 16#984# range 0 .. 31;
      DMA2D_BGCLUT98       at 16#988# range 0 .. 31;
      DMA2D_BGCLUT99       at 16#98C# range 0 .. 31;
      DMA2D_BGCLUT100      at 16#990# range 0 .. 31;
      DMA2D_BGCLUT101      at 16#994# range 0 .. 31;
      DMA2D_BGCLUT102      at 16#998# range 0 .. 31;
      DMA2D_BGCLUT103      at 16#99C# range 0 .. 31;
      DMA2D_BGCLUT104      at 16#9A0# range 0 .. 31;
      DMA2D_BGCLUT105      at 16#9A4# range 0 .. 31;
      DMA2D_BGCLUT106      at 16#9A8# range 0 .. 31;
      DMA2D_BGCLUT107      at 16#9AC# range 0 .. 31;
      DMA2D_BGCLUT108      at 16#9B0# range 0 .. 31;
      DMA2D_BGCLUT109      at 16#9B4# range 0 .. 31;
      DMA2D_BGCLUT110      at 16#9B8# range 0 .. 31;
      DMA2D_BGCLUT111      at 16#9BC# range 0 .. 31;
      DMA2D_BGCLUT112      at 16#9C0# range 0 .. 31;
      DMA2D_BGCLUT113      at 16#9C4# range 0 .. 31;
      DMA2D_BGCLUT114      at 16#9C8# range 0 .. 31;
      DMA2D_BGCLUT115      at 16#9CC# range 0 .. 31;
      DMA2D_BGCLUT116      at 16#9D0# range 0 .. 31;
      DMA2D_BGCLUT117      at 16#9D4# range 0 .. 31;
      DMA2D_BGCLUT118      at 16#9D8# range 0 .. 31;
      DMA2D_BGCLUT119      at 16#9DC# range 0 .. 31;
      DMA2D_BGCLUT120      at 16#9E0# range 0 .. 31;
      DMA2D_BGCLUT121      at 16#9E4# range 0 .. 31;
      DMA2D_BGCLUT122      at 16#9E8# range 0 .. 31;
      DMA2D_BGCLUT123      at 16#9EC# range 0 .. 31;
      DMA2D_BGCLUT124      at 16#9F0# range 0 .. 31;
      DMA2D_BGCLUT125      at 16#9F4# range 0 .. 31;
      DMA2D_BGCLUT126      at 16#9F8# range 0 .. 31;
      DMA2D_BGCLUT127      at 16#9FC# range 0 .. 31;
      DMA2D_BGCLUT128      at 16#A00# range 0 .. 31;
      DMA2D_BGCLUT129      at 16#A04# range 0 .. 31;
      DMA2D_BGCLUT130      at 16#A08# range 0 .. 31;
      DMA2D_BGCLUT131      at 16#A0C# range 0 .. 31;
      DMA2D_BGCLUT132      at 16#A10# range 0 .. 31;
      DMA2D_BGCLUT133      at 16#A14# range 0 .. 31;
      DMA2D_BGCLUT134      at 16#A18# range 0 .. 31;
      DMA2D_BGCLUT135      at 16#A1C# range 0 .. 31;
      DMA2D_BGCLUT136      at 16#A20# range 0 .. 31;
      DMA2D_BGCLUT137      at 16#A24# range 0 .. 31;
      DMA2D_BGCLUT138      at 16#A28# range 0 .. 31;
      DMA2D_BGCLUT139      at 16#A2C# range 0 .. 31;
      DMA2D_BGCLUT140      at 16#A30# range 0 .. 31;
      DMA2D_BGCLUT141      at 16#A34# range 0 .. 31;
      DMA2D_BGCLUT142      at 16#A38# range 0 .. 31;
      DMA2D_BGCLUT143      at 16#A3C# range 0 .. 31;
      DMA2D_BGCLUT144      at 16#A40# range 0 .. 31;
      DMA2D_BGCLUT145      at 16#A44# range 0 .. 31;
      DMA2D_BGCLUT146      at 16#A48# range 0 .. 31;
      DMA2D_BGCLUT147      at 16#A4C# range 0 .. 31;
      DMA2D_BGCLUT148      at 16#A50# range 0 .. 31;
      DMA2D_BGCLUT149      at 16#A54# range 0 .. 31;
      DMA2D_BGCLUT150      at 16#A58# range 0 .. 31;
      DMA2D_BGCLUT151      at 16#A5C# range 0 .. 31;
      DMA2D_BGCLUT152      at 16#A60# range 0 .. 31;
      DMA2D_BGCLUT153      at 16#A64# range 0 .. 31;
      DMA2D_BGCLUT154      at 16#A68# range 0 .. 31;
      DMA2D_BGCLUT155      at 16#A6C# range 0 .. 31;
      DMA2D_BGCLUT156      at 16#A70# range 0 .. 31;
      DMA2D_BGCLUT157      at 16#A74# range 0 .. 31;
      DMA2D_BGCLUT158      at 16#A78# range 0 .. 31;
      DMA2D_BGCLUT159      at 16#A7C# range 0 .. 31;
      DMA2D_BGCLUT160      at 16#A80# range 0 .. 31;
      DMA2D_BGCLUT161      at 16#A84# range 0 .. 31;
      DMA2D_BGCLUT162      at 16#A88# range 0 .. 31;
      DMA2D_BGCLUT163      at 16#A8C# range 0 .. 31;
      DMA2D_BGCLUT164      at 16#A90# range 0 .. 31;
      DMA2D_BGCLUT165      at 16#A94# range 0 .. 31;
      DMA2D_BGCLUT166      at 16#A98# range 0 .. 31;
      DMA2D_BGCLUT167      at 16#A9C# range 0 .. 31;
      DMA2D_BGCLUT168      at 16#AA0# range 0 .. 31;
      DMA2D_BGCLUT169      at 16#AA4# range 0 .. 31;
      DMA2D_BGCLUT170      at 16#AA8# range 0 .. 31;
      DMA2D_BGCLUT171      at 16#AAC# range 0 .. 31;
      DMA2D_BGCLUT172      at 16#AB0# range 0 .. 31;
      DMA2D_BGCLUT173      at 16#AB4# range 0 .. 31;
      DMA2D_BGCLUT174      at 16#AB8# range 0 .. 31;
      DMA2D_BGCLUT175      at 16#ABC# range 0 .. 31;
      DMA2D_BGCLUT176      at 16#AC0# range 0 .. 31;
      DMA2D_BGCLUT177      at 16#AC4# range 0 .. 31;
      DMA2D_BGCLUT178      at 16#AC8# range 0 .. 31;
      DMA2D_BGCLUT179      at 16#ACC# range 0 .. 31;
      DMA2D_BGCLUT180      at 16#AD0# range 0 .. 31;
      DMA2D_BGCLUT181      at 16#AD4# range 0 .. 31;
      DMA2D_BGCLUT182      at 16#AD8# range 0 .. 31;
      DMA2D_BGCLUT183      at 16#ADC# range 0 .. 31;
      DMA2D_BGCLUT184      at 16#AE0# range 0 .. 31;
      DMA2D_BGCLUT185      at 16#AE4# range 0 .. 31;
      DMA2D_BGCLUT186      at 16#AE8# range 0 .. 31;
      DMA2D_BGCLUT187      at 16#AEC# range 0 .. 31;
      DMA2D_BGCLUT188      at 16#AF0# range 0 .. 31;
      DMA2D_BGCLUT189      at 16#AF4# range 0 .. 31;
      DMA2D_BGCLUT190      at 16#AF8# range 0 .. 31;
      DMA2D_BGCLUT191      at 16#AFC# range 0 .. 31;
      DMA2D_BGCLUT192      at 16#B00# range 0 .. 31;
      DMA2D_BGCLUT193      at 16#B04# range 0 .. 31;
      DMA2D_BGCLUT194      at 16#B08# range 0 .. 31;
      DMA2D_BGCLUT195      at 16#B0C# range 0 .. 31;
      DMA2D_BGCLUT196      at 16#B10# range 0 .. 31;
      DMA2D_BGCLUT197      at 16#B14# range 0 .. 31;
      DMA2D_BGCLUT198      at 16#B18# range 0 .. 31;
      DMA2D_BGCLUT199      at 16#B1C# range 0 .. 31;
      DMA2D_BGCLUT200      at 16#B20# range 0 .. 31;
      DMA2D_BGCLUT201      at 16#B24# range 0 .. 31;
      DMA2D_BGCLUT202      at 16#B28# range 0 .. 31;
      DMA2D_BGCLUT203      at 16#B2C# range 0 .. 31;
      DMA2D_BGCLUT204      at 16#B30# range 0 .. 31;
      DMA2D_BGCLUT205      at 16#B34# range 0 .. 31;
      DMA2D_BGCLUT206      at 16#B38# range 0 .. 31;
      DMA2D_BGCLUT207      at 16#B3C# range 0 .. 31;
      DMA2D_BGCLUT208      at 16#B40# range 0 .. 31;
      DMA2D_BGCLUT209      at 16#B44# range 0 .. 31;
      DMA2D_BGCLUT210      at 16#B48# range 0 .. 31;
      DMA2D_BGCLUT211      at 16#B4C# range 0 .. 31;
      DMA2D_BGCLUT212      at 16#B50# range 0 .. 31;
      DMA2D_BGCLUT213      at 16#B54# range 0 .. 31;
      DMA2D_BGCLUT214      at 16#B58# range 0 .. 31;
      DMA2D_BGCLUT215      at 16#B5C# range 0 .. 31;
      DMA2D_BGCLUT216      at 16#B60# range 0 .. 31;
      DMA2D_BGCLUT217      at 16#B64# range 0 .. 31;
      DMA2D_BGCLUT218      at 16#B68# range 0 .. 31;
      DMA2D_BGCLUT219      at 16#B6C# range 0 .. 31;
      DMA2D_BGCLUT220      at 16#B70# range 0 .. 31;
      DMA2D_BGCLUT221      at 16#B74# range 0 .. 31;
      DMA2D_BGCLUT222      at 16#B78# range 0 .. 31;
      DMA2D_BGCLUT223      at 16#B7C# range 0 .. 31;
      DMA2D_BGCLUT224      at 16#B80# range 0 .. 31;
      DMA2D_BGCLUT225      at 16#B84# range 0 .. 31;
      DMA2D_BGCLUT226      at 16#B88# range 0 .. 31;
      DMA2D_BGCLUT227      at 16#B8C# range 0 .. 31;
      DMA2D_BGCLUT228      at 16#B90# range 0 .. 31;
      DMA2D_BGCLUT229      at 16#B94# range 0 .. 31;
      DMA2D_BGCLUT230      at 16#B98# range 0 .. 31;
      DMA2D_BGCLUT231      at 16#B9C# range 0 .. 31;
      DMA2D_BGCLUT232      at 16#BA0# range 0 .. 31;
      DMA2D_BGCLUT233      at 16#BA4# range 0 .. 31;
      DMA2D_BGCLUT234      at 16#BA8# range 0 .. 31;
      DMA2D_BGCLUT235      at 16#BAC# range 0 .. 31;
      DMA2D_BGCLUT236      at 16#BB0# range 0 .. 31;
      DMA2D_BGCLUT237      at 16#BB4# range 0 .. 31;
      DMA2D_BGCLUT238      at 16#BB8# range 0 .. 31;
      DMA2D_BGCLUT239      at 16#BBC# range 0 .. 31;
      DMA2D_BGCLUT240      at 16#BC0# range 0 .. 31;
      DMA2D_BGCLUT241      at 16#BC4# range 0 .. 31;
      DMA2D_BGCLUT242      at 16#BC8# range 0 .. 31;
      DMA2D_BGCLUT243      at 16#BCC# range 0 .. 31;
      DMA2D_BGCLUT244      at 16#BD0# range 0 .. 31;
      DMA2D_BGCLUT245      at 16#BD4# range 0 .. 31;
      DMA2D_BGCLUT246      at 16#BD8# range 0 .. 31;
      DMA2D_BGCLUT247      at 16#BDC# range 0 .. 31;
      DMA2D_BGCLUT248      at 16#BE0# range 0 .. 31;
      DMA2D_BGCLUT249      at 16#BE4# range 0 .. 31;
      DMA2D_BGCLUT250      at 16#BE8# range 0 .. 31;
      DMA2D_BGCLUT251      at 16#BEC# range 0 .. 31;
      DMA2D_BGCLUT252      at 16#BF0# range 0 .. 31;
      DMA2D_BGCLUT253      at 16#BF4# range 0 .. 31;
      DMA2D_BGCLUT254      at 16#BF8# range 0 .. 31;
      DMA2D_BGCLUT255      at 16#BFC# range 0 .. 31;
      DMA2D_OCOLR_RGB888   at 16#38# range 0 .. 31;
      DMA2D_OCOLR_RGB565   at 16#38# range 0 .. 31;
      DMA2D_OCOLR_ARGB1555 at 16#38# range 0 .. 31;
      DMA2D_OCOLR_ARGB4444 at 16#38# range 0 .. 31;
   end record;

   --  Chrom-ART Accelerator controller
   DMA2D_Periph : aliased DMA2D_Peripheral
     with Import, Address => DMA2D_Base;

   --  Chrom-ART Accelerator controller
   DMA2D_S_Periph : aliased DMA2D_Peripheral
     with Import, Address => DMA2D_S_Base;

end Interfaces.STM32.DMA2D;
