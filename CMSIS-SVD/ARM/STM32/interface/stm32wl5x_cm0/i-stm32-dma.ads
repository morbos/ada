--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DMA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ISR_GIF1_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF1_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF1_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF1_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_GIF2_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF2_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF2_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF2_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_GIF3_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF3_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF3_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF3_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_GIF4_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF4_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF4_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF4_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_GIF5_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF5_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF5_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF5_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_GIF6_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF6_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF6_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF6_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_GIF7_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCIF7_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_HTIF7_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TEIF7_Field is Interfaces.Bit_Types.Bit;

   --  interrupt status register
   type ISR_Register is record
      --  Read-only. global interrupt flag for channel 1
      GIF1           : ISR_GIF1_Field;
      --  Read-only. transfer complete (TC) flag for channel 1
      TCIF1          : ISR_TCIF1_Field;
      --  Read-only. half transfer (HT) flag for channel 1
      HTIF1          : ISR_HTIF1_Field;
      --  Read-only. transfer error (TE) flag for channel 1
      TEIF1          : ISR_TEIF1_Field;
      --  Read-only. global interrupt flag for channel 2
      GIF2           : ISR_GIF2_Field;
      --  Read-only. transfer complete (TC) flag for channel 2
      TCIF2          : ISR_TCIF2_Field;
      --  Read-only. half transfer (HT) flag for channel 2
      HTIF2          : ISR_HTIF2_Field;
      --  Read-only. transfer error (TE) flag for channel 2
      TEIF2          : ISR_TEIF2_Field;
      --  Read-only. global interrupt flag for channel 3
      GIF3           : ISR_GIF3_Field;
      --  Read-only. transfer complete (TC) flag for channel 3
      TCIF3          : ISR_TCIF3_Field;
      --  Read-only. half transfer (HT) flag for channel 3
      HTIF3          : ISR_HTIF3_Field;
      --  Read-only. transfer error (TE) flag for channel 3
      TEIF3          : ISR_TEIF3_Field;
      --  Read-only. global interrupt flag for channel 4
      GIF4           : ISR_GIF4_Field;
      --  Read-only. transfer complete (TC) flag for channel 4
      TCIF4          : ISR_TCIF4_Field;
      --  Read-only. half transfer (HT) flag for channel 4
      HTIF4          : ISR_HTIF4_Field;
      --  Read-only. transfer error (TE) flag for channel 4
      TEIF4          : ISR_TEIF4_Field;
      --  Read-only. global interrupt flag for channel 5
      GIF5           : ISR_GIF5_Field;
      --  Read-only. transfer complete (TC) flag for channel 5
      TCIF5          : ISR_TCIF5_Field;
      --  Read-only. half transfer (HT) flag for channel 5
      HTIF5          : ISR_HTIF5_Field;
      --  Read-only. transfer error (TE) flag for channel 5
      TEIF5          : ISR_TEIF5_Field;
      --  Read-only. global interrupt flag for channel 6
      GIF6           : ISR_GIF6_Field;
      --  Read-only. transfer complete (TC) flag for channel 6
      TCIF6          : ISR_TCIF6_Field;
      --  Read-only. half transfer (HT) flag for channel 6
      HTIF6          : ISR_HTIF6_Field;
      --  Read-only. transfer error (TE) flag for channel 6
      TEIF6          : ISR_TEIF6_Field;
      --  Read-only. global interrupt flag for channel 7
      GIF7           : ISR_GIF7_Field;
      --  Read-only. transfer complete (TC) flag for channel 7
      TCIF7          : ISR_TCIF7_Field;
      --  Read-only. half transfer (HT) flag for channel 7
      HTIF7          : ISR_HTIF7_Field;
      --  Read-only. transfer error (TE) flag for channel 7
      TEIF7          : ISR_TEIF7_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
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
      GIF4           at 0 range 12 .. 12;
      TCIF4          at 0 range 13 .. 13;
      HTIF4          at 0 range 14 .. 14;
      TEIF4          at 0 range 15 .. 15;
      GIF5           at 0 range 16 .. 16;
      TCIF5          at 0 range 17 .. 17;
      HTIF5          at 0 range 18 .. 18;
      TEIF5          at 0 range 19 .. 19;
      GIF6           at 0 range 20 .. 20;
      TCIF6          at 0 range 21 .. 21;
      HTIF6          at 0 range 22 .. 22;
      TEIF6          at 0 range 23 .. 23;
      GIF7           at 0 range 24 .. 24;
      TCIF7          at 0 range 25 .. 25;
      HTIF7          at 0 range 26 .. 26;
      TEIF7          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype IFCR_GIF1_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF1_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF1_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF1_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_GIF2_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF2_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF2_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF2_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_GIF3_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF3_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF3_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF3_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_GIF4_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF4_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF4_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF4_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_GIF5_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF5_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF5_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF5_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_GIF6_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF6_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF6_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF6_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_GIF7_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TCIF7_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_HTIF7_Field is Interfaces.Bit_Types.Bit;
   subtype IFCR_TEIF7_Field is Interfaces.Bit_Types.Bit;

   --  interrupt flag clear register
   type IFCR_Register is record
      --  Write-only. global interrupt flag clear for channel 1
      GIF1           : IFCR_GIF1_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 1
      TCIF1          : IFCR_TCIF1_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 1
      HTIF1          : IFCR_HTIF1_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 1
      TEIF1          : IFCR_TEIF1_Field := 16#0#;
      --  Write-only. global interrupt flag clear for channel 2
      GIF2           : IFCR_GIF2_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 2
      TCIF2          : IFCR_TCIF2_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 2
      HTIF2          : IFCR_HTIF2_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 2
      TEIF2          : IFCR_TEIF2_Field := 16#0#;
      --  Write-only. global interrupt flag clear for channel 3
      GIF3           : IFCR_GIF3_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 3
      TCIF3          : IFCR_TCIF3_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 3
      HTIF3          : IFCR_HTIF3_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 3
      TEIF3          : IFCR_TEIF3_Field := 16#0#;
      --  Write-only. global interrupt flag clear for channel 4
      GIF4           : IFCR_GIF4_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 4
      TCIF4          : IFCR_TCIF4_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 4
      HTIF4          : IFCR_HTIF4_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 4
      TEIF4          : IFCR_TEIF4_Field := 16#0#;
      --  Write-only. global interrupt flag clear for channel 5
      GIF5           : IFCR_GIF5_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 5
      TCIF5          : IFCR_TCIF5_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 5
      HTIF5          : IFCR_HTIF5_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 5
      TEIF5          : IFCR_TEIF5_Field := 16#0#;
      --  Write-only. global interrupt flag clear for channel 6
      GIF6           : IFCR_GIF6_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 6
      TCIF6          : IFCR_TCIF6_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 6
      HTIF6          : IFCR_HTIF6_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 6
      TEIF6          : IFCR_TEIF6_Field := 16#0#;
      --  Write-only. global interrupt flag clear for channel 7
      GIF7           : IFCR_GIF7_Field := 16#0#;
      --  Write-only. transfer complete flag clear for channel 7
      TCIF7          : IFCR_TCIF7_Field := 16#0#;
      --  Write-only. half transfer flag clear for channel 7
      HTIF7          : IFCR_HTIF7_Field := 16#0#;
      --  Write-only. transfer error flag clear for channel 7
      TEIF7          : IFCR_TEIF7_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFCR_Register use record
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
      GIF4           at 0 range 12 .. 12;
      TCIF4          at 0 range 13 .. 13;
      HTIF4          at 0 range 14 .. 14;
      TEIF4          at 0 range 15 .. 15;
      GIF5           at 0 range 16 .. 16;
      TCIF5          at 0 range 17 .. 17;
      HTIF5          at 0 range 18 .. 18;
      TEIF5          at 0 range 19 .. 19;
      GIF6           at 0 range 20 .. 20;
      TCIF6          at 0 range 21 .. 21;
      HTIF6          at 0 range 22 .. 22;
      TEIF6          at 0 range 23 .. 23;
      GIF7           at 0 range 24 .. 24;
      TCIF7          at 0 range 25 .. 25;
      HTIF7          at 0 range 26 .. 26;
      TEIF7          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CCR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_TCIE_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_HTIE_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_TEIE_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_DIR_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_CIRC_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_PINC_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_MINC_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_PSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_MSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_PL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_MEM2MEM_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_SECM_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_SSEC_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_DSEC_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_PRIV_Field is Interfaces.Bit_Types.Bit;

   --  channel x configuration register
   type CCR_Register is record
      --  channel enable
      EN             : CCR_EN_Field := 16#0#;
      --  transfer complete interrupt enable
      TCIE           : CCR_TCIE_Field := 16#0#;
      --  half transfer interrupt enable
      HTIE           : CCR_HTIE_Field := 16#0#;
      --  transfer error interrupt enable
      TEIE           : CCR_TEIE_Field := 16#0#;
      --  data transfer direction
      DIR            : CCR_DIR_Field := 16#0#;
      --  circular mode
      CIRC           : CCR_CIRC_Field := 16#0#;
      --  peripheral increment mode
      PINC           : CCR_PINC_Field := 16#0#;
      --  memory increment mode
      MINC           : CCR_MINC_Field := 16#0#;
      --  peripheral size
      PSIZE          : CCR_PSIZE_Field := 16#0#;
      --  memory size
      MSIZE          : CCR_MSIZE_Field := 16#0#;
      --  priority level
      PL             : CCR_PL_Field := 16#0#;
      --  memory-to-memory mode
      MEM2MEM        : CCR_MEM2MEM_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ecure mode
      SECM           : CCR_SECM_Field := 16#0#;
      --  ecurity of the DMA transfer from the source
      SSEC           : CCR_SSEC_Field := 16#0#;
      --  ecurity of the DMA transfer to the destination
      DSEC           : CCR_DSEC_Field := 16#0#;
      --  rivileged mode
      PRIV           : CCR_PRIV_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
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
      Reserved_15_16 at 0 range 15 .. 16;
      SECM           at 0 range 17 .. 17;
      SSEC           at 0 range 18 .. 18;
      DSEC           at 0 range 19 .. 19;
      PRIV           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype CNDTR_NDT_Field is Interfaces.Bit_Types.UInt18;

   --  channel x number of data to transfer register
   type CNDTR_Register is record
      --  number of data to transfer (0 to 218 - 1)
      NDT            : CNDTR_NDT_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNDTR_Register use record
      NDT            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Direct memory access controller
   type DMA_Peripheral is record
      --  interrupt status register
      ISR    : aliased ISR_Register;
      --  interrupt flag clear register
      IFCR   : aliased IFCR_Register;
      --  channel x configuration register
      CCR1   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR1 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR1  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR1  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x configuration register
      CCR2   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR2 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR2  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR2  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x configuration register
      CCR3   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR3 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR3  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR3  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x configuration register
      CCR4   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR4 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR4  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR4  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x configuration register
      CCR5   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR5 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR5  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR5  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x configuration register
      CCR6   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR6 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR6  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR6  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x configuration register
      CCR7   : aliased CCR_Register;
      --  channel x number of data to transfer register
      CNDTR7 : aliased CNDTR_Register;
      --  channel x peripheral address register
      CPAR7  : aliased Interfaces.Bit_Types.UInt32;
      --  channel x memory address register
      CMAR7  : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for DMA_Peripheral use record
      ISR    at 16#0# range 0 .. 31;
      IFCR   at 16#4# range 0 .. 31;
      CCR1   at 16#8# range 0 .. 31;
      CNDTR1 at 16#C# range 0 .. 31;
      CPAR1  at 16#10# range 0 .. 31;
      CMAR1  at 16#14# range 0 .. 31;
      CCR2   at 16#1C# range 0 .. 31;
      CNDTR2 at 16#20# range 0 .. 31;
      CPAR2  at 16#24# range 0 .. 31;
      CMAR2  at 16#28# range 0 .. 31;
      CCR3   at 16#30# range 0 .. 31;
      CNDTR3 at 16#34# range 0 .. 31;
      CPAR3  at 16#38# range 0 .. 31;
      CMAR3  at 16#3C# range 0 .. 31;
      CCR4   at 16#44# range 0 .. 31;
      CNDTR4 at 16#48# range 0 .. 31;
      CPAR4  at 16#4C# range 0 .. 31;
      CMAR4  at 16#50# range 0 .. 31;
      CCR5   at 16#58# range 0 .. 31;
      CNDTR5 at 16#5C# range 0 .. 31;
      CPAR5  at 16#60# range 0 .. 31;
      CMAR5  at 16#64# range 0 .. 31;
      CCR6   at 16#6C# range 0 .. 31;
      CNDTR6 at 16#70# range 0 .. 31;
      CPAR6  at 16#74# range 0 .. 31;
      CMAR6  at 16#78# range 0 .. 31;
      CCR7   at 16#80# range 0 .. 31;
      CNDTR7 at 16#84# range 0 .. 31;
      CPAR7  at 16#88# range 0 .. 31;
      CMAR7  at 16#8C# range 0 .. 31;
   end record;

   --  Direct memory access controller
   DMA1_Periph : aliased DMA_Peripheral
     with Import, Address => DMA1_Base;

   --  Direct memory access controller
   DMA2_Periph : aliased DMA_Peripheral
     with Import, Address => DMA2_Base;

end Interfaces.STM32.DMA;
