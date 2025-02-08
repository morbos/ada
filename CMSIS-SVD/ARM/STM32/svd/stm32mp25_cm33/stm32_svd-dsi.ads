--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DSI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DSI Host control register
   type DSI_CR_Register is record
      --  Enable This bit configures the DSI Host in either power-up mode or to
      --  reset.
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_CR_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DSI_CCR_TXECKDIV_Field is HAL.UInt8;
   subtype DSI_CCR_TOCKDIV_Field is HAL.UInt8;

   --  DSI Host clock control register
   type DSI_CCR_Register is record
      --  TX escape clock division This field indicates the division factor for
      --  the TX escape clock source (lanebyteclk). The values 0 and 1 stop the
      --  TX_ESC clock generation.
      TXECKDIV       : DSI_CCR_TXECKDIV_Field := 16#0#;
      --  Timeout clock division This field indicates the division factor for
      --  the timeout clock used as the timing unit in the configuration of HS
      --  to LP and LP to HS transition error.
      TOCKDIV        : DSI_CCR_TOCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_CCR_Register use record
      TXECKDIV       at 0 range 0 .. 7;
      TOCKDIV        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DSI_LVCIDR_VCID_Field is HAL.UInt2;

   --  DSI Host LTDC VCID register
   type DSI_LVCIDR_Register is record
      --  Virtual channel ID These bits configure the virtual channel ID for
      --  the LTDC interface traffic.
      VCID          : DSI_LVCIDR_VCID_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LVCIDR_Register use record
      VCID          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DSI_LCOLCR_COLC_Field is HAL.UInt4;

   --  DSI Host LTDC color coding register
   type DSI_LCOLCR_Register is record
      --  Color coding This field configures the DPI color coding. Others:
      --  Reserved
      COLC          : DSI_LCOLCR_COLC_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Loosely packet enable Enables the loosely packed variant to 18-bit
      --  configuration
      LPE           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LCOLCR_Register use record
      COLC          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      LPE           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  DSI Host LTDC polarity configuration register
   type DSI_LPCR_Register is record
      --  Data enable polarity This bit configures the polarity of data enable
      --  pin.
      DEP           : Boolean := False;
      --  VSYNC polarity This bit configures the polarity of VSYNC pin.
      VSP           : Boolean := False;
      --  HSYNC polarity This bit configures the polarity of HSYNC pin.
      HSP           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LPCR_Register use record
      DEP           at 0 range 0 .. 0;
      VSP           at 0 range 1 .. 1;
      HSP           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DSI_LPMCR_VLPSIZE_Field is HAL.UInt8;
   subtype DSI_LPMCR_LPSIZE_Field is HAL.UInt8;

   --  DSI Host low-power mode configuration register
   type DSI_LPMCR_Register is record
      --  VACT largest packet size This field is used for the transmission of
      --  commands in low-power mode. It defines the size, in bytes, of the
      --  largest packet that can fit in a line during VACT regions.
      VLPSIZE        : DSI_LPMCR_VLPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Largest packet size This field is used for the transmission of
      --  commands in low-power mode. It defines the size, in bytes, of the
      --  largest packet that can fit in a line during VSA, VBP and VFP
      --  regions.
      LPSIZE         : DSI_LPMCR_LPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LPMCR_Register use record
      VLPSIZE        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LPSIZE         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DSI Host protocol configuration register
   type DSI_PCR_Register is record
      --  EoTp transmission enable Enables the EoTP transmission.
      ETTXE         : Boolean := False;
      --  EoTp reception enable Enables the EoTp reception.
      ETRXE         : Boolean := False;
      --  Bus-turn-around enable Enables the bus-turn-around (BTA) request.
      BTAE          : Boolean := False;
      --  ECC reception enable Enables the ECC reception, error correction and
      --  reporting.
      ECCRXE        : Boolean := False;
      --  CRC reception enable Enables the CRC reception and error reporting.
      CRCRXE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PCR_Register use record
      ETTXE         at 0 range 0 .. 0;
      ETRXE         at 0 range 1 .. 1;
      BTAE          at 0 range 2 .. 2;
      ECCRXE        at 0 range 3 .. 3;
      CRCRXE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DSI_GVCIDR_VCID_Field is HAL.UInt2;

   --  DSI Host generic VCID register
   type DSI_GVCIDR_Register is record
      --  Read-only. Virtual channel ID This field indicates the generic
      --  interface read-back virtual channel identification.
      VCID          : DSI_GVCIDR_VCID_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_GVCIDR_Register use record
      VCID          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DSI Host mode configuration register
   type DSI_MCR_Register is record
      --  Command mode This bit configures the DSI Host in either video or
      --  command mode.
      CMDM          : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_MCR_Register use record
      CMDM          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DSI_VMCR_VMT_Field is HAL.UInt2;

   --  DSI Host video mode configuration register
   type DSI_VMCR_Register is record
      --  Video mode type This field configures the video mode transmission
      --  type: 1x: Burst mode
      VMT            : DSI_VMCR_VMT_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Low-power vertical sync active enable Enables to return to low-power
      --  inside the vertical sync time (VSA) period when timing allows.
      LPVSAE         : Boolean := False;
      --  Low-power vertical back-porch enable Enables to return to low-power
      --  inside the vertical back-porch (VBP) period when timing allows.
      LPVBPE         : Boolean := False;
      --  Low-power vertical front-porch enable Enables to return to low-power
      --  inside the vertical front-porch (VFP) period when timing allows.
      LPVFPE         : Boolean := False;
      --  Low-power vertical active enable Enables to return to low-power
      --  inside the vertical active (VACT) period when timing allows.
      LPVAE          : Boolean := False;
      --  Low-power horizontal back-porch enable Enables the return to
      --  low-power inside the horizontal back-porch (HBP) period when timing
      --  allows.
      LPHBPE         : Boolean := False;
      --  Low-power horizontal front-porch enable Enables the return to
      --  low-power inside the horizontal front-porch (HFP) period when timing
      --  allows.
      LPHFPE         : Boolean := False;
      --  Frame bus-turn-around acknowledge enable Enables the request for an
      --  acknowledge response at the end of a frame.
      FBTAAE         : Boolean := False;
      --  Low-power command enable Enables the command transmission only in
      --  low-power mode.
      LPCE           : Boolean := False;
      --  Pattern generator enable Enables the video mode pattern generator.
      PGE            : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pattern generator mode This bit configures the pattern generator
      --  mode.
      PGM            : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pattern generator orientation This bit configures the color bar
      --  orientation.
      PGO            : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VMCR_Register use record
      VMT            at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LPVSAE         at 0 range 8 .. 8;
      LPVBPE         at 0 range 9 .. 9;
      LPVFPE         at 0 range 10 .. 10;
      LPVAE          at 0 range 11 .. 11;
      LPHBPE         at 0 range 12 .. 12;
      LPHFPE         at 0 range 13 .. 13;
      FBTAAE         at 0 range 14 .. 14;
      LPCE           at 0 range 15 .. 15;
      PGE            at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PGM            at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PGO            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DSI_VPCR_VPSIZE_Field is HAL.UInt14;

   --  DSI Host video packet configuration register
   type DSI_VPCR_Register is record
      --  Video packet size This field configures the number of pixels in a
      --  single video packet. For 18-bit not loosely packed data types this
      --  number must be a multiple of 4. For YCbCr data types it must be a
      --  multiple of 2 as described in the DSI specification.
      VPSIZE         : DSI_VPCR_VPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VPCR_Register use record
      VPSIZE         at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DSI_VCCR_NUMC_Field is HAL.UInt13;

   --  DSI Host video chunks configuration register
   type DSI_VCCR_Register is record
      --  Number of chunks This register configures the number of chunks to be
      --  transmitted during a line period (a chunk consists of a video packet
      --  and a null packet). If set to 0 or 1, the video line is transmitted
      --  in a single packet. If set to 1, the packet is part of a chunk, so a
      --  null packet follows it if NPSIZE 0. Otherwise, multiple chunks are
      --  used to transmit each video line.
      NUMC           : DSI_VCCR_NUMC_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VCCR_Register use record
      NUMC           at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DSI_VNPCR_NPSIZE_Field is HAL.UInt13;

   --  DSI Host video null packet configuration register
   type DSI_VNPCR_Register is record
      --  Null packet size This field configures the number of bytes inside a
      --  null packet. Setting to 0 disables the null packets.
      NPSIZE         : DSI_VNPCR_NPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VNPCR_Register use record
      NPSIZE         at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DSI_VHSACR_HSA_Field is HAL.UInt12;

   --  DSI Host video HSA configuration register
   type DSI_VHSACR_Register is record
      --  Horizontal synchronism active duration This fields configures the
      --  horizontal synchronism active period in lane byte clock cycles.
      HSA            : DSI_VHSACR_HSA_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VHSACR_Register use record
      HSA            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DSI_VHBPCR_HBP_Field is HAL.UInt12;

   --  DSI Host video HBP configuration register
   type DSI_VHBPCR_Register is record
      --  Horizontal back-porch duration This fields configures the horizontal
      --  back-porch period in lane byte clock cycles.
      HBP            : DSI_VHBPCR_HBP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VHBPCR_Register use record
      HBP            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DSI_VLCR_HLINE_Field is HAL.UInt15;

   --  DSI Host video line configuration register
   type DSI_VLCR_Register is record
      --  Horizontal line duration This fields configures the total of the
      --  horizontal line period (HSA+HBP+HACT+HFP) counted in lane byte clock
      --  cycles.
      HLINE          : DSI_VLCR_HLINE_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VLCR_Register use record
      HLINE          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DSI_VVSACR_VSA_Field is HAL.UInt10;

   --  DSI Host video VSA configuration register
   type DSI_VVSACR_Register is record
      --  Vertical synchronism active duration This fields configures the
      --  vertical synchronism active period measured in number of horizontal
      --  lines.
      VSA            : DSI_VVSACR_VSA_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVSACR_Register use record
      VSA            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VVBPCR_VBP_Field is HAL.UInt10;

   --  DSI Host video VBP configuration register
   type DSI_VVBPCR_Register is record
      --  Vertical back-porch duration This fields configures the vertical
      --  back-porch period measured in number of horizontal lines.
      VBP            : DSI_VVBPCR_VBP_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVBPCR_Register use record
      VBP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VVFPCR_VFP_Field is HAL.UInt10;

   --  DSI Host video VFP configuration register
   type DSI_VVFPCR_Register is record
      --  Vertical front-porch duration This fields configures the vertical
      --  front-porch period measured in number of horizontal lines.
      VFP            : DSI_VVFPCR_VFP_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVFPCR_Register use record
      VFP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VVACR_VA_Field is HAL.UInt14;

   --  DSI Host video VA configuration register
   type DSI_VVACR_Register is record
      --  Vertical active duration This fields configures the vertical active
      --  period measured in number of horizontal lines.
      VA             : DSI_VVACR_VA_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVACR_Register use record
      VA             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DSI_LCCR_CMDSIZE_Field is HAL.UInt16;

   --  DSI Host LTDC command configuration register
   type DSI_LCCR_Register is record
      --  Command size This field configures the maximum allowed size for an
      --  LTDC write memory command, measured in pixels. Automatic partitioning
      --  of data obtained from LTDC is permanently enabled.
      CMDSIZE        : DSI_LCCR_CMDSIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LCCR_Register use record
      CMDSIZE        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DSI Host command mode configuration register
   type DSI_CMCR_Register is record
      --  Tearing effect acknowledge request enable Enables the tearing effect
      --  acknowledge request:
      TEARE          : Boolean := False;
      --  Acknowledge request enable Enables the acknowledge request after each
      --  packet transmission:
      ARE            : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Generic short write zero parameters transmission This bit configures
      --  the generic short write packet with zero parameters command
      --  transmission type:
      GSW0TX         : Boolean := False;
      --  Generic short write one parameters transmission This bit configures
      --  the generic short write packet with one parameters command
      --  transmission type:
      GSW1TX         : Boolean := False;
      --  Generic short write two parameters transmission This bit configures
      --  the generic short write packet with two parameters command
      --  transmission type:
      GSW2TX         : Boolean := False;
      --  Generic short read zero parameters transmission This bit configures
      --  the generic short read packet with zero parameters command
      --  transmission type:
      GSR0TX         : Boolean := False;
      --  Generic short read one parameters transmission This bit configures
      --  the generic short read packet with one parameters command
      --  transmission type:
      GSR1TX         : Boolean := False;
      --  Generic short read two parameters transmission This bit configures
      --  the generic short read packet with two parameters command
      --  transmission type:
      GSR2TX         : Boolean := False;
      --  Generic long write transmission This bit configures the generic long
      --  write packet command transmission type :
      GLWTX          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  DCS short write zero parameter transmission This bit configures the
      --  DCS short write packet with zero parameter command transmission type:
      DSW0TX         : Boolean := False;
      --  DCS short read one parameter transmission This bit configures the DCS
      --  short read packet with one parameter command transmission type:
      DSW1TX         : Boolean := False;
      --  DCS short read zero parameter transmission This bit configures the
      --  DCS short read packet with zero parameter command transmission type:
      DSR0TX         : Boolean := False;
      --  DCS long write transmission This bit configures the DCS long write
      --  packet command transmission type:
      DLWTX          : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Maximum read packet size This bit configures the maximum read packet
      --  size command transmission type:
      MRDPS          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_CMCR_Register use record
      TEARE          at 0 range 0 .. 0;
      ARE            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      GSW0TX         at 0 range 8 .. 8;
      GSW1TX         at 0 range 9 .. 9;
      GSW2TX         at 0 range 10 .. 10;
      GSR0TX         at 0 range 11 .. 11;
      GSR1TX         at 0 range 12 .. 12;
      GSR2TX         at 0 range 13 .. 13;
      GLWTX          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DSW0TX         at 0 range 16 .. 16;
      DSW1TX         at 0 range 17 .. 17;
      DSR0TX         at 0 range 18 .. 18;
      DLWTX          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MRDPS          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DSI_GHCR_DT_Field is HAL.UInt6;
   subtype DSI_GHCR_VCID_Field is HAL.UInt2;
   subtype DSI_GHCR_WCLSB_Field is HAL.UInt8;
   subtype DSI_GHCR_WCMSB_Field is HAL.UInt8;

   --  DSI Host generic header configuration register
   type DSI_GHCR_Register is record
      --  Type This field configures the packet data type of the header packet.
      DT             : DSI_GHCR_DT_Field := 16#0#;
      --  Channel This field configures the virtual channel ID of the header
      --  packet.
      VCID           : DSI_GHCR_VCID_Field := 16#0#;
      --  WordCount LSB This field configures the less significant byte of the
      --  header packet word count for long packets, or data 0 for short
      --  packets.
      WCLSB          : DSI_GHCR_WCLSB_Field := 16#0#;
      --  WordCount MSB This field configures the most significant byte of the
      --  header packet’s word count for long packets, or data 1 for short
      --  packets.
      WCMSB          : DSI_GHCR_WCMSB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_GHCR_Register use record
      DT             at 0 range 0 .. 5;
      VCID           at 0 range 6 .. 7;
      WCLSB          at 0 range 8 .. 15;
      WCMSB          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DSI_GPDR_DATA array element
   subtype DSI_GPDR_DATA_Element is HAL.UInt8;

   --  DSI_GPDR_DATA array
   type DSI_GPDR_DATA_Field_Array is array (1 .. 4) of DSI_GPDR_DATA_Element
     with Component_Size => 8, Size => 32;

   --  DSI Host generic payload data register
   type DSI_GPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : DSI_GPDR_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_GPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DSI Host generic packet status register
   type DSI_GPSR_Register is record
      --  Read-only. Command FIFO empty Indicates the empty status of the
      --  generic command FIFO:
      CMDFE         : Boolean;
      --  Read-only. Command FIFO full Indicates the full status of the generic
      --  command FIFO:
      CMDFF         : Boolean;
      --  Read-only. Payload write FIFO empty Indicates the empty status of the
      --  generic write payload FIFO:
      PWRFE         : Boolean;
      --  Read-only. Payload write FIFO full Indicates the full status of the
      --  generic write payload FIFO:
      PWRFF         : Boolean;
      --  Read-only. Payload read FIFO empty Indicates the empty status of the
      --  generic read payload FIFO:
      PRDFE         : Boolean;
      --  Read-only. Payload read FIFO full Indicates the full status of the
      --  generic read payload FIFO:
      PRDFF         : Boolean;
      --  Read-only. Read command busy This bit is set when a read command is
      --  issued and cleared when the entire response is stored in the FIFO:
      RCB           : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_GPSR_Register use record
      CMDFE         at 0 range 0 .. 0;
      CMDFF         at 0 range 1 .. 1;
      PWRFE         at 0 range 2 .. 2;
      PWRFF         at 0 range 3 .. 3;
      PRDFE         at 0 range 4 .. 4;
      PRDFF         at 0 range 5 .. 5;
      RCB           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DSI_TCCR0_LPRX_TOCNT_Field is HAL.UInt16;
   subtype DSI_TCCR0_HSTX_TOCNT_Field is HAL.UInt16;

   --  DSI Host timeout counter configuration register 0
   type DSI_TCCR0_Register is record
      --  Low-power reception timeout counter This field configures the timeout
      --  counter that triggers a low-power reception timeout contention
      --  detection (measured in TOCKDIV cycles).
      LPRX_TOCNT : DSI_TCCR0_LPRX_TOCNT_Field := 16#0#;
      --  High-speed transmission timeout counter This field configures the
      --  timeout counter that triggers a high-speed transmission timeout
      --  contention detection (measured in TOCKDIV cycles). If using the
      --  non-burst mode and there is no enough time to switch from high-speed
      --  to low-power and back in the period from one line data finishing to
      --  the next line sync start, the DSI link returns the low-power state
      --  once per frame, then configure the TOCKDIV and HSTX_TOCNT to be in
      --  accordance with: HSTX_TOCNT * lanebyteclkperiod * TOCKDIV ≥ the
      --  time of one FRAME data transmission * (1 + 10%) In burst mode, RGB
      --  pixel packets are time-compressed, leaving more time during a scan
      --  line. Therefore, if in burst mode and there is enough time to switch
      --  from high-speed to low-power and back in the period from one line
      --  data finishing to the next line sync start, the DSI link can return
      --  low-power mode and back in this time interval to save power. For
      --  this, configure the TOCKDIV and HSTX_TOCNT to be in accordance with:
      --  HSTX_TOCNT * lanebyteclkperiod * TOCKDIV ≥ the time of one LINE
      --  data transmission * (1 + 10%)
      HSTX_TOCNT : DSI_TCCR0_HSTX_TOCNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TCCR0_Register use record
      LPRX_TOCNT at 0 range 0 .. 15;
      HSTX_TOCNT at 0 range 16 .. 31;
   end record;

   subtype DSI_TCCR1_HSRD_TOCNT_Field is HAL.UInt16;

   --  DSI Host timeout counter configuration register 1
   type DSI_TCCR1_Register is record
      --  High-speed read timeout counter This field sets a period for which
      --  the DSI Host keeps the link still, after sending a high-speed read
      --  operation. This period is measured in cycles of lanebyteclk. The
      --  counting starts when the D-PHY enters the Stop state and causes no
      --  interrupts.
      HSRD_TOCNT     : DSI_TCCR1_HSRD_TOCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TCCR1_Register use record
      HSRD_TOCNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DSI_TCCR2_LPRD_TOCNT_Field is HAL.UInt16;

   --  DSI Host timeout counter configuration register 2
   type DSI_TCCR2_Register is record
      --  Low-power read timeout counter This field sets a period for which the
      --  DSI Host keeps the link still, after sending a low-power read
      --  operation. This period is measured in cycles of lanebyteclk. The
      --  counting starts when the D-PHY enters the Stop state and causes no
      --  interrupts.
      LPRD_TOCNT     : DSI_TCCR2_LPRD_TOCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TCCR2_Register use record
      LPRD_TOCNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DSI_TCCR3_HSWR_TOCNT_Field is HAL.UInt16;

   --  DSI Host timeout counter configuration register 3
   type DSI_TCCR3_Register is record
      --  High-speed write timeout counter This field sets a period for which
      --  the DSI Host keeps the link inactive after sending a high-speed write
      --  operation. This period is measured in cycles of lanebyteclk. The
      --  counting starts when the D-PHY enters the Stop state and causes no
      --  interrupts.
      HSWR_TOCNT     : DSI_TCCR3_HSWR_TOCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Presp mode When set to 1, this bit ensures that the peripheral
      --  response timeout caused by HSWR_TOCNT is used only once per LTDC
      --  frame in command mode, when both the following conditions are met:
      --  dpivsync_edpiwms has risen and fallen. Packets originated from LTDC
      --  in command mode have been transmitted and its FIFO is empty again. In
      --  this scenario no non-LTDC command requests are sent to the D-PHY,
      --  even if there is traffic from generic interface ready to be sent,
      --  making it return to stop state. When it does so, PRESP_TO counter is
      --  activated and only when it finishes does the controller send any
      --  other traffic that is ready.
      PM             : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TCCR3_Register use record
      HSWR_TOCNT     at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      PM             at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DSI_TCCR4_LPWR_TOCNT_Field is HAL.UInt16;

   --  DSI Host timeout counter configuration register 4
   type DSI_TCCR4_Register is record
      --  Low-power write timeout counter This field sets a period for which
      --  the DSI Host keeps the link still, after sending a low-power write
      --  operation. This period is measured in cycles of lanebyteclk. The
      --  counting starts when the D-PHY enters the Stop state and causes no
      --  interrupts.
      LPWR_TOCNT     : DSI_TCCR4_LPWR_TOCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TCCR4_Register use record
      LPWR_TOCNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DSI_TCCR5_BTA_TOCNT_Field is HAL.UInt16;

   --  DSI Host timeout counter configuration register 5
   type DSI_TCCR5_Register is record
      --  Bus-turn-around timeout counter This field sets a period for which
      --  the DSI Host keeps the link still, after completing a
      --  bus-turn-around. This period is measured in cycles of lanebyteclk.
      --  The counting starts when the D-PHY enters the Stop state and causes
      --  no interrupts.
      BTA_TOCNT      : DSI_TCCR5_BTA_TOCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TCCR5_Register use record
      BTA_TOCNT      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DSI_TDCR_M3D_Field is HAL.UInt2;
   subtype DSI_TDCR_F3D_Field is HAL.UInt2;

   --  DSI Host 3D configuration register
   type DSI_TDCR_Register is record
      --  3D mode This field defines the 3D mode on/off and display
      --  orientation:
      M3D            : DSI_TDCR_M3D_Field := 16#0#;
      --  3D format This field defines the 3D image format:
      F3D            : DSI_TDCR_F3D_Field := 16#0#;
      --  Second VSYNC This field defines whether there is a second VSYNC pulse
      --  between left and right images, when 3D image format is frame-based:
      SVS            : Boolean := False;
      --  Right first This bit defines the left or right order:
      RF             : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Send 3D control When set, causes the next VSS packet to include 3D
      --  control payload in every VSS packet.
      S3DC           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TDCR_Register use record
      M3D            at 0 range 0 .. 1;
      F3D            at 0 range 2 .. 3;
      SVS            at 0 range 4 .. 4;
      RF             at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      S3DC           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  DSI Host clock lane configuration register
   type DSI_CLCR_Register is record
      --  D-PHY clock control This bit controls the D-PHY clock state:
      DPCC          : Boolean := False;
      --  Automatic clock lane control Enables the automatic mechanism to stop
      --  providing clock in the clock lane when time allows.
      ACR           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_CLCR_Register use record
      DPCC          at 0 range 0 .. 0;
      ACR           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DSI_CLTCR_LP2HS_TIME_Field is HAL.UInt10;
   subtype DSI_CLTCR_HS2LP_TIME_Field is HAL.UInt10;

   --  DSI Host clock lane timer configuration register
   type DSI_CLTCR_Register is record
      --  Low-power to high-speed time This field configures the maximum time
      --  that the D-PHY clock lane takes to go from low-power to high-speed
      --  transmission measured in lane byte clock cycles.
      LP2HS_TIME     : DSI_CLTCR_LP2HS_TIME_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  High-speed to low-power time This field configures the maximum time
      --  that the D-PHY clock lane takes to go from high-speed to low-power
      --  transmission measured in lane byte clock cycles.
      HS2LP_TIME     : DSI_CLTCR_HS2LP_TIME_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_CLTCR_Register use record
      LP2HS_TIME     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HS2LP_TIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DSI_DLTCR_LP2HS_TIME_Field is HAL.UInt10;
   subtype DSI_DLTCR_HS2LP_TIME_Field is HAL.UInt10;

   --  DSI Host data lane timer configuration register
   type DSI_DLTCR_Register is record
      --  Low-power to high-speed time This field configures the maximum time
      --  that the D-PHY data lanes take to go from low-power to high-speed
      --  transmission measured in lane byte clock cycles.
      LP2HS_TIME     : DSI_DLTCR_LP2HS_TIME_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  High-speed to low-power time This field configures the maximum time
      --  that the D-PHY data lanes take to go from high-speed to low-power
      --  transmission measured in lane byte clock cycles.
      HS2LP_TIME     : DSI_DLTCR_HS2LP_TIME_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_DLTCR_Register use record
      LP2HS_TIME     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HS2LP_TIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  DSI Host PHY control register
   type DSI_PCTLR_Register is record
      --  Power enable When set to 0, this bit places the complete D-PHY in the
      --  power-down state
      PWEN          : Boolean := False;
      --  Digital enable When set to 0, this bit places the digital section of
      --  the D-PHY in the reset state
      DEN           : Boolean := False;
      --  Clock enable Enables the D-PHY clock lane module:
      CKEN          : Boolean := False;
      --  ULPS clock enable Enables the D-PHY PLL clock when in ULPS mode:
      UCKEN         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PCTLR_Register use record
      PWEN          at 0 range 0 .. 0;
      DEN           at 0 range 1 .. 1;
      CKEN          at 0 range 2 .. 2;
      UCKEN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DSI_PCONFR_NL_Field is HAL.UInt2;
   subtype DSI_PCONFR_SW_TIME_Field is HAL.UInt8;

   --  DSI Host PHY configuration register
   type DSI_PCONFR_Register is record
      --  Number of lanes This field configures the number of active data
      --  lanes:
      NL             : DSI_PCONFR_NL_Field := 16#1#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#4#;
      --  Stop wait time This field configures the minimum wait period to
      --  request a high-speed transmission after the Stop state.
      SW_TIME        : DSI_PCONFR_SW_TIME_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PCONFR_Register use record
      NL             at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SW_TIME        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DSI Host PHY ULPS control register
   type DSI_PUCR_Register is record
      --  ULPS request on clock lane ULPS mode request on clock lane.
      URCL          : Boolean := False;
      --  ULPS exit on clock lane ULPS mode exit on clock lane.
      UECL          : Boolean := False;
      --  ULPS request on data lane ULPS mode request on all active data lanes.
      URDL          : Boolean := False;
      --  ULPS exit on data lane ULPS mode exit on all active data lanes.
      UEDL          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PUCR_Register use record
      URCL          at 0 range 0 .. 0;
      UECL          at 0 range 1 .. 1;
      URDL          at 0 range 2 .. 2;
      UEDL          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DSI_PTTCR_TX_TRIG_Field is HAL.UInt4;

   --  DSI Host PHY TX triggers configuration register
   type DSI_PTTCR_Register is record
      --  Transmission trigger Escape mode transmit trigger 0-3. Only one bit
      --  of TX_TRIG is asserted at any given time.
      TX_TRIG       : DSI_PTTCR_TX_TRIG_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PTTCR_Register use record
      TX_TRIG       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DSI Host PHY status register
   type DSI_PSR_Register is record
      --  Read-only. PHY direction Indicates the status of rxulpsesc0lane D-PHY
      --  signal.
      PL             : Boolean;
      --  Read-only. PHY direction Indicates the status of phydirection D-PHY
      --  signal.
      PD             : Boolean;
      --  Read-only. PHY stop state clock lane Indicates the status of
      --  phystopstateclklane D-PHY signal.
      PSSC           : Boolean;
      --  Read-only. ULPS active not clock lane Indicates the status of
      --  ulpsactivenotclklane D-PHY signal.
      UANC           : Boolean;
      --  Read-only. PHY stop state lane 0 Indicates the status of
      --  phystopstate0lane D-PHY signal.
      PSS0           : Boolean;
      --  Read-only. ULPS active not lane 0 Indicates the status of
      --  ulpsactivenot0lane D-PHY signal.
      UAN0           : Boolean;
      --  Read-only. RX ULPS escape lane 0 Indicates the status of
      --  rxulpsesc0lane D-PHY signal.
      RUE0           : Boolean;
      --  Read-only. PHY stop state lane 1 Indicates the status of
      --  phystopstate1lane D-PHY signal.
      PSS1           : Boolean;
      --  Read-only. ULPS active not lane 1 Indicates the status of
      --  ulpsactivenot1lane D-PHY signal.
      UAN1           : Boolean;
      --  Read-only. PHY stop state lane 2 Indicates the status of
      --  phystopstate1lane D-PHY signal.
      PSS2           : Boolean;
      --  Read-only. ULPS active not lane 2 Indicates the status of
      --  ulpsactivenot1lane D-PHY signal.
      UAN2           : Boolean;
      --  Read-only. PHY stop state lane 3 Indicates the status of
      --  phystopstate1lane D-PHY signal.
      PSS3           : Boolean;
      --  Read-only. ULPS active not lane 3 Indicates the status of
      --  ulpsactivenot1lane D-PHY signal.
      UAN3           : Boolean;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PSR_Register use record
      PL             at 0 range 0 .. 0;
      PD             at 0 range 1 .. 1;
      PSSC           at 0 range 2 .. 2;
      UANC           at 0 range 3 .. 3;
      PSS0           at 0 range 4 .. 4;
      UAN0           at 0 range 5 .. 5;
      RUE0           at 0 range 6 .. 6;
      PSS1           at 0 range 7 .. 7;
      UAN1           at 0 range 8 .. 8;
      PSS2           at 0 range 9 .. 9;
      UAN2           at 0 range 10 .. 10;
      PSS3           at 0 range 11 .. 11;
      UAN3           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  DSI Host PHY test control register 0
   type DSI_PTCR0_Register is record
      --  Read-only. Test-interface reset enable for the TDI bus into the
      --  D-PHY:
      TRSEN         : Boolean;
      --  Read-only. Test-interface clock enable for the TDI bus into the PHY:
      TCKEN         : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PTCR0_Register use record
      TRSEN         at 0 range 0 .. 0;
      TCKEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DSI_PTCR1_TDI_Field is HAL.UInt8;
   subtype DSI_PTCR1_TDO_Field is HAL.UInt8;

   --  DSI Host PHY test control register 1
   type DSI_PTCR1_Register is record
      --  Test data in This field configures the TESTDIN bus returning from the
      --  D-PHY.
      TDI            : DSI_PTCR1_TDI_Field := 16#0#;
      --  Test data out This field configures the TESTDOUT test bus sent to the
      --  D-PHY.
      TDO            : DSI_PTCR1_TDO_Field := 16#0#;
      --  Test write mode, selects the test write access performed to the
      --  D-PHY:
      TWM            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PTCR1_Register use record
      TDI            at 0 range 0 .. 7;
      TDO            at 0 range 8 .. 15;
      TWM            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  DSI_ISR0_AE array
   type DSI_ISR0_AE_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DSI_ISR0_AE
   type DSI_ISR0_AE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AE as a value
            Val : HAL.UInt16;
         when True =>
            --  AE as an array
            Arr : DSI_ISR0_AE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DSI_ISR0_AE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DSI_ISR0_PE array
   type DSI_ISR0_PE_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for DSI_ISR0_PE
   type DSI_ISR0_PE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PE as a value
            Val : HAL.UInt5;
         when True =>
            --  PE as an array
            Arr : DSI_ISR0_PE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for DSI_ISR0_PE_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  DSI Host interrupt and status register 0
   type DSI_ISR0_Register is record
      --  Read-only. Acknowledge error 0 Retrieves the SoT error from the
      --  acknowledge error report.
      AE             : DSI_ISR0_AE_Field;
      --  Read-only. PHY error 0 Indicates the ErrEsc escape entry error from
      --  lane 0.
      PE             : DSI_ISR0_PE_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_ISR0_Register use record
      AE             at 0 range 0 .. 15;
      PE             at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host interrupt and status register 1
   type DSI_ISR1_Register is record
      --  Read-only. Timeout high-speed transmission Indicates that the
      --  high-speed transmission timeout counter reached the end and
      --  contention is detected.
      TOHSTX         : Boolean;
      --  Read-only. Timeout low-power reception Indicates that the low-power
      --  reception timeout counter reached the end and contention is detected.
      TOLPRX         : Boolean;
      --  Read-only. ECC single-bit error Indicates that the ECC single error
      --  is detected and corrected in a received packet.
      ECCSE          : Boolean;
      --  Read-only. ECC multi-bit error Indicates that the ECC multiple error
      --  is detected in a received packet.
      ECCME          : Boolean;
      --  Read-only. CRC error Indicates that the CRC error is detected in the
      --  received packet payload.
      CRCE           : Boolean;
      --  Read-only. Packet size error Indicates that the packet size error is
      --  detected during the packet reception.
      PSE            : Boolean;
      --  Read-only. EoTp error Indicates that the EoTp packet is not received
      --  at the end of the incoming peripheral transmission.
      EOTPE          : Boolean;
      --  Read-only. LTDC payload write error Indicates that during a DPI pixel
      --  line storage, the payload FIFO becomes full and the data stored is
      --  corrupted.
      LPWRE          : Boolean;
      --  Read-only. Generic command write error Indicates that the system
      --  tried to write a command through the generic interface and the FIFO
      --  is full. Therefore, the command is not written.
      GCWRE          : Boolean;
      --  Read-only. Generic payload write error Indicates that the system
      --  tried to write a payload data through the generic interface and the
      --  FIFO is full. Therefore, the payload is not written.
      GPWRE          : Boolean;
      --  Read-only. Generic payload transmit error Indicates that during a
      --  generic interface packet build, the payload FIFO becomes empty and
      --  corrupt data is sent.
      GPTXE          : Boolean;
      --  Read-only. Generic payload read error Indicates that during a DCS
      --  read data, the payload FIFO becomes empty and the data sent to the
      --  interface is corrupted.
      GPRDE          : Boolean;
      --  Read-only. Generic payload receive error Indicates that during a
      --  generic interface packet read back, the payload FIFO becomes full and
      --  the received data is corrupted.
      GPRXE          : Boolean;
      --  Read-only. DBI command FIFO full error Indicates that the system
      --  tried to write a command through the DBI but the command FIFO is
      --  full. Therefore, the command is not written.
      DCFFE          : Boolean;
      --  Read-only. DBI data FIFO full error Indicates that the system tried
      --  to write the payload data through the DBI interface and the FIFO is
      --  full. Therefore, the command is not written.
      DDFFE          : Boolean;
      --  Read-only. DCS read underflow error Indicates that during a DCS read
      --  data, the payload FIFO goes empty and the data sent to the interface
      --  is corrupted.
      DRUE           : Boolean;
      --  Read-only. DBI read overflow error Indicates that during a DBI read
      --  back packet, the payload FIFO becomes full and the received data is
      --  corrupted.
      DROE           : Boolean;
      --  Read-only. DBI illegal command error Indicates that an attempt to
      --  write an illegal command on the DBI interface is made and the
      --  controller is blocked by transmission.
      DICE           : Boolean;
      --  unspecified
      Reserved_18_18 : HAL.Bit;
      --  Read-only. Video mode underflow error Indicates that an underflow has
      --  occurred when reading payload to build DSI packet for video mode.
      VMPUE          : Boolean;
      --  Read-only. Tear effect error Indicates that tear_request has
      --  occurred, but tear effect is not active in DSI host and device.
      TEE            : Boolean;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_ISR1_Register use record
      TOHSTX         at 0 range 0 .. 0;
      TOLPRX         at 0 range 1 .. 1;
      ECCSE          at 0 range 2 .. 2;
      ECCME          at 0 range 3 .. 3;
      CRCE           at 0 range 4 .. 4;
      PSE            at 0 range 5 .. 5;
      EOTPE          at 0 range 6 .. 6;
      LPWRE          at 0 range 7 .. 7;
      GCWRE          at 0 range 8 .. 8;
      GPWRE          at 0 range 9 .. 9;
      GPTXE          at 0 range 10 .. 10;
      GPRDE          at 0 range 11 .. 11;
      GPRXE          at 0 range 12 .. 12;
      DCFFE          at 0 range 13 .. 13;
      DDFFE          at 0 range 14 .. 14;
      DRUE           at 0 range 15 .. 15;
      DROE           at 0 range 16 .. 16;
      DICE           at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      VMPUE          at 0 range 19 .. 19;
      TEE            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host interrupt enable register 0
   type DSI_IER0_Register is record
      --  Acknowledge error 0 interrupt enable Enables the interrupt generation
      --  on acknowledge error 0.
      AE0IE          : Boolean := False;
      --  Acknowledge error 1 interrupt enable Enables the interrupt generation
      --  on acknowledge error 1.
      AE1IE          : Boolean := False;
      --  Acknowledge error 2 interrupt enable Enables the interrupt generation
      --  on acknowledge error 2.
      AE2IE          : Boolean := False;
      --  Acknowledge error 3 interrupt enable Enables the interrupt generation
      --  on acknowledge error 3.
      AE3IE          : Boolean := False;
      --  Acknowledge error 4 interrupt enable Enables the interrupt generation
      --  on acknowledge error 4.
      AE4IE          : Boolean := False;
      --  Acknowledge error 5 interrupt enable Enables the interrupt generation
      --  on acknowledge error 5.
      AE5IE          : Boolean := False;
      --  Acknowledge error 6 interrupt enable Enables the interrupt generation
      --  on acknowledge error 6.
      AE6IE          : Boolean := False;
      --  Acknowledge error 7 interrupt enable Enables the interrupt generation
      --  on acknowledge error 7.
      AE7IE          : Boolean := False;
      --  Acknowledge error 8 interrupt enable Enables the interrupt generation
      --  on acknowledge error 8.
      AE8IE          : Boolean := False;
      --  Acknowledge error 9 interrupt enable Enables the interrupt generation
      --  on acknowledge error 9.
      AE9IE          : Boolean := False;
      --  Acknowledge error 10 interrupt enable Enables the interrupt
      --  generation on acknowledge error 10.
      AE10IE         : Boolean := False;
      --  Acknowledge error 11 interrupt enable Enables the interrupt
      --  generation on acknowledge error 11.
      AE11IE         : Boolean := False;
      --  Acknowledge error 12 interrupt enable Enables the interrupt
      --  generation on acknowledge error 12.
      AE12IE         : Boolean := False;
      --  Acknowledge error 13 interrupt enable Enables the interrupt
      --  generation on acknowledge error 13.
      AE13IE         : Boolean := False;
      --  Acknowledge error 14 interrupt enable Enables the interrupt
      --  generation on acknowledge error 14.
      AE14IE         : Boolean := False;
      --  Acknowledge error 15 interrupt enable Enables the interrupt
      --  generation on acknowledge error 15.
      AE15IE         : Boolean := False;
      --  PHY error 0 interrupt enable Enables the interrupt generation on PHY
      --  error 0.
      PE0IE          : Boolean := False;
      --  PHY error 1 interrupt enable Enables the interrupt generation on PHY
      --  error 1.
      PE1IE          : Boolean := False;
      --  PHY error 2 interrupt enable Enables the interrupt generation on PHY
      --  error 2.
      PE2IE          : Boolean := False;
      --  PHY error 3 interrupt enable Enables the interrupt generation on PHY
      --  error 4.
      PE3IE          : Boolean := False;
      --  PHY error 4 interrupt enable Enables the interrupt generation on PHY
      --  error 4.
      PE4IE          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_IER0_Register use record
      AE0IE          at 0 range 0 .. 0;
      AE1IE          at 0 range 1 .. 1;
      AE2IE          at 0 range 2 .. 2;
      AE3IE          at 0 range 3 .. 3;
      AE4IE          at 0 range 4 .. 4;
      AE5IE          at 0 range 5 .. 5;
      AE6IE          at 0 range 6 .. 6;
      AE7IE          at 0 range 7 .. 7;
      AE8IE          at 0 range 8 .. 8;
      AE9IE          at 0 range 9 .. 9;
      AE10IE         at 0 range 10 .. 10;
      AE11IE         at 0 range 11 .. 11;
      AE12IE         at 0 range 12 .. 12;
      AE13IE         at 0 range 13 .. 13;
      AE14IE         at 0 range 14 .. 14;
      AE15IE         at 0 range 15 .. 15;
      PE0IE          at 0 range 16 .. 16;
      PE1IE          at 0 range 17 .. 17;
      PE2IE          at 0 range 18 .. 18;
      PE3IE          at 0 range 19 .. 19;
      PE4IE          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host interrupt enable register 1
   type DSI_IER1_Register is record
      --  Timeout high-speed transmission interrupt enable Enables the
      --  interrupt generation on timeout high-speed transmission.
      TOHSTXIE       : Boolean := False;
      --  Timeout low-power reception interrupt enable Enables the interrupt
      --  generation on timeout low-power reception.
      TOLPRXIE       : Boolean := False;
      --  ECC single-bit error interrupt enable Enables the interrupt
      --  generation on ECC single-bit error.
      ECCSEIE        : Boolean := False;
      --  ECC multi-bit error interrupt enable Enables the interrupt generation
      --  on ECC multi-bit error.
      ECCMEIE        : Boolean := False;
      --  CRC error interrupt enable Enables the interrupt generation on CRC
      --  error.
      CRCEIE         : Boolean := False;
      --  Packet size error interrupt enable Enables the interrupt generation
      --  on packet size error.
      PSEIE          : Boolean := False;
      --  EoTp error interrupt enable Enables the interrupt generation on EoTp
      --  error.
      EOTPEIE        : Boolean := False;
      --  LTDC payload write error interrupt enable Enables the interrupt
      --  generation on LTDC payload write error.
      LPWREIE        : Boolean := False;
      --  Generic command write error interrupt enable Enables the interrupt
      --  generation on generic command write error.
      GCWREIE        : Boolean := False;
      --  Generic payload write error interrupt enable Enables the interrupt
      --  generation on generic payload write error.
      GPWREIE        : Boolean := False;
      --  Generic payload transmit error interrupt enable Enables the interrupt
      --  generation on generic payload transmit error.
      GPTXEIE        : Boolean := False;
      --  Generic payload read error interrupt enable Enables the interrupt
      --  generation on generic payload read error.
      GPRDEIE        : Boolean := False;
      --  Generic payload receive error interrupt enable Enables the interrupt
      --  generation on generic payload receive error.
      GPRXEIE        : Boolean := False;
      --  Read-only. DBI command FIFO full error interrupt enable Enables the
      --  interrupt generation on DBI command FIFO full error.
      DCFFIE         : Boolean := False;
      --  Read-only. DBI data FIFO full error interrupt enable Enables the
      --  interrupt generation on DBI data FIFO full error.
      DDFFIE         : Boolean := False;
      --  Read-only. DCS read underflow error interrupt enable Enables the
      --  interrupt generation on DCS read underflow error.
      DRUIE          : Boolean := False;
      --  Read-only. DBI read overflow error interrupt enable Enables the
      --  interrupt generation on DBI read overflow error.
      DROIE          : Boolean := False;
      --  Read-only. DBI illegal command error interrupt enable Enables the
      --  interrupt generation on DBI illegal command error.
      DICIE          : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Read-only. Video mode underflow error interrupt enable Enables the
      --  interrupt generation on video mode underflow error.
      VMPUIE         : Boolean := False;
      --  Read-only. Tear effect error interrupt enable Enables the interrupt
      --  generation on tear effect error.
      TEIE           : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_IER1_Register use record
      TOHSTXIE       at 0 range 0 .. 0;
      TOLPRXIE       at 0 range 1 .. 1;
      ECCSEIE        at 0 range 2 .. 2;
      ECCMEIE        at 0 range 3 .. 3;
      CRCEIE         at 0 range 4 .. 4;
      PSEIE          at 0 range 5 .. 5;
      EOTPEIE        at 0 range 6 .. 6;
      LPWREIE        at 0 range 7 .. 7;
      GCWREIE        at 0 range 8 .. 8;
      GPWREIE        at 0 range 9 .. 9;
      GPTXEIE        at 0 range 10 .. 10;
      GPRDEIE        at 0 range 11 .. 11;
      GPRXEIE        at 0 range 12 .. 12;
      DCFFIE         at 0 range 13 .. 13;
      DDFFIE         at 0 range 14 .. 14;
      DRUIE          at 0 range 15 .. 15;
      DROIE          at 0 range 16 .. 16;
      DICIE          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      VMPUIE         at 0 range 19 .. 19;
      TEIE           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host PHY calibration control register
   type DSI_PCCR_Register is record
      --  Calibration start for the high-speed skew of the D-PHY:
      CSEN          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_PCCR_Register use record
      CSEN          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DSI_FIR0_FAE array
   type DSI_FIR0_FAE_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DSI_FIR0_FAE
   type DSI_FIR0_FAE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAE as a value
            Val : HAL.UInt16;
         when True =>
            --  FAE as an array
            Arr : DSI_FIR0_FAE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DSI_FIR0_FAE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DSI_FIR0_FPE array
   type DSI_FIR0_FPE_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for DSI_FIR0_FPE
   type DSI_FIR0_FPE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPE as a value
            Val : HAL.UInt5;
         when True =>
            --  FPE as an array
            Arr : DSI_FIR0_FPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for DSI_FIR0_FPE_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  DSI Host force interrupt register 0
   type DSI_FIR0_Register is record
      --  Write-only. Force acknowledge error 0 Writing 1 to this bit forces an
      --  acknowledge error 0.
      FAE            : DSI_FIR0_FAE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Force PHY error 0 Writing 1 to this bit forces a PHY
      --  error 0.
      FPE            : DSI_FIR0_FPE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_FIR0_Register use record
      FAE            at 0 range 0 .. 15;
      FPE            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host force interrupt register 1
   type DSI_FIR1_Register is record
      --  Write-only. Force timeout high-speed transmission Writing 1 to this
      --  bit forces a timeout high-speed transmission.
      FTOHSTX        : Boolean := False;
      --  Write-only. Force timeout low-power reception Writing 1 to this bit
      --  forces a timeout low-power reception.
      FTOLPRX        : Boolean := False;
      --  Write-only. Force ECC single-bit error Writing 1 to this bit forces a
      --  ECC single-bit error.
      FECCSE         : Boolean := False;
      --  Write-only. Force ECC multi-bit error Writing 1 to this bit forces a
      --  ECC multi-bit error.
      FECCME         : Boolean := False;
      --  Write-only. Force CRC error Writing 1 to this bit forces a CRC error.
      FCRCE          : Boolean := False;
      --  Write-only. Force packet size error Writing 1 to this bit forces a
      --  packet size error.
      FPSE           : Boolean := False;
      --  Write-only. Force EoTp error Writing 1 to this bit forces a EoTp
      --  error.
      FEOTPE         : Boolean := False;
      --  Write-only. Force LTDC payload write error Writing 1 to this bit
      --  forces a LTDC payload write error.
      FLPWRE         : Boolean := False;
      --  Write-only. Force generic command write error Writing 1 to this bit
      --  forces a generic command write error.
      FGCWRE         : Boolean := False;
      --  Write-only. Force generic payload write error Writing 1 to this bit
      --  forces a generic payload write error.
      FGPWRE         : Boolean := False;
      --  Write-only. Force generic payload transmit error Writing 1 to this
      --  bit forces a generic payload transmit error.
      FGPTXE         : Boolean := False;
      --  Write-only. Force generic payload read error Writing 1 to this bit
      --  forces a generic payload read error.
      FGPRDE         : Boolean := False;
      --  Write-only. Force generic payload receive error Writing 1 to this bit
      --  forces a generic payload receive error.
      FGPRXE         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_FIR1_Register use record
      FTOHSTX        at 0 range 0 .. 0;
      FTOLPRX        at 0 range 1 .. 1;
      FECCSE         at 0 range 2 .. 2;
      FECCME         at 0 range 3 .. 3;
      FCRCE          at 0 range 4 .. 4;
      FPSE           at 0 range 5 .. 5;
      FEOTPE         at 0 range 6 .. 6;
      FLPWRE         at 0 range 7 .. 7;
      FGCWRE         at 0 range 8 .. 8;
      FGPWRE         at 0 range 9 .. 9;
      FGPTXE         at 0 range 10 .. 10;
      FGPRDE         at 0 range 11 .. 11;
      FGPRXE         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DSI_DLTRCR_MRD_TIME_Field is HAL.UInt15;

   --  DSI Host data lane timer read configuration register
   type DSI_DLTRCR_Register is record
      --  Maximum read time This field configures the maximum time required to
      --  perform a read command in lane byte clock cycles. This register can
      --  only be modified when no read command is in progress.
      MRD_TIME       : DSI_DLTRCR_MRD_TIME_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_DLTRCR_Register use record
      MRD_TIME       at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  DSI Host video shadow control register
   type DSI_VSCR_Register is record
      --  Enable When set to 1, DSI Host LTDC interface receives the active
      --  configuration from the auxiliary registers. When this bit is set
      --  along with the UR bit, the auxiliary registers are automatically
      --  updated.
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Update register When set to 1, the LTDC registers are copied to the
      --  auxiliary registers. After copying, this bit is auto cleared.
      UR            : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VSCR_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      UR            at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DSI_LCVCIDR_VCID_Field is HAL.UInt2;

   --  DSI Host LTDC current VCID register
   type DSI_LCVCIDR_Register is record
      --  Virtual channel ID This field returns the virtual channel ID for the
      --  LTDC interface.
      VCID          : DSI_LCVCIDR_VCID_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LCVCIDR_Register use record
      VCID          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DSI_LCCCR_COLC_Field is HAL.UInt4;

   --  DSI Host LTDC current color coding register
   type DSI_LCCCR_Register is record
      --  Read-only. Color coding This field returns the current LTDC interface
      --  color coding. If LTDC interface in command mode is chosen and
      --  currently works in the command mode (CMDM = 1), then 0110-1111:
      --  24-bit
      COLC          : DSI_LCCCR_COLC_Field;
      --  unspecified
      Reserved_4_7  : HAL.UInt4;
      --  Read-only. Loosely packed enable This bit returns the current state
      --  of the loosely packed variant to 18-bit configurations.
      LPE           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LCCCR_Register use record
      COLC          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      LPE           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DSI_LPMCCR_VLPSIZE_Field is HAL.UInt8;
   subtype DSI_LPMCCR_LPSIZE_Field is HAL.UInt8;

   --  DSI Host low-power mode current configuration register
   type DSI_LPMCCR_Register is record
      --  Read-only. VACT largest packet size This field returns the current
      --  size, in bytes, of the largest packet that can fit in a line during
      --  VACT regions, for the transmission of commands in low-power mode.
      VLPSIZE        : DSI_LPMCCR_VLPSIZE_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Largest packet size This field is returns the current
      --  size, in bytes, of the largest packet that can fit in a line during
      --  VSA, VBP and VFP regions, for the transmission of commands in
      --  low-power mode.
      LPSIZE         : DSI_LPMCCR_LPSIZE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_LPMCCR_Register use record
      VLPSIZE        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LPSIZE         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DSI_VMCCR_VMT_Field is HAL.UInt2;

   --  DSI Host video mode current configuration register
   type DSI_VMCCR_Register is record
      --  Read-only. Video mode type This field returns the current video mode
      --  transmission type: 1x: Burst mode
      VMT            : DSI_VMCCR_VMT_Field;
      --  Read-only. Low-power vertical sync time enable This bit returns the
      --  current state of return to low-power inside the vertical sync time
      --  (VSA) period when timing allows.
      LPVSAE         : Boolean;
      --  Read-only. Low-power vertical back-porch enable This bit returns the
      --  current state of return to low-power inside the vertical back-porch
      --  (VBP) period when timing allows.
      LPVBPE         : Boolean;
      --  Read-only. Low-power vertical front-porch enable This bit returns the
      --  current state of return to low-power inside the vertical front-porch
      --  (VFP) period when timing allows.
      LPVFPE         : Boolean;
      --  Read-only. Low-power vertical active enable This bit returns the
      --  current state of return to low-power inside the vertical active
      --  (VACT) period when timing allows.
      LPVAE          : Boolean;
      --  Read-only. Low-power horizontal back-porch enable This bit returns
      --  the current state of return to low-power inside the horizontal
      --  back-porch (HBP) period when timing allows.
      LPHBPE         : Boolean;
      --  Read-only. Low-power horizontal front-porch enable This bit returns
      --  the current state of return to low-power inside the horizontal
      --  front-porch (HFP) period when timing allows.
      LPHFE          : Boolean;
      --  Read-only. Frame BTA acknowledge enable This bit returns the current
      --  state of request for an acknowledge response at the end of a frame.
      FBTAAE         : Boolean;
      --  Read-only. Low-power command enable This bit returns the current
      --  command transmission state in low-power mode.
      LPCE           : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VMCCR_Register use record
      VMT            at 0 range 0 .. 1;
      LPVSAE         at 0 range 2 .. 2;
      LPVBPE         at 0 range 3 .. 3;
      LPVFPE         at 0 range 4 .. 4;
      LPVAE          at 0 range 5 .. 5;
      LPHBPE         at 0 range 6 .. 6;
      LPHFE          at 0 range 7 .. 7;
      FBTAAE         at 0 range 8 .. 8;
      LPCE           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VPCCR_VPSIZE_Field is HAL.UInt14;

   --  DSI Host video packet current configuration register
   type DSI_VPCCR_Register is record
      --  Read-only. Video packet size This field returns the number of pixels
      --  in a single video packet.
      VPSIZE         : DSI_VPCCR_VPSIZE_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VPCCR_Register use record
      VPSIZE         at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DSI_VCCCR_NUMC_Field is HAL.UInt13;

   --  DSI Host video chunks current configuration register
   type DSI_VCCCR_Register is record
      --  Read-only. Number of chunks This field returns the number of chunks
      --  transmitted during a line period.
      NUMC           : DSI_VCCCR_NUMC_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VCCCR_Register use record
      NUMC           at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DSI_VNPCCR_NPSIZE_Field is HAL.UInt13;

   --  DSI Host video null packet current configuration register
   type DSI_VNPCCR_Register is record
      --  Read-only. Null packet size This field returns the number of bytes
      --  inside a null packet.
      NPSIZE         : DSI_VNPCCR_NPSIZE_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VNPCCR_Register use record
      NPSIZE         at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DSI_VHSACCR_HSA_Field is HAL.UInt12;

   --  DSI Host video HSA current configuration register
   type DSI_VHSACCR_Register is record
      --  Read-only. Horizontal synchronism active duration This fields returns
      --  the horizontal synchronism active period in lane byte clock cycles.
      HSA            : DSI_VHSACCR_HSA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VHSACCR_Register use record
      HSA            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DSI_VHBPCCR_HBP_Field is HAL.UInt12;

   --  DSI Host video HBP current configuration register
   type DSI_VHBPCCR_Register is record
      --  Read-only. Horizontal back-porch duration This field returns the
      --  horizontal back-porch period in lane byte clock cycles.
      HBP            : DSI_VHBPCCR_HBP_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VHBPCCR_Register use record
      HBP            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DSI_VLCCR_HLINE_Field is HAL.UInt15;

   --  DSI Host video line current configuration register
   type DSI_VLCCR_Register is record
      --  Read-only. Horizontal line duration This field returns the current
      --  total of the horizontal line period (HSA+HBP+HACT+HFP) counted in
      --  lane byte clock cycles.
      HLINE          : DSI_VLCCR_HLINE_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VLCCR_Register use record
      HLINE          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DSI_VVSACCR_VSA_Field is HAL.UInt10;

   --  DSI Host video VSA current configuration register
   type DSI_VVSACCR_Register is record
      --  Read-only. Vertical synchronism active duration This field returns
      --  the current vertical synchronism active period measured in number of
      --  horizontal lines.
      VSA            : DSI_VVSACCR_VSA_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVSACCR_Register use record
      VSA            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VVBPCCR_VBP_Field is HAL.UInt10;

   --  DSI Host video VBP current configuration register
   type DSI_VVBPCCR_Register is record
      --  Read-only. Vertical back-porch duration This field returns the
      --  current vertical back-porch period measured in number of horizontal
      --  lines.
      VBP            : DSI_VVBPCCR_VBP_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVBPCCR_Register use record
      VBP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VVFPCCR_VFP_Field is HAL.UInt10;

   --  DSI Host video VFP current configuration register
   type DSI_VVFPCCR_Register is record
      --  Read-only. Vertical front-porch duration This field returns the
      --  current vertical front-porch period measured in number of horizontal
      --  lines.
      VFP            : DSI_VVFPCCR_VFP_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVFPCCR_Register use record
      VFP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DSI_VVACCR_VA_Field is HAL.UInt14;

   --  DSI Host video VA current configuration register
   type DSI_VVACCR_Register is record
      --  Read-only. Vertical active duration This field returns the current
      --  vertical active period measured in number of horizontal lines.
      VA             : DSI_VVACCR_VA_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VVACCR_Register use record
      VA             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DSI_TDCCR_M3D_Field is HAL.UInt2;
   subtype DSI_TDCCR_F3D_Field is HAL.UInt2;

   --  DSI Host 3D current configuration register
   type DSI_TDCCR_Register is record
      --  Read-only. 3D mode This field returns the 3D mode on/off and display
      --  orientation.
      M3D            : DSI_TDCCR_M3D_Field;
      --  Read-only. 3D format This field returns the 3D image format.
      F3D            : DSI_TDCCR_F3D_Field;
      --  Read-only. Second VSYNC This bit returns whether there is a second
      --  VSYNC pulse between left and right images, when 3D Image format is
      --  frame-based.
      SVS            : Boolean;
      --  Read-only. Right first This bit returns the left or right order.
      RF             : Boolean;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Send 3D control This bit returns the current state of 3D
      --  control Sending: when set, causes the next VSS packet to include 3D
      --  control payload in every VSS packet.
      S3DC           : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_TDCCR_Register use record
      M3D            at 0 range 0 .. 1;
      F3D            at 0 range 2 .. 3;
      SVS            at 0 range 4 .. 4;
      RF             at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      S3DC           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DSI_WCFGR_COLMUX_Field is HAL.UInt3;

   --  DSI Wrapper configuration register
   type DSI_WCFGR_Register is record
      --  DSI mode This bit selects the mode for the video transmission. This
      --  bit can be changed only when DSI Host is stopped (DSI_CR.EN = 0).
      DSIM          : Boolean := False;
      --  Color multiplexing This bit selects the color multiplexing used by
      --  DSI Host. This field can be changed only when DSI is stopped
      --  (DSI_WCR.DSIEN = 0 and DSI_CR.EN=0).
      COLMUX        : DSI_WCFGR_COLMUX_Field := 16#0#;
      --  TE source This bit selects the tearing effect (TE) source. This bit
      --  can be changed only when DSI Host is stopped (DSI_CR.EN = 0).
      TESRC         : Boolean := False;
      --  TE polarity This bit selects the polarity of the external pin tearing
      --  effect (TE) source. This bit can be changed only when DSI Host is
      --  stopped (DSI_CR.EN = 0).
      TEPOL         : Boolean := False;
      --  Automatic refresh This bit selects the refresh mode in DBI mode. This
      --  bit can be changed only when DSI Host is stopped (DSI_CR.EN = 0).
      AR            : Boolean := False;
      --  VSync polarity This bit selects the VSync edge on which the LTDC is
      --  halted. This bit can be changed only when DSI is stopped
      --  (DSI_WCR.DSIEN = 0 and DSI_CR.EN=0).
      VSPOL         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WCFGR_Register use record
      DSIM          at 0 range 0 .. 0;
      COLMUX        at 0 range 1 .. 3;
      TESRC         at 0 range 4 .. 4;
      TEPOL         at 0 range 5 .. 5;
      AR            at 0 range 6 .. 6;
      VSPOL         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DSI Wrapper control register
   type DSI_WCR_Register is record
      --  Color mode This bit controls the display color mode in video mode.
      COLM          : Boolean := False;
      --  Shutdown This bit controls the display shutdown in video mode.
      SHTDN         : Boolean := False;
      --  LTDC enable Enables the LTDC for a frame transfer in adapted command
      --  mode.
      LTDCEN        : Boolean := False;
      --  DSI enable Enables the DSI Wrapper.
      DSIEN         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WCR_Register use record
      COLM          at 0 range 0 .. 0;
      SHTDN         at 0 range 1 .. 1;
      LTDCEN        at 0 range 2 .. 2;
      DSIEN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DSI Wrapper interrupt enable register
   type DSI_WIER_Register is record
      --  Tearing effect interrupt enable Enables the tearing effect interrupt.
      TEIE           : Boolean := False;
      --  End of refresh interrupt enable Enables the end of refresh interrupt.
      ERIE           : Boolean := False;
      --  unspecified
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  PLL lock interrupt enable Enables the PLL lock interrupt.
      PLLLIE         : Boolean := False;
      --  PLL unlock interrupt enable Enables the PLL unlock interrupt.
      PLLUIE         : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  LCD APB error interrupt flag Enables the LCD APB error interrupt.
      LAEIE          : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WIER_Register use record
      TEIE           at 0 range 0 .. 0;
      ERIE           at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      PLLLIE         at 0 range 9 .. 9;
      PLLUIE         at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      LAEIE          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  DSI Wrapper interrupt and status register
   type DSI_WISR_Register is record
      --  Read-only. Tearing effect interrupt flag This bit is set when a
      --  tearing effect event occurs.
      TEIF           : Boolean := False;
      --  Read-only. End of refresh interrupt flag This bit is set when the
      --  transfer of a frame in adapted command mode is finished.
      ERIF           : Boolean := False;
      --  Read-only. Busy flag This bit is set when the transfer of a frame in
      --  adapted command mode is ongoing.
      BUSY           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Read-only. PLL lock status This bit is set when the PLL is locked and
      --  cleared when it is unlocked.
      PLLLS          : Boolean := False;
      --  Read-only. PLL lock interrupt flag This bit is set when the PLL
      --  becomes locked.
      PLLLIF         : Boolean := False;
      --  Read-only. PLL unlock interrupt flag This bit is set when the PLL
      --  becomes unlocked.
      PLLUIF         : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  LCD APB error interrupt flag This bit is set when an APB error occurs
      LAEIF          : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WISR_Register use record
      TEIF           at 0 range 0 .. 0;
      ERIF           at 0 range 1 .. 1;
      BUSY           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PLLLS          at 0 range 8 .. 8;
      PLLLIF         at 0 range 9 .. 9;
      PLLUIF         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      LAEIF          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  DSI Wrapper interrupt flag clear register
   type DSI_WIFCR_Register is record
      --  Write-only. Clear tearing effect interrupt flag Writing 1 clears the
      --  TEIF flag in the DSI_WSR register.
      CTEIF          : Boolean := False;
      --  Write-only. Clear end of refresh interrupt flag Writing 1 clears the
      --  ERIF flag in the DSI_WSR register.
      CERIF          : Boolean := False;
      --  unspecified
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  Write-only. Clear PLL lock interrupt flag Writing 1 clears the PLLLIF
      --  flag in the DSI_WSR register.
      CPLLLIF        : Boolean := False;
      --  Write-only. Clear PLL unlock interrupt flag Writing 1 clears the
      --  PLLUIF flag in the DSI_WSR register.
      CPLLUIF        : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Write-only. LCD APB error interrupt flag Writing 1 clears the RRIF
      --  flag in the DSI_WSR register.
      CLAEIF         : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WIFCR_Register use record
      CTEIF          at 0 range 0 .. 0;
      CERIF          at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      CPLLLIF        at 0 range 9 .. 9;
      CPLLUIF        at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CLAEIF         at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DSI_WPCR0_RXTRG_Field is HAL.UInt2;

   --  DSI Wrapper PHY configuration register 0
   type DSI_WPCR0_Register is record
      --  Turnaround disable data lanes This bit forces the data lanes to
      --  remain in Rx mode even if it receives a bus turn around request form
      --  the other side.
      TDDL          : Boolean := False;
      --  Force to TX stop mode the data lanes This bit forces the data lanes
      --  to Tx stop mode. It is used to initialize a lane module in Transmit
      --  mode. It causes the lane module to immediately jump to Tx control
      --  mode and to begin transmitting a Stop state (LP-11). It can be used
      --  to go back in Tx mode after a wrong BTA sequence.
      FTXSMDL       : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Rx trigger escape selection Writing 1 clears the RRIF flag in the
      --  DSI_WSR register.
      RXTRG         : DSI_WPCR0_RXTRG_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WPCR0_Register use record
      TDDL          at 0 range 0 .. 0;
      FTXSMDL       at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      RXTRG         at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DSI_WPCR1_CCF_Field is HAL.UInt6;
   subtype DSI_WPCR1_HSFR_Field is HAL.UInt7;

   --  DSI Wrapper PHY configuration register 1
   type DSI_WPCR1_Register is record
      --  Configuration clock frequency: Indicates the frequency of the clock
      --  used to configure the PHY and the PLL. It is computed as Value =
      --  Round((Frequency (in MHz) - 17) * 4). As an example, a 25.75 MHz
      --  reference clock requires SCCFG = (25.75 - 17) * 4 = 35.
      CCF            : DSI_WPCR1_CCF_Field := 16#17#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  High speed frequency range in Tx mode. The values are given in
      --  Table518, This field must be set when the DPHY TX is in power-down,
      --  and must not change during operation.
      HSFR           : DSI_WPCR1_HSFR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Data lanes 0 direction:
      DLD            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WPCR1_Register use record
      CCF            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      HSFR           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DLD            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DSI_WRPCR0_IDF_Field is HAL.UInt4;
   subtype DSI_WRPCR0_NDIV_Field is HAL.UInt10;

   --  DSI Wrapper regulator and PLL configuration register 0
   type DSI_WRPCR0_Register is record
      --  PLL input division ratio: IDF is active if DSI_WPCR0.PSC = 1’b0,
      --  valid range is 4’h0 to 4’hF. The effective input division is
      --  equal to IDF + 1, thus from (d1 to d16).
      IDF            : DSI_WRPCR0_IDF_Field := 16#0#;
      --  PLL InLoop division ratio: NDIV is active if DSI_WPCR0.PSC = 1’b0.
      --  NDIV valid range is 10’h03E to 10’h26F (others are reserved). The
      --  effective InLoop division ratio is equal to NDIV+2, thus from (d64 to
      --  d625).
      NDIV           : DSI_WRPCR0_NDIV_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  PLL shadow control Defines who controls the PLL frequency and
      --  regulator settings:
      PSC            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WRPCR0_Register use record
      IDF            at 0 range 0 .. 3;
      NDIV           at 0 range 4 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PSC            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DSI_WRPCR1_PROP_Field is HAL.UInt6;
   subtype DSI_WRPCR1_GMP_Field is HAL.UInt2;
   subtype DSI_WRPCR1_INT_Field is HAL.UInt6;
   subtype DSI_WRPCR1_BIAS_Field is HAL.UInt7;
   subtype DSI_WRPCR1_VCO_Field is HAL.UInt4;
   subtype DSI_WRPCR1_ODF_Field is HAL.UInt2;

   --  DSI Wrapper regulator and PLL configuration register 1
   type DSI_WRPCR1_Register is record
      --  Proportional charge pump PROP is active if DSI_WPCR0.PSC = 1’b0.
      --  For PROP valid range see Table 517.
      PROP           : DSI_WRPCR1_PROP_Field := 16#0#;
      --  Loop filter resistance GMP is active if DSI_WPCR0.PSC = 1’b0. For
      --  GMP valid range see Table 517.
      GMP            : DSI_WRPCR1_GMP_Field := 16#0#;
      --  Integral of charge pump INT is active if DSI_WPCR0.PSC = 1’b0. For
      --  INT valid range see Table 517.
      INT            : DSI_WRPCR1_INT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Charge pump bias BIAS is active if DSI_WPCR0.PSC = 1’b0. For BIAS
      --  valid range see Table 517.
      BIAS           : DSI_WRPCR1_BIAS_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  VCO operating range VCO is active if DSI_WPCR0.PSC = 1’b0. For VCO
      --  valid range see Table 517.
      VCO            : DSI_WRPCR1_VCO_Field := 16#0#;
      --  Output division factor This is the factor that divides the VCO, to
      --  provide the final output signal. ODF is active if DSI_WPCR0.PSC =
      --  1’b0.
      ODF            : DSI_WRPCR1_ODF_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WRPCR1_Register use record
      PROP           at 0 range 0 .. 5;
      GMP            at 0 range 6 .. 7;
      INT            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BIAS           at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VCO            at 0 range 24 .. 27;
      ODF            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DSI_WRPCR2_SEL_Field is HAL.UInt2;

   --  DSI Wrapper regulator and PLL configuration register 2
   type DSI_WRPCR2_Register is record
      --  Output selection for PLL Clock:
      SEL            : DSI_WRPCR2_SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  PLL enable Enables the D-PHY PLL:
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Update (copies) the PLL shadow registers to the effective PLL
      --  registers Writing 1 triggers a copy of the PLL configured fields to
      --  the effective fields. The update must occur at least 10 cycles after
      --  the start of the reference clock.
      UPD            : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Clears the PLL shadow registers to their reset values Writing 1
      --  triggers a clear of the PLL shadow register to their reset values.
      CLR            : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Force PLL lock signal Writing 1 forces the PLL lock signal to high
      --  value.
      FPLLLOCK       : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WRPCR2_Register use record
      SEL            at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      UPD            at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      CLR            at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FPLLLOCK       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DSI_WRPSR0_IDF_Field is HAL.UInt4;
   subtype DSI_WRPSR0_NDIV_Field is HAL.UInt10;

   --  DSI Wrapper regulator and PLL status register 0
   type DSI_WRPSR0_Register is record
      --  Read-only. Shadow value of PLL input division ratio IDF is active if
      --  DSI_WPCR0.PSC = 1’b0, its valid range is 4’h0 to 4’hF. The
      --  effective input division is equal to NDIV+1, thus from (d1 to d16)
      IDF            : DSI_WRPSR0_IDF_Field;
      --  Read-only. Shadow value of PLL InLoop division ratio NDIV is active
      --  if DSI_WPCR0.PSC = 1’b0, its valid range is 10’h03E to 10’h26F
      --  (others are reserved). The effective InLoop division ratio is equal
      --  to NDIV + 2, thus from (d64 to d625)
      NDIV           : DSI_WRPSR0_NDIV_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. PLL shadow control Defines who controls the PLL frequency
      --  and regulator settings:
      PSC            : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WRPSR0_Register use record
      IDF            at 0 range 0 .. 3;
      NDIV           at 0 range 4 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PSC            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DSI_WRPSR1_PROP_Field is HAL.UInt6;
   subtype DSI_WRPSR1_GMP_Field is HAL.UInt2;
   subtype DSI_WRPSR1_INT_Field is HAL.UInt6;
   subtype DSI_WRPSR1_BIAS_Field is HAL.UInt7;
   subtype DSI_WRPSR1_VCO_Field is HAL.UInt4;
   subtype DSI_WRPSR1_ODF_Field is HAL.UInt2;

   --  DSI Wrapper regulator and PLL status register 1
   type DSI_WRPSR1_Register is record
      --  Proportional charge pump PROP is active if DSI_WPCR0.PSC = 1’b0.
      --  PROP valid range is provided by a table.
      PROP           : DSI_WRPSR1_PROP_Field := 16#0#;
      --  Charge pump integral GMP is active if DSI_WPCR0.PSC = 1’b0. GMP
      --  valid range is provided by a table.
      GMP            : DSI_WRPSR1_GMP_Field := 16#0#;
      --  Charge pump integral INT is active if DSI_WPCR0.PSC = 1’b0. INT
      --  valid range is provided by a table.
      INT            : DSI_WRPSR1_INT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Charge pump bias BIAS is active if DSI_WPCR0.PSC = 1’b0. BIAS valid
      --  range is provided by a table.
      BIAS           : DSI_WRPSR1_BIAS_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  VCO operating range VCO is active if DSI_WPCR0.PSC = 1’b0. VCO
      --  valid range provided by a table.
      VCO            : DSI_WRPSR1_VCO_Field := 16#0#;
      --  Output division factor Factor that divides the VCO, to provide the
      --  final output signal, it is active if DSI_WPCR0.PSC = 1’b0.
      ODF            : DSI_WRPSR1_ODF_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WRPSR1_Register use record
      PROP           at 0 range 0 .. 5;
      GMP            at 0 range 6 .. 7;
      INT            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BIAS           at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VCO            at 0 range 24 .. 27;
      ODF            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  DSI Wrapper control register bis
   type DSI_WCRB_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. LTDC enable Enables the LTDC for a frame transfer in
      --  adapted command mode
      LTDCEN        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_WCRB_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      LTDCEN        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DSI_HWCFGR_TECHNO_Field is HAL.UInt4;
   subtype DSI_HWCFGR_FIFOSIZE_Field is HAL.UInt12;
   subtype DSI_HWCFGR_LANES_Field is HAL.UInt4;
   subtype DSI_HWCFGR_LINKS_Field is HAL.UInt4;

   --  DSI hardware configuration register
   type DSI_HWCFGR_Register is record
      --  Read-only. Technology This field returns the technology used
      TECHNO         : DSI_HWCFGR_TECHNO_Field;
      --  Read-only. FIFO size This field returns size of the payload FIFO.
      FIFOSIZE       : DSI_HWCFGR_FIFOSIZE_Field;
      --  Read-only. Amount of DSI DataLanes per Link (excluding the ClockLane)
      LANES          : DSI_HWCFGR_LANES_Field;
      --  Read-only. Amount of DSI PHY links
      LINKS          : DSI_HWCFGR_LINKS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_HWCFGR_Register use record
      TECHNO         at 0 range 0 .. 3;
      FIFOSIZE       at 0 range 4 .. 15;
      LANES          at 0 range 16 .. 19;
      LINKS          at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DSI_VERR_MINREV_Field is HAL.UInt4;
   subtype DSI_VERR_MAJREV_Field is HAL.UInt4;

   --  DSI version register
   type DSI_VERR_Register is record
      --  Read-only. Minor revision This field returns the minor revision of
      --  the DSI Host.
      MINREV        : DSI_VERR_MINREV_Field;
      --  Read-only. Major revision This field returns the major revision of
      --  the DSI Host.
      MAJREV        : DSI_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSI_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DSI address block description
   type DSI_Peripheral is record
      --  DSI Host version register
      DSI_VR      : aliased HAL.UInt32;
      --  DSI Host control register
      DSI_CR      : aliased DSI_CR_Register;
      --  DSI Host clock control register
      DSI_CCR     : aliased DSI_CCR_Register;
      --  DSI Host LTDC VCID register
      DSI_LVCIDR  : aliased DSI_LVCIDR_Register;
      --  DSI Host LTDC color coding register
      DSI_LCOLCR  : aliased DSI_LCOLCR_Register;
      --  DSI Host LTDC polarity configuration register
      DSI_LPCR    : aliased DSI_LPCR_Register;
      --  DSI Host low-power mode configuration register
      DSI_LPMCR   : aliased DSI_LPMCR_Register;
      --  DSI Host protocol configuration register
      DSI_PCR     : aliased DSI_PCR_Register;
      --  DSI Host generic VCID register
      DSI_GVCIDR  : aliased DSI_GVCIDR_Register;
      --  DSI Host mode configuration register
      DSI_MCR     : aliased DSI_MCR_Register;
      --  DSI Host video mode configuration register
      DSI_VMCR    : aliased DSI_VMCR_Register;
      --  DSI Host video packet configuration register
      DSI_VPCR    : aliased DSI_VPCR_Register;
      --  DSI Host video chunks configuration register
      DSI_VCCR    : aliased DSI_VCCR_Register;
      --  DSI Host video null packet configuration register
      DSI_VNPCR   : aliased DSI_VNPCR_Register;
      --  DSI Host video HSA configuration register
      DSI_VHSACR  : aliased DSI_VHSACR_Register;
      --  DSI Host video HBP configuration register
      DSI_VHBPCR  : aliased DSI_VHBPCR_Register;
      --  DSI Host video line configuration register
      DSI_VLCR    : aliased DSI_VLCR_Register;
      --  DSI Host video VSA configuration register
      DSI_VVSACR  : aliased DSI_VVSACR_Register;
      --  DSI Host video VBP configuration register
      DSI_VVBPCR  : aliased DSI_VVBPCR_Register;
      --  DSI Host video VFP configuration register
      DSI_VVFPCR  : aliased DSI_VVFPCR_Register;
      --  DSI Host video VA configuration register
      DSI_VVACR   : aliased DSI_VVACR_Register;
      --  DSI Host LTDC command configuration register
      DSI_LCCR    : aliased DSI_LCCR_Register;
      --  DSI Host command mode configuration register
      DSI_CMCR    : aliased DSI_CMCR_Register;
      --  DSI Host generic header configuration register
      DSI_GHCR    : aliased DSI_GHCR_Register;
      --  DSI Host generic payload data register
      DSI_GPDR    : aliased DSI_GPDR_Register;
      --  DSI Host generic packet status register
      DSI_GPSR    : aliased DSI_GPSR_Register;
      --  DSI Host timeout counter configuration register 0
      DSI_TCCR0   : aliased DSI_TCCR0_Register;
      --  DSI Host timeout counter configuration register 1
      DSI_TCCR1   : aliased DSI_TCCR1_Register;
      --  DSI Host timeout counter configuration register 2
      DSI_TCCR2   : aliased DSI_TCCR2_Register;
      --  DSI Host timeout counter configuration register 3
      DSI_TCCR3   : aliased DSI_TCCR3_Register;
      --  DSI Host timeout counter configuration register 4
      DSI_TCCR4   : aliased DSI_TCCR4_Register;
      --  DSI Host timeout counter configuration register 5
      DSI_TCCR5   : aliased DSI_TCCR5_Register;
      --  DSI Host 3D configuration register
      DSI_TDCR    : aliased DSI_TDCR_Register;
      --  DSI Host clock lane configuration register
      DSI_CLCR    : aliased DSI_CLCR_Register;
      --  DSI Host clock lane timer configuration register
      DSI_CLTCR   : aliased DSI_CLTCR_Register;
      --  DSI Host data lane timer configuration register
      DSI_DLTCR   : aliased DSI_DLTCR_Register;
      --  DSI Host PHY control register
      DSI_PCTLR   : aliased DSI_PCTLR_Register;
      --  DSI Host PHY configuration register
      DSI_PCONFR  : aliased DSI_PCONFR_Register;
      --  DSI Host PHY ULPS control register
      DSI_PUCR    : aliased DSI_PUCR_Register;
      --  DSI Host PHY TX triggers configuration register
      DSI_PTTCR   : aliased DSI_PTTCR_Register;
      --  DSI Host PHY status register
      DSI_PSR     : aliased DSI_PSR_Register;
      --  DSI Host PHY test control register 0
      DSI_PTCR0   : aliased DSI_PTCR0_Register;
      --  DSI Host PHY test control register 1
      DSI_PTCR1   : aliased DSI_PTCR1_Register;
      --  DSI Host interrupt and status register 0
      DSI_ISR0    : aliased DSI_ISR0_Register;
      --  DSI Host interrupt and status register 1
      DSI_ISR1    : aliased DSI_ISR1_Register;
      --  DSI Host interrupt enable register 0
      DSI_IER0    : aliased DSI_IER0_Register;
      --  DSI Host interrupt enable register 1
      DSI_IER1    : aliased DSI_IER1_Register;
      --  DSI Host PHY calibration control register
      DSI_PCCR    : aliased DSI_PCCR_Register;
      --  DSI Host force interrupt register 0
      DSI_FIR0    : aliased DSI_FIR0_Register;
      --  DSI Host force interrupt register 1
      DSI_FIR1    : aliased DSI_FIR1_Register;
      --  DSI Host data lane timer read configuration register
      DSI_DLTRCR  : aliased DSI_DLTRCR_Register;
      --  DSI Host video shadow control register
      DSI_VSCR    : aliased DSI_VSCR_Register;
      --  DSI Host LTDC current VCID register
      DSI_LCVCIDR : aliased DSI_LCVCIDR_Register;
      --  DSI Host LTDC current color coding register
      DSI_LCCCR   : aliased DSI_LCCCR_Register;
      --  DSI Host low-power mode current configuration register
      DSI_LPMCCR  : aliased DSI_LPMCCR_Register;
      --  DSI Host video mode current configuration register
      DSI_VMCCR   : aliased DSI_VMCCR_Register;
      --  DSI Host video packet current configuration register
      DSI_VPCCR   : aliased DSI_VPCCR_Register;
      --  DSI Host video chunks current configuration register
      DSI_VCCCR   : aliased DSI_VCCCR_Register;
      --  DSI Host video null packet current configuration register
      DSI_VNPCCR  : aliased DSI_VNPCCR_Register;
      --  DSI Host video HSA current configuration register
      DSI_VHSACCR : aliased DSI_VHSACCR_Register;
      --  DSI Host video HBP current configuration register
      DSI_VHBPCCR : aliased DSI_VHBPCCR_Register;
      --  DSI Host video line current configuration register
      DSI_VLCCR   : aliased DSI_VLCCR_Register;
      --  DSI Host video VSA current configuration register
      DSI_VVSACCR : aliased DSI_VVSACCR_Register;
      --  DSI Host video VBP current configuration register
      DSI_VVBPCCR : aliased DSI_VVBPCCR_Register;
      --  DSI Host video VFP current configuration register
      DSI_VVFPCCR : aliased DSI_VVFPCCR_Register;
      --  DSI Host video VA current configuration register
      DSI_VVACCR  : aliased DSI_VVACCR_Register;
      --  DSI Host 3D current configuration register
      DSI_TDCCR   : aliased DSI_TDCCR_Register;
      --  DSI Wrapper configuration register
      DSI_WCFGR   : aliased DSI_WCFGR_Register;
      --  DSI Wrapper control register
      DSI_WCR     : aliased DSI_WCR_Register;
      --  DSI Wrapper interrupt enable register
      DSI_WIER    : aliased DSI_WIER_Register;
      --  DSI Wrapper interrupt and status register
      DSI_WISR    : aliased DSI_WISR_Register;
      --  DSI Wrapper interrupt flag clear register
      DSI_WIFCR   : aliased DSI_WIFCR_Register;
      --  DSI Wrapper PHY configuration register 0
      DSI_WPCR0   : aliased DSI_WPCR0_Register;
      --  DSI Wrapper PHY configuration register 1
      DSI_WPCR1   : aliased DSI_WPCR1_Register;
      --  DSI Wrapper regulator and PLL configuration register 0
      DSI_WRPCR0  : aliased DSI_WRPCR0_Register;
      --  DSI Wrapper regulator and PLL configuration register 1
      DSI_WRPCR1  : aliased DSI_WRPCR1_Register;
      --  DSI Wrapper regulator and PLL configuration register 2
      DSI_WRPCR2  : aliased DSI_WRPCR2_Register;
      --  DSI Wrapper regulator and PLL status register 0
      DSI_WRPSR0  : aliased DSI_WRPSR0_Register;
      --  DSI Wrapper regulator and PLL status register 1
      DSI_WRPSR1  : aliased DSI_WRPSR1_Register;
      --  DSI Wrapper control register bis
      DSI_WCRB    : aliased DSI_WCRB_Register;
      --  DSI hardware configuration register
      DSI_HWCFGR  : aliased DSI_HWCFGR_Register;
      --  DSI version register
      DSI_VERR    : aliased DSI_VERR_Register;
      --  DSI identification register
      DSI_IPIDR   : aliased HAL.UInt32;
      --  DSI size identification register
      DSI_SIDR    : aliased HAL.UInt32;
   end record
     with Volatile;

   for DSI_Peripheral use record
      DSI_VR      at 16#0# range 0 .. 31;
      DSI_CR      at 16#4# range 0 .. 31;
      DSI_CCR     at 16#8# range 0 .. 31;
      DSI_LVCIDR  at 16#C# range 0 .. 31;
      DSI_LCOLCR  at 16#10# range 0 .. 31;
      DSI_LPCR    at 16#14# range 0 .. 31;
      DSI_LPMCR   at 16#18# range 0 .. 31;
      DSI_PCR     at 16#2C# range 0 .. 31;
      DSI_GVCIDR  at 16#30# range 0 .. 31;
      DSI_MCR     at 16#34# range 0 .. 31;
      DSI_VMCR    at 16#38# range 0 .. 31;
      DSI_VPCR    at 16#3C# range 0 .. 31;
      DSI_VCCR    at 16#40# range 0 .. 31;
      DSI_VNPCR   at 16#44# range 0 .. 31;
      DSI_VHSACR  at 16#48# range 0 .. 31;
      DSI_VHBPCR  at 16#4C# range 0 .. 31;
      DSI_VLCR    at 16#50# range 0 .. 31;
      DSI_VVSACR  at 16#54# range 0 .. 31;
      DSI_VVBPCR  at 16#58# range 0 .. 31;
      DSI_VVFPCR  at 16#5C# range 0 .. 31;
      DSI_VVACR   at 16#60# range 0 .. 31;
      DSI_LCCR    at 16#64# range 0 .. 31;
      DSI_CMCR    at 16#68# range 0 .. 31;
      DSI_GHCR    at 16#6C# range 0 .. 31;
      DSI_GPDR    at 16#70# range 0 .. 31;
      DSI_GPSR    at 16#74# range 0 .. 31;
      DSI_TCCR0   at 16#78# range 0 .. 31;
      DSI_TCCR1   at 16#7C# range 0 .. 31;
      DSI_TCCR2   at 16#80# range 0 .. 31;
      DSI_TCCR3   at 16#84# range 0 .. 31;
      DSI_TCCR4   at 16#88# range 0 .. 31;
      DSI_TCCR5   at 16#8C# range 0 .. 31;
      DSI_TDCR    at 16#90# range 0 .. 31;
      DSI_CLCR    at 16#94# range 0 .. 31;
      DSI_CLTCR   at 16#98# range 0 .. 31;
      DSI_DLTCR   at 16#9C# range 0 .. 31;
      DSI_PCTLR   at 16#A0# range 0 .. 31;
      DSI_PCONFR  at 16#A4# range 0 .. 31;
      DSI_PUCR    at 16#A8# range 0 .. 31;
      DSI_PTTCR   at 16#AC# range 0 .. 31;
      DSI_PSR     at 16#B0# range 0 .. 31;
      DSI_PTCR0   at 16#B4# range 0 .. 31;
      DSI_PTCR1   at 16#B8# range 0 .. 31;
      DSI_ISR0    at 16#BC# range 0 .. 31;
      DSI_ISR1    at 16#C0# range 0 .. 31;
      DSI_IER0    at 16#C4# range 0 .. 31;
      DSI_IER1    at 16#C8# range 0 .. 31;
      DSI_PCCR    at 16#CC# range 0 .. 31;
      DSI_FIR0    at 16#D8# range 0 .. 31;
      DSI_FIR1    at 16#DC# range 0 .. 31;
      DSI_DLTRCR  at 16#F4# range 0 .. 31;
      DSI_VSCR    at 16#100# range 0 .. 31;
      DSI_LCVCIDR at 16#10C# range 0 .. 31;
      DSI_LCCCR   at 16#110# range 0 .. 31;
      DSI_LPMCCR  at 16#118# range 0 .. 31;
      DSI_VMCCR   at 16#138# range 0 .. 31;
      DSI_VPCCR   at 16#13C# range 0 .. 31;
      DSI_VCCCR   at 16#140# range 0 .. 31;
      DSI_VNPCCR  at 16#144# range 0 .. 31;
      DSI_VHSACCR at 16#148# range 0 .. 31;
      DSI_VHBPCCR at 16#14C# range 0 .. 31;
      DSI_VLCCR   at 16#150# range 0 .. 31;
      DSI_VVSACCR at 16#154# range 0 .. 31;
      DSI_VVBPCCR at 16#158# range 0 .. 31;
      DSI_VVFPCCR at 16#15C# range 0 .. 31;
      DSI_VVACCR  at 16#160# range 0 .. 31;
      DSI_TDCCR   at 16#190# range 0 .. 31;
      DSI_WCFGR   at 16#400# range 0 .. 31;
      DSI_WCR     at 16#404# range 0 .. 31;
      DSI_WIER    at 16#408# range 0 .. 31;
      DSI_WISR    at 16#40C# range 0 .. 31;
      DSI_WIFCR   at 16#410# range 0 .. 31;
      DSI_WPCR0   at 16#418# range 0 .. 31;
      DSI_WPCR1   at 16#430# range 0 .. 31;
      DSI_WRPCR0  at 16#434# range 0 .. 31;
      DSI_WRPCR1  at 16#438# range 0 .. 31;
      DSI_WRPCR2  at 16#43C# range 0 .. 31;
      DSI_WRPSR0  at 16#440# range 0 .. 31;
      DSI_WRPSR1  at 16#444# range 0 .. 31;
      DSI_WCRB    at 16#480# range 0 .. 31;
      DSI_HWCFGR  at 16#7F0# range 0 .. 31;
      DSI_VERR    at 16#7F4# range 0 .. 31;
      DSI_IPIDR   at 16#7F8# range 0 .. 31;
      DSI_SIDR    at 16#7FC# range 0 .. 31;
   end record;

   --  DSI address block description
   DSI_Periph : aliased DSI_Peripheral
     with Import, Address => DSI_Base;

   --  DSI address block description
   DSI_S_Periph : aliased DSI_Peripheral
     with Import, Address => DSI_S_Base;

end STM32_SVD.DSI;
