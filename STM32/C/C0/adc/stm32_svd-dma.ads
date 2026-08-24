--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMA interrupt status register
   type DMA_ISR_Register is record
      --  Read-only. global interrupt flag for channel 1
      GIF1           : Boolean;
      --  Read-only. transfer complete (TC) flag for channel 1
      TCIF1          : Boolean;
      --  Read-only. half transfer (HT) flag for channel 1
      HTIF1          : Boolean;
      --  Read-only. transfer error (TE) flag for channel 1
      TEIF1          : Boolean;
      --  Read-only. global interrupt flag for channel 2
      GIF2           : Boolean;
      --  Read-only. transfer complete (TC) flag for channel 2
      TCIF2          : Boolean;
      --  Read-only. half transfer (HT) flag for channel 2
      HTIF2          : Boolean;
      --  Read-only. transfer error (TE) flag for channel 2
      TEIF2          : Boolean;
      --  Read-only. global interrupt flag for channel 3
      GIF3           : Boolean;
      --  Read-only. transfer complete (TC) flag for channel 3
      TCIF3          : Boolean;
      --  Read-only. half transfer (HT) flag for channel 3
      HTIF3          : Boolean;
      --  Read-only. transfer error (TE) flag for channel 3
      TEIF3          : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_ISR_Register use record
      GIF1           at 0 range 0 .. 0;
      TCIF1          at 0 range 1 .. 1;
      HTIF1          at 0 range 2 .. 2;
      TEIF1          at 0 range 3 .. 3;
      GIF2           at 0 range 4 .. 4;
      TCIF2          at 0 range 5 .. 5;
      HTIF2          at 0 range 6 .. 6;
      TEIF2          at 0 range 7 .. 7;
      GIF3           at 0 range 8 .. 8;
      TCIF3          at 0 range 9 .. 9;
      HTIF3          at 0 range 10 .. 10;
      TEIF3          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  DMA interrupt flag clear register
   type DMA_IFCR_Register is record
      --  Write-only. global interrupt flag clear for channel 1
      CGIF1          : Boolean := False;
      --  Write-only. transfer complete flag clear for channel 1
      CTCIF1         : Boolean := False;
      --  Write-only. half transfer flag clear for channel 1
      CHTIF1         : Boolean := False;
      --  Write-only. transfer error flag clear for channel 1
      CTEIF1         : Boolean := False;
      --  Write-only. global interrupt flag clear for channel 2
      CGIF2          : Boolean := False;
      --  Write-only. transfer complete flag clear for channel 2
      CTCIF2         : Boolean := False;
      --  Write-only. half transfer flag clear for channel 2
      CHTIF2         : Boolean := False;
      --  Write-only. transfer error flag clear for channel 2
      CTEIF2         : Boolean := False;
      --  Write-only. global interrupt flag clear for channel 3
      CGIF3          : Boolean := False;
      --  Write-only. transfer complete flag clear for channel 3
      CTCIF3         : Boolean := False;
      --  Write-only. half transfer flag clear for channel 3
      CHTIF3         : Boolean := False;
      --  Write-only. transfer error flag clear for channel 3
      CTEIF3         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_IFCR_Register use record
      CGIF1          at 0 range 0 .. 0;
      CTCIF1         at 0 range 1 .. 1;
      CHTIF1         at 0 range 2 .. 2;
      CTEIF1         at 0 range 3 .. 3;
      CGIF2          at 0 range 4 .. 4;
      CTCIF2         at 0 range 5 .. 5;
      CHTIF2         at 0 range 6 .. 6;
      CTEIF2         at 0 range 7 .. 7;
      CGIF3          at 0 range 8 .. 8;
      CTCIF3         at 0 range 9 .. 9;
      CHTIF3         at 0 range 10 .. 10;
      CTEIF3         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DMA_CCR_PSIZE_Field is HAL.UInt2;
   subtype DMA_CCR_MSIZE_Field is HAL.UInt2;
   subtype DMA_CCR_PL_Field is HAL.UInt2;

   --  DMA channel 1 configuration register
   type DMA_CCR_Register is record
      --  channel enable When a channel transfer error occurs, this bit is
      --  cleared by hardware. It can not be set again by software (channel x
      --  re-activated) until the TEIFx bit of the DMA_ISR register is cleared
      --  (by setting the CTEIFx bit of the DMA_IFCR register). Note: this bit
      --  is set and cleared by software.
      EN             : Boolean := False;
      --  transfer complete interrupt enable Note: this bit is set and cleared
      --  by software. It must not be written when the channel is enabled (EN =
      --  1). It is not read-only when the channel is enabled (EN = 1).
      TCIE           : Boolean := False;
      --  half transfer interrupt enable Note: this bit is set and cleared by
      --  software. It must not be written when the channel is enabled (EN =
      --  1). It is not read-only when the channel is enabled (EN = 1).
      HTIE           : Boolean := False;
      --  transfer error interrupt enable Note: this bit is set and cleared by
      --  software. It must not be written when the channel is enabled (EN =
      --  1). It is not read-only when the channel is enabled (EN = 1).
      TEIE           : Boolean := False;
      --  data transfer direction This bit must be set only in
      --  memory-to-peripheral and peripheral-to-memory modes. Source
      --  attributes are defined by PSIZE and PINC, plus the DMA_CPARx
      --  register. This is still valid in a memory-to-memory mode. Destination
      --  attributes are defined by MSIZE and MINC, plus the DMA_CMARx
      --  register. This is still valid in a peripheral-to-peripheral mode.
      --  Destination attributes are defined by PSIZE and PINC, plus the
      --  DMA_CPARx register. This is still valid in a memory-to-memory mode.
      --  Source attributes are defined by MSIZE and MINC, plus the DMA_CMARx
      --  register. This is still valid in a peripheral-to-peripheral mode.
      --  Note: this bit is set and cleared by software. It must not be written
      --  when the channel is enabled (EN = 1). It is read-only when the
      --  channel is enabled (EN = 1).
      DIR            : Boolean := False;
      --  circular mode Note: this bit is set and cleared by software. It must
      --  not be written when the channel is enabled (EN = 1). It is not
      --  read-only when the channel is enabled (EN = 1).
      CIRC           : Boolean := False;
      --  peripheral increment mode Defines the increment mode for each DMA
      --  transfer to the identified peripheral. n memory-to-memory mode, this
      --  field identifies the memory destination if DIR = 1 and the memory
      --  source if DIR = 0. In peripheral-to-peripheral mode, this field
      --  identifies the peripheral destination if DIR = 1 and the peripheral
      --  source if DIR = 0. Note: this bit is set and cleared by software. It
      --  must not be written when the channel is enabled (EN = 1). It is
      --  read-only when the channel is enabled (EN = 1).
      PINC           : Boolean := False;
      --  memory increment mode Defines the increment mode for each DMA
      --  transfer to the identified memory. In memory-to-memory mode, this
      --  field identifies the memory source if DIR = 1 and the memory
      --  destination if DIR = 0. In peripheral-to-peripheral mode, this field
      --  identifies the peripheral source if DIR = 1 and the peripheral
      --  destination if DIR = 0. Note: this bit is set and cleared by
      --  software. It must not be written when the channel is enabled (EN =
      --  1). It is read-only when the channel is enabled (EN = 1).
      MINC           : Boolean := False;
      --  peripheral size Defines the data size of each DMA transfer to the
      --  identified peripheral. In memory-to-memory mode, this field
      --  identifies the memory destination if DIR = 1 and the memory source if
      --  DIR = 0. In peripheral-to-peripheral mode, this field identifies the
      --  peripheral destination if DIR = 1 and the peripheral source if DIR =
      --  0. Note: this field is set and cleared by software. It must not be
      --  written when the channel is enabled (EN = 1). It is read-only when
      --  the channel is enabled (EN = 1).
      PSIZE          : DMA_CCR_PSIZE_Field := 16#0#;
      --  memory size Defines the data size of each DMA transfer to the
      --  identified memory. In memory-to-memory mode, this field identifies
      --  the memory source if DIR = 1 and the memory destination if DIR = 0.
      --  In peripheral-to-peripheral mode, this field identifies the
      --  peripheral source if DIR = 1 and the peripheral destination if DIR =
      --  0. Note: this field is set and cleared by software. It must not be
      --  written when the channel is enabled (EN = 1). It is read-only when
      --  the channel is enabled (EN = 1).
      MSIZE          : DMA_CCR_MSIZE_Field := 16#0#;
      --  priority level Note: this field is set and cleared by software. It
      --  must not be written when the channel is enabled (EN = 1). It is
      --  read-only when the channel is enabled (EN = 1).
      PL             : DMA_CCR_PL_Field := 16#0#;
      --  memory-to-memory mode Note: this bit is set and cleared by software.
      --  It must not be written when the channel is enabled (EN = 1). It is
      --  read-only when the channel is enabled (EN = 1).
      MEM2MEM        : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CCR_Register use record
      EN             at 0 range 0 .. 0;
      TCIE           at 0 range 1 .. 1;
      HTIE           at 0 range 2 .. 2;
      TEIE           at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CIRC           at 0 range 5 .. 5;
      PINC           at 0 range 6 .. 6;
      MINC           at 0 range 7 .. 7;
      PSIZE          at 0 range 8 .. 9;
      MSIZE          at 0 range 10 .. 11;
      PL             at 0 range 12 .. 13;
      MEM2MEM        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DMA_CNDTR_NDT_Field is HAL.UInt16;

   --  DMA channel 1 number of data to transfer register
   type DMA_CNDTR_Register is record
      --  number of data to transfer (0 to 216 - 1) This field is updated by
      --  hardware when the channel is enabled: It is decremented after each
      --  single DMA read followed by write transfer, indicating the remaining
      --  amount of data items to transfer. It is kept at zero when the
      --  programmed amount of data to transfer is reached, if the channel is
      --  not in circular mode (CIRC = 0 in the DMA_CCRx register). It is
      --  reloaded automatically by the previously programmed value, when the
      --  transfer is complete, if the channel is in circular mode (CIRC = 1).
      --  If this field is zero, no transfer can be served whatever the channel
      --  status (enabled or not). Note: this field is set and cleared by
      --  software. It must not be written when the channel is enabled (EN =
      --  1). It is read-only when the channel is enabled (EN = 1).
      NDT            : DMA_CNDTR_NDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CNDTR_Register use record
      NDT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA controller
   type DMA_Peripheral is record
      --  DMA interrupt status register
      DMA_ISR    : aliased DMA_ISR_Register;
      --  DMA interrupt flag clear register
      DMA_IFCR   : aliased DMA_IFCR_Register;
      --  DMA channel 1 configuration register
      DMA_CCR1   : aliased DMA_CCR_Register;
      --  DMA channel 1 number of data to transfer register
      DMA_CNDTR1 : aliased DMA_CNDTR_Register;
      --  DMA channel 1 peripheral address register
      DMA_CPAR1  : aliased HAL.UInt32;
      --  DMA channel 1 memory address register
      DMA_CMAR1  : aliased HAL.UInt32;
      --  DMA channel 2 configuration register
      DMA_CCR2   : aliased DMA_CCR_Register;
      --  DMA channel 2 number of data to transfer register
      DMA_CNDTR2 : aliased DMA_CNDTR_Register;
      --  DMA channel 2 peripheral address register
      DMA_CPAR2  : aliased HAL.UInt32;
      --  DMA channel 2 memory address register
      DMA_CMAR2  : aliased HAL.UInt32;
      --  DMA channel 3 configuration register
      DMA_CCR3   : aliased DMA_CCR_Register;
      --  DMA channel 3 number of data to transfer register
      DMA_CNDTR3 : aliased DMA_CNDTR_Register;
      --  DMA channel 3 peripheral address register
      DMA_CPAR3  : aliased HAL.UInt32;
      --  DMA channel 3 memory address register
      DMA_CMAR3  : aliased HAL.UInt32;
   end record
     with Volatile;

   for DMA_Peripheral use record
      DMA_ISR    at 16#0# range 0 .. 31;
      DMA_IFCR   at 16#4# range 0 .. 31;
      DMA_CCR1   at 16#8# range 0 .. 31;
      DMA_CNDTR1 at 16#C# range 0 .. 31;
      DMA_CPAR1  at 16#10# range 0 .. 31;
      DMA_CMAR1  at 16#14# range 0 .. 31;
      DMA_CCR2   at 16#1C# range 0 .. 31;
      DMA_CNDTR2 at 16#20# range 0 .. 31;
      DMA_CPAR2  at 16#24# range 0 .. 31;
      DMA_CMAR2  at 16#28# range 0 .. 31;
      DMA_CCR3   at 16#30# range 0 .. 31;
      DMA_CNDTR3 at 16#34# range 0 .. 31;
      DMA_CPAR3  at 16#38# range 0 .. 31;
      DMA_CMAR3  at 16#3C# range 0 .. 31;
   end record;

   --  DMA controller
   DMA_Periph : aliased DMA_Peripheral
     with Import, Address => DMA_Base;

end STM32_SVD.DMA;
