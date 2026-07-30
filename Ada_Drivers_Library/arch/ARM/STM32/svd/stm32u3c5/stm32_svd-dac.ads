--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DAC_CR_TSEL1_Field is HAL.UInt4;
   subtype DAC_CR_WAVE1_Field is HAL.UInt2;
   subtype DAC_CR_MAMP1_Field is HAL.UInt4;
   subtype DAC_CR_TSEL2_Field is HAL.UInt4;
   subtype DAC_CR_WAVE2_Field is HAL.UInt2;
   subtype DAC_CR_MAMP2_Field is HAL.UInt4;

   --  DAC control register
   type DAC_CR_Register is record
      --  This bit is set and cleared by software to enable/disable DAC
      --  channel1. 0: DAC channel1 disabled 1: DAC channel1 enabled
      EN1            : Boolean := False;
      --  This bit is set and cleared by software to enable/disable DAC
      --  channel1 trigger. 0: DAC channel1 trigger disabled and data written
      --  into the DAC_DHR1 register are transferred one dac_pclk clock cycle
      --  later to the DAC_DOR1 register 1: DAC channel1 trigger enabled and
      --  data from the DAC_DHR1 register are transferred three dac_pclk clock
      --  cycles later to the DAC_DOR1 register Note: When software trigger is
      --  selected, the transfer from the DAC_DHR1 register to the DAC_DOR1
      --  register takes only one dac_pclk clock cycle.
      TEN1           : Boolean := False;
      --  These bits select the external event used to trigger DAC channel2
      --  Refer to the trigger selection tables in less than xe2
      --  [dacif2_TrigSel]/> for details on trigger configuration and mapping.
      --  0000: SWTRIG1 0001-1111: dac_ch1_trg{val} Note: Only used if bit TEN1
      --  = 1 (DAC channel1 trigger enabled). Note: These bits are available
      --  only on dual-channel DACs. Refer to less than xe1 [Implementation]/>
      TSEL1          : DAC_CR_TSEL1_Field := 16#0#;
      --  None 00: wave generation disabled 01: Noise wave generation enabled
      --  10: Triangle wave generation enabled 11: Triangle wave generation
      --  enabled Note: Only used if bit TEN1 = 1 (DAC channel1 trigger
      --  enabled). Refer to less than xe1 [Implementation]/>.
      WAVE1          : DAC_CR_WAVE1_Field := 16#0#;
      --  These bits are written by software to select mask in wave generation
      --  mode or amplitude in triangle generation mode. 0000: Unmask bit0 of
      --  LFSR/ triangle amplitude equal to 1 0001: Unmask bits[1:0] of LFSR/
      --  triangle amplitude equal to 3 0010: Unmask bits[2:0] of LFSR/
      --  triangle amplitude equal to 7 0011: Unmask bits[3:0] of LFSR/
      --  triangle amplitude equal to 15 0100: Unmask bits[4:0] of LFSR/
      --  triangle amplitude equal to 31 0101: Unmask bits[5:0] of LFSR/
      --  triangle amplitude equal to 63 0110: Unmask bits[6:0] of LFSR/
      --  triangle amplitude equal to 127 0111: Unmask bits[7:0] of LFSR/
      --  triangle amplitude equal to 255 1000: Unmask bits[8:0] of LFSR/
      --  triangle amplitude equal to 511 1001: Unmask bits[9:0] of LFSR/
      --  triangle amplitude equal to 1023 1010: Unmask bits[10:0] of LFSR/
      --  triangle amplitude equal to 2047 Others: Unmask bits[11:0] of LFSR/
      --  triangle amplitude equal to 4095
      MAMP1          : DAC_CR_MAMP1_Field := 16#0#;
      --  This bit is set and cleared by software. 0: DAC channel1 DMA mode
      --  disabled 1: DAC channel1 DMA mode enabled
      DMAEN1         : Boolean := False;
      --  This bit is set and cleared by software. 0: DAC channel1 DMA Underrun
      --  Interrupt disabled 1: DAC channel1 DMA Underrun Interrupt enabled
      DMAUDRIE1      : Boolean := False;
      --  This bit is set and cleared by software to enable/disable DAC
      --  channel1 calibration, it can be written only if bit EN1 = 0 into
      --  DAC_CR (the calibration mode can be entered/exit only when the DAC
      --  channel is disabled) Otherwise, the write operation is ignored. 0:
      --  DAC channel1 in Normal operating mode 1: DAC channel1 in calibration
      --  mode
      CEN1           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  This bit is set and cleared by software to enable/disable DAC
      --  channel2. 0: DAC channel2 disabled 1: DAC channel2 enabledSection
      --  19.3: DAC implementation Note: These bits are available only on
      --  dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      EN2            : Boolean := False;
      --  This bit is set and cleared by software to enable/disable DAC
      --  channel2 trigger. 0: DAC channel2 trigger disabled and data written
      --  into the DAC_DHR2 register are transferred one dac_pclk clock cycle
      --  later to the DAC_DOR2 register 1: DAC channel2 trigger enabled and
      --  data from the DAC_DHR2 register are transferred three dac_pclk clock
      --  cycles later to the DAC_DOR2 register Note: When software trigger is
      --  selected, the transfer from the DAC_DHR2 register to the DAC_DOR2
      --  register takes only one dac_pclk clock cycle. These bits are
      --  available only on dual-channel DACs. Refer to less than xe1
      --  [Implementation]/>.
      TEN2           : Boolean := False;
      --  These bits select the external event used to trigger DAC channel2
      --  Refer to the trigger selection tables in less than xe2
      --  [dacif2_TrigSel]/> for details on trigger configuration and mapping.
      --  0000: SWTRIG2 0001-1111: dac_ch2_trg{val} Note: Only used if bit TEN2
      --  = 1 (DAC channel2 trigger enabled). These bits are available only on
      --  dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      TSEL2          : DAC_CR_TSEL2_Field := 16#0#;
      --  These bits are set/reset by software. 00: wave generation disabled
      --  01: Noise wave generation enabled 10: Triangle wave generation
      --  enabled 11: Triangle wave generation enabled Note: Only used if bit
      --  TEN2 = 1 (DAC channel2 trigger enabled) Note: These bits are
      --  available only on dual-channel DACs. Refer to less than xe1
      --  [Implementation]/>.
      WAVE2          : DAC_CR_WAVE2_Field := 16#0#;
      --  These bits are written by software to select mask in wave generation
      --  mode or amplitude in triangle generation mode. 0000: Unmask bit0 of
      --  LFSR/ triangle amplitude equal to 1 0001: Unmask bits[1:0] of LFSR/
      --  triangle amplitude equal to 3 0010: Unmask bits[2:0] of LFSR/
      --  triangle amplitude equal to 7 0011: Unmask bits[3:0] of LFSR/
      --  triangle amplitude equal to 15 0100: Unmask bits[4:0] of LFSR/
      --  triangle amplitude equal to 31 0101: Unmask bits[5:0] of LFSR/
      --  triangle amplitude equal to 63 0110: Unmask bits[6:0] of LFSR/
      --  triangle amplitude equal to 127 0111: Unmask bits[7:0] of LFSR/
      --  triangle amplitude equal to 255 1000: Unmask bits[8:0] of LFSR/
      --  triangle amplitude equal to 511 1001: Unmask bits[9:0] of LFSR/
      --  triangle amplitude equal to 1023 1010: Unmask bits[10:0] of LFSR/
      --  triangle amplitude equal to 2047 Others: Unmask bits[11:0] of LFSR/
      --  triangle amplitude equal to 4095 Note: These bits are available only
      --  on dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      MAMP2          : DAC_CR_MAMP2_Field := 16#0#;
      --  This bit is set and cleared by software. 0: DAC channel2 DMA mode
      --  disabled 1: DAC channel2 DMA mode enabled Note: This bit is available
      --  only on dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      DMAEN2         : Boolean := False;
      --  This bit is set and cleared by software. 0: DAC channel2 DMA underrun
      --  interrupt disabled 1: DAC channel2 DMA underrun interrupt enabled
      --  Note: This bit is available only on dual-channel DACs. Refer to less
      --  than xe1 [Implementation]/>.
      DMAUDRIE2      : Boolean := False;
      --  This bit is set and cleared by software to enable/disable DAC
      --  channel2 calibration, it can be written only if EN2 bit is set to 0
      --  into DAC_CR (the calibration mode can be entered/exit only when the
      --  DAC channel is disabled) Otherwise, the write operation is ignored.
      --  0: DAC channel2 in Normal operating mode 1: DAC channel2 in
      --  calibration mode Note: This bit is available only on dual-channel
      --  DACs. Refer to less than xe1 [Implementation]/>.
      CEN2           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_CR_Register use record
      EN1            at 0 range 0 .. 0;
      TEN1           at 0 range 1 .. 1;
      TSEL1          at 0 range 2 .. 5;
      WAVE1          at 0 range 6 .. 7;
      MAMP1          at 0 range 8 .. 11;
      DMAEN1         at 0 range 12 .. 12;
      DMAUDRIE1      at 0 range 13 .. 13;
      CEN1           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EN2            at 0 range 16 .. 16;
      TEN2           at 0 range 17 .. 17;
      TSEL2          at 0 range 18 .. 21;
      WAVE2          at 0 range 22 .. 23;
      MAMP2          at 0 range 24 .. 27;
      DMAEN2         at 0 range 28 .. 28;
      DMAUDRIE2      at 0 range 29 .. 29;
      CEN2           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  DAC_SWTRGR_SWTRIG array
   type DAC_SWTRGR_SWTRIG_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_SWTRGR_SWTRIG
   type DAC_SWTRGR_SWTRIG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWTRIG as a value
            Val : HAL.UInt2;
         when True =>
            --  SWTRIG as an array
            Arr : DAC_SWTRGR_SWTRIG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_SWTRGR_SWTRIG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC software trigger register
   type DAC_SWTRGR_Register is record
      --  Write-only. This bit is set by software to trigger the DAC in
      --  software trigger mode. 0: No trigger 1: Trigger Note: This bit is
      --  cleared by hardware (one dac_pclk clock cycle later) once the
      --  DAC_DHR1 register value has been loaded into the DAC_DOR1 register.
      SWTRIG        : DAC_SWTRGR_SWTRIG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SWTRGR_Register use record
      SWTRIG        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DAC_DHR12R1_DACC1DHR_Field is HAL.UInt12;
   subtype DAC_DHR12R1_DACC1DHRB_Field is HAL.UInt12;

   --  DAC channel1 12-bit right-aligned data holding register	
   type DAC_DHR12R1_Register is record
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel1.
      DACC1DHR       : DAC_DHR12R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel1 when the DAC operates in Double data mode.
      DACC1DHRB      : DAC_DHR12R1_DACC1DHRB_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR12R1_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DACC1DHRB      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DAC_DHR12L1_DACC1DHR_Field is HAL.UInt12;
   subtype DAC_DHR12L1_DACC1DHRB_Field is HAL.UInt12;

   --  DAC channel1 12-bit left aligned data holding register	
   type DAC_DHR12L1_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel1.
      DACC1DHR       : DAC_DHR12L1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel1 when the DAC operates in Double data mode.
      DACC1DHRB      : DAC_DHR12L1_DACC1DHRB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR12L1_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      DACC1DHRB      at 0 range 20 .. 31;
   end record;

   subtype DAC_DHR8R1_DACC1DHR_Field is HAL.UInt8;
   subtype DAC_DHR8R1_DACC1DHRB_Field is HAL.UInt8;

   --  DAC channel1 8-bit right aligned data holding register	
   type DAC_DHR8R1_Register is record
      --  These bits are written by software. They specify 8-bit data for DAC
      --  channel1.
      DACC1DHR       : DAC_DHR8R1_DACC1DHR_Field := 16#0#;
      --  These bits are written by software. They specify 8-bit data for DAC
      --  channel1 when the DAC operates in Double data mode.
      DACC1DHRB      : DAC_DHR8R1_DACC1DHRB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR8R1_Register use record
      DACC1DHR       at 0 range 0 .. 7;
      DACC1DHRB      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DAC_DHR12R2_DACC2DHR_Field is HAL.UInt12;
   subtype DAC_DHR12R2_DACC2DHRB_Field is HAL.UInt12;

   --  DAC channel2 12-bit right aligned data holding register	
   type DAC_DHR12R2_Register is record
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel2.
      DACC2DHR       : DAC_DHR12R2_DACC2DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel2 when the DAC operates in DMA Double data mode.
      DACC2DHRB      : DAC_DHR12R2_DACC2DHRB_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR12R2_Register use record
      DACC2DHR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DACC2DHRB      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DAC_DHR12L2_DACC2DHR_Field is HAL.UInt12;
   subtype DAC_DHR12L2_DACC2DHRB_Field is HAL.UInt12;

   --  DAC channel2 12-bit left aligned data holding register 	
   type DAC_DHR12L2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  These bits are written by software which specify 12-bit data for DAC
      --  channel2.
      DACC2DHR       : DAC_DHR12L2_DACC2DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  These bits are written by software. They specify 12-bit data for DAC
      --  channel2 when the DAC operates in Double data mode.
      DACC2DHRB      : DAC_DHR12L2_DACC2DHRB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR12L2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC2DHR       at 0 range 4 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      DACC2DHRB      at 0 range 20 .. 31;
   end record;

   subtype DAC_DHR8R2_DACC2DHR_Field is HAL.UInt8;
   subtype DAC_DHR8R2_DACC2DHRB_Field is HAL.UInt8;

   --  DAC channel2 8-bit right-aligned data holding register	
   type DAC_DHR8R2_Register is record
      --  These bits are written by software which specifies 8-bit data for DAC
      --  channel2.
      DACC2DHR       : DAC_DHR8R2_DACC2DHR_Field := 16#0#;
      --  These bits are written by software. They specify 8-bit data for DAC
      --  channel2 when the DAC operates in Double data mode.
      DACC2DHRB      : DAC_DHR8R2_DACC2DHRB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR8R2_Register use record
      DACC2DHR       at 0 range 0 .. 7;
      DACC2DHRB      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DAC_DHR12RD_DACC1DHR_Field is HAL.UInt12;
   subtype DAC_DHR12RD_DACC2DHR_Field is HAL.UInt12;

   --  Dual DAC 12-bit right-aligned data holding register	
   type DAC_DHR12RD_Register is record
      --  These bits are written by software which specifies 12-bit data for
      --  DAC channel1.
      DACC1DHR       : DAC_DHR12RD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  These bits are written by software which specifies 12-bit data for
      --  DAC channel2.
      DACC2DHR       : DAC_DHR12RD_DACC2DHR_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR12RD_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DACC2DHR       at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DAC_DHR12LD_DACC1DHR_Field is HAL.UInt12;
   subtype DAC_DHR12LD_DACC2DHR_Field is HAL.UInt12;

   --  Dual DAC 12-bit left aligned data holding register	
   type DAC_DHR12LD_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  These bits are written by software which specifies 12-bit data for
      --  DAC channel1.
      DACC1DHR       : DAC_DHR12LD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  These bits are written by software which specifies 12-bit data for
      --  DAC channel2.
      DACC2DHR       : DAC_DHR12LD_DACC2DHR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR12LD_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      DACC2DHR       at 0 range 20 .. 31;
   end record;

   subtype DAC_DHR8RD_DACC1DHR_Field is HAL.UInt8;
   subtype DAC_DHR8RD_DACC2DHR_Field is HAL.UInt8;

   --  Dual DAC 8-bit right aligned data holding register	
   type DAC_DHR8RD_Register is record
      --  These bits are written by software which specifies 8-bit data for DAC
      --  channel1.
      DACC1DHR       : DAC_DHR8RD_DACC1DHR_Field := 16#0#;
      --  These bits are written by software which specifies 8-bit data for DAC
      --  channel2.
      DACC2DHR       : DAC_DHR8RD_DACC2DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DHR8RD_Register use record
      DACC1DHR       at 0 range 0 .. 7;
      DACC2DHR       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DAC_DOR1_DACC1DOR_Field is HAL.UInt12;
   subtype DAC_DOR1_DACC1DORB_Field is HAL.UInt12;

   --  DAC channel1 data output register
   type DAC_DOR1_Register is record
      --  Read-only. These bits are read-only, they contain data output for DAC
      --  channel1.
      DACC1DOR       : DAC_DOR1_DACC1DOR_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. These bits are read-only. They contain data output for DAC
      --  channel1.
      DACC1DORB      : DAC_DOR1_DACC1DORB_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DOR1_Register use record
      DACC1DOR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DACC1DORB      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DAC_DOR2_DACC2DOR_Field is HAL.UInt12;
   subtype DAC_DOR2_DACC2DORB_Field is HAL.UInt12;

   --  DAC channel2 data output register
   type DAC_DOR2_Register is record
      --  Read-only. These bits are read-only, they contain data output for DAC
      --  channel2.
      DACC2DOR       : DAC_DOR2_DACC2DOR_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. These bits are read-only. They contain data output for DAC
      --  channel2.
      DACC2DORB      : DAC_DOR2_DACC2DORB_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_DOR2_Register use record
      DACC2DOR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DACC2DORB      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  DAC status register
   type DAC_SR_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Read-only. This bit is set and cleared by hardware. 0: DAC channel1
      --  is not yet ready to accept the trigger nor output data 1: DAC
      --  channel1 is ready to accept the trigger or output data
      DAC1RDY        : Boolean := False;
      --  Read-only. This bit is set and cleared by hardware. It is applicable
      --  only when the DAC operates in Double data mode. 0: DOR[11:0] is used
      --  actual DAC output 1: DORB[11:0] is used actual DAC output
      DORSTAT1       : Boolean := False;
      --  This bit is set by hardware and cleared by software (by writing it to
      --  1). 0: No DMA underrun error condition occurred for DAC channel1 1:
      --  DMA underrun error condition occurred for DAC channel1 (the currently
      --  selected trigger is driving DAC channel1 conversion at a frequency
      --  higher than the DMA service capability rate)
      DMAUDR1        : Boolean := False;
      --  Read-only. None 0: calibration trimming value is lower than the
      --  offset correction value 1: calibration trimming value is equal or
      --  greater than the offset correction value
      CAL_FLAG1      : Boolean := False;
      --  Read-only. None 0: There is no write operation of DAC_SHSR1 ongoing:
      --  DAC_SHSR1 can be written 1: There is a write operation of DAC_SHSR1
      --  ongoing: DAC_SHSR1 cannot be written
      BWST1          : Boolean := False;
      --  unspecified
      Reserved_16_26 : HAL.UInt11 := 16#0#;
      --  Read-only. This bit is set and cleared by hardware. 0: DAC channel2
      --  is not yet ready to accept the trigger nor output data 1: DAC
      --  channel2 is ready to accept the trigger or output data Note: This bit
      --  is available only on dual-channel DACs. Refer to less than xe1
      --  [Implementation]/>.
      DAC2RDY        : Boolean := False;
      --  Read-only. This bit is set and cleared by hardware. It is applicable
      --  only when the DAC operates in Double data mode. 0: DOR[11:0] is used
      --  actual DAC output 1: DORB[11:0] is used actual DAC outputSection
      --  Note: This bit is available only on dual-channel DACs. Refer to less
      --  than xe1 [Implementation]/>.
      DORSTAT2       : Boolean := False;
      --  This bit is set by hardware and cleared by software (by writing it to
      --  1). 0: No DMA underrun error condition occurred for DAC channel21:
      --  DMA underrun error condition occurred for DAC channel2 (the currently
      --  selected trigger is driving DAC channel2 conversion at a frequency
      --  higher than the DMA service capability rate). Note: This bit is
      --  available only on dual-channel DACs. Refer to less than xe1
      --  [Implementation]/>.
      DMAUDR2        : Boolean := False;
      --  Read-only. This bit is set and cleared by hardware 0: calibration
      --  trimming value is lower than the offset correction value 1:
      --  calibration trimming value is equal or greater than the offset
      --  correction value Note: This bit is available only on dual-channel
      --  DACs. Refer to less than xe1 [Implementation]/>.
      CAL_FLAG2      : Boolean := False;
      --  Read-only. This bit is systematically set just after Sample and hold
      --  mode enable. It is set each time the software writes the register
      --  DAC_SHSR2, It is cleared by hardware when the write operation of
      --  DAC_SHSR2 is complete. (It takes about 3 LSI/LSE periods of
      --  synchronization). 0: There is no write operation of DAC_SHSR2
      --  ongoing: DAC_SHSR2 can be written 1: There is a write operation of
      --  DAC_SHSR2 ongoing: DAC_SHSR2 cannot be written Note: This bit is
      --  available only on dual-channel DACs. Refer to less than xe1
      --  [Implementation]/>.
      BWST2          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      DAC1RDY        at 0 range 11 .. 11;
      DORSTAT1       at 0 range 12 .. 12;
      DMAUDR1        at 0 range 13 .. 13;
      CAL_FLAG1      at 0 range 14 .. 14;
      BWST1          at 0 range 15 .. 15;
      Reserved_16_26 at 0 range 16 .. 26;
      DAC2RDY        at 0 range 27 .. 27;
      DORSTAT2       at 0 range 28 .. 28;
      DMAUDR2        at 0 range 29 .. 29;
      CAL_FLAG2      at 0 range 30 .. 30;
      BWST2          at 0 range 31 .. 31;
   end record;

   subtype DAC_CCR_OTRIM1_Field is HAL.UInt5;
   subtype DAC_CCR_OTRIM2_Field is HAL.UInt5;

   --  DAC calibration control register
   type DAC_CCR_Register is record
      --  None
      OTRIM1         : DAC_CCR_OTRIM1_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  These bits are available only on dual-channel DACs. Refer to less
      --  than xe1 [Implementation]/>.
      OTRIM2         : DAC_CCR_OTRIM2_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_CCR_Register use record
      OTRIM1         at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      OTRIM2         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DAC_MCR_MODE1_Field is HAL.UInt3;
   subtype DAC_MCR_HFSEL_Field is HAL.UInt2;
   subtype DAC_MCR_MODE2_Field is HAL.UInt3;

   --  DAC mode control register
   type DAC_MCR_Register is record
      --  These bits can be written only when the DAC is disabled and not in
      --  the calibration mode (when bit EN1 = 0 and bit CEN1 = 0 in the DAC_CR
      --  register). If EN1 = 1 or CEN1 = 1 the write operation is ignored.
      --  They can be set and cleared by software to select the DAC channel1
      --  mode. 000: DAC channel1 in Normal mode is connected to external pin
      --  with Buffer enabled 001: DAC channel1 in Normal mode is connected to
      --  external pin and to on chip peripherals with buffer enabled 010: DAC
      --  channel1 in Normal mode is connected to external pin with buffer
      --  disabled 011: DAC channel1 in Normal mode is connected to on chip
      --  peripherals with Buffer disabled 100: DAC channel1 in Sample and hold
      --  mode is connected to external pin with Buffer enabled 101: DAC
      --  channel1 in Sample and hold mode is connected to external pin and to
      --  on chip peripherals with Buffer enabled 110: DAC channel1 in Sample
      --  and hold mode is connected to external pin and to on chip peripherals
      --  with Buffer disabled 111: DAC channel1 in Sample and hold mode is
      --  connected to on chip peripherals with Buffer disabled Note: This
      --  register can be modified only when EN1 = 0.
      MODE1          : DAC_MCR_MODE1_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  This bit is set and cleared by software. 0: DMA Normal mode selected
      --  1: DMA Double data mode selected
      DMADOUBLE1     : Boolean := False;
      --  This bit is set and cleared by software. 0: Input data is in unsigned
      --  format 1: Input data is in signed format (2's complement). The MSB
      --  bit represents the sign.
      SINFORMAT1     : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  None 00: High frequency interface mode disabled 01: High frequency
      --  interface mode compatible to AHB greater or equal 48 MHz enabled 10:
      --  Reserved 11: Reserved
      HFSEL          : DAC_MCR_HFSEL_Field := 16#0#;
      --  These bits can be written only when the DAC is disabled and not in
      --  the calibration mode (when bit EN2 = 0 and bit CEN2 = 0 in the DAC_CR
      --  register). If EN2 = 1 or CEN2 = 1 the write operation is ignored.
      --  They can be set and cleared by software to select the DAC channel2
      --  mode. 000: DAC channel2 in Normal mode is connected to external pin
      --  with Buffer enabled 001: DAC channel2 in Normal mode is connected to
      --  external pin and to on chip peripherals with buffer enabled 010: DAC
      --  channel2 in Normal mode is connected to external pin with buffer
      --  disabled 011: DAC channel2 in Normal mode is connected to on chip
      --  peripherals with Buffer disabled 100: DAC channel2 in Sample and hold
      --  mode is connected to external pin with Buffer enabled 101: DAC
      --  channel2 in Sample and hold mode is connected to external pin and to
      --  on chip peripherals with Buffer enabled 110: DAC channel2 in Sample
      --  and hold mode is connected to external pin and to on chip peripherals
      --  with Buffer disabled 111: DAC channel2 in Sample and hold mode is
      --  connected to on chip peripherals with Buffer disabled Note: This
      --  register can be modified only when EN2 = 0. Note: Refer to less than
      --  xe1 [Implementation]/> for the availability of DAC channel2.
      MODE2          : DAC_MCR_MODE2_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  This bit is set and cleared by software. 0: DMA Normal mode selected
      --  1: DMA Double data mode selected Note: This bit is available only on
      --  dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      DMADOUBLE2     : Boolean := False;
      --  This bit is set and cleared by software. 0: Input data is in unsigned
      --  format 1: Input data is in signed format (2's complement). The MSB
      --  bit represents the sign. Note: This bit is available only on
      --  dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      SINFORMAT2     : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_MCR_Register use record
      MODE1          at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DMADOUBLE1     at 0 range 8 .. 8;
      SINFORMAT1     at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      HFSEL          at 0 range 14 .. 15;
      MODE2          at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      DMADOUBLE2     at 0 range 24 .. 24;
      SINFORMAT2     at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DAC_SHSR1_TSAMPLE1_Field is HAL.UInt10;

   --  DAC channel1 sample and hold sample time register	
   type DAC_SHSR1_Register is record
      --  These bits can be written when the DAC channel1 is disabled or also
      --  during normal operation. in the latter case, the write can be done
      --  only when BWST1 of DAC_SR register is low, If BWST1 = 1, the write
      --  operation is ignored.
      TSAMPLE1       : DAC_SHSR1_TSAMPLE1_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SHSR1_Register use record
      TSAMPLE1       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DAC_SHSR2_TSAMPLE2_Field is HAL.UInt10;

   --  DAC channel2 sample and hold sample time register 	
   type DAC_SHSR2_Register is record
      --  These bits can be written when the DAC channel2 is disabled or also
      --  during normal operation.
      TSAMPLE2       : DAC_SHSR2_TSAMPLE2_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SHSR2_Register use record
      TSAMPLE2       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DAC_SHHR_THOLD1_Field is HAL.UInt10;
   subtype DAC_SHHR_THOLD2_Field is HAL.UInt10;

   --  DAC sample and hold time register
   type DAC_SHHR_Register is record
      --  Hold time = (THOLD[9:0]) x LSI/LSE clock period Note: This register
      --  can be modified only when EN1 = 0.
      THOLD1         : DAC_SHHR_THOLD1_Field := 16#1#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Hold time = (THOLD[9:0]) x LSI/LSE clock period Note: This register
      --  can be modified only when EN2 = 0. Note: These bits are available
      --  only on dual-channel DACs. Refer to less than xe1 [Implementation]/>.
      THOLD2         : DAC_SHHR_THOLD2_Field := 16#1#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SHHR_Register use record
      THOLD1         at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      THOLD2         at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DAC_SHRR_TREFRESH1_Field is HAL.UInt8;
   subtype DAC_SHRR_TREFRESH2_Field is HAL.UInt8;

   --  DAC sample and hold refresh time register
   type DAC_SHRR_Register is record
      --  Refresh time = (TREFRESH[7:0]) x LSI / LSE clock period Note: This
      --  register can be modified only when EN1 = 0.
      TREFRESH1      : DAC_SHRR_TREFRESH1_Field := 16#1#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Refresh time = (TREFRESH[7:0]) x LSI / LSE clock period Note: This
      --  register can be modified only when EN2 = 0. Note: These bits are
      --  available only on dual-channel DACs. Refer to less than xe1
      --  [Implementation]/>.
      TREFRESH2      : DAC_SHRR_TREFRESH2_Field := 16#1#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SHRR_Register use record
      TREFRESH1      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TREFRESH2      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DAC Autonomous mode control register
   type DAC_AUTOCR_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  This bit is set and cleared by software. 0: DAC Autonomous mode
      --  disabled 1: DAC Autonomous mode enabled
      AUTOMODE       : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_AUTOCR_Register use record
      Reserved_0_21  at 0 range 0 .. 21;
      AUTOMODE       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DAC Address block
   type DAC_Peripheral is record
      --  DAC control register
      DAC_CR      : aliased DAC_CR_Register;
      --  DAC software trigger register
      DAC_SWTRGR  : aliased DAC_SWTRGR_Register;
      --  DAC channel1 12-bit right-aligned data holding register	
      DAC_DHR12R1 : aliased DAC_DHR12R1_Register;
      --  DAC channel1 12-bit left aligned data holding register	
      DAC_DHR12L1 : aliased DAC_DHR12L1_Register;
      --  DAC channel1 8-bit right aligned data holding register	
      DAC_DHR8R1  : aliased DAC_DHR8R1_Register;
      --  DAC channel2 12-bit right aligned data holding register	
      DAC_DHR12R2 : aliased DAC_DHR12R2_Register;
      --  DAC channel2 12-bit left aligned data holding register 	
      DAC_DHR12L2 : aliased DAC_DHR12L2_Register;
      --  DAC channel2 8-bit right-aligned data holding register	
      DAC_DHR8R2  : aliased DAC_DHR8R2_Register;
      --  Dual DAC 12-bit right-aligned data holding register	
      DAC_DHR12RD : aliased DAC_DHR12RD_Register;
      --  Dual DAC 12-bit left aligned data holding register	
      DAC_DHR12LD : aliased DAC_DHR12LD_Register;
      --  Dual DAC 8-bit right aligned data holding register	
      DAC_DHR8RD  : aliased DAC_DHR8RD_Register;
      --  DAC channel1 data output register
      DAC_DOR1    : aliased DAC_DOR1_Register;
      --  DAC channel2 data output register
      DAC_DOR2    : aliased DAC_DOR2_Register;
      --  DAC status register
      DAC_SR      : aliased DAC_SR_Register;
      --  DAC calibration control register
      DAC_CCR     : aliased DAC_CCR_Register;
      --  DAC mode control register
      DAC_MCR     : aliased DAC_MCR_Register;
      --  DAC channel1 sample and hold sample time register	
      DAC_SHSR1   : aliased DAC_SHSR1_Register;
      --  DAC channel2 sample and hold sample time register 	
      DAC_SHSR2   : aliased DAC_SHSR2_Register;
      --  DAC sample and hold time register
      DAC_SHHR    : aliased DAC_SHHR_Register;
      --  DAC sample and hold refresh time register
      DAC_SHRR    : aliased DAC_SHRR_Register;
      --  DAC Autonomous mode control register
      DAC_AUTOCR  : aliased DAC_AUTOCR_Register;
   end record
     with Volatile;

   for DAC_Peripheral use record
      DAC_CR      at 16#0# range 0 .. 31;
      DAC_SWTRGR  at 16#4# range 0 .. 31;
      DAC_DHR12R1 at 16#8# range 0 .. 31;
      DAC_DHR12L1 at 16#C# range 0 .. 31;
      DAC_DHR8R1  at 16#10# range 0 .. 31;
      DAC_DHR12R2 at 16#14# range 0 .. 31;
      DAC_DHR12L2 at 16#18# range 0 .. 31;
      DAC_DHR8R2  at 16#1C# range 0 .. 31;
      DAC_DHR12RD at 16#20# range 0 .. 31;
      DAC_DHR12LD at 16#24# range 0 .. 31;
      DAC_DHR8RD  at 16#28# range 0 .. 31;
      DAC_DOR1    at 16#2C# range 0 .. 31;
      DAC_DOR2    at 16#30# range 0 .. 31;
      DAC_SR      at 16#34# range 0 .. 31;
      DAC_CCR     at 16#38# range 0 .. 31;
      DAC_MCR     at 16#3C# range 0 .. 31;
      DAC_SHSR1   at 16#40# range 0 .. 31;
      DAC_SHSR2   at 16#44# range 0 .. 31;
      DAC_SHHR    at 16#48# range 0 .. 31;
      DAC_SHRR    at 16#4C# range 0 .. 31;
      DAC_AUTOCR  at 16#54# range 0 .. 31;
   end record;

   --  DAC Address block
   DAC_Periph : aliased DAC_Peripheral
     with Import, Address => DAC_Base;

   --  DAC Address block
   SEC_DAC_Periph : aliased DAC_Peripheral
     with Import, Address => SEC_DAC_Base;

end STM32_SVD.DAC;
