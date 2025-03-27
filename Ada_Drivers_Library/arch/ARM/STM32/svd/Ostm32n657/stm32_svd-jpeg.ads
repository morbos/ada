--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.JPEG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  JPEG codec control register
   type JPEG_CONFR0_Register is record
      --  Write-only. Start
      START         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR0_Register use record
      START         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype JPEG_CONFR1_NF_Field is HAL.UInt2;
   subtype JPEG_CONFR1_COLSPACE_Field is HAL.UInt2;
   subtype JPEG_CONFR1_NS_Field is HAL.UInt2;
   subtype JPEG_CONFR1_YSIZE_Field is HAL.UInt16;

   --  JPEG codec configuration register 1
   type JPEG_CONFR1_Register is record
      --  Number of color components
      NF            : JPEG_CONFR1_NF_Field := 16#0#;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Codec operation as coder or decoder
      DE            : Boolean := False;
      --  Color space
      COLSPACE      : JPEG_CONFR1_COLSPACE_Field := 16#0#;
      --  Number of components for scan
      NS            : JPEG_CONFR1_NS_Field := 16#0#;
      --  Header processing
      HDR           : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
      --  Y Size
      YSIZE         : JPEG_CONFR1_YSIZE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR1_Register use record
      NF            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      DE            at 0 range 3 .. 3;
      COLSPACE      at 0 range 4 .. 5;
      NS            at 0 range 6 .. 7;
      HDR           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
      YSIZE         at 0 range 16 .. 31;
   end record;

   subtype JPEG_CONFR2_NMCU_Field is HAL.UInt26;

   --  JPEG codec configuration register 2
   type JPEG_CONFR2_Register is record
      --  Number of MCUs
      NMCU           : JPEG_CONFR2_NMCU_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR2_Register use record
      NMCU           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype JPEG_CONFR3_XSIZE_Field is HAL.UInt16;

   --  JPEG codec configuration register 3
   type JPEG_CONFR3_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  X size
      XSIZE         : JPEG_CONFR3_XSIZE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR3_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      XSIZE         at 0 range 16 .. 31;
   end record;

   subtype JPEG_CONFR_QT_Field is HAL.UInt2;
   subtype JPEG_CONFR_NB_Field is HAL.UInt4;
   subtype JPEG_CONFR_VSF_Field is HAL.UInt4;
   subtype JPEG_CONFR_HSF_Field is HAL.UInt4;

   --  JPEG codec configuration register 4
   type JPEG_CONFR_Register is record
      --  Huffman DC
      HD             : Boolean := False;
      --  Huffman AC
      HA             : Boolean := False;
      --  Quantization table
      QT             : JPEG_CONFR_QT_Field := 16#0#;
      --  Number of blocks
      NB             : JPEG_CONFR_NB_Field := 16#0#;
      --  Vertical sampling factor
      VSF            : JPEG_CONFR_VSF_Field := 16#0#;
      --  Horizontal sampling factor
      HSF            : JPEG_CONFR_HSF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR_Register use record
      HD             at 0 range 0 .. 0;
      HA             at 0 range 1 .. 1;
      QT             at 0 range 2 .. 3;
      NB             at 0 range 4 .. 7;
      VSF            at 0 range 8 .. 11;
      HSF            at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  JPEG control register
   type JPEG_CR_Register is record
      --  JPEG core enable
      JCEN           : Boolean := False;
      --  Input FIFO threshold interrupt enable
      IFTIE          : Boolean := False;
      --  Input FIFO not full interrupt enable
      IFNFIE         : Boolean := False;
      --  Output FIFO threshold interrupt enable
      OFTIE          : Boolean := False;
      --  Output FIFO not empty interrupt enable
      OFNEIE         : Boolean := False;
      --  End of conversion interrupt enable
      EOCIE          : Boolean := False;
      --  Header parsing done interrupt enable
      HPDIE          : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Input DMA enable
      IDMAEN         : Boolean := False;
      --  Output DMA enable
      ODMAEN         : Boolean := False;
      --  Write-only. Input FIFO flush
      IFF            : Boolean := False;
      --  Write-only. Output FIFO flush
      OFF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CR_Register use record
      JCEN           at 0 range 0 .. 0;
      IFTIE          at 0 range 1 .. 1;
      IFNFIE         at 0 range 2 .. 2;
      OFTIE          at 0 range 3 .. 3;
      OFNEIE         at 0 range 4 .. 4;
      EOCIE          at 0 range 5 .. 5;
      HPDIE          at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      IDMAEN         at 0 range 11 .. 11;
      ODMAEN         at 0 range 12 .. 12;
      IFF            at 0 range 13 .. 13;
      OFF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  JPEG status register
   type JPEG_SR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Input FIFO threshold flag
      IFTF          : Boolean;
      --  Read-only. Input FIFO not full flag
      IFNFF         : Boolean;
      --  Read-only. Output FIFO threshold flag
      OFTF          : Boolean;
      --  Read-only. Output FIFO not empty flag
      OFNEF         : Boolean;
      --  Read-only. End of conversion flag
      EOCF          : Boolean;
      --  Read-only. Header parsing done flag
      HPDF          : Boolean;
      --  Read-only. Codec operation flag
      COF           : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_SR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IFTF          at 0 range 1 .. 1;
      IFNFF         at 0 range 2 .. 2;
      OFTF          at 0 range 3 .. 3;
      OFNEF         at 0 range 4 .. 4;
      EOCF          at 0 range 5 .. 5;
      HPDF          at 0 range 6 .. 6;
      COF           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  JPEG clear flag register
   type JPEG_CFR_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5 := 16#0#;
      --  Clear end of conversion flag
      CEOCF         : Boolean := False;
      --  Clear header parsing done flag
      CHPDF         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CFR_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      CEOCF         at 0 range 5 .. 5;
      CHPDF         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  JPEG_QMEM0_0_QCOEF array element
   subtype JPEG_QMEM0_0_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_0_QCOEF array
   type JPEG_QMEM0_0_QCOEF_Field_Array is array (0 .. 3)
     of JPEG_QMEM0_0_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_0_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_1_QCOEF array element
   subtype JPEG_QMEM0_1_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_1_QCOEF array
   type JPEG_QMEM0_1_QCOEF_Field_Array is array (4 .. 7)
     of JPEG_QMEM0_1_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_1_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_2_QCOEF array element
   subtype JPEG_QMEM0_2_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_2_QCOEF array
   type JPEG_QMEM0_2_QCOEF_Field_Array is array (8 .. 11)
     of JPEG_QMEM0_2_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_2_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_3_QCOEF array element
   subtype JPEG_QMEM0_3_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_3_QCOEF array
   type JPEG_QMEM0_3_QCOEF_Field_Array is array (12 .. 15)
     of JPEG_QMEM0_3_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_3_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_4_QCOEF array element
   subtype JPEG_QMEM0_4_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_4_QCOEF array
   type JPEG_QMEM0_4_QCOEF_Field_Array is array (16 .. 19)
     of JPEG_QMEM0_4_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_4_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_5_QCOEF array element
   subtype JPEG_QMEM0_5_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_5_QCOEF array
   type JPEG_QMEM0_5_QCOEF_Field_Array is array (20 .. 23)
     of JPEG_QMEM0_5_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_5_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_6_QCOEF array element
   subtype JPEG_QMEM0_6_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_6_QCOEF array
   type JPEG_QMEM0_6_QCOEF_Field_Array is array (24 .. 27)
     of JPEG_QMEM0_6_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_6_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_7_QCOEF array element
   subtype JPEG_QMEM0_7_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_7_QCOEF array
   type JPEG_QMEM0_7_QCOEF_Field_Array is array (28 .. 31)
     of JPEG_QMEM0_7_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_7_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_8_QCOEF array element
   subtype JPEG_QMEM0_8_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_8_QCOEF array
   type JPEG_QMEM0_8_QCOEF_Field_Array is array (32 .. 35)
     of JPEG_QMEM0_8_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_8_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_9_QCOEF array element
   subtype JPEG_QMEM0_9_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_9_QCOEF array
   type JPEG_QMEM0_9_QCOEF_Field_Array is array (36 .. 39)
     of JPEG_QMEM0_9_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_9_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_10_QCOEF array element
   subtype JPEG_QMEM0_10_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_10_QCOEF array
   type JPEG_QMEM0_10_QCOEF_Field_Array is array (40 .. 43)
     of JPEG_QMEM0_10_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_10_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_11_QCOEF array element
   subtype JPEG_QMEM0_11_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_11_QCOEF array
   type JPEG_QMEM0_11_QCOEF_Field_Array is array (44 .. 47)
     of JPEG_QMEM0_11_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_11_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_12_QCOEF array element
   subtype JPEG_QMEM0_12_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_12_QCOEF array
   type JPEG_QMEM0_12_QCOEF_Field_Array is array (48 .. 51)
     of JPEG_QMEM0_12_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_12_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_13_QCOEF array element
   subtype JPEG_QMEM0_13_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_13_QCOEF array
   type JPEG_QMEM0_13_QCOEF_Field_Array is array (52 .. 55)
     of JPEG_QMEM0_13_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_13_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_14_QCOEF array element
   subtype JPEG_QMEM0_14_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_14_QCOEF array
   type JPEG_QMEM0_14_QCOEF_Field_Array is array (56 .. 59)
     of JPEG_QMEM0_14_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_14_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM0_15_QCOEF array element
   subtype JPEG_QMEM0_15_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM0_15_QCOEF array
   type JPEG_QMEM0_15_QCOEF_Field_Array is array (60 .. 63)
     of JPEG_QMEM0_15_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 0
   type JPEG_QMEM0_15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM0_15_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM0_15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_0_QCOEF array element
   subtype JPEG_QMEM1_0_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_0_QCOEF array
   type JPEG_QMEM1_0_QCOEF_Field_Array is array (0 .. 3)
     of JPEG_QMEM1_0_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_0_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_1_QCOEF array element
   subtype JPEG_QMEM1_1_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_1_QCOEF array
   type JPEG_QMEM1_1_QCOEF_Field_Array is array (4 .. 7)
     of JPEG_QMEM1_1_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_1_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_2_QCOEF array element
   subtype JPEG_QMEM1_2_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_2_QCOEF array
   type JPEG_QMEM1_2_QCOEF_Field_Array is array (8 .. 11)
     of JPEG_QMEM1_2_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_2_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_3_QCOEF array element
   subtype JPEG_QMEM1_3_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_3_QCOEF array
   type JPEG_QMEM1_3_QCOEF_Field_Array is array (12 .. 15)
     of JPEG_QMEM1_3_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_3_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_4_QCOEF array element
   subtype JPEG_QMEM1_4_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_4_QCOEF array
   type JPEG_QMEM1_4_QCOEF_Field_Array is array (16 .. 19)
     of JPEG_QMEM1_4_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_4_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_5_QCOEF array element
   subtype JPEG_QMEM1_5_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_5_QCOEF array
   type JPEG_QMEM1_5_QCOEF_Field_Array is array (20 .. 23)
     of JPEG_QMEM1_5_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_5_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_6_QCOEF array element
   subtype JPEG_QMEM1_6_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_6_QCOEF array
   type JPEG_QMEM1_6_QCOEF_Field_Array is array (24 .. 27)
     of JPEG_QMEM1_6_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_6_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_7_QCOEF array element
   subtype JPEG_QMEM1_7_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_7_QCOEF array
   type JPEG_QMEM1_7_QCOEF_Field_Array is array (28 .. 31)
     of JPEG_QMEM1_7_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_7_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_8_QCOEF array element
   subtype JPEG_QMEM1_8_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_8_QCOEF array
   type JPEG_QMEM1_8_QCOEF_Field_Array is array (32 .. 35)
     of JPEG_QMEM1_8_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_8_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_9_QCOEF array element
   subtype JPEG_QMEM1_9_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_9_QCOEF array
   type JPEG_QMEM1_9_QCOEF_Field_Array is array (36 .. 39)
     of JPEG_QMEM1_9_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_9_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_10_QCOEF array element
   subtype JPEG_QMEM1_10_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_10_QCOEF array
   type JPEG_QMEM1_10_QCOEF_Field_Array is array (40 .. 43)
     of JPEG_QMEM1_10_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_10_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_11_QCOEF array element
   subtype JPEG_QMEM1_11_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_11_QCOEF array
   type JPEG_QMEM1_11_QCOEF_Field_Array is array (44 .. 47)
     of JPEG_QMEM1_11_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_11_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_12_QCOEF array element
   subtype JPEG_QMEM1_12_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_12_QCOEF array
   type JPEG_QMEM1_12_QCOEF_Field_Array is array (48 .. 51)
     of JPEG_QMEM1_12_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_12_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_13_QCOEF array element
   subtype JPEG_QMEM1_13_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_13_QCOEF array
   type JPEG_QMEM1_13_QCOEF_Field_Array is array (52 .. 55)
     of JPEG_QMEM1_13_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_13_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_14_QCOEF array element
   subtype JPEG_QMEM1_14_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_14_QCOEF array
   type JPEG_QMEM1_14_QCOEF_Field_Array is array (56 .. 59)
     of JPEG_QMEM1_14_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_14_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM1_15_QCOEF array element
   subtype JPEG_QMEM1_15_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM1_15_QCOEF array
   type JPEG_QMEM1_15_QCOEF_Field_Array is array (60 .. 63)
     of JPEG_QMEM1_15_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 1
   type JPEG_QMEM1_15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM1_15_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM1_15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_0_QCOEF array element
   subtype JPEG_QMEM2_0_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_0_QCOEF array
   type JPEG_QMEM2_0_QCOEF_Field_Array is array (0 .. 3)
     of JPEG_QMEM2_0_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_0_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_1_QCOEF array element
   subtype JPEG_QMEM2_1_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_1_QCOEF array
   type JPEG_QMEM2_1_QCOEF_Field_Array is array (4 .. 7)
     of JPEG_QMEM2_1_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_1_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_2_QCOEF array element
   subtype JPEG_QMEM2_2_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_2_QCOEF array
   type JPEG_QMEM2_2_QCOEF_Field_Array is array (8 .. 11)
     of JPEG_QMEM2_2_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_2_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_3_QCOEF array element
   subtype JPEG_QMEM2_3_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_3_QCOEF array
   type JPEG_QMEM2_3_QCOEF_Field_Array is array (12 .. 15)
     of JPEG_QMEM2_3_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_3_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_4_QCOEF array element
   subtype JPEG_QMEM2_4_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_4_QCOEF array
   type JPEG_QMEM2_4_QCOEF_Field_Array is array (16 .. 19)
     of JPEG_QMEM2_4_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_4_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_5_QCOEF array element
   subtype JPEG_QMEM2_5_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_5_QCOEF array
   type JPEG_QMEM2_5_QCOEF_Field_Array is array (20 .. 23)
     of JPEG_QMEM2_5_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_5_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_6_QCOEF array element
   subtype JPEG_QMEM2_6_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_6_QCOEF array
   type JPEG_QMEM2_6_QCOEF_Field_Array is array (24 .. 27)
     of JPEG_QMEM2_6_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_6_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_7_QCOEF array element
   subtype JPEG_QMEM2_7_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_7_QCOEF array
   type JPEG_QMEM2_7_QCOEF_Field_Array is array (28 .. 31)
     of JPEG_QMEM2_7_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_7_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_8_QCOEF array element
   subtype JPEG_QMEM2_8_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_8_QCOEF array
   type JPEG_QMEM2_8_QCOEF_Field_Array is array (32 .. 35)
     of JPEG_QMEM2_8_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_8_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_9_QCOEF array element
   subtype JPEG_QMEM2_9_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_9_QCOEF array
   type JPEG_QMEM2_9_QCOEF_Field_Array is array (36 .. 39)
     of JPEG_QMEM2_9_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_9_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_10_QCOEF array element
   subtype JPEG_QMEM2_10_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_10_QCOEF array
   type JPEG_QMEM2_10_QCOEF_Field_Array is array (40 .. 43)
     of JPEG_QMEM2_10_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_10_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_11_QCOEF array element
   subtype JPEG_QMEM2_11_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_11_QCOEF array
   type JPEG_QMEM2_11_QCOEF_Field_Array is array (44 .. 47)
     of JPEG_QMEM2_11_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_11_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_12_QCOEF array element
   subtype JPEG_QMEM2_12_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_12_QCOEF array
   type JPEG_QMEM2_12_QCOEF_Field_Array is array (48 .. 51)
     of JPEG_QMEM2_12_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_12_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_13_QCOEF array element
   subtype JPEG_QMEM2_13_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_13_QCOEF array
   type JPEG_QMEM2_13_QCOEF_Field_Array is array (52 .. 55)
     of JPEG_QMEM2_13_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_13_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_14_QCOEF array element
   subtype JPEG_QMEM2_14_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_14_QCOEF array
   type JPEG_QMEM2_14_QCOEF_Field_Array is array (56 .. 59)
     of JPEG_QMEM2_14_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_14_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM2_15_QCOEF array element
   subtype JPEG_QMEM2_15_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM2_15_QCOEF array
   type JPEG_QMEM2_15_QCOEF_Field_Array is array (60 .. 63)
     of JPEG_QMEM2_15_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 2
   type JPEG_QMEM2_15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM2_15_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM2_15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_0_QCOEF array element
   subtype JPEG_QMEM3_0_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_0_QCOEF array
   type JPEG_QMEM3_0_QCOEF_Field_Array is array (0 .. 3)
     of JPEG_QMEM3_0_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_0_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_1_QCOEF array element
   subtype JPEG_QMEM3_1_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_1_QCOEF array
   type JPEG_QMEM3_1_QCOEF_Field_Array is array (4 .. 7)
     of JPEG_QMEM3_1_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_1_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_2_QCOEF array element
   subtype JPEG_QMEM3_2_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_2_QCOEF array
   type JPEG_QMEM3_2_QCOEF_Field_Array is array (8 .. 11)
     of JPEG_QMEM3_2_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_2_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_3_QCOEF array element
   subtype JPEG_QMEM3_3_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_3_QCOEF array
   type JPEG_QMEM3_3_QCOEF_Field_Array is array (12 .. 15)
     of JPEG_QMEM3_3_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_3_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_4_QCOEF array element
   subtype JPEG_QMEM3_4_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_4_QCOEF array
   type JPEG_QMEM3_4_QCOEF_Field_Array is array (16 .. 19)
     of JPEG_QMEM3_4_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_4_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_5_QCOEF array element
   subtype JPEG_QMEM3_5_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_5_QCOEF array
   type JPEG_QMEM3_5_QCOEF_Field_Array is array (20 .. 23)
     of JPEG_QMEM3_5_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_5_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_6_QCOEF array element
   subtype JPEG_QMEM3_6_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_6_QCOEF array
   type JPEG_QMEM3_6_QCOEF_Field_Array is array (24 .. 27)
     of JPEG_QMEM3_6_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_6_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_7_QCOEF array element
   subtype JPEG_QMEM3_7_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_7_QCOEF array
   type JPEG_QMEM3_7_QCOEF_Field_Array is array (28 .. 31)
     of JPEG_QMEM3_7_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_7_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_8_QCOEF array element
   subtype JPEG_QMEM3_8_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_8_QCOEF array
   type JPEG_QMEM3_8_QCOEF_Field_Array is array (32 .. 35)
     of JPEG_QMEM3_8_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_8_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_9_QCOEF array element
   subtype JPEG_QMEM3_9_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_9_QCOEF array
   type JPEG_QMEM3_9_QCOEF_Field_Array is array (36 .. 39)
     of JPEG_QMEM3_9_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_9_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_10_QCOEF array element
   subtype JPEG_QMEM3_10_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_10_QCOEF array
   type JPEG_QMEM3_10_QCOEF_Field_Array is array (40 .. 43)
     of JPEG_QMEM3_10_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_10_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_11_QCOEF array element
   subtype JPEG_QMEM3_11_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_11_QCOEF array
   type JPEG_QMEM3_11_QCOEF_Field_Array is array (44 .. 47)
     of JPEG_QMEM3_11_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_11_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_12_QCOEF array element
   subtype JPEG_QMEM3_12_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_12_QCOEF array
   type JPEG_QMEM3_12_QCOEF_Field_Array is array (48 .. 51)
     of JPEG_QMEM3_12_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_12_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_13_QCOEF array element
   subtype JPEG_QMEM3_13_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_13_QCOEF array
   type JPEG_QMEM3_13_QCOEF_Field_Array is array (52 .. 55)
     of JPEG_QMEM3_13_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_13_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_14_QCOEF array element
   subtype JPEG_QMEM3_14_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_14_QCOEF array
   type JPEG_QMEM3_14_QCOEF_Field_Array is array (56 .. 59)
     of JPEG_QMEM3_14_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_14_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_QMEM3_15_QCOEF array element
   subtype JPEG_QMEM3_15_QCOEF_Element is HAL.UInt8;

   --  JPEG_QMEM3_15_QCOEF array
   type JPEG_QMEM3_15_QCOEF_Field_Array is array (60 .. 63)
     of JPEG_QMEM3_15_QCOEF_Element
     with Component_Size => 8, Size => 32;

   --  JPEG quantization memory 3
   type JPEG_QMEM3_15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  QCOEF as a value
            Val : HAL.UInt32;
         when True =>
            --  QCOEF as an array
            Arr : JPEG_QMEM3_15_QCOEF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_QMEM3_15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype JPEG_HUFFMIN0_3_DATA0_Field is HAL.UInt4;

   --  JPEG Huffman min 0
   type JPEG_HUFFMIN0_3_Register is record
      --  Minimum Huffman value
      DATA0         : JPEG_HUFFMIN0_3_DATA0_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFMIN0_3_Register use record
      DATA0         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype JPEG_HUFFMIN1_3_DATA1_Field is HAL.UInt4;

   --  JPEG Huffman min 1
   type JPEG_HUFFMIN1_3_Register is record
      --  Minimum Huffman value
      DATA1         : JPEG_HUFFMIN1_3_DATA1_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFMIN1_3_Register use record
      DATA1         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype JPEG_HUFFMIN2_3_DATA2_Field is HAL.UInt4;

   --  JPEG Huffman min 2
   type JPEG_HUFFMIN2_3_Register is record
      --  Minimum Huffman value
      DATA2         : JPEG_HUFFMIN2_3_DATA2_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFMIN2_3_Register use record
      DATA2         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype JPEG_HUFFMIN3_3_DATA3_Field is HAL.UInt4;

   --  JPEG Huffman min 3
   type JPEG_HUFFMIN3_3_Register is record
      --  Minimum Huffman value
      DATA3         : JPEG_HUFFMIN3_3_DATA3_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFMIN3_3_Register use record
      DATA3         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype JPEG_HUFFBASE0_DATA0_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE0_DATA1_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE0_Register is record
      --  Data 0
      DATA0          : JPEG_HUFFBASE0_DATA0_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 1
      DATA1          : JPEG_HUFFBASE0_DATA1_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE0_Register use record
      DATA0          at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA1          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE1_DATA2_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE1_DATA3_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE1_Register is record
      --  Data 2
      DATA2          : JPEG_HUFFBASE1_DATA2_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 3
      DATA3          : JPEG_HUFFBASE1_DATA3_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE1_Register use record
      DATA2          at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA3          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE2_DATA4_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE2_DATA5_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE2_Register is record
      --  Data 4
      DATA4          : JPEG_HUFFBASE2_DATA4_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 5
      DATA5          : JPEG_HUFFBASE2_DATA5_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE2_Register use record
      DATA4          at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA5          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE3_DATA6_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE3_DATA7_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE3_Register is record
      --  Data 6
      DATA6          : JPEG_HUFFBASE3_DATA6_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 7
      DATA7          : JPEG_HUFFBASE3_DATA7_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE3_Register use record
      DATA6          at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA7          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE4_DATA8_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE4_DATA9_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE4_Register is record
      --  Data 8
      DATA8          : JPEG_HUFFBASE4_DATA8_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 9
      DATA9          : JPEG_HUFFBASE4_DATA9_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE4_Register use record
      DATA8          at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA9          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE5_DATA10_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE5_DATA11_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE5_Register is record
      --  Data 10
      DATA10         : JPEG_HUFFBASE5_DATA10_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 11
      DATA11         : JPEG_HUFFBASE5_DATA11_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE5_Register use record
      DATA10         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA11         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE6_DATA12_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE6_DATA13_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE6_Register is record
      --  Data 12
      DATA12         : JPEG_HUFFBASE6_DATA12_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 13
      DATA13         : JPEG_HUFFBASE6_DATA13_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE6_Register use record
      DATA12         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA13         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE7_DATA14_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE7_DATA15_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE7_Register is record
      --  Data 14
      DATA14         : JPEG_HUFFBASE7_DATA14_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 15
      DATA15         : JPEG_HUFFBASE7_DATA15_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE7_Register use record
      DATA14         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA15         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE8_DATA16_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE8_DATA17_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE8_Register is record
      --  Data 16
      DATA16         : JPEG_HUFFBASE8_DATA16_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 17
      DATA17         : JPEG_HUFFBASE8_DATA17_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE8_Register use record
      DATA16         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA17         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE9_DATA18_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE9_DATA19_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE9_Register is record
      --  Data 18
      DATA18         : JPEG_HUFFBASE9_DATA18_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 19
      DATA19         : JPEG_HUFFBASE9_DATA19_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE9_Register use record
      DATA18         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA19         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE10_DATA20_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE10_DATA21_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE10_Register is record
      --  Data 20
      DATA20         : JPEG_HUFFBASE10_DATA20_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 21
      DATA21         : JPEG_HUFFBASE10_DATA21_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE10_Register use record
      DATA20         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA21         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE11_DATA22_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE11_DATA23_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE11_Register is record
      --  Data 22
      DATA22         : JPEG_HUFFBASE11_DATA22_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 23
      DATA23         : JPEG_HUFFBASE11_DATA23_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE11_Register use record
      DATA22         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA23         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE12_DATA24_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE12_DATA25_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE12_Register is record
      --  Data 24
      DATA24         : JPEG_HUFFBASE12_DATA24_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 25
      DATA25         : JPEG_HUFFBASE12_DATA25_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE12_Register use record
      DATA24         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA25         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE13_DATA26_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE13_DATA27_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE13_Register is record
      --  Data 26
      DATA26         : JPEG_HUFFBASE13_DATA26_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 27
      DATA27         : JPEG_HUFFBASE13_DATA27_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE13_Register use record
      DATA26         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA27         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE14_DATA28_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE14_DATA29_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE14_Register is record
      --  Data 28
      DATA28         : JPEG_HUFFBASE14_DATA28_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 29
      DATA29         : JPEG_HUFFBASE14_DATA29_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE14_Register use record
      DATA28         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA29         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE15_DATA30_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE15_DATA31_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE15_Register is record
      --  Data 30
      DATA30         : JPEG_HUFFBASE15_DATA30_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 31
      DATA31         : JPEG_HUFFBASE15_DATA31_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE15_Register use record
      DATA30         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA31         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE16_DATA32_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE16_DATA33_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE16_Register is record
      --  Data 32
      DATA32         : JPEG_HUFFBASE16_DATA32_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 33
      DATA33         : JPEG_HUFFBASE16_DATA33_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE16_Register use record
      DATA32         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA33         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE17_DATA34_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE17_DATA35_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE17_Register is record
      --  Data 34
      DATA34         : JPEG_HUFFBASE17_DATA34_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 35
      DATA35         : JPEG_HUFFBASE17_DATA35_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE17_Register use record
      DATA34         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA35         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE18_DATA36_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE18_DATA37_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE18_Register is record
      --  Data 36
      DATA36         : JPEG_HUFFBASE18_DATA36_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 37
      DATA37         : JPEG_HUFFBASE18_DATA37_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE18_Register use record
      DATA36         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA37         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE19_DATA38_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE19_DATA39_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE19_Register is record
      --  Data 38
      DATA38         : JPEG_HUFFBASE19_DATA38_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 39
      DATA39         : JPEG_HUFFBASE19_DATA39_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE19_Register use record
      DATA38         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA39         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE20_DATA40_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE20_DATA41_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE20_Register is record
      --  Data 40
      DATA40         : JPEG_HUFFBASE20_DATA40_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 41
      DATA41         : JPEG_HUFFBASE20_DATA41_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE20_Register use record
      DATA40         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA41         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE21_DATA42_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE21_DATA43_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE21_Register is record
      --  Data 42
      DATA42         : JPEG_HUFFBASE21_DATA42_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 43
      DATA43         : JPEG_HUFFBASE21_DATA43_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE21_Register use record
      DATA42         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA43         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE22_DATA44_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE22_DATA45_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE22_Register is record
      --  Data 44
      DATA44         : JPEG_HUFFBASE22_DATA44_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 45
      DATA45         : JPEG_HUFFBASE22_DATA45_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE22_Register use record
      DATA44         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA45         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE23_DATA46_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE23_DATA47_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE23_Register is record
      --  Data 46
      DATA46         : JPEG_HUFFBASE23_DATA46_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 47
      DATA47         : JPEG_HUFFBASE23_DATA47_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE23_Register use record
      DATA46         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA47         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE24_DATA48_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE24_DATA49_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE24_Register is record
      --  Data 48
      DATA48         : JPEG_HUFFBASE24_DATA48_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 49
      DATA49         : JPEG_HUFFBASE24_DATA49_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE24_Register use record
      DATA48         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA49         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE25_DATA50_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE25_DATA51_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE25_Register is record
      --  Data 50
      DATA50         : JPEG_HUFFBASE25_DATA50_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 51
      DATA51         : JPEG_HUFFBASE25_DATA51_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE25_Register use record
      DATA50         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA51         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE26_DATA52_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE26_DATA53_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE26_Register is record
      --  Data 52
      DATA52         : JPEG_HUFFBASE26_DATA52_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 53
      DATA53         : JPEG_HUFFBASE26_DATA53_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE26_Register use record
      DATA52         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA53         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE27_DATA54_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE27_DATA55_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE27_Register is record
      --  Data 54
      DATA54         : JPEG_HUFFBASE27_DATA54_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 55
      DATA55         : JPEG_HUFFBASE27_DATA55_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE27_Register use record
      DATA54         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA55         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE28_DATA56_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE28_DATA57_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE28_Register is record
      --  Data 56
      DATA56         : JPEG_HUFFBASE28_DATA56_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 57
      DATA57         : JPEG_HUFFBASE28_DATA57_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE28_Register use record
      DATA56         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA57         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE29_DATA58_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE29_DATA59_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE29_Register is record
      --  Data 58
      DATA58         : JPEG_HUFFBASE29_DATA58_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 59
      DATA59         : JPEG_HUFFBASE29_DATA59_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE29_Register use record
      DATA58         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA59         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE30_DATA60_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE30_DATA61_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE30_Register is record
      --  Data 60
      DATA60         : JPEG_HUFFBASE30_DATA60_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 61
      DATA61         : JPEG_HUFFBASE30_DATA61_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE30_Register use record
      DATA60         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA61         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype JPEG_HUFFBASE31_DATA62_Field is HAL.UInt9;
   subtype JPEG_HUFFBASE31_DATA63_Field is HAL.UInt9;

   --  JPEG Huffman base
   type JPEG_HUFFBASE31_Register is record
      --  Data 62
      DATA62         : JPEG_HUFFBASE31_DATA62_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Data 63
      DATA63         : JPEG_HUFFBASE31_DATA63_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFBASE31_Register use record
      DATA62         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DATA63         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  JPEG_HUFFSYMB0_DATA array element
   subtype JPEG_HUFFSYMB0_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB0_DATA array
   type JPEG_HUFFSYMB0_DATA_Field_Array is array (0 .. 3)
     of JPEG_HUFFSYMB0_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB0_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB1_DATA array element
   subtype JPEG_HUFFSYMB1_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB1_DATA array
   type JPEG_HUFFSYMB1_DATA_Field_Array is array (4 .. 7)
     of JPEG_HUFFSYMB1_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB1_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB2_DATA array element
   subtype JPEG_HUFFSYMB2_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB2_DATA array
   type JPEG_HUFFSYMB2_DATA_Field_Array is array (8 .. 11)
     of JPEG_HUFFSYMB2_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB2_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB3_DATA array element
   subtype JPEG_HUFFSYMB3_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB3_DATA array
   type JPEG_HUFFSYMB3_DATA_Field_Array is array (12 .. 15)
     of JPEG_HUFFSYMB3_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB3_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB4_DATA array element
   subtype JPEG_HUFFSYMB4_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB4_DATA array
   type JPEG_HUFFSYMB4_DATA_Field_Array is array (16 .. 19)
     of JPEG_HUFFSYMB4_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB4_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB5_DATA array element
   subtype JPEG_HUFFSYMB5_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB5_DATA array
   type JPEG_HUFFSYMB5_DATA_Field_Array is array (20 .. 23)
     of JPEG_HUFFSYMB5_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB5_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB6_DATA array element
   subtype JPEG_HUFFSYMB6_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB6_DATA array
   type JPEG_HUFFSYMB6_DATA_Field_Array is array (24 .. 27)
     of JPEG_HUFFSYMB6_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB6_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB7_DATA array element
   subtype JPEG_HUFFSYMB7_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB7_DATA array
   type JPEG_HUFFSYMB7_DATA_Field_Array is array (28 .. 31)
     of JPEG_HUFFSYMB7_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB7_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB8_DATA array element
   subtype JPEG_HUFFSYMB8_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB8_DATA array
   type JPEG_HUFFSYMB8_DATA_Field_Array is array (32 .. 35)
     of JPEG_HUFFSYMB8_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB8_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB9_DATA array element
   subtype JPEG_HUFFSYMB9_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB9_DATA array
   type JPEG_HUFFSYMB9_DATA_Field_Array is array (36 .. 39)
     of JPEG_HUFFSYMB9_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB9_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB10_DATA array element
   subtype JPEG_HUFFSYMB10_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB10_DATA array
   type JPEG_HUFFSYMB10_DATA_Field_Array is array (40 .. 43)
     of JPEG_HUFFSYMB10_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB10_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB11_DATA array element
   subtype JPEG_HUFFSYMB11_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB11_DATA array
   type JPEG_HUFFSYMB11_DATA_Field_Array is array (44 .. 47)
     of JPEG_HUFFSYMB11_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB11_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB12_DATA array element
   subtype JPEG_HUFFSYMB12_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB12_DATA array
   type JPEG_HUFFSYMB12_DATA_Field_Array is array (48 .. 51)
     of JPEG_HUFFSYMB12_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB12_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB13_DATA array element
   subtype JPEG_HUFFSYMB13_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB13_DATA array
   type JPEG_HUFFSYMB13_DATA_Field_Array is array (52 .. 55)
     of JPEG_HUFFSYMB13_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB13_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB14_DATA array element
   subtype JPEG_HUFFSYMB14_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB14_DATA array
   type JPEG_HUFFSYMB14_DATA_Field_Array is array (56 .. 59)
     of JPEG_HUFFSYMB14_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB14_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB15_DATA array element
   subtype JPEG_HUFFSYMB15_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB15_DATA array
   type JPEG_HUFFSYMB15_DATA_Field_Array is array (60 .. 63)
     of JPEG_HUFFSYMB15_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB15_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB16_DATA array element
   subtype JPEG_HUFFSYMB16_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB16_DATA array
   type JPEG_HUFFSYMB16_DATA_Field_Array is array (64 .. 67)
     of JPEG_HUFFSYMB16_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB16_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB16_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB16_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB17_DATA array element
   subtype JPEG_HUFFSYMB17_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB17_DATA array
   type JPEG_HUFFSYMB17_DATA_Field_Array is array (68 .. 71)
     of JPEG_HUFFSYMB17_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB17_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB17_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB17_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB18_DATA array element
   subtype JPEG_HUFFSYMB18_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB18_DATA array
   type JPEG_HUFFSYMB18_DATA_Field_Array is array (72 .. 75)
     of JPEG_HUFFSYMB18_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB18_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB18_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB18_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB19_DATA array element
   subtype JPEG_HUFFSYMB19_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB19_DATA array
   type JPEG_HUFFSYMB19_DATA_Field_Array is array (76 .. 79)
     of JPEG_HUFFSYMB19_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB19_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB19_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB19_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB20_DATA array element
   subtype JPEG_HUFFSYMB20_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB20_DATA array
   type JPEG_HUFFSYMB20_DATA_Field_Array is array (80 .. 83)
     of JPEG_HUFFSYMB20_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB20_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB20_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB20_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB21_DATA array element
   subtype JPEG_HUFFSYMB21_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB21_DATA array
   type JPEG_HUFFSYMB21_DATA_Field_Array is array (84 .. 87)
     of JPEG_HUFFSYMB21_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB21_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB21_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB21_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB22_DATA array element
   subtype JPEG_HUFFSYMB22_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB22_DATA array
   type JPEG_HUFFSYMB22_DATA_Field_Array is array (88 .. 91)
     of JPEG_HUFFSYMB22_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB22_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB22_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB22_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB23_DATA array element
   subtype JPEG_HUFFSYMB23_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB23_DATA array
   type JPEG_HUFFSYMB23_DATA_Field_Array is array (92 .. 95)
     of JPEG_HUFFSYMB23_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB23_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB23_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB23_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB24_DATA array element
   subtype JPEG_HUFFSYMB24_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB24_DATA array
   type JPEG_HUFFSYMB24_DATA_Field_Array is array (96 .. 99)
     of JPEG_HUFFSYMB24_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB24_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB24_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB24_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB25_DATA array element
   subtype JPEG_HUFFSYMB25_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB25_DATA array
   type JPEG_HUFFSYMB25_DATA_Field_Array is array (100 .. 103)
     of JPEG_HUFFSYMB25_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB25_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB25_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB25_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB26_DATA array element
   subtype JPEG_HUFFSYMB26_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB26_DATA array
   type JPEG_HUFFSYMB26_DATA_Field_Array is array (104 .. 107)
     of JPEG_HUFFSYMB26_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB26_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB26_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB26_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB27_DATA array element
   subtype JPEG_HUFFSYMB27_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB27_DATA array
   type JPEG_HUFFSYMB27_DATA_Field_Array is array (108 .. 111)
     of JPEG_HUFFSYMB27_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB27_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB27_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB27_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB28_DATA array element
   subtype JPEG_HUFFSYMB28_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB28_DATA array
   type JPEG_HUFFSYMB28_DATA_Field_Array is array (112 .. 115)
     of JPEG_HUFFSYMB28_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB28_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB28_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB28_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB29_DATA array element
   subtype JPEG_HUFFSYMB29_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB29_DATA array
   type JPEG_HUFFSYMB29_DATA_Field_Array is array (116 .. 119)
     of JPEG_HUFFSYMB29_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB29_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB29_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB29_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB30_DATA array element
   subtype JPEG_HUFFSYMB30_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB30_DATA array
   type JPEG_HUFFSYMB30_DATA_Field_Array is array (120 .. 123)
     of JPEG_HUFFSYMB30_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB30_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB30_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB30_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB31_DATA array element
   subtype JPEG_HUFFSYMB31_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB31_DATA array
   type JPEG_HUFFSYMB31_DATA_Field_Array is array (124 .. 127)
     of JPEG_HUFFSYMB31_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB31_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB31_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB31_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB32_DATA array element
   subtype JPEG_HUFFSYMB32_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB32_DATA array
   type JPEG_HUFFSYMB32_DATA_Field_Array is array (128 .. 131)
     of JPEG_HUFFSYMB32_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB32_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB32_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB32_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB33_DATA array element
   subtype JPEG_HUFFSYMB33_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB33_DATA array
   type JPEG_HUFFSYMB33_DATA_Field_Array is array (132 .. 135)
     of JPEG_HUFFSYMB33_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB33_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB33_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB33_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB34_DATA array element
   subtype JPEG_HUFFSYMB34_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB34_DATA array
   type JPEG_HUFFSYMB34_DATA_Field_Array is array (136 .. 139)
     of JPEG_HUFFSYMB34_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB34_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB35_DATA array element
   subtype JPEG_HUFFSYMB35_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB35_DATA array
   type JPEG_HUFFSYMB35_DATA_Field_Array is array (140 .. 143)
     of JPEG_HUFFSYMB35_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB35_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB35_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB35_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB36_DATA array element
   subtype JPEG_HUFFSYMB36_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB36_DATA array
   type JPEG_HUFFSYMB36_DATA_Field_Array is array (144 .. 147)
     of JPEG_HUFFSYMB36_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB36_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB36_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB36_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB37_DATA array element
   subtype JPEG_HUFFSYMB37_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB37_DATA array
   type JPEG_HUFFSYMB37_DATA_Field_Array is array (148 .. 151)
     of JPEG_HUFFSYMB37_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB37_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB37_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB37_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB38_DATA array element
   subtype JPEG_HUFFSYMB38_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB38_DATA array
   type JPEG_HUFFSYMB38_DATA_Field_Array is array (152 .. 155)
     of JPEG_HUFFSYMB38_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB38_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB38_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB38_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB39_DATA array element
   subtype JPEG_HUFFSYMB39_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB39_DATA array
   type JPEG_HUFFSYMB39_DATA_Field_Array is array (156 .. 159)
     of JPEG_HUFFSYMB39_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB39_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB39_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB39_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB40_DATA array element
   subtype JPEG_HUFFSYMB40_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB40_DATA array
   type JPEG_HUFFSYMB40_DATA_Field_Array is array (160 .. 163)
     of JPEG_HUFFSYMB40_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB40_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB40_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB40_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB41_DATA array element
   subtype JPEG_HUFFSYMB41_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB41_DATA array
   type JPEG_HUFFSYMB41_DATA_Field_Array is array (164 .. 167)
     of JPEG_HUFFSYMB41_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB41_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB41_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB41_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB42_DATA array element
   subtype JPEG_HUFFSYMB42_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB42_DATA array
   type JPEG_HUFFSYMB42_DATA_Field_Array is array (168 .. 171)
     of JPEG_HUFFSYMB42_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB42_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB42_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB42_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB43_DATA array element
   subtype JPEG_HUFFSYMB43_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB43_DATA array
   type JPEG_HUFFSYMB43_DATA_Field_Array is array (172 .. 175)
     of JPEG_HUFFSYMB43_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB43_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB43_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB43_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB44_DATA array element
   subtype JPEG_HUFFSYMB44_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB44_DATA array
   type JPEG_HUFFSYMB44_DATA_Field_Array is array (176 .. 179)
     of JPEG_HUFFSYMB44_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB44_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB44_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB44_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB45_DATA array element
   subtype JPEG_HUFFSYMB45_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB45_DATA array
   type JPEG_HUFFSYMB45_DATA_Field_Array is array (180 .. 183)
     of JPEG_HUFFSYMB45_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB45_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB45_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB45_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB46_DATA array element
   subtype JPEG_HUFFSYMB46_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB46_DATA array
   type JPEG_HUFFSYMB46_DATA_Field_Array is array (184 .. 187)
     of JPEG_HUFFSYMB46_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB46_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB46_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB46_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB47_DATA array element
   subtype JPEG_HUFFSYMB47_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB47_DATA array
   type JPEG_HUFFSYMB47_DATA_Field_Array is array (188 .. 191)
     of JPEG_HUFFSYMB47_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB47_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB47_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB47_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB48_DATA array element
   subtype JPEG_HUFFSYMB48_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB48_DATA array
   type JPEG_HUFFSYMB48_DATA_Field_Array is array (192 .. 195)
     of JPEG_HUFFSYMB48_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB48_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB48_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB48_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB49_DATA array element
   subtype JPEG_HUFFSYMB49_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB49_DATA array
   type JPEG_HUFFSYMB49_DATA_Field_Array is array (196 .. 199)
     of JPEG_HUFFSYMB49_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB49_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB49_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB49_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB50_DATA array element
   subtype JPEG_HUFFSYMB50_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB50_DATA array
   type JPEG_HUFFSYMB50_DATA_Field_Array is array (200 .. 203)
     of JPEG_HUFFSYMB50_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB50_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB50_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB50_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB51_DATA array element
   subtype JPEG_HUFFSYMB51_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB51_DATA array
   type JPEG_HUFFSYMB51_DATA_Field_Array is array (204 .. 207)
     of JPEG_HUFFSYMB51_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB51_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB51_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB51_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB52_DATA array element
   subtype JPEG_HUFFSYMB52_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB52_DATA array
   type JPEG_HUFFSYMB52_DATA_Field_Array is array (208 .. 211)
     of JPEG_HUFFSYMB52_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB52_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB52_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB52_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB53_DATA array element
   subtype JPEG_HUFFSYMB53_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB53_DATA array
   type JPEG_HUFFSYMB53_DATA_Field_Array is array (212 .. 215)
     of JPEG_HUFFSYMB53_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB53_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB53_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB53_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB54_DATA array element
   subtype JPEG_HUFFSYMB54_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB54_DATA array
   type JPEG_HUFFSYMB54_DATA_Field_Array is array (216 .. 219)
     of JPEG_HUFFSYMB54_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB54_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB54_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB54_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB55_DATA array element
   subtype JPEG_HUFFSYMB55_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB55_DATA array
   type JPEG_HUFFSYMB55_DATA_Field_Array is array (220 .. 223)
     of JPEG_HUFFSYMB55_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB55_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB55_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB55_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB56_DATA array element
   subtype JPEG_HUFFSYMB56_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB56_DATA array
   type JPEG_HUFFSYMB56_DATA_Field_Array is array (224 .. 227)
     of JPEG_HUFFSYMB56_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB56_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB57_DATA array element
   subtype JPEG_HUFFSYMB57_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB57_DATA array
   type JPEG_HUFFSYMB57_DATA_Field_Array is array (228 .. 231)
     of JPEG_HUFFSYMB57_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB57_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB57_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB57_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB58_DATA array element
   subtype JPEG_HUFFSYMB58_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB58_DATA array
   type JPEG_HUFFSYMB58_DATA_Field_Array is array (232 .. 235)
     of JPEG_HUFFSYMB58_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB58_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB58_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB58_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB59_DATA array element
   subtype JPEG_HUFFSYMB59_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB59_DATA array
   type JPEG_HUFFSYMB59_DATA_Field_Array is array (236 .. 239)
     of JPEG_HUFFSYMB59_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB59_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB59_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB59_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB60_DATA array element
   subtype JPEG_HUFFSYMB60_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB60_DATA array
   type JPEG_HUFFSYMB60_DATA_Field_Array is array (240 .. 243)
     of JPEG_HUFFSYMB60_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB60_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB60_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB60_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB61_DATA array element
   subtype JPEG_HUFFSYMB61_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB61_DATA array
   type JPEG_HUFFSYMB61_DATA_Field_Array is array (244 .. 247)
     of JPEG_HUFFSYMB61_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB61_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB61_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB61_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB62_DATA array element
   subtype JPEG_HUFFSYMB62_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB62_DATA array
   type JPEG_HUFFSYMB62_DATA_Field_Array is array (248 .. 251)
     of JPEG_HUFFSYMB62_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB62_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB62_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB62_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB63_DATA array element
   subtype JPEG_HUFFSYMB63_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB63_DATA array
   type JPEG_HUFFSYMB63_DATA_Field_Array is array (252 .. 255)
     of JPEG_HUFFSYMB63_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB63_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB63_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB63_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB64_DATA array element
   subtype JPEG_HUFFSYMB64_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB64_DATA array
   type JPEG_HUFFSYMB64_DATA_Field_Array is array (256 .. 259)
     of JPEG_HUFFSYMB64_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB64_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB64_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB64_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB65_DATA array element
   subtype JPEG_HUFFSYMB65_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB65_DATA array
   type JPEG_HUFFSYMB65_DATA_Field_Array is array (260 .. 263)
     of JPEG_HUFFSYMB65_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB65_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB65_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB65_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB66_DATA array element
   subtype JPEG_HUFFSYMB66_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB66_DATA array
   type JPEG_HUFFSYMB66_DATA_Field_Array is array (264 .. 267)
     of JPEG_HUFFSYMB66_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB66_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB66_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB66_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB67_DATA array element
   subtype JPEG_HUFFSYMB67_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB67_DATA array
   type JPEG_HUFFSYMB67_DATA_Field_Array is array (268 .. 271)
     of JPEG_HUFFSYMB67_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB67_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB67_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB67_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB68_DATA array element
   subtype JPEG_HUFFSYMB68_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB68_DATA array
   type JPEG_HUFFSYMB68_DATA_Field_Array is array (272 .. 275)
     of JPEG_HUFFSYMB68_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB68_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB68_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB68_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB69_DATA array element
   subtype JPEG_HUFFSYMB69_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB69_DATA array
   type JPEG_HUFFSYMB69_DATA_Field_Array is array (276 .. 279)
     of JPEG_HUFFSYMB69_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB69_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB69_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB69_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB70_DATA array element
   subtype JPEG_HUFFSYMB70_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB70_DATA array
   type JPEG_HUFFSYMB70_DATA_Field_Array is array (280 .. 283)
     of JPEG_HUFFSYMB70_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB70_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB70_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB70_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB71_DATA array element
   subtype JPEG_HUFFSYMB71_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB71_DATA array
   type JPEG_HUFFSYMB71_DATA_Field_Array is array (284 .. 287)
     of JPEG_HUFFSYMB71_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB71_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB71_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB71_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB72_DATA array element
   subtype JPEG_HUFFSYMB72_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB72_DATA array
   type JPEG_HUFFSYMB72_DATA_Field_Array is array (288 .. 291)
     of JPEG_HUFFSYMB72_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB72_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB72_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB72_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB73_DATA array element
   subtype JPEG_HUFFSYMB73_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB73_DATA array
   type JPEG_HUFFSYMB73_DATA_Field_Array is array (292 .. 295)
     of JPEG_HUFFSYMB73_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB73_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB73_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB73_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB74_DATA array element
   subtype JPEG_HUFFSYMB74_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB74_DATA array
   type JPEG_HUFFSYMB74_DATA_Field_Array is array (296 .. 299)
     of JPEG_HUFFSYMB74_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB74_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB74_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB74_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB75_DATA array element
   subtype JPEG_HUFFSYMB75_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB75_DATA array
   type JPEG_HUFFSYMB75_DATA_Field_Array is array (300 .. 303)
     of JPEG_HUFFSYMB75_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB75_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB75_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB75_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB76_DATA array element
   subtype JPEG_HUFFSYMB76_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB76_DATA array
   type JPEG_HUFFSYMB76_DATA_Field_Array is array (304 .. 307)
     of JPEG_HUFFSYMB76_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB76_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB76_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB76_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB77_DATA array element
   subtype JPEG_HUFFSYMB77_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB77_DATA array
   type JPEG_HUFFSYMB77_DATA_Field_Array is array (308 .. 311)
     of JPEG_HUFFSYMB77_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB77_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB77_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB77_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB78_DATA array element
   subtype JPEG_HUFFSYMB78_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB78_DATA array
   type JPEG_HUFFSYMB78_DATA_Field_Array is array (312 .. 315)
     of JPEG_HUFFSYMB78_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB78_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB79_DATA array element
   subtype JPEG_HUFFSYMB79_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB79_DATA array
   type JPEG_HUFFSYMB79_DATA_Field_Array is array (316 .. 319)
     of JPEG_HUFFSYMB79_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB79_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB79_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB79_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB80_DATA array element
   subtype JPEG_HUFFSYMB80_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB80_DATA array
   type JPEG_HUFFSYMB80_DATA_Field_Array is array (320 .. 323)
     of JPEG_HUFFSYMB80_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB80_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB80_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB80_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB81_DATA array element
   subtype JPEG_HUFFSYMB81_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB81_DATA array
   type JPEG_HUFFSYMB81_DATA_Field_Array is array (324 .. 327)
     of JPEG_HUFFSYMB81_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB81_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB81_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB81_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB82_DATA array element
   subtype JPEG_HUFFSYMB82_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB82_DATA array
   type JPEG_HUFFSYMB82_DATA_Field_Array is array (328 .. 331)
     of JPEG_HUFFSYMB82_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB82_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB82_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB82_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_HUFFSYMB83_DATA array element
   subtype JPEG_HUFFSYMB83_DATA_Element is HAL.UInt8;

   --  JPEG_HUFFSYMB83_DATA array
   type JPEG_HUFFSYMB83_DATA_Field_Array is array (332 .. 335)
     of JPEG_HUFFSYMB83_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG Huffman symbol
   type JPEG_HUFFSYMB83_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_HUFFSYMB83_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFSYMB83_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM0_DATA array element
   subtype JPEG_DHTMEM0_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM0_DATA array
   type JPEG_DHTMEM0_DATA_Field_Array is array (0 .. 3)
     of JPEG_DHTMEM0_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM0_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM1_DATA array element
   subtype JPEG_DHTMEM1_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM1_DATA array
   type JPEG_DHTMEM1_DATA_Field_Array is array (4 .. 7)
     of JPEG_DHTMEM1_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM1_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM2_DATA array element
   subtype JPEG_DHTMEM2_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM2_DATA array
   type JPEG_DHTMEM2_DATA_Field_Array is array (8 .. 11)
     of JPEG_DHTMEM2_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM2_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM3_DATA array element
   subtype JPEG_DHTMEM3_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM3_DATA array
   type JPEG_DHTMEM3_DATA_Field_Array is array (12 .. 15)
     of JPEG_DHTMEM3_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM3_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM4_DATA array element
   subtype JPEG_DHTMEM4_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM4_DATA array
   type JPEG_DHTMEM4_DATA_Field_Array is array (16 .. 19)
     of JPEG_DHTMEM4_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM4_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM5_DATA array element
   subtype JPEG_DHTMEM5_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM5_DATA array
   type JPEG_DHTMEM5_DATA_Field_Array is array (20 .. 23)
     of JPEG_DHTMEM5_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM5_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM6_DATA array element
   subtype JPEG_DHTMEM6_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM6_DATA array
   type JPEG_DHTMEM6_DATA_Field_Array is array (24 .. 27)
     of JPEG_DHTMEM6_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM6_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM7_DATA array element
   subtype JPEG_DHTMEM7_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM7_DATA array
   type JPEG_DHTMEM7_DATA_Field_Array is array (28 .. 31)
     of JPEG_DHTMEM7_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM7_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM8_DATA array element
   subtype JPEG_DHTMEM8_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM8_DATA array
   type JPEG_DHTMEM8_DATA_Field_Array is array (32 .. 35)
     of JPEG_DHTMEM8_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM8_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM9_DATA array element
   subtype JPEG_DHTMEM9_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM9_DATA array
   type JPEG_DHTMEM9_DATA_Field_Array is array (36 .. 39)
     of JPEG_DHTMEM9_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM9_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM10_DATA array element
   subtype JPEG_DHTMEM10_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM10_DATA array
   type JPEG_DHTMEM10_DATA_Field_Array is array (40 .. 43)
     of JPEG_DHTMEM10_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM10_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM11_DATA array element
   subtype JPEG_DHTMEM11_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM11_DATA array
   type JPEG_DHTMEM11_DATA_Field_Array is array (44 .. 47)
     of JPEG_DHTMEM11_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM11_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM12_DATA array element
   subtype JPEG_DHTMEM12_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM12_DATA array
   type JPEG_DHTMEM12_DATA_Field_Array is array (48 .. 51)
     of JPEG_DHTMEM12_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM12_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM13_DATA array element
   subtype JPEG_DHTMEM13_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM13_DATA array
   type JPEG_DHTMEM13_DATA_Field_Array is array (52 .. 55)
     of JPEG_DHTMEM13_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM13_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM14_DATA array element
   subtype JPEG_DHTMEM14_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM14_DATA array
   type JPEG_DHTMEM14_DATA_Field_Array is array (56 .. 59)
     of JPEG_DHTMEM14_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM14_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM15_DATA array element
   subtype JPEG_DHTMEM15_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM15_DATA array
   type JPEG_DHTMEM15_DATA_Field_Array is array (60 .. 63)
     of JPEG_DHTMEM15_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM15_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM16_DATA array element
   subtype JPEG_DHTMEM16_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM16_DATA array
   type JPEG_DHTMEM16_DATA_Field_Array is array (64 .. 67)
     of JPEG_DHTMEM16_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM16_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM16_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM16_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM17_DATA array element
   subtype JPEG_DHTMEM17_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM17_DATA array
   type JPEG_DHTMEM17_DATA_Field_Array is array (68 .. 71)
     of JPEG_DHTMEM17_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM17_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM17_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM17_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM18_DATA array element
   subtype JPEG_DHTMEM18_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM18_DATA array
   type JPEG_DHTMEM18_DATA_Field_Array is array (72 .. 75)
     of JPEG_DHTMEM18_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM18_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM18_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM18_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM19_DATA array element
   subtype JPEG_DHTMEM19_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM19_DATA array
   type JPEG_DHTMEM19_DATA_Field_Array is array (76 .. 79)
     of JPEG_DHTMEM19_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM19_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM19_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM19_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM20_DATA array element
   subtype JPEG_DHTMEM20_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM20_DATA array
   type JPEG_DHTMEM20_DATA_Field_Array is array (80 .. 83)
     of JPEG_DHTMEM20_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM20_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM20_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM20_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM21_DATA array element
   subtype JPEG_DHTMEM21_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM21_DATA array
   type JPEG_DHTMEM21_DATA_Field_Array is array (84 .. 87)
     of JPEG_DHTMEM21_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM21_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM21_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM21_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM22_DATA array element
   subtype JPEG_DHTMEM22_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM22_DATA array
   type JPEG_DHTMEM22_DATA_Field_Array is array (88 .. 91)
     of JPEG_DHTMEM22_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM22_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM22_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM22_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM23_DATA array element
   subtype JPEG_DHTMEM23_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM23_DATA array
   type JPEG_DHTMEM23_DATA_Field_Array is array (92 .. 95)
     of JPEG_DHTMEM23_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM23_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM23_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM23_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM24_DATA array element
   subtype JPEG_DHTMEM24_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM24_DATA array
   type JPEG_DHTMEM24_DATA_Field_Array is array (96 .. 99)
     of JPEG_DHTMEM24_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM24_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM24_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM24_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM25_DATA array element
   subtype JPEG_DHTMEM25_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM25_DATA array
   type JPEG_DHTMEM25_DATA_Field_Array is array (100 .. 103)
     of JPEG_DHTMEM25_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM25_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM25_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM25_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM26_DATA array element
   subtype JPEG_DHTMEM26_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM26_DATA array
   type JPEG_DHTMEM26_DATA_Field_Array is array (104 .. 107)
     of JPEG_DHTMEM26_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM26_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM26_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM26_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM27_DATA array element
   subtype JPEG_DHTMEM27_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM27_DATA array
   type JPEG_DHTMEM27_DATA_Field_Array is array (108 .. 111)
     of JPEG_DHTMEM27_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM27_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM27_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM27_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM28_DATA array element
   subtype JPEG_DHTMEM28_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM28_DATA array
   type JPEG_DHTMEM28_DATA_Field_Array is array (112 .. 115)
     of JPEG_DHTMEM28_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM28_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM28_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM28_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM29_DATA array element
   subtype JPEG_DHTMEM29_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM29_DATA array
   type JPEG_DHTMEM29_DATA_Field_Array is array (116 .. 119)
     of JPEG_DHTMEM29_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM29_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM29_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM29_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM30_DATA array element
   subtype JPEG_DHTMEM30_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM30_DATA array
   type JPEG_DHTMEM30_DATA_Field_Array is array (120 .. 123)
     of JPEG_DHTMEM30_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM30_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM30_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM30_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM31_DATA array element
   subtype JPEG_DHTMEM31_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM31_DATA array
   type JPEG_DHTMEM31_DATA_Field_Array is array (124 .. 127)
     of JPEG_DHTMEM31_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM31_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM31_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM31_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM32_DATA array element
   subtype JPEG_DHTMEM32_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM32_DATA array
   type JPEG_DHTMEM32_DATA_Field_Array is array (128 .. 131)
     of JPEG_DHTMEM32_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM32_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM32_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM32_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM33_DATA array element
   subtype JPEG_DHTMEM33_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM33_DATA array
   type JPEG_DHTMEM33_DATA_Field_Array is array (132 .. 135)
     of JPEG_DHTMEM33_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM33_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM33_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM33_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM34_DATA array element
   subtype JPEG_DHTMEM34_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM34_DATA array
   type JPEG_DHTMEM34_DATA_Field_Array is array (136 .. 139)
     of JPEG_DHTMEM34_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM34_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM35_DATA array element
   subtype JPEG_DHTMEM35_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM35_DATA array
   type JPEG_DHTMEM35_DATA_Field_Array is array (140 .. 143)
     of JPEG_DHTMEM35_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM35_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM35_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM35_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM36_DATA array element
   subtype JPEG_DHTMEM36_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM36_DATA array
   type JPEG_DHTMEM36_DATA_Field_Array is array (144 .. 147)
     of JPEG_DHTMEM36_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM36_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM36_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM36_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM37_DATA array element
   subtype JPEG_DHTMEM37_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM37_DATA array
   type JPEG_DHTMEM37_DATA_Field_Array is array (148 .. 151)
     of JPEG_DHTMEM37_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM37_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM37_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM37_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM38_DATA array element
   subtype JPEG_DHTMEM38_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM38_DATA array
   type JPEG_DHTMEM38_DATA_Field_Array is array (152 .. 155)
     of JPEG_DHTMEM38_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM38_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM38_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM38_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM39_DATA array element
   subtype JPEG_DHTMEM39_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM39_DATA array
   type JPEG_DHTMEM39_DATA_Field_Array is array (156 .. 159)
     of JPEG_DHTMEM39_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM39_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM39_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM39_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM40_DATA array element
   subtype JPEG_DHTMEM40_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM40_DATA array
   type JPEG_DHTMEM40_DATA_Field_Array is array (160 .. 163)
     of JPEG_DHTMEM40_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM40_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM40_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM40_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM41_DATA array element
   subtype JPEG_DHTMEM41_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM41_DATA array
   type JPEG_DHTMEM41_DATA_Field_Array is array (164 .. 167)
     of JPEG_DHTMEM41_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM41_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM41_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM41_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM42_DATA array element
   subtype JPEG_DHTMEM42_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM42_DATA array
   type JPEG_DHTMEM42_DATA_Field_Array is array (168 .. 171)
     of JPEG_DHTMEM42_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM42_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM42_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM42_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM43_DATA array element
   subtype JPEG_DHTMEM43_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM43_DATA array
   type JPEG_DHTMEM43_DATA_Field_Array is array (172 .. 175)
     of JPEG_DHTMEM43_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM43_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM43_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM43_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM44_DATA array element
   subtype JPEG_DHTMEM44_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM44_DATA array
   type JPEG_DHTMEM44_DATA_Field_Array is array (176 .. 179)
     of JPEG_DHTMEM44_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM44_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM44_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM44_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM45_DATA array element
   subtype JPEG_DHTMEM45_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM45_DATA array
   type JPEG_DHTMEM45_DATA_Field_Array is array (180 .. 183)
     of JPEG_DHTMEM45_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM45_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM45_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM45_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM46_DATA array element
   subtype JPEG_DHTMEM46_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM46_DATA array
   type JPEG_DHTMEM46_DATA_Field_Array is array (184 .. 187)
     of JPEG_DHTMEM46_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM46_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM46_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM46_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM47_DATA array element
   subtype JPEG_DHTMEM47_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM47_DATA array
   type JPEG_DHTMEM47_DATA_Field_Array is array (188 .. 191)
     of JPEG_DHTMEM47_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM47_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM47_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM47_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM48_DATA array element
   subtype JPEG_DHTMEM48_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM48_DATA array
   type JPEG_DHTMEM48_DATA_Field_Array is array (192 .. 195)
     of JPEG_DHTMEM48_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM48_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM48_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM48_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM49_DATA array element
   subtype JPEG_DHTMEM49_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM49_DATA array
   type JPEG_DHTMEM49_DATA_Field_Array is array (196 .. 199)
     of JPEG_DHTMEM49_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM49_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM49_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM49_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM50_DATA array element
   subtype JPEG_DHTMEM50_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM50_DATA array
   type JPEG_DHTMEM50_DATA_Field_Array is array (200 .. 203)
     of JPEG_DHTMEM50_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM50_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM50_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM50_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM51_DATA array element
   subtype JPEG_DHTMEM51_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM51_DATA array
   type JPEG_DHTMEM51_DATA_Field_Array is array (204 .. 207)
     of JPEG_DHTMEM51_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM51_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM51_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM51_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM52_DATA array element
   subtype JPEG_DHTMEM52_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM52_DATA array
   type JPEG_DHTMEM52_DATA_Field_Array is array (208 .. 211)
     of JPEG_DHTMEM52_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM52_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM52_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM52_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM53_DATA array element
   subtype JPEG_DHTMEM53_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM53_DATA array
   type JPEG_DHTMEM53_DATA_Field_Array is array (212 .. 215)
     of JPEG_DHTMEM53_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM53_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM53_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM53_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM54_DATA array element
   subtype JPEG_DHTMEM54_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM54_DATA array
   type JPEG_DHTMEM54_DATA_Field_Array is array (216 .. 219)
     of JPEG_DHTMEM54_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM54_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM54_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM54_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM55_DATA array element
   subtype JPEG_DHTMEM55_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM55_DATA array
   type JPEG_DHTMEM55_DATA_Field_Array is array (220 .. 223)
     of JPEG_DHTMEM55_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM55_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM55_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM55_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM56_DATA array element
   subtype JPEG_DHTMEM56_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM56_DATA array
   type JPEG_DHTMEM56_DATA_Field_Array is array (224 .. 227)
     of JPEG_DHTMEM56_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM56_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM57_DATA array element
   subtype JPEG_DHTMEM57_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM57_DATA array
   type JPEG_DHTMEM57_DATA_Field_Array is array (228 .. 231)
     of JPEG_DHTMEM57_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM57_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM57_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM57_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM58_DATA array element
   subtype JPEG_DHTMEM58_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM58_DATA array
   type JPEG_DHTMEM58_DATA_Field_Array is array (232 .. 235)
     of JPEG_DHTMEM58_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM58_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM58_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM58_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM59_DATA array element
   subtype JPEG_DHTMEM59_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM59_DATA array
   type JPEG_DHTMEM59_DATA_Field_Array is array (236 .. 239)
     of JPEG_DHTMEM59_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM59_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM59_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM59_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM60_DATA array element
   subtype JPEG_DHTMEM60_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM60_DATA array
   type JPEG_DHTMEM60_DATA_Field_Array is array (240 .. 243)
     of JPEG_DHTMEM60_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM60_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM60_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM60_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM61_DATA array element
   subtype JPEG_DHTMEM61_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM61_DATA array
   type JPEG_DHTMEM61_DATA_Field_Array is array (244 .. 247)
     of JPEG_DHTMEM61_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM61_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM61_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM61_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM62_DATA array element
   subtype JPEG_DHTMEM62_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM62_DATA array
   type JPEG_DHTMEM62_DATA_Field_Array is array (248 .. 251)
     of JPEG_DHTMEM62_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM62_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM62_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM62_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM63_DATA array element
   subtype JPEG_DHTMEM63_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM63_DATA array
   type JPEG_DHTMEM63_DATA_Field_Array is array (252 .. 255)
     of JPEG_DHTMEM63_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM63_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM63_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM63_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM64_DATA array element
   subtype JPEG_DHTMEM64_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM64_DATA array
   type JPEG_DHTMEM64_DATA_Field_Array is array (256 .. 259)
     of JPEG_DHTMEM64_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM64_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM64_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM64_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM65_DATA array element
   subtype JPEG_DHTMEM65_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM65_DATA array
   type JPEG_DHTMEM65_DATA_Field_Array is array (260 .. 263)
     of JPEG_DHTMEM65_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM65_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM65_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM65_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM66_DATA array element
   subtype JPEG_DHTMEM66_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM66_DATA array
   type JPEG_DHTMEM66_DATA_Field_Array is array (264 .. 267)
     of JPEG_DHTMEM66_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM66_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM66_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM66_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM67_DATA array element
   subtype JPEG_DHTMEM67_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM67_DATA array
   type JPEG_DHTMEM67_DATA_Field_Array is array (268 .. 271)
     of JPEG_DHTMEM67_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM67_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM67_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM67_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM68_DATA array element
   subtype JPEG_DHTMEM68_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM68_DATA array
   type JPEG_DHTMEM68_DATA_Field_Array is array (272 .. 275)
     of JPEG_DHTMEM68_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM68_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM68_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM68_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM69_DATA array element
   subtype JPEG_DHTMEM69_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM69_DATA array
   type JPEG_DHTMEM69_DATA_Field_Array is array (276 .. 279)
     of JPEG_DHTMEM69_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM69_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM69_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM69_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM70_DATA array element
   subtype JPEG_DHTMEM70_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM70_DATA array
   type JPEG_DHTMEM70_DATA_Field_Array is array (280 .. 283)
     of JPEG_DHTMEM70_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM70_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM70_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM70_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM71_DATA array element
   subtype JPEG_DHTMEM71_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM71_DATA array
   type JPEG_DHTMEM71_DATA_Field_Array is array (284 .. 287)
     of JPEG_DHTMEM71_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM71_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM71_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM71_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM72_DATA array element
   subtype JPEG_DHTMEM72_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM72_DATA array
   type JPEG_DHTMEM72_DATA_Field_Array is array (288 .. 291)
     of JPEG_DHTMEM72_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM72_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM72_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM72_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM73_DATA array element
   subtype JPEG_DHTMEM73_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM73_DATA array
   type JPEG_DHTMEM73_DATA_Field_Array is array (292 .. 295)
     of JPEG_DHTMEM73_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM73_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM73_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM73_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM74_DATA array element
   subtype JPEG_DHTMEM74_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM74_DATA array
   type JPEG_DHTMEM74_DATA_Field_Array is array (296 .. 299)
     of JPEG_DHTMEM74_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM74_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM74_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM74_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM75_DATA array element
   subtype JPEG_DHTMEM75_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM75_DATA array
   type JPEG_DHTMEM75_DATA_Field_Array is array (300 .. 303)
     of JPEG_DHTMEM75_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM75_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM75_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM75_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM76_DATA array element
   subtype JPEG_DHTMEM76_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM76_DATA array
   type JPEG_DHTMEM76_DATA_Field_Array is array (304 .. 307)
     of JPEG_DHTMEM76_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM76_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM76_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM76_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM77_DATA array element
   subtype JPEG_DHTMEM77_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM77_DATA array
   type JPEG_DHTMEM77_DATA_Field_Array is array (308 .. 311)
     of JPEG_DHTMEM77_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM77_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM77_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM77_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM78_DATA array element
   subtype JPEG_DHTMEM78_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM78_DATA array
   type JPEG_DHTMEM78_DATA_Field_Array is array (312 .. 315)
     of JPEG_DHTMEM78_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM78_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM79_DATA array element
   subtype JPEG_DHTMEM79_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM79_DATA array
   type JPEG_DHTMEM79_DATA_Field_Array is array (316 .. 319)
     of JPEG_DHTMEM79_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM79_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM79_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM79_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM80_DATA array element
   subtype JPEG_DHTMEM80_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM80_DATA array
   type JPEG_DHTMEM80_DATA_Field_Array is array (320 .. 323)
     of JPEG_DHTMEM80_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM80_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM80_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM80_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM81_DATA array element
   subtype JPEG_DHTMEM81_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM81_DATA array
   type JPEG_DHTMEM81_DATA_Field_Array is array (324 .. 327)
     of JPEG_DHTMEM81_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM81_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM81_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM81_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM82_DATA array element
   subtype JPEG_DHTMEM82_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM82_DATA array
   type JPEG_DHTMEM82_DATA_Field_Array is array (328 .. 331)
     of JPEG_DHTMEM82_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM82_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM82_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM82_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM83_DATA array element
   subtype JPEG_DHTMEM83_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM83_DATA array
   type JPEG_DHTMEM83_DATA_Field_Array is array (332 .. 335)
     of JPEG_DHTMEM83_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM83_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM83_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM83_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM84_DATA array element
   subtype JPEG_DHTMEM84_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM84_DATA array
   type JPEG_DHTMEM84_DATA_Field_Array is array (336 .. 339)
     of JPEG_DHTMEM84_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM84_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM84_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM84_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM85_DATA array element
   subtype JPEG_DHTMEM85_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM85_DATA array
   type JPEG_DHTMEM85_DATA_Field_Array is array (340 .. 343)
     of JPEG_DHTMEM85_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM85_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM85_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM85_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM86_DATA array element
   subtype JPEG_DHTMEM86_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM86_DATA array
   type JPEG_DHTMEM86_DATA_Field_Array is array (344 .. 347)
     of JPEG_DHTMEM86_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM86_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM86_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM86_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM87_DATA array element
   subtype JPEG_DHTMEM87_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM87_DATA array
   type JPEG_DHTMEM87_DATA_Field_Array is array (348 .. 351)
     of JPEG_DHTMEM87_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM87_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM87_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM87_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM88_DATA array element
   subtype JPEG_DHTMEM88_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM88_DATA array
   type JPEG_DHTMEM88_DATA_Field_Array is array (352 .. 355)
     of JPEG_DHTMEM88_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM88_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM88_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM88_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM89_DATA array element
   subtype JPEG_DHTMEM89_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM89_DATA array
   type JPEG_DHTMEM89_DATA_Field_Array is array (356 .. 359)
     of JPEG_DHTMEM89_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM89_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM89_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM89_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM90_DATA array element
   subtype JPEG_DHTMEM90_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM90_DATA array
   type JPEG_DHTMEM90_DATA_Field_Array is array (360 .. 363)
     of JPEG_DHTMEM90_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM90_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM90_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM90_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM91_DATA array element
   subtype JPEG_DHTMEM91_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM91_DATA array
   type JPEG_DHTMEM91_DATA_Field_Array is array (364 .. 367)
     of JPEG_DHTMEM91_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM91_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM91_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM91_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM92_DATA array element
   subtype JPEG_DHTMEM92_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM92_DATA array
   type JPEG_DHTMEM92_DATA_Field_Array is array (368 .. 371)
     of JPEG_DHTMEM92_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM92_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM92_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM92_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM93_DATA array element
   subtype JPEG_DHTMEM93_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM93_DATA array
   type JPEG_DHTMEM93_DATA_Field_Array is array (372 .. 375)
     of JPEG_DHTMEM93_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM93_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM93_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM93_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM94_DATA array element
   subtype JPEG_DHTMEM94_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM94_DATA array
   type JPEG_DHTMEM94_DATA_Field_Array is array (376 .. 379)
     of JPEG_DHTMEM94_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM94_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM94_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM94_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM95_DATA array element
   subtype JPEG_DHTMEM95_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM95_DATA array
   type JPEG_DHTMEM95_DATA_Field_Array is array (380 .. 383)
     of JPEG_DHTMEM95_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM95_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM95_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM95_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM96_DATA array element
   subtype JPEG_DHTMEM96_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM96_DATA array
   type JPEG_DHTMEM96_DATA_Field_Array is array (384 .. 387)
     of JPEG_DHTMEM96_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM96_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM96_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM96_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM97_DATA array element
   subtype JPEG_DHTMEM97_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM97_DATA array
   type JPEG_DHTMEM97_DATA_Field_Array is array (388 .. 391)
     of JPEG_DHTMEM97_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM97_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM97_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM97_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM98_DATA array element
   subtype JPEG_DHTMEM98_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM98_DATA array
   type JPEG_DHTMEM98_DATA_Field_Array is array (392 .. 395)
     of JPEG_DHTMEM98_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM98_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM98_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM98_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM99_DATA array element
   subtype JPEG_DHTMEM99_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM99_DATA array
   type JPEG_DHTMEM99_DATA_Field_Array is array (396 .. 399)
     of JPEG_DHTMEM99_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM99_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM99_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM99_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM100_DATA array element
   subtype JPEG_DHTMEM100_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM100_DATA array
   type JPEG_DHTMEM100_DATA_Field_Array is array (400 .. 403)
     of JPEG_DHTMEM100_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM100_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM100_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM100_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM101_DATA array element
   subtype JPEG_DHTMEM101_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM101_DATA array
   type JPEG_DHTMEM101_DATA_Field_Array is array (404 .. 407)
     of JPEG_DHTMEM101_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM101_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM101_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM101_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JPEG_DHTMEM102_DATA array element
   subtype JPEG_DHTMEM102_DATA_Element is HAL.UInt8;

   --  JPEG_DHTMEM102_DATA array
   type JPEG_DHTMEM102_DATA_Field_Array is array (408 .. 411)
     of JPEG_DHTMEM102_DATA_Element
     with Component_Size => 8, Size => 32;

   --  JPEG DHT memory
   type JPEG_DHTMEM102_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  DATA as an array
            Arr : JPEG_DHTMEM102_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_DHTMEM102_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_0_HCODE0_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_0_HLEN0_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_0_HCODE1_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_0_HLEN1_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_0_Register is record
      --  Huffman code 0
      HCODE0         : JPEG_HUFFENC_AC0_0_HCODE0_Field := 16#0#;
      --  Huffman length 0
      HLEN0          : JPEG_HUFFENC_AC0_0_HLEN0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 1
      HCODE1         : JPEG_HUFFENC_AC0_0_HCODE1_Field := 16#0#;
      --  Huffman length 1
      HLEN1          : JPEG_HUFFENC_AC0_0_HLEN1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_0_Register use record
      HCODE0         at 0 range 0 .. 7;
      HLEN0          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE1         at 0 range 16 .. 23;
      HLEN1          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_1_HCODE2_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_1_HLEN2_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_1_HCODE3_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_1_HLEN3_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_1_Register is record
      --  Huffman code 2
      HCODE2         : JPEG_HUFFENC_AC0_1_HCODE2_Field := 16#0#;
      --  Huffman length 2
      HLEN2          : JPEG_HUFFENC_AC0_1_HLEN2_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 3
      HCODE3         : JPEG_HUFFENC_AC0_1_HCODE3_Field := 16#0#;
      --  Huffman length 3
      HLEN3          : JPEG_HUFFENC_AC0_1_HLEN3_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_1_Register use record
      HCODE2         at 0 range 0 .. 7;
      HLEN2          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE3         at 0 range 16 .. 23;
      HLEN3          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_2_HCODE4_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_2_HLEN4_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_2_HCODE5_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_2_HLEN5_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_2_Register is record
      --  Huffman code 4
      HCODE4         : JPEG_HUFFENC_AC0_2_HCODE4_Field := 16#0#;
      --  Huffman length 4
      HLEN4          : JPEG_HUFFENC_AC0_2_HLEN4_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 5
      HCODE5         : JPEG_HUFFENC_AC0_2_HCODE5_Field := 16#0#;
      --  Huffman length 5
      HLEN5          : JPEG_HUFFENC_AC0_2_HLEN5_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_2_Register use record
      HCODE4         at 0 range 0 .. 7;
      HLEN4          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE5         at 0 range 16 .. 23;
      HLEN5          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_3_HCODE6_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_3_HLEN6_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_3_HCODE7_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_3_HLEN7_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_3_Register is record
      --  Huffman code 6
      HCODE6         : JPEG_HUFFENC_AC0_3_HCODE6_Field := 16#0#;
      --  Huffman length 6
      HLEN6          : JPEG_HUFFENC_AC0_3_HLEN6_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 7
      HCODE7         : JPEG_HUFFENC_AC0_3_HCODE7_Field := 16#0#;
      --  Huffman length 7
      HLEN7          : JPEG_HUFFENC_AC0_3_HLEN7_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_3_Register use record
      HCODE6         at 0 range 0 .. 7;
      HLEN6          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE7         at 0 range 16 .. 23;
      HLEN7          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_4_HCODE8_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_4_HLEN8_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_4_HCODE9_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_4_HLEN9_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_4_Register is record
      --  Huffman code 8
      HCODE8         : JPEG_HUFFENC_AC0_4_HCODE8_Field := 16#0#;
      --  Huffman length 8
      HLEN8          : JPEG_HUFFENC_AC0_4_HLEN8_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 9
      HCODE9         : JPEG_HUFFENC_AC0_4_HCODE9_Field := 16#0#;
      --  Huffman length 9
      HLEN9          : JPEG_HUFFENC_AC0_4_HLEN9_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_4_Register use record
      HCODE8         at 0 range 0 .. 7;
      HLEN8          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE9         at 0 range 16 .. 23;
      HLEN9          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_5_HCODE10_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_5_HLEN10_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_5_HCODE11_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_5_HLEN11_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_5_Register is record
      --  Huffman code 10
      HCODE10        : JPEG_HUFFENC_AC0_5_HCODE10_Field := 16#0#;
      --  Huffman length 10
      HLEN10         : JPEG_HUFFENC_AC0_5_HLEN10_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 11
      HCODE11        : JPEG_HUFFENC_AC0_5_HCODE11_Field := 16#0#;
      --  Huffman length 11
      HLEN11         : JPEG_HUFFENC_AC0_5_HLEN11_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_5_Register use record
      HCODE10        at 0 range 0 .. 7;
      HLEN10         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE11        at 0 range 16 .. 23;
      HLEN11         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_6_HCODE12_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_6_HLEN12_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_6_HCODE13_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_6_HLEN13_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_6_Register is record
      --  Huffman code 12
      HCODE12        : JPEG_HUFFENC_AC0_6_HCODE12_Field := 16#0#;
      --  Huffman length 12
      HLEN12         : JPEG_HUFFENC_AC0_6_HLEN12_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 13
      HCODE13        : JPEG_HUFFENC_AC0_6_HCODE13_Field := 16#0#;
      --  Huffman length 13
      HLEN13         : JPEG_HUFFENC_AC0_6_HLEN13_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_6_Register use record
      HCODE12        at 0 range 0 .. 7;
      HLEN12         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE13        at 0 range 16 .. 23;
      HLEN13         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_7_HCODE14_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_7_HLEN14_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_7_HCODE15_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_7_HLEN15_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_7_Register is record
      --  Huffman code 14
      HCODE14        : JPEG_HUFFENC_AC0_7_HCODE14_Field := 16#0#;
      --  Huffman length 14
      HLEN14         : JPEG_HUFFENC_AC0_7_HLEN14_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 15
      HCODE15        : JPEG_HUFFENC_AC0_7_HCODE15_Field := 16#0#;
      --  Huffman length 15
      HLEN15         : JPEG_HUFFENC_AC0_7_HLEN15_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_7_Register use record
      HCODE14        at 0 range 0 .. 7;
      HLEN14         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE15        at 0 range 16 .. 23;
      HLEN15         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_8_HCODE16_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_8_HLEN16_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_8_HCODE17_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_8_HLEN17_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_8_Register is record
      --  Huffman code 16
      HCODE16        : JPEG_HUFFENC_AC0_8_HCODE16_Field := 16#0#;
      --  Huffman length 16
      HLEN16         : JPEG_HUFFENC_AC0_8_HLEN16_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 17
      HCODE17        : JPEG_HUFFENC_AC0_8_HCODE17_Field := 16#0#;
      --  Huffman length 17
      HLEN17         : JPEG_HUFFENC_AC0_8_HLEN17_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_8_Register use record
      HCODE16        at 0 range 0 .. 7;
      HLEN16         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE17        at 0 range 16 .. 23;
      HLEN17         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_9_HCODE18_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_9_HLEN18_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_9_HCODE19_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_9_HLEN19_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_9_Register is record
      --  Huffman code 18
      HCODE18        : JPEG_HUFFENC_AC0_9_HCODE18_Field := 16#0#;
      --  Huffman length 18
      HLEN18         : JPEG_HUFFENC_AC0_9_HLEN18_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 19
      HCODE19        : JPEG_HUFFENC_AC0_9_HCODE19_Field := 16#0#;
      --  Huffman length 19
      HLEN19         : JPEG_HUFFENC_AC0_9_HLEN19_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_9_Register use record
      HCODE18        at 0 range 0 .. 7;
      HLEN18         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE19        at 0 range 16 .. 23;
      HLEN19         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_10_HCODE20_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_10_HLEN20_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_10_HCODE21_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_10_HLEN21_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_10_Register is record
      --  Huffman code 20
      HCODE20        : JPEG_HUFFENC_AC0_10_HCODE20_Field := 16#0#;
      --  Huffman length 20
      HLEN20         : JPEG_HUFFENC_AC0_10_HLEN20_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 21
      HCODE21        : JPEG_HUFFENC_AC0_10_HCODE21_Field := 16#0#;
      --  Huffman length 21
      HLEN21         : JPEG_HUFFENC_AC0_10_HLEN21_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_10_Register use record
      HCODE20        at 0 range 0 .. 7;
      HLEN20         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE21        at 0 range 16 .. 23;
      HLEN21         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_11_HCODE22_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_11_HLEN22_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_11_HCODE23_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_11_HLEN23_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_11_Register is record
      --  Huffman code 22
      HCODE22        : JPEG_HUFFENC_AC0_11_HCODE22_Field := 16#0#;
      --  Huffman length 22
      HLEN22         : JPEG_HUFFENC_AC0_11_HLEN22_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 23
      HCODE23        : JPEG_HUFFENC_AC0_11_HCODE23_Field := 16#0#;
      --  Huffman length 23
      HLEN23         : JPEG_HUFFENC_AC0_11_HLEN23_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_11_Register use record
      HCODE22        at 0 range 0 .. 7;
      HLEN22         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE23        at 0 range 16 .. 23;
      HLEN23         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_12_HCODE24_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_12_HLEN24_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_12_HCODE25_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_12_HLEN25_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_12_Register is record
      --  Huffman code 24
      HCODE24        : JPEG_HUFFENC_AC0_12_HCODE24_Field := 16#0#;
      --  Huffman length 24
      HLEN24         : JPEG_HUFFENC_AC0_12_HLEN24_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 25
      HCODE25        : JPEG_HUFFENC_AC0_12_HCODE25_Field := 16#0#;
      --  Huffman length 25
      HLEN25         : JPEG_HUFFENC_AC0_12_HLEN25_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_12_Register use record
      HCODE24        at 0 range 0 .. 7;
      HLEN24         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE25        at 0 range 16 .. 23;
      HLEN25         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_13_HCODE26_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_13_HLEN26_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_13_HCODE27_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_13_HLEN27_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_13_Register is record
      --  Huffman code 26
      HCODE26        : JPEG_HUFFENC_AC0_13_HCODE26_Field := 16#0#;
      --  Huffman length 26
      HLEN26         : JPEG_HUFFENC_AC0_13_HLEN26_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 27
      HCODE27        : JPEG_HUFFENC_AC0_13_HCODE27_Field := 16#0#;
      --  Huffman length 27
      HLEN27         : JPEG_HUFFENC_AC0_13_HLEN27_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_13_Register use record
      HCODE26        at 0 range 0 .. 7;
      HLEN26         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE27        at 0 range 16 .. 23;
      HLEN27         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_14_HCODE28_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_14_HLEN28_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_14_HCODE29_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_14_HLEN29_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_14_Register is record
      --  Huffman code 28
      HCODE28        : JPEG_HUFFENC_AC0_14_HCODE28_Field := 16#0#;
      --  Huffman length 28
      HLEN28         : JPEG_HUFFENC_AC0_14_HLEN28_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 29
      HCODE29        : JPEG_HUFFENC_AC0_14_HCODE29_Field := 16#0#;
      --  Huffman length 29
      HLEN29         : JPEG_HUFFENC_AC0_14_HLEN29_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_14_Register use record
      HCODE28        at 0 range 0 .. 7;
      HLEN28         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE29        at 0 range 16 .. 23;
      HLEN29         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_15_HCODE30_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_15_HLEN30_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_15_HCODE31_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_15_HLEN31_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_15_Register is record
      --  Huffman code 30
      HCODE30        : JPEG_HUFFENC_AC0_15_HCODE30_Field := 16#0#;
      --  Huffman length 30
      HLEN30         : JPEG_HUFFENC_AC0_15_HLEN30_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 31
      HCODE31        : JPEG_HUFFENC_AC0_15_HCODE31_Field := 16#0#;
      --  Huffman length 31
      HLEN31         : JPEG_HUFFENC_AC0_15_HLEN31_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_15_Register use record
      HCODE30        at 0 range 0 .. 7;
      HLEN30         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE31        at 0 range 16 .. 23;
      HLEN31         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_16_HCODE32_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_16_HLEN32_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_16_HCODE33_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_16_HLEN33_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_16_Register is record
      --  Huffman code 32
      HCODE32        : JPEG_HUFFENC_AC0_16_HCODE32_Field := 16#0#;
      --  Huffman length 32
      HLEN32         : JPEG_HUFFENC_AC0_16_HLEN32_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 33
      HCODE33        : JPEG_HUFFENC_AC0_16_HCODE33_Field := 16#0#;
      --  Huffman length 33
      HLEN33         : JPEG_HUFFENC_AC0_16_HLEN33_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_16_Register use record
      HCODE32        at 0 range 0 .. 7;
      HLEN32         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE33        at 0 range 16 .. 23;
      HLEN33         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_17_HCODE34_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_17_HLEN34_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_17_HCODE35_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_17_HLEN35_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_17_Register is record
      --  Huffman code 34
      HCODE34        : JPEG_HUFFENC_AC0_17_HCODE34_Field := 16#0#;
      --  Huffman length 34
      HLEN34         : JPEG_HUFFENC_AC0_17_HLEN34_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 35
      HCODE35        : JPEG_HUFFENC_AC0_17_HCODE35_Field := 16#0#;
      --  Huffman length 35
      HLEN35         : JPEG_HUFFENC_AC0_17_HLEN35_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_17_Register use record
      HCODE34        at 0 range 0 .. 7;
      HLEN34         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE35        at 0 range 16 .. 23;
      HLEN35         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_18_HCODE36_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_18_HLEN36_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_18_HCODE37_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_18_HLEN37_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_18_Register is record
      --  Huffman code 36
      HCODE36        : JPEG_HUFFENC_AC0_18_HCODE36_Field := 16#0#;
      --  Huffman length 36
      HLEN36         : JPEG_HUFFENC_AC0_18_HLEN36_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 37
      HCODE37        : JPEG_HUFFENC_AC0_18_HCODE37_Field := 16#0#;
      --  Huffman length 37
      HLEN37         : JPEG_HUFFENC_AC0_18_HLEN37_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_18_Register use record
      HCODE36        at 0 range 0 .. 7;
      HLEN36         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE37        at 0 range 16 .. 23;
      HLEN37         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_19_HCODE38_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_19_HLEN38_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_19_HCODE39_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_19_HLEN39_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_19_Register is record
      --  Huffman code 38
      HCODE38        : JPEG_HUFFENC_AC0_19_HCODE38_Field := 16#0#;
      --  Huffman length 38
      HLEN38         : JPEG_HUFFENC_AC0_19_HLEN38_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 39
      HCODE39        : JPEG_HUFFENC_AC0_19_HCODE39_Field := 16#0#;
      --  Huffman length 39
      HLEN39         : JPEG_HUFFENC_AC0_19_HLEN39_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_19_Register use record
      HCODE38        at 0 range 0 .. 7;
      HLEN38         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE39        at 0 range 16 .. 23;
      HLEN39         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_20_HCODE40_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_20_HLEN40_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_20_HCODE41_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_20_HLEN41_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_20_Register is record
      --  Huffman code 40
      HCODE40        : JPEG_HUFFENC_AC0_20_HCODE40_Field := 16#0#;
      --  Huffman length 40
      HLEN40         : JPEG_HUFFENC_AC0_20_HLEN40_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 41
      HCODE41        : JPEG_HUFFENC_AC0_20_HCODE41_Field := 16#0#;
      --  Huffman length 41
      HLEN41         : JPEG_HUFFENC_AC0_20_HLEN41_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_20_Register use record
      HCODE40        at 0 range 0 .. 7;
      HLEN40         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE41        at 0 range 16 .. 23;
      HLEN41         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_21_HCODE42_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_21_HLEN42_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_21_HCODE43_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_21_HLEN43_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_21_Register is record
      --  Huffman code 42
      HCODE42        : JPEG_HUFFENC_AC0_21_HCODE42_Field := 16#0#;
      --  Huffman length 42
      HLEN42         : JPEG_HUFFENC_AC0_21_HLEN42_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 43
      HCODE43        : JPEG_HUFFENC_AC0_21_HCODE43_Field := 16#0#;
      --  Huffman length 43
      HLEN43         : JPEG_HUFFENC_AC0_21_HLEN43_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_21_Register use record
      HCODE42        at 0 range 0 .. 7;
      HLEN42         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE43        at 0 range 16 .. 23;
      HLEN43         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_22_HCODE44_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_22_HLEN44_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_22_HCODE45_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_22_HLEN45_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_22_Register is record
      --  Huffman code 44
      HCODE44        : JPEG_HUFFENC_AC0_22_HCODE44_Field := 16#0#;
      --  Huffman length 44
      HLEN44         : JPEG_HUFFENC_AC0_22_HLEN44_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 45
      HCODE45        : JPEG_HUFFENC_AC0_22_HCODE45_Field := 16#0#;
      --  Huffman length 45
      HLEN45         : JPEG_HUFFENC_AC0_22_HLEN45_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_22_Register use record
      HCODE44        at 0 range 0 .. 7;
      HLEN44         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE45        at 0 range 16 .. 23;
      HLEN45         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_23_HCODE46_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_23_HLEN46_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_23_HCODE47_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_23_HLEN47_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_23_Register is record
      --  Huffman code 46
      HCODE46        : JPEG_HUFFENC_AC0_23_HCODE46_Field := 16#0#;
      --  Huffman length 46
      HLEN46         : JPEG_HUFFENC_AC0_23_HLEN46_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 47
      HCODE47        : JPEG_HUFFENC_AC0_23_HCODE47_Field := 16#0#;
      --  Huffman length 47
      HLEN47         : JPEG_HUFFENC_AC0_23_HLEN47_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_23_Register use record
      HCODE46        at 0 range 0 .. 7;
      HLEN46         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE47        at 0 range 16 .. 23;
      HLEN47         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_24_HCODE48_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_24_HLEN48_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_24_HCODE49_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_24_HLEN49_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_24_Register is record
      --  Huffman code 48
      HCODE48        : JPEG_HUFFENC_AC0_24_HCODE48_Field := 16#0#;
      --  Huffman length 48
      HLEN48         : JPEG_HUFFENC_AC0_24_HLEN48_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 49
      HCODE49        : JPEG_HUFFENC_AC0_24_HCODE49_Field := 16#0#;
      --  Huffman length 49
      HLEN49         : JPEG_HUFFENC_AC0_24_HLEN49_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_24_Register use record
      HCODE48        at 0 range 0 .. 7;
      HLEN48         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE49        at 0 range 16 .. 23;
      HLEN49         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_25_HCODE50_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_25_HLEN50_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_25_HCODE51_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_25_HLEN51_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_25_Register is record
      --  Huffman code 50
      HCODE50        : JPEG_HUFFENC_AC0_25_HCODE50_Field := 16#0#;
      --  Huffman length 50
      HLEN50         : JPEG_HUFFENC_AC0_25_HLEN50_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 51
      HCODE51        : JPEG_HUFFENC_AC0_25_HCODE51_Field := 16#0#;
      --  Huffman length 51
      HLEN51         : JPEG_HUFFENC_AC0_25_HLEN51_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_25_Register use record
      HCODE50        at 0 range 0 .. 7;
      HLEN50         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE51        at 0 range 16 .. 23;
      HLEN51         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_26_HCODE52_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_26_HLEN52_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_26_HCODE53_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_26_HLEN53_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_26_Register is record
      --  Huffman code 52
      HCODE52        : JPEG_HUFFENC_AC0_26_HCODE52_Field := 16#0#;
      --  Huffman length 52
      HLEN52         : JPEG_HUFFENC_AC0_26_HLEN52_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 53
      HCODE53        : JPEG_HUFFENC_AC0_26_HCODE53_Field := 16#0#;
      --  Huffman length 53
      HLEN53         : JPEG_HUFFENC_AC0_26_HLEN53_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_26_Register use record
      HCODE52        at 0 range 0 .. 7;
      HLEN52         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE53        at 0 range 16 .. 23;
      HLEN53         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_27_HCODE54_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_27_HLEN54_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_27_HCODE55_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_27_HLEN55_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_27_Register is record
      --  Huffman code 54
      HCODE54        : JPEG_HUFFENC_AC0_27_HCODE54_Field := 16#0#;
      --  Huffman length 54
      HLEN54         : JPEG_HUFFENC_AC0_27_HLEN54_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 55
      HCODE55        : JPEG_HUFFENC_AC0_27_HCODE55_Field := 16#0#;
      --  Huffman length 55
      HLEN55         : JPEG_HUFFENC_AC0_27_HLEN55_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_27_Register use record
      HCODE54        at 0 range 0 .. 7;
      HLEN54         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE55        at 0 range 16 .. 23;
      HLEN55         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_28_HCODE56_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_28_HLEN56_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_28_HCODE57_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_28_HLEN57_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_28_Register is record
      --  Huffman code 56
      HCODE56        : JPEG_HUFFENC_AC0_28_HCODE56_Field := 16#0#;
      --  Huffman length 56
      HLEN56         : JPEG_HUFFENC_AC0_28_HLEN56_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 57
      HCODE57        : JPEG_HUFFENC_AC0_28_HCODE57_Field := 16#0#;
      --  Huffman length 57
      HLEN57         : JPEG_HUFFENC_AC0_28_HLEN57_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_28_Register use record
      HCODE56        at 0 range 0 .. 7;
      HLEN56         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE57        at 0 range 16 .. 23;
      HLEN57         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_29_HCODE58_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_29_HLEN58_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_29_HCODE59_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_29_HLEN59_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_29_Register is record
      --  Huffman code 58
      HCODE58        : JPEG_HUFFENC_AC0_29_HCODE58_Field := 16#0#;
      --  Huffman length 58
      HLEN58         : JPEG_HUFFENC_AC0_29_HLEN58_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 59
      HCODE59        : JPEG_HUFFENC_AC0_29_HCODE59_Field := 16#0#;
      --  Huffman length 59
      HLEN59         : JPEG_HUFFENC_AC0_29_HLEN59_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_29_Register use record
      HCODE58        at 0 range 0 .. 7;
      HLEN58         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE59        at 0 range 16 .. 23;
      HLEN59         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_30_HCODE60_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_30_HLEN60_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_30_HCODE61_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_30_HLEN61_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_30_Register is record
      --  Huffman code 60
      HCODE60        : JPEG_HUFFENC_AC0_30_HCODE60_Field := 16#0#;
      --  Huffman length 60
      HLEN60         : JPEG_HUFFENC_AC0_30_HLEN60_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 61
      HCODE61        : JPEG_HUFFENC_AC0_30_HCODE61_Field := 16#0#;
      --  Huffman length 61
      HLEN61         : JPEG_HUFFENC_AC0_30_HLEN61_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_30_Register use record
      HCODE60        at 0 range 0 .. 7;
      HLEN60         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE61        at 0 range 16 .. 23;
      HLEN61         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_31_HCODE62_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_31_HLEN62_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_31_HCODE63_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_31_HLEN63_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_31_Register is record
      --  Huffman code 62
      HCODE62        : JPEG_HUFFENC_AC0_31_HCODE62_Field := 16#0#;
      --  Huffman length 62
      HLEN62         : JPEG_HUFFENC_AC0_31_HLEN62_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 63
      HCODE63        : JPEG_HUFFENC_AC0_31_HCODE63_Field := 16#0#;
      --  Huffman length 63
      HLEN63         : JPEG_HUFFENC_AC0_31_HLEN63_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_31_Register use record
      HCODE62        at 0 range 0 .. 7;
      HLEN62         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE63        at 0 range 16 .. 23;
      HLEN63         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_32_HCODE64_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_32_HLEN64_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_32_HCODE65_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_32_HLEN65_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_32_Register is record
      --  Huffman code 64
      HCODE64        : JPEG_HUFFENC_AC0_32_HCODE64_Field := 16#0#;
      --  Huffman length 64
      HLEN64         : JPEG_HUFFENC_AC0_32_HLEN64_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 65
      HCODE65        : JPEG_HUFFENC_AC0_32_HCODE65_Field := 16#0#;
      --  Huffman length 65
      HLEN65         : JPEG_HUFFENC_AC0_32_HLEN65_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_32_Register use record
      HCODE64        at 0 range 0 .. 7;
      HLEN64         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE65        at 0 range 16 .. 23;
      HLEN65         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_33_HCODE66_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_33_HLEN66_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_33_HCODE67_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_33_HLEN67_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_33_Register is record
      --  Huffman code 66
      HCODE66        : JPEG_HUFFENC_AC0_33_HCODE66_Field := 16#0#;
      --  Huffman length 66
      HLEN66         : JPEG_HUFFENC_AC0_33_HLEN66_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 67
      HCODE67        : JPEG_HUFFENC_AC0_33_HCODE67_Field := 16#0#;
      --  Huffman length 67
      HLEN67         : JPEG_HUFFENC_AC0_33_HLEN67_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_33_Register use record
      HCODE66        at 0 range 0 .. 7;
      HLEN66         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE67        at 0 range 16 .. 23;
      HLEN67         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_34_HCODE68_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_34_HLEN68_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_34_HCODE69_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_34_HLEN69_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_34_Register is record
      --  Huffman code 68
      HCODE68        : JPEG_HUFFENC_AC0_34_HCODE68_Field := 16#0#;
      --  Huffman length 68
      HLEN68         : JPEG_HUFFENC_AC0_34_HLEN68_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 69
      HCODE69        : JPEG_HUFFENC_AC0_34_HCODE69_Field := 16#0#;
      --  Huffman length 69
      HLEN69         : JPEG_HUFFENC_AC0_34_HLEN69_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_34_Register use record
      HCODE68        at 0 range 0 .. 7;
      HLEN68         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE69        at 0 range 16 .. 23;
      HLEN69         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_35_HCODE70_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_35_HLEN70_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_35_HCODE71_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_35_HLEN71_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_35_Register is record
      --  Huffman code 70
      HCODE70        : JPEG_HUFFENC_AC0_35_HCODE70_Field := 16#0#;
      --  Huffman length 70
      HLEN70         : JPEG_HUFFENC_AC0_35_HLEN70_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 71
      HCODE71        : JPEG_HUFFENC_AC0_35_HCODE71_Field := 16#0#;
      --  Huffman length 71
      HLEN71         : JPEG_HUFFENC_AC0_35_HLEN71_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_35_Register use record
      HCODE70        at 0 range 0 .. 7;
      HLEN70         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE71        at 0 range 16 .. 23;
      HLEN71         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_36_HCODE72_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_36_HLEN72_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_36_HCODE73_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_36_HLEN73_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_36_Register is record
      --  Huffman code 72
      HCODE72        : JPEG_HUFFENC_AC0_36_HCODE72_Field := 16#0#;
      --  Huffman length 72
      HLEN72         : JPEG_HUFFENC_AC0_36_HLEN72_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 73
      HCODE73        : JPEG_HUFFENC_AC0_36_HCODE73_Field := 16#0#;
      --  Huffman length 73
      HLEN73         : JPEG_HUFFENC_AC0_36_HLEN73_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_36_Register use record
      HCODE72        at 0 range 0 .. 7;
      HLEN72         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE73        at 0 range 16 .. 23;
      HLEN73         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_37_HCODE74_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_37_HLEN74_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_37_HCODE75_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_37_HLEN75_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_37_Register is record
      --  Huffman code 74
      HCODE74        : JPEG_HUFFENC_AC0_37_HCODE74_Field := 16#0#;
      --  Huffman length 74
      HLEN74         : JPEG_HUFFENC_AC0_37_HLEN74_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 75
      HCODE75        : JPEG_HUFFENC_AC0_37_HCODE75_Field := 16#0#;
      --  Huffman length 75
      HLEN75         : JPEG_HUFFENC_AC0_37_HLEN75_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_37_Register use record
      HCODE74        at 0 range 0 .. 7;
      HLEN74         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE75        at 0 range 16 .. 23;
      HLEN75         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_38_HCODE76_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_38_HLEN76_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_38_HCODE77_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_38_HLEN77_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_38_Register is record
      --  Huffman code 76
      HCODE76        : JPEG_HUFFENC_AC0_38_HCODE76_Field := 16#0#;
      --  Huffman length 76
      HLEN76         : JPEG_HUFFENC_AC0_38_HLEN76_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 77
      HCODE77        : JPEG_HUFFENC_AC0_38_HCODE77_Field := 16#0#;
      --  Huffman length 77
      HLEN77         : JPEG_HUFFENC_AC0_38_HLEN77_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_38_Register use record
      HCODE76        at 0 range 0 .. 7;
      HLEN76         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE77        at 0 range 16 .. 23;
      HLEN77         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_39_HCODE78_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_39_HLEN78_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_39_HCODE79_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_39_HLEN79_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_39_Register is record
      --  Huffman code 78
      HCODE78        : JPEG_HUFFENC_AC0_39_HCODE78_Field := 16#0#;
      --  Huffman length 78
      HLEN78         : JPEG_HUFFENC_AC0_39_HLEN78_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 79
      HCODE79        : JPEG_HUFFENC_AC0_39_HCODE79_Field := 16#0#;
      --  Huffman length 79
      HLEN79         : JPEG_HUFFENC_AC0_39_HLEN79_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_39_Register use record
      HCODE78        at 0 range 0 .. 7;
      HLEN78         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE79        at 0 range 16 .. 23;
      HLEN79         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_40_HCODE80_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_40_HLEN80_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_40_HCODE81_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_40_HLEN81_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_40_Register is record
      --  Huffman code 80
      HCODE80        : JPEG_HUFFENC_AC0_40_HCODE80_Field := 16#0#;
      --  Huffman length 80
      HLEN80         : JPEG_HUFFENC_AC0_40_HLEN80_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 81
      HCODE81        : JPEG_HUFFENC_AC0_40_HCODE81_Field := 16#0#;
      --  Huffman length 81
      HLEN81         : JPEG_HUFFENC_AC0_40_HLEN81_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_40_Register use record
      HCODE80        at 0 range 0 .. 7;
      HLEN80         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE81        at 0 range 16 .. 23;
      HLEN81         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_41_HCODE82_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_41_HLEN82_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_41_HCODE83_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_41_HLEN83_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_41_Register is record
      --  Huffman code 82
      HCODE82        : JPEG_HUFFENC_AC0_41_HCODE82_Field := 16#0#;
      --  Huffman length 82
      HLEN82         : JPEG_HUFFENC_AC0_41_HLEN82_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 83
      HCODE83        : JPEG_HUFFENC_AC0_41_HCODE83_Field := 16#0#;
      --  Huffman length 83
      HLEN83         : JPEG_HUFFENC_AC0_41_HLEN83_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_41_Register use record
      HCODE82        at 0 range 0 .. 7;
      HLEN82         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE83        at 0 range 16 .. 23;
      HLEN83         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_42_HCODE84_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_42_HLEN84_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_42_HCODE85_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_42_HLEN85_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_42_Register is record
      --  Huffman code 84
      HCODE84        : JPEG_HUFFENC_AC0_42_HCODE84_Field := 16#0#;
      --  Huffman length 84
      HLEN84         : JPEG_HUFFENC_AC0_42_HLEN84_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 85
      HCODE85        : JPEG_HUFFENC_AC0_42_HCODE85_Field := 16#0#;
      --  Huffman length 85
      HLEN85         : JPEG_HUFFENC_AC0_42_HLEN85_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_42_Register use record
      HCODE84        at 0 range 0 .. 7;
      HLEN84         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE85        at 0 range 16 .. 23;
      HLEN85         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_43_HCODE86_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_43_HLEN86_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_43_HCODE87_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_43_HLEN87_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_43_Register is record
      --  Huffman code 86
      HCODE86        : JPEG_HUFFENC_AC0_43_HCODE86_Field := 16#0#;
      --  Huffman length 86
      HLEN86         : JPEG_HUFFENC_AC0_43_HLEN86_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 87
      HCODE87        : JPEG_HUFFENC_AC0_43_HCODE87_Field := 16#0#;
      --  Huffman length 87
      HLEN87         : JPEG_HUFFENC_AC0_43_HLEN87_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_43_Register use record
      HCODE86        at 0 range 0 .. 7;
      HLEN86         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE87        at 0 range 16 .. 23;
      HLEN87         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_44_HCODE88_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_44_HLEN88_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_44_HCODE89_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_44_HLEN89_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_44_Register is record
      --  Huffman code 88
      HCODE88        : JPEG_HUFFENC_AC0_44_HCODE88_Field := 16#0#;
      --  Huffman length 88
      HLEN88         : JPEG_HUFFENC_AC0_44_HLEN88_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 89
      HCODE89        : JPEG_HUFFENC_AC0_44_HCODE89_Field := 16#0#;
      --  Huffman length 89
      HLEN89         : JPEG_HUFFENC_AC0_44_HLEN89_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_44_Register use record
      HCODE88        at 0 range 0 .. 7;
      HLEN88         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE89        at 0 range 16 .. 23;
      HLEN89         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_45_HCODE90_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_45_HLEN90_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_45_HCODE91_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_45_HLEN91_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_45_Register is record
      --  Huffman code 90
      HCODE90        : JPEG_HUFFENC_AC0_45_HCODE90_Field := 16#0#;
      --  Huffman length 90
      HLEN90         : JPEG_HUFFENC_AC0_45_HLEN90_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 91
      HCODE91        : JPEG_HUFFENC_AC0_45_HCODE91_Field := 16#0#;
      --  Huffman length 91
      HLEN91         : JPEG_HUFFENC_AC0_45_HLEN91_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_45_Register use record
      HCODE90        at 0 range 0 .. 7;
      HLEN90         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE91        at 0 range 16 .. 23;
      HLEN91         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_46_HCODE92_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_46_HLEN92_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_46_HCODE93_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_46_HLEN93_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_46_Register is record
      --  Huffman code 92
      HCODE92        : JPEG_HUFFENC_AC0_46_HCODE92_Field := 16#0#;
      --  Huffman length 92
      HLEN92         : JPEG_HUFFENC_AC0_46_HLEN92_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 93
      HCODE93        : JPEG_HUFFENC_AC0_46_HCODE93_Field := 16#0#;
      --  Huffman length 93
      HLEN93         : JPEG_HUFFENC_AC0_46_HLEN93_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_46_Register use record
      HCODE92        at 0 range 0 .. 7;
      HLEN92         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE93        at 0 range 16 .. 23;
      HLEN93         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_47_HCODE94_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_47_HLEN94_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_47_HCODE95_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_47_HLEN95_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_47_Register is record
      --  Huffman code 94
      HCODE94        : JPEG_HUFFENC_AC0_47_HCODE94_Field := 16#0#;
      --  Huffman length 94
      HLEN94         : JPEG_HUFFENC_AC0_47_HLEN94_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 95
      HCODE95        : JPEG_HUFFENC_AC0_47_HCODE95_Field := 16#0#;
      --  Huffman length 95
      HLEN95         : JPEG_HUFFENC_AC0_47_HLEN95_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_47_Register use record
      HCODE94        at 0 range 0 .. 7;
      HLEN94         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE95        at 0 range 16 .. 23;
      HLEN95         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_48_HCODE96_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_48_HLEN96_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_48_HCODE97_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_48_HLEN97_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_48_Register is record
      --  Huffman code 96
      HCODE96        : JPEG_HUFFENC_AC0_48_HCODE96_Field := 16#0#;
      --  Huffman length 96
      HLEN96         : JPEG_HUFFENC_AC0_48_HLEN96_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 97
      HCODE97        : JPEG_HUFFENC_AC0_48_HCODE97_Field := 16#0#;
      --  Huffman length 97
      HLEN97         : JPEG_HUFFENC_AC0_48_HLEN97_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_48_Register use record
      HCODE96        at 0 range 0 .. 7;
      HLEN96         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE97        at 0 range 16 .. 23;
      HLEN97         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_49_HCODE98_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_49_HLEN98_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_49_HCODE99_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_49_HLEN99_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_49_Register is record
      --  Huffman code 98
      HCODE98        : JPEG_HUFFENC_AC0_49_HCODE98_Field := 16#0#;
      --  Huffman length 98
      HLEN98         : JPEG_HUFFENC_AC0_49_HLEN98_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 99
      HCODE99        : JPEG_HUFFENC_AC0_49_HCODE99_Field := 16#0#;
      --  Huffman length 99
      HLEN99         : JPEG_HUFFENC_AC0_49_HLEN99_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_49_Register use record
      HCODE98        at 0 range 0 .. 7;
      HLEN98         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE99        at 0 range 16 .. 23;
      HLEN99         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_50_HCODE100_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_50_HLEN100_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_50_HCODE101_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_50_HLEN101_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_50_Register is record
      --  Huffman code 100
      HCODE100       : JPEG_HUFFENC_AC0_50_HCODE100_Field := 16#0#;
      --  Huffman length 100
      HLEN100        : JPEG_HUFFENC_AC0_50_HLEN100_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 101
      HCODE101       : JPEG_HUFFENC_AC0_50_HCODE101_Field := 16#0#;
      --  Huffman length 101
      HLEN101        : JPEG_HUFFENC_AC0_50_HLEN101_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_50_Register use record
      HCODE100       at 0 range 0 .. 7;
      HLEN100        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE101       at 0 range 16 .. 23;
      HLEN101        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_51_HCODE102_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_51_HLEN102_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_51_HCODE103_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_51_HLEN103_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_51_Register is record
      --  Huffman code 102
      HCODE102       : JPEG_HUFFENC_AC0_51_HCODE102_Field := 16#0#;
      --  Huffman length 102
      HLEN102        : JPEG_HUFFENC_AC0_51_HLEN102_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 103
      HCODE103       : JPEG_HUFFENC_AC0_51_HCODE103_Field := 16#0#;
      --  Huffman length 103
      HLEN103        : JPEG_HUFFENC_AC0_51_HLEN103_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_51_Register use record
      HCODE102       at 0 range 0 .. 7;
      HLEN102        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE103       at 0 range 16 .. 23;
      HLEN103        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_52_HCODE104_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_52_HLEN104_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_52_HCODE105_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_52_HLEN105_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_52_Register is record
      --  Huffman code 104
      HCODE104       : JPEG_HUFFENC_AC0_52_HCODE104_Field := 16#0#;
      --  Huffman length 104
      HLEN104        : JPEG_HUFFENC_AC0_52_HLEN104_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 105
      HCODE105       : JPEG_HUFFENC_AC0_52_HCODE105_Field := 16#0#;
      --  Huffman length 105
      HLEN105        : JPEG_HUFFENC_AC0_52_HLEN105_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_52_Register use record
      HCODE104       at 0 range 0 .. 7;
      HLEN104        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE105       at 0 range 16 .. 23;
      HLEN105        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_53_HCODE106_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_53_HLEN106_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_53_HCODE107_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_53_HLEN107_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_53_Register is record
      --  Huffman code 106
      HCODE106       : JPEG_HUFFENC_AC0_53_HCODE106_Field := 16#0#;
      --  Huffman length 106
      HLEN106        : JPEG_HUFFENC_AC0_53_HLEN106_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 107
      HCODE107       : JPEG_HUFFENC_AC0_53_HCODE107_Field := 16#0#;
      --  Huffman length 107
      HLEN107        : JPEG_HUFFENC_AC0_53_HLEN107_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_53_Register use record
      HCODE106       at 0 range 0 .. 7;
      HLEN106        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE107       at 0 range 16 .. 23;
      HLEN107        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_54_HCODE108_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_54_HLEN108_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_54_HCODE109_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_54_HLEN109_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_54_Register is record
      --  Huffman code 108
      HCODE108       : JPEG_HUFFENC_AC0_54_HCODE108_Field := 16#0#;
      --  Huffman length 108
      HLEN108        : JPEG_HUFFENC_AC0_54_HLEN108_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 109
      HCODE109       : JPEG_HUFFENC_AC0_54_HCODE109_Field := 16#0#;
      --  Huffman length 109
      HLEN109        : JPEG_HUFFENC_AC0_54_HLEN109_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_54_Register use record
      HCODE108       at 0 range 0 .. 7;
      HLEN108        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE109       at 0 range 16 .. 23;
      HLEN109        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_55_HCODE110_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_55_HLEN110_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_55_HCODE111_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_55_HLEN111_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_55_Register is record
      --  Huffman code 110
      HCODE110       : JPEG_HUFFENC_AC0_55_HCODE110_Field := 16#0#;
      --  Huffman length 110
      HLEN110        : JPEG_HUFFENC_AC0_55_HLEN110_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 111
      HCODE111       : JPEG_HUFFENC_AC0_55_HCODE111_Field := 16#0#;
      --  Huffman length 111
      HLEN111        : JPEG_HUFFENC_AC0_55_HLEN111_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_55_Register use record
      HCODE110       at 0 range 0 .. 7;
      HLEN110        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE111       at 0 range 16 .. 23;
      HLEN111        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_56_HCODE112_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_56_HLEN112_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_56_HCODE113_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_56_HLEN113_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_56_Register is record
      --  Huffman code 112
      HCODE112       : JPEG_HUFFENC_AC0_56_HCODE112_Field := 16#0#;
      --  Huffman length 112
      HLEN112        : JPEG_HUFFENC_AC0_56_HLEN112_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 113
      HCODE113       : JPEG_HUFFENC_AC0_56_HCODE113_Field := 16#0#;
      --  Huffman length 113
      HLEN113        : JPEG_HUFFENC_AC0_56_HLEN113_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_56_Register use record
      HCODE112       at 0 range 0 .. 7;
      HLEN112        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE113       at 0 range 16 .. 23;
      HLEN113        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_57_HCODE114_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_57_HLEN114_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_57_HCODE115_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_57_HLEN115_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_57_Register is record
      --  Huffman code 114
      HCODE114       : JPEG_HUFFENC_AC0_57_HCODE114_Field := 16#0#;
      --  Huffman length 114
      HLEN114        : JPEG_HUFFENC_AC0_57_HLEN114_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 115
      HCODE115       : JPEG_HUFFENC_AC0_57_HCODE115_Field := 16#0#;
      --  Huffman length 115
      HLEN115        : JPEG_HUFFENC_AC0_57_HLEN115_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_57_Register use record
      HCODE114       at 0 range 0 .. 7;
      HLEN114        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE115       at 0 range 16 .. 23;
      HLEN115        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_58_HCODE116_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_58_HLEN116_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_58_HCODE117_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_58_HLEN117_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_58_Register is record
      --  Huffman code 116
      HCODE116       : JPEG_HUFFENC_AC0_58_HCODE116_Field := 16#0#;
      --  Huffman length 116
      HLEN116        : JPEG_HUFFENC_AC0_58_HLEN116_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 117
      HCODE117       : JPEG_HUFFENC_AC0_58_HCODE117_Field := 16#0#;
      --  Huffman length 117
      HLEN117        : JPEG_HUFFENC_AC0_58_HLEN117_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_58_Register use record
      HCODE116       at 0 range 0 .. 7;
      HLEN116        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE117       at 0 range 16 .. 23;
      HLEN117        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_59_HCODE118_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_59_HLEN118_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_59_HCODE119_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_59_HLEN119_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_59_Register is record
      --  Huffman code 118
      HCODE118       : JPEG_HUFFENC_AC0_59_HCODE118_Field := 16#0#;
      --  Huffman length 118
      HLEN118        : JPEG_HUFFENC_AC0_59_HLEN118_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 119
      HCODE119       : JPEG_HUFFENC_AC0_59_HCODE119_Field := 16#0#;
      --  Huffman length 119
      HLEN119        : JPEG_HUFFENC_AC0_59_HLEN119_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_59_Register use record
      HCODE118       at 0 range 0 .. 7;
      HLEN118        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE119       at 0 range 16 .. 23;
      HLEN119        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_60_HCODE120_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_60_HLEN120_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_60_HCODE121_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_60_HLEN121_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_60_Register is record
      --  Huffman code 120
      HCODE120       : JPEG_HUFFENC_AC0_60_HCODE120_Field := 16#0#;
      --  Huffman length 120
      HLEN120        : JPEG_HUFFENC_AC0_60_HLEN120_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 121
      HCODE121       : JPEG_HUFFENC_AC0_60_HCODE121_Field := 16#0#;
      --  Huffman length 121
      HLEN121        : JPEG_HUFFENC_AC0_60_HLEN121_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_60_Register use record
      HCODE120       at 0 range 0 .. 7;
      HLEN120        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE121       at 0 range 16 .. 23;
      HLEN121        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_61_HCODE122_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_61_HLEN122_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_61_HCODE123_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_61_HLEN123_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_61_Register is record
      --  Huffman code 122
      HCODE122       : JPEG_HUFFENC_AC0_61_HCODE122_Field := 16#0#;
      --  Huffman length 122
      HLEN122        : JPEG_HUFFENC_AC0_61_HLEN122_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 123
      HCODE123       : JPEG_HUFFENC_AC0_61_HCODE123_Field := 16#0#;
      --  Huffman length 123
      HLEN123        : JPEG_HUFFENC_AC0_61_HLEN123_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_61_Register use record
      HCODE122       at 0 range 0 .. 7;
      HLEN122        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE123       at 0 range 16 .. 23;
      HLEN123        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_62_HCODE124_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_62_HLEN124_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_62_HCODE125_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_62_HLEN125_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_62_Register is record
      --  Huffman code 124
      HCODE124       : JPEG_HUFFENC_AC0_62_HCODE124_Field := 16#0#;
      --  Huffman length 124
      HLEN124        : JPEG_HUFFENC_AC0_62_HLEN124_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 125
      HCODE125       : JPEG_HUFFENC_AC0_62_HCODE125_Field := 16#0#;
      --  Huffman length 125
      HLEN125        : JPEG_HUFFENC_AC0_62_HLEN125_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_62_Register use record
      HCODE124       at 0 range 0 .. 7;
      HLEN124        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE125       at 0 range 16 .. 23;
      HLEN125        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_63_HCODE126_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_63_HLEN126_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_63_HCODE127_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_63_HLEN127_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_63_Register is record
      --  Huffman code 126
      HCODE126       : JPEG_HUFFENC_AC0_63_HCODE126_Field := 16#0#;
      --  Huffman length 126
      HLEN126        : JPEG_HUFFENC_AC0_63_HLEN126_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 127
      HCODE127       : JPEG_HUFFENC_AC0_63_HCODE127_Field := 16#0#;
      --  Huffman length 127
      HLEN127        : JPEG_HUFFENC_AC0_63_HLEN127_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_63_Register use record
      HCODE126       at 0 range 0 .. 7;
      HLEN126        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE127       at 0 range 16 .. 23;
      HLEN127        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_64_HCODE128_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_64_HLEN128_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_64_HCODE129_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_64_HLEN129_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_64_Register is record
      --  Huffman code 128
      HCODE128       : JPEG_HUFFENC_AC0_64_HCODE128_Field := 16#0#;
      --  Huffman length 128
      HLEN128        : JPEG_HUFFENC_AC0_64_HLEN128_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 129
      HCODE129       : JPEG_HUFFENC_AC0_64_HCODE129_Field := 16#0#;
      --  Huffman length 129
      HLEN129        : JPEG_HUFFENC_AC0_64_HLEN129_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_64_Register use record
      HCODE128       at 0 range 0 .. 7;
      HLEN128        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE129       at 0 range 16 .. 23;
      HLEN129        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_65_HCODE130_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_65_HLEN130_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_65_HCODE131_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_65_HLEN131_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_65_Register is record
      --  Huffman code 130
      HCODE130       : JPEG_HUFFENC_AC0_65_HCODE130_Field := 16#0#;
      --  Huffman length 130
      HLEN130        : JPEG_HUFFENC_AC0_65_HLEN130_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 131
      HCODE131       : JPEG_HUFFENC_AC0_65_HCODE131_Field := 16#0#;
      --  Huffman length 131
      HLEN131        : JPEG_HUFFENC_AC0_65_HLEN131_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_65_Register use record
      HCODE130       at 0 range 0 .. 7;
      HLEN130        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE131       at 0 range 16 .. 23;
      HLEN131        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_66_HCODE132_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_66_HLEN132_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_66_HCODE133_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_66_HLEN133_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_66_Register is record
      --  Huffman code 132
      HCODE132       : JPEG_HUFFENC_AC0_66_HCODE132_Field := 16#0#;
      --  Huffman length 132
      HLEN132        : JPEG_HUFFENC_AC0_66_HLEN132_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 133
      HCODE133       : JPEG_HUFFENC_AC0_66_HCODE133_Field := 16#0#;
      --  Huffman length 133
      HLEN133        : JPEG_HUFFENC_AC0_66_HLEN133_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_66_Register use record
      HCODE132       at 0 range 0 .. 7;
      HLEN132        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE133       at 0 range 16 .. 23;
      HLEN133        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_67_HCODE134_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_67_HLEN134_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_67_HCODE135_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_67_HLEN135_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_67_Register is record
      --  Huffman code 134
      HCODE134       : JPEG_HUFFENC_AC0_67_HCODE134_Field := 16#0#;
      --  Huffman length 134
      HLEN134        : JPEG_HUFFENC_AC0_67_HLEN134_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 135
      HCODE135       : JPEG_HUFFENC_AC0_67_HCODE135_Field := 16#0#;
      --  Huffman length 135
      HLEN135        : JPEG_HUFFENC_AC0_67_HLEN135_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_67_Register use record
      HCODE134       at 0 range 0 .. 7;
      HLEN134        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE135       at 0 range 16 .. 23;
      HLEN135        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_68_HCODE136_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_68_HLEN136_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_68_HCODE137_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_68_HLEN137_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_68_Register is record
      --  Huffman code 136
      HCODE136       : JPEG_HUFFENC_AC0_68_HCODE136_Field := 16#0#;
      --  Huffman length 136
      HLEN136        : JPEG_HUFFENC_AC0_68_HLEN136_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 137
      HCODE137       : JPEG_HUFFENC_AC0_68_HCODE137_Field := 16#0#;
      --  Huffman length 137
      HLEN137        : JPEG_HUFFENC_AC0_68_HLEN137_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_68_Register use record
      HCODE136       at 0 range 0 .. 7;
      HLEN136        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE137       at 0 range 16 .. 23;
      HLEN137        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_69_HCODE138_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_69_HLEN138_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_69_HCODE139_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_69_HLEN139_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_69_Register is record
      --  Huffman code 138
      HCODE138       : JPEG_HUFFENC_AC0_69_HCODE138_Field := 16#0#;
      --  Huffman length 138
      HLEN138        : JPEG_HUFFENC_AC0_69_HLEN138_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 139
      HCODE139       : JPEG_HUFFENC_AC0_69_HCODE139_Field := 16#0#;
      --  Huffman length 139
      HLEN139        : JPEG_HUFFENC_AC0_69_HLEN139_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_69_Register use record
      HCODE138       at 0 range 0 .. 7;
      HLEN138        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE139       at 0 range 16 .. 23;
      HLEN139        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_70_HCODE140_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_70_HLEN140_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_70_HCODE141_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_70_HLEN141_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_70_Register is record
      --  Huffman code 140
      HCODE140       : JPEG_HUFFENC_AC0_70_HCODE140_Field := 16#0#;
      --  Huffman length 140
      HLEN140        : JPEG_HUFFENC_AC0_70_HLEN140_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 141
      HCODE141       : JPEG_HUFFENC_AC0_70_HCODE141_Field := 16#0#;
      --  Huffman length 141
      HLEN141        : JPEG_HUFFENC_AC0_70_HLEN141_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_70_Register use record
      HCODE140       at 0 range 0 .. 7;
      HLEN140        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE141       at 0 range 16 .. 23;
      HLEN141        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_71_HCODE142_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_71_HLEN142_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_71_HCODE143_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_71_HLEN143_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_71_Register is record
      --  Huffman code 142
      HCODE142       : JPEG_HUFFENC_AC0_71_HCODE142_Field := 16#0#;
      --  Huffman length 142
      HLEN142        : JPEG_HUFFENC_AC0_71_HLEN142_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 143
      HCODE143       : JPEG_HUFFENC_AC0_71_HCODE143_Field := 16#0#;
      --  Huffman length 143
      HLEN143        : JPEG_HUFFENC_AC0_71_HLEN143_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_71_Register use record
      HCODE142       at 0 range 0 .. 7;
      HLEN142        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE143       at 0 range 16 .. 23;
      HLEN143        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_72_HCODE144_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_72_HLEN144_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_72_HCODE145_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_72_HLEN145_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_72_Register is record
      --  Huffman code 144
      HCODE144       : JPEG_HUFFENC_AC0_72_HCODE144_Field := 16#0#;
      --  Huffman length 144
      HLEN144        : JPEG_HUFFENC_AC0_72_HLEN144_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 145
      HCODE145       : JPEG_HUFFENC_AC0_72_HCODE145_Field := 16#0#;
      --  Huffman length 145
      HLEN145        : JPEG_HUFFENC_AC0_72_HLEN145_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_72_Register use record
      HCODE144       at 0 range 0 .. 7;
      HLEN144        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE145       at 0 range 16 .. 23;
      HLEN145        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_73_HCODE146_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_73_HLEN146_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_73_HCODE147_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_73_HLEN147_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_73_Register is record
      --  Huffman code 146
      HCODE146       : JPEG_HUFFENC_AC0_73_HCODE146_Field := 16#0#;
      --  Huffman length 146
      HLEN146        : JPEG_HUFFENC_AC0_73_HLEN146_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 147
      HCODE147       : JPEG_HUFFENC_AC0_73_HCODE147_Field := 16#0#;
      --  Huffman length 147
      HLEN147        : JPEG_HUFFENC_AC0_73_HLEN147_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_73_Register use record
      HCODE146       at 0 range 0 .. 7;
      HLEN146        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE147       at 0 range 16 .. 23;
      HLEN147        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_74_HCODE148_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_74_HLEN148_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_74_HCODE149_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_74_HLEN149_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_74_Register is record
      --  Huffman code 148
      HCODE148       : JPEG_HUFFENC_AC0_74_HCODE148_Field := 16#0#;
      --  Huffman length 148
      HLEN148        : JPEG_HUFFENC_AC0_74_HLEN148_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 149
      HCODE149       : JPEG_HUFFENC_AC0_74_HCODE149_Field := 16#0#;
      --  Huffman length 149
      HLEN149        : JPEG_HUFFENC_AC0_74_HLEN149_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_74_Register use record
      HCODE148       at 0 range 0 .. 7;
      HLEN148        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE149       at 0 range 16 .. 23;
      HLEN149        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_75_HCODE150_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_75_HLEN150_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_75_HCODE151_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_75_HLEN151_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_75_Register is record
      --  Huffman code 150
      HCODE150       : JPEG_HUFFENC_AC0_75_HCODE150_Field := 16#0#;
      --  Huffman length 150
      HLEN150        : JPEG_HUFFENC_AC0_75_HLEN150_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 151
      HCODE151       : JPEG_HUFFENC_AC0_75_HCODE151_Field := 16#0#;
      --  Huffman length 151
      HLEN151        : JPEG_HUFFENC_AC0_75_HLEN151_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_75_Register use record
      HCODE150       at 0 range 0 .. 7;
      HLEN150        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE151       at 0 range 16 .. 23;
      HLEN151        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_76_HCODE152_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_76_HLEN152_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_76_HCODE153_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_76_HLEN153_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_76_Register is record
      --  Huffman code 152
      HCODE152       : JPEG_HUFFENC_AC0_76_HCODE152_Field := 16#0#;
      --  Huffman length 152
      HLEN152        : JPEG_HUFFENC_AC0_76_HLEN152_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 153
      HCODE153       : JPEG_HUFFENC_AC0_76_HCODE153_Field := 16#0#;
      --  Huffman length 153
      HLEN153        : JPEG_HUFFENC_AC0_76_HLEN153_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_76_Register use record
      HCODE152       at 0 range 0 .. 7;
      HLEN152        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE153       at 0 range 16 .. 23;
      HLEN153        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_77_HCODE154_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_77_HLEN154_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_77_HCODE155_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_77_HLEN155_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_77_Register is record
      --  Huffman code 154
      HCODE154       : JPEG_HUFFENC_AC0_77_HCODE154_Field := 16#0#;
      --  Huffman length 154
      HLEN154        : JPEG_HUFFENC_AC0_77_HLEN154_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 155
      HCODE155       : JPEG_HUFFENC_AC0_77_HCODE155_Field := 16#0#;
      --  Huffman length 155
      HLEN155        : JPEG_HUFFENC_AC0_77_HLEN155_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_77_Register use record
      HCODE154       at 0 range 0 .. 7;
      HLEN154        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE155       at 0 range 16 .. 23;
      HLEN155        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_78_HCODE156_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_78_HLEN156_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_78_HCODE157_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_78_HLEN157_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_78_Register is record
      --  Huffman code 156
      HCODE156       : JPEG_HUFFENC_AC0_78_HCODE156_Field := 16#0#;
      --  Huffman length 156
      HLEN156        : JPEG_HUFFENC_AC0_78_HLEN156_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 157
      HCODE157       : JPEG_HUFFENC_AC0_78_HCODE157_Field := 16#0#;
      --  Huffman length 157
      HLEN157        : JPEG_HUFFENC_AC0_78_HLEN157_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_78_Register use record
      HCODE156       at 0 range 0 .. 7;
      HLEN156        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE157       at 0 range 16 .. 23;
      HLEN157        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_79_HCODE158_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_79_HLEN158_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_79_HCODE159_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_79_HLEN159_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_79_Register is record
      --  Huffman code 158
      HCODE158       : JPEG_HUFFENC_AC0_79_HCODE158_Field := 16#0#;
      --  Huffman length 158
      HLEN158        : JPEG_HUFFENC_AC0_79_HLEN158_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 159
      HCODE159       : JPEG_HUFFENC_AC0_79_HCODE159_Field := 16#0#;
      --  Huffman length 159
      HLEN159        : JPEG_HUFFENC_AC0_79_HLEN159_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_79_Register use record
      HCODE158       at 0 range 0 .. 7;
      HLEN158        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE159       at 0 range 16 .. 23;
      HLEN159        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_80_HCODE160_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_80_HLEN160_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_80_HCODE161_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_80_HLEN161_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_80_Register is record
      --  Huffman code 160
      HCODE160       : JPEG_HUFFENC_AC0_80_HCODE160_Field := 16#0#;
      --  Huffman length 160
      HLEN160        : JPEG_HUFFENC_AC0_80_HLEN160_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 161
      HCODE161       : JPEG_HUFFENC_AC0_80_HCODE161_Field := 16#0#;
      --  Huffman length 161
      HLEN161        : JPEG_HUFFENC_AC0_80_HLEN161_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_80_Register use record
      HCODE160       at 0 range 0 .. 7;
      HLEN160        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE161       at 0 range 16 .. 23;
      HLEN161        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_81_HCODE162_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_81_HLEN162_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_81_HCODE163_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_81_HLEN163_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_81_Register is record
      --  Huffman code 162
      HCODE162       : JPEG_HUFFENC_AC0_81_HCODE162_Field := 16#0#;
      --  Huffman length 162
      HLEN162        : JPEG_HUFFENC_AC0_81_HLEN162_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 163
      HCODE163       : JPEG_HUFFENC_AC0_81_HCODE163_Field := 16#0#;
      --  Huffman length 163
      HLEN163        : JPEG_HUFFENC_AC0_81_HLEN163_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_81_Register use record
      HCODE162       at 0 range 0 .. 7;
      HLEN162        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE163       at 0 range 16 .. 23;
      HLEN163        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_82_HCODE164_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_82_HLEN164_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_82_HCODE165_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_82_HLEN165_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_82_Register is record
      --  Huffman code 164
      HCODE164       : JPEG_HUFFENC_AC0_82_HCODE164_Field := 16#0#;
      --  Huffman length 164
      HLEN164        : JPEG_HUFFENC_AC0_82_HLEN164_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 165
      HCODE165       : JPEG_HUFFENC_AC0_82_HCODE165_Field := 16#0#;
      --  Huffman length 165
      HLEN165        : JPEG_HUFFENC_AC0_82_HLEN165_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_82_Register use record
      HCODE164       at 0 range 0 .. 7;
      HLEN164        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE165       at 0 range 16 .. 23;
      HLEN165        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_83_HCODE166_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_83_HLEN166_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_83_HCODE167_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_83_HLEN167_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_83_Register is record
      --  Huffman code 166
      HCODE166       : JPEG_HUFFENC_AC0_83_HCODE166_Field := 16#0#;
      --  Huffman length 166
      HLEN166        : JPEG_HUFFENC_AC0_83_HLEN166_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 167
      HCODE167       : JPEG_HUFFENC_AC0_83_HCODE167_Field := 16#0#;
      --  Huffman length 167
      HLEN167        : JPEG_HUFFENC_AC0_83_HLEN167_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_83_Register use record
      HCODE166       at 0 range 0 .. 7;
      HLEN166        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE167       at 0 range 16 .. 23;
      HLEN167        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_84_HCODE168_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_84_HLEN168_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_84_HCODE169_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_84_HLEN169_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_84_Register is record
      --  Huffman code 168
      HCODE168       : JPEG_HUFFENC_AC0_84_HCODE168_Field := 16#0#;
      --  Huffman length 168
      HLEN168        : JPEG_HUFFENC_AC0_84_HLEN168_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 169
      HCODE169       : JPEG_HUFFENC_AC0_84_HCODE169_Field := 16#0#;
      --  Huffman length 169
      HLEN169        : JPEG_HUFFENC_AC0_84_HLEN169_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_84_Register use record
      HCODE168       at 0 range 0 .. 7;
      HLEN168        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE169       at 0 range 16 .. 23;
      HLEN169        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_85_HCODE170_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_85_HLEN170_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_85_HCODE171_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_85_HLEN171_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_85_Register is record
      --  Huffman code 170
      HCODE170       : JPEG_HUFFENC_AC0_85_HCODE170_Field := 16#0#;
      --  Huffman length 170
      HLEN170        : JPEG_HUFFENC_AC0_85_HLEN170_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 171
      HCODE171       : JPEG_HUFFENC_AC0_85_HCODE171_Field := 16#0#;
      --  Huffman length 171
      HLEN171        : JPEG_HUFFENC_AC0_85_HLEN171_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_85_Register use record
      HCODE170       at 0 range 0 .. 7;
      HLEN170        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE171       at 0 range 16 .. 23;
      HLEN171        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_86_HCODE172_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_86_HLEN172_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_86_HCODE173_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_86_HLEN173_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_86_Register is record
      --  Huffman code 172
      HCODE172       : JPEG_HUFFENC_AC0_86_HCODE172_Field := 16#0#;
      --  Huffman length 172
      HLEN172        : JPEG_HUFFENC_AC0_86_HLEN172_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 173
      HCODE173       : JPEG_HUFFENC_AC0_86_HCODE173_Field := 16#0#;
      --  Huffman length 173
      HLEN173        : JPEG_HUFFENC_AC0_86_HLEN173_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_86_Register use record
      HCODE172       at 0 range 0 .. 7;
      HLEN172        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE173       at 0 range 16 .. 23;
      HLEN173        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC0_87_HCODE174_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_87_HLEN174_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC0_87_HCODE175_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC0_87_HLEN175_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC0
   type JPEG_HUFFENC_AC0_87_Register is record
      --  Huffman code 174
      HCODE174       : JPEG_HUFFENC_AC0_87_HCODE174_Field := 16#0#;
      --  Huffman length 174
      HLEN174        : JPEG_HUFFENC_AC0_87_HLEN174_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 175
      HCODE175       : JPEG_HUFFENC_AC0_87_HCODE175_Field := 16#0#;
      --  Huffman length 175
      HLEN175        : JPEG_HUFFENC_AC0_87_HLEN175_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC0_87_Register use record
      HCODE174       at 0 range 0 .. 7;
      HLEN174        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE175       at 0 range 16 .. 23;
      HLEN175        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_0_HCODE0_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_0_HLEN0_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_0_HCODE1_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_0_HLEN1_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_0_Register is record
      --  Huffman code 0
      HCODE0         : JPEG_HUFFENC_AC1_0_HCODE0_Field := 16#0#;
      --  Huffman length 0
      HLEN0          : JPEG_HUFFENC_AC1_0_HLEN0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 1
      HCODE1         : JPEG_HUFFENC_AC1_0_HCODE1_Field := 16#0#;
      --  Huffman length 1
      HLEN1          : JPEG_HUFFENC_AC1_0_HLEN1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_0_Register use record
      HCODE0         at 0 range 0 .. 7;
      HLEN0          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE1         at 0 range 16 .. 23;
      HLEN1          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_1_HCODE2_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_1_HLEN2_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_1_HCODE3_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_1_HLEN3_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_1_Register is record
      --  Huffman code 2
      HCODE2         : JPEG_HUFFENC_AC1_1_HCODE2_Field := 16#0#;
      --  Huffman length 2
      HLEN2          : JPEG_HUFFENC_AC1_1_HLEN2_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 3
      HCODE3         : JPEG_HUFFENC_AC1_1_HCODE3_Field := 16#0#;
      --  Huffman length 3
      HLEN3          : JPEG_HUFFENC_AC1_1_HLEN3_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_1_Register use record
      HCODE2         at 0 range 0 .. 7;
      HLEN2          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE3         at 0 range 16 .. 23;
      HLEN3          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_2_HCODE4_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_2_HLEN4_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_2_HCODE5_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_2_HLEN5_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_2_Register is record
      --  Huffman code 4
      HCODE4         : JPEG_HUFFENC_AC1_2_HCODE4_Field := 16#0#;
      --  Huffman length 4
      HLEN4          : JPEG_HUFFENC_AC1_2_HLEN4_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 5
      HCODE5         : JPEG_HUFFENC_AC1_2_HCODE5_Field := 16#0#;
      --  Huffman length 5
      HLEN5          : JPEG_HUFFENC_AC1_2_HLEN5_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_2_Register use record
      HCODE4         at 0 range 0 .. 7;
      HLEN4          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE5         at 0 range 16 .. 23;
      HLEN5          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_3_HCODE6_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_3_HLEN6_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_3_HCODE7_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_3_HLEN7_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_3_Register is record
      --  Huffman code 6
      HCODE6         : JPEG_HUFFENC_AC1_3_HCODE6_Field := 16#0#;
      --  Huffman length 6
      HLEN6          : JPEG_HUFFENC_AC1_3_HLEN6_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 7
      HCODE7         : JPEG_HUFFENC_AC1_3_HCODE7_Field := 16#0#;
      --  Huffman length 7
      HLEN7          : JPEG_HUFFENC_AC1_3_HLEN7_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_3_Register use record
      HCODE6         at 0 range 0 .. 7;
      HLEN6          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE7         at 0 range 16 .. 23;
      HLEN7          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_4_HCODE8_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_4_HLEN8_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_4_HCODE9_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_4_HLEN9_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_4_Register is record
      --  Huffman code 8
      HCODE8         : JPEG_HUFFENC_AC1_4_HCODE8_Field := 16#0#;
      --  Huffman length 8
      HLEN8          : JPEG_HUFFENC_AC1_4_HLEN8_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 9
      HCODE9         : JPEG_HUFFENC_AC1_4_HCODE9_Field := 16#0#;
      --  Huffman length 9
      HLEN9          : JPEG_HUFFENC_AC1_4_HLEN9_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_4_Register use record
      HCODE8         at 0 range 0 .. 7;
      HLEN8          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE9         at 0 range 16 .. 23;
      HLEN9          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_5_HCODE10_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_5_HLEN10_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_5_HCODE11_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_5_HLEN11_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_5_Register is record
      --  Huffman code 10
      HCODE10        : JPEG_HUFFENC_AC1_5_HCODE10_Field := 16#0#;
      --  Huffman length 10
      HLEN10         : JPEG_HUFFENC_AC1_5_HLEN10_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 11
      HCODE11        : JPEG_HUFFENC_AC1_5_HCODE11_Field := 16#0#;
      --  Huffman length 11
      HLEN11         : JPEG_HUFFENC_AC1_5_HLEN11_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_5_Register use record
      HCODE10        at 0 range 0 .. 7;
      HLEN10         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE11        at 0 range 16 .. 23;
      HLEN11         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_6_HCODE12_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_6_HLEN12_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_6_HCODE13_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_6_HLEN13_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_6_Register is record
      --  Huffman code 12
      HCODE12        : JPEG_HUFFENC_AC1_6_HCODE12_Field := 16#0#;
      --  Huffman length 12
      HLEN12         : JPEG_HUFFENC_AC1_6_HLEN12_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 13
      HCODE13        : JPEG_HUFFENC_AC1_6_HCODE13_Field := 16#0#;
      --  Huffman length 13
      HLEN13         : JPEG_HUFFENC_AC1_6_HLEN13_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_6_Register use record
      HCODE12        at 0 range 0 .. 7;
      HLEN12         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE13        at 0 range 16 .. 23;
      HLEN13         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_7_HCODE14_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_7_HLEN14_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_7_HCODE15_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_7_HLEN15_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_7_Register is record
      --  Huffman code 14
      HCODE14        : JPEG_HUFFENC_AC1_7_HCODE14_Field := 16#0#;
      --  Huffman length 14
      HLEN14         : JPEG_HUFFENC_AC1_7_HLEN14_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 15
      HCODE15        : JPEG_HUFFENC_AC1_7_HCODE15_Field := 16#0#;
      --  Huffman length 15
      HLEN15         : JPEG_HUFFENC_AC1_7_HLEN15_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_7_Register use record
      HCODE14        at 0 range 0 .. 7;
      HLEN14         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE15        at 0 range 16 .. 23;
      HLEN15         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_8_HCODE16_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_8_HLEN16_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_8_HCODE17_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_8_HLEN17_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_8_Register is record
      --  Huffman code 16
      HCODE16        : JPEG_HUFFENC_AC1_8_HCODE16_Field := 16#0#;
      --  Huffman length 16
      HLEN16         : JPEG_HUFFENC_AC1_8_HLEN16_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 17
      HCODE17        : JPEG_HUFFENC_AC1_8_HCODE17_Field := 16#0#;
      --  Huffman length 17
      HLEN17         : JPEG_HUFFENC_AC1_8_HLEN17_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_8_Register use record
      HCODE16        at 0 range 0 .. 7;
      HLEN16         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE17        at 0 range 16 .. 23;
      HLEN17         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_9_HCODE18_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_9_HLEN18_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_9_HCODE19_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_9_HLEN19_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_9_Register is record
      --  Huffman code 18
      HCODE18        : JPEG_HUFFENC_AC1_9_HCODE18_Field := 16#0#;
      --  Huffman length 18
      HLEN18         : JPEG_HUFFENC_AC1_9_HLEN18_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 19
      HCODE19        : JPEG_HUFFENC_AC1_9_HCODE19_Field := 16#0#;
      --  Huffman length 19
      HLEN19         : JPEG_HUFFENC_AC1_9_HLEN19_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_9_Register use record
      HCODE18        at 0 range 0 .. 7;
      HLEN18         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE19        at 0 range 16 .. 23;
      HLEN19         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_10_HCODE20_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_10_HLEN20_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_10_HCODE21_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_10_HLEN21_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_10_Register is record
      --  Huffman code 20
      HCODE20        : JPEG_HUFFENC_AC1_10_HCODE20_Field := 16#0#;
      --  Huffman length 20
      HLEN20         : JPEG_HUFFENC_AC1_10_HLEN20_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 21
      HCODE21        : JPEG_HUFFENC_AC1_10_HCODE21_Field := 16#0#;
      --  Huffman length 21
      HLEN21         : JPEG_HUFFENC_AC1_10_HLEN21_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_10_Register use record
      HCODE20        at 0 range 0 .. 7;
      HLEN20         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE21        at 0 range 16 .. 23;
      HLEN21         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_11_HCODE22_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_11_HLEN22_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_11_HCODE23_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_11_HLEN23_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_11_Register is record
      --  Huffman code 22
      HCODE22        : JPEG_HUFFENC_AC1_11_HCODE22_Field := 16#0#;
      --  Huffman length 22
      HLEN22         : JPEG_HUFFENC_AC1_11_HLEN22_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 23
      HCODE23        : JPEG_HUFFENC_AC1_11_HCODE23_Field := 16#0#;
      --  Huffman length 23
      HLEN23         : JPEG_HUFFENC_AC1_11_HLEN23_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_11_Register use record
      HCODE22        at 0 range 0 .. 7;
      HLEN22         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE23        at 0 range 16 .. 23;
      HLEN23         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_12_HCODE24_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_12_HLEN24_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_12_HCODE25_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_12_HLEN25_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_12_Register is record
      --  Huffman code 24
      HCODE24        : JPEG_HUFFENC_AC1_12_HCODE24_Field := 16#0#;
      --  Huffman length 24
      HLEN24         : JPEG_HUFFENC_AC1_12_HLEN24_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 25
      HCODE25        : JPEG_HUFFENC_AC1_12_HCODE25_Field := 16#0#;
      --  Huffman length 25
      HLEN25         : JPEG_HUFFENC_AC1_12_HLEN25_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_12_Register use record
      HCODE24        at 0 range 0 .. 7;
      HLEN24         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE25        at 0 range 16 .. 23;
      HLEN25         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_13_HCODE26_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_13_HLEN26_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_13_HCODE27_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_13_HLEN27_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_13_Register is record
      --  Huffman code 26
      HCODE26        : JPEG_HUFFENC_AC1_13_HCODE26_Field := 16#0#;
      --  Huffman length 26
      HLEN26         : JPEG_HUFFENC_AC1_13_HLEN26_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 27
      HCODE27        : JPEG_HUFFENC_AC1_13_HCODE27_Field := 16#0#;
      --  Huffman length 27
      HLEN27         : JPEG_HUFFENC_AC1_13_HLEN27_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_13_Register use record
      HCODE26        at 0 range 0 .. 7;
      HLEN26         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE27        at 0 range 16 .. 23;
      HLEN27         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_14_HCODE28_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_14_HLEN28_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_14_HCODE29_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_14_HLEN29_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_14_Register is record
      --  Huffman code 28
      HCODE28        : JPEG_HUFFENC_AC1_14_HCODE28_Field := 16#0#;
      --  Huffman length 28
      HLEN28         : JPEG_HUFFENC_AC1_14_HLEN28_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 29
      HCODE29        : JPEG_HUFFENC_AC1_14_HCODE29_Field := 16#0#;
      --  Huffman length 29
      HLEN29         : JPEG_HUFFENC_AC1_14_HLEN29_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_14_Register use record
      HCODE28        at 0 range 0 .. 7;
      HLEN28         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE29        at 0 range 16 .. 23;
      HLEN29         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_15_HCODE30_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_15_HLEN30_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_15_HCODE31_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_15_HLEN31_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_15_Register is record
      --  Huffman code 30
      HCODE30        : JPEG_HUFFENC_AC1_15_HCODE30_Field := 16#0#;
      --  Huffman length 30
      HLEN30         : JPEG_HUFFENC_AC1_15_HLEN30_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 31
      HCODE31        : JPEG_HUFFENC_AC1_15_HCODE31_Field := 16#0#;
      --  Huffman length 31
      HLEN31         : JPEG_HUFFENC_AC1_15_HLEN31_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_15_Register use record
      HCODE30        at 0 range 0 .. 7;
      HLEN30         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE31        at 0 range 16 .. 23;
      HLEN31         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_16_HCODE32_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_16_HLEN32_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_16_HCODE33_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_16_HLEN33_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_16_Register is record
      --  Huffman code 32
      HCODE32        : JPEG_HUFFENC_AC1_16_HCODE32_Field := 16#0#;
      --  Huffman length 32
      HLEN32         : JPEG_HUFFENC_AC1_16_HLEN32_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 33
      HCODE33        : JPEG_HUFFENC_AC1_16_HCODE33_Field := 16#0#;
      --  Huffman length 33
      HLEN33         : JPEG_HUFFENC_AC1_16_HLEN33_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_16_Register use record
      HCODE32        at 0 range 0 .. 7;
      HLEN32         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE33        at 0 range 16 .. 23;
      HLEN33         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_17_HCODE34_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_17_HLEN34_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_17_HCODE35_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_17_HLEN35_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_17_Register is record
      --  Huffman code 34
      HCODE34        : JPEG_HUFFENC_AC1_17_HCODE34_Field := 16#0#;
      --  Huffman length 34
      HLEN34         : JPEG_HUFFENC_AC1_17_HLEN34_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 35
      HCODE35        : JPEG_HUFFENC_AC1_17_HCODE35_Field := 16#0#;
      --  Huffman length 35
      HLEN35         : JPEG_HUFFENC_AC1_17_HLEN35_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_17_Register use record
      HCODE34        at 0 range 0 .. 7;
      HLEN34         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE35        at 0 range 16 .. 23;
      HLEN35         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_18_HCODE36_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_18_HLEN36_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_18_HCODE37_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_18_HLEN37_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_18_Register is record
      --  Huffman code 36
      HCODE36        : JPEG_HUFFENC_AC1_18_HCODE36_Field := 16#0#;
      --  Huffman length 36
      HLEN36         : JPEG_HUFFENC_AC1_18_HLEN36_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 37
      HCODE37        : JPEG_HUFFENC_AC1_18_HCODE37_Field := 16#0#;
      --  Huffman length 37
      HLEN37         : JPEG_HUFFENC_AC1_18_HLEN37_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_18_Register use record
      HCODE36        at 0 range 0 .. 7;
      HLEN36         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE37        at 0 range 16 .. 23;
      HLEN37         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_19_HCODE38_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_19_HLEN38_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_19_HCODE39_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_19_HLEN39_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_19_Register is record
      --  Huffman code 38
      HCODE38        : JPEG_HUFFENC_AC1_19_HCODE38_Field := 16#0#;
      --  Huffman length 38
      HLEN38         : JPEG_HUFFENC_AC1_19_HLEN38_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 39
      HCODE39        : JPEG_HUFFENC_AC1_19_HCODE39_Field := 16#0#;
      --  Huffman length 39
      HLEN39         : JPEG_HUFFENC_AC1_19_HLEN39_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_19_Register use record
      HCODE38        at 0 range 0 .. 7;
      HLEN38         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE39        at 0 range 16 .. 23;
      HLEN39         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_20_HCODE40_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_20_HLEN40_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_20_HCODE41_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_20_HLEN41_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_20_Register is record
      --  Huffman code 40
      HCODE40        : JPEG_HUFFENC_AC1_20_HCODE40_Field := 16#0#;
      --  Huffman length 40
      HLEN40         : JPEG_HUFFENC_AC1_20_HLEN40_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 41
      HCODE41        : JPEG_HUFFENC_AC1_20_HCODE41_Field := 16#0#;
      --  Huffman length 41
      HLEN41         : JPEG_HUFFENC_AC1_20_HLEN41_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_20_Register use record
      HCODE40        at 0 range 0 .. 7;
      HLEN40         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE41        at 0 range 16 .. 23;
      HLEN41         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_21_HCODE42_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_21_HLEN42_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_21_HCODE43_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_21_HLEN43_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_21_Register is record
      --  Huffman code 42
      HCODE42        : JPEG_HUFFENC_AC1_21_HCODE42_Field := 16#0#;
      --  Huffman length 42
      HLEN42         : JPEG_HUFFENC_AC1_21_HLEN42_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 43
      HCODE43        : JPEG_HUFFENC_AC1_21_HCODE43_Field := 16#0#;
      --  Huffman length 43
      HLEN43         : JPEG_HUFFENC_AC1_21_HLEN43_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_21_Register use record
      HCODE42        at 0 range 0 .. 7;
      HLEN42         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE43        at 0 range 16 .. 23;
      HLEN43         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_22_HCODE44_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_22_HLEN44_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_22_HCODE45_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_22_HLEN45_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_22_Register is record
      --  Huffman code 44
      HCODE44        : JPEG_HUFFENC_AC1_22_HCODE44_Field := 16#0#;
      --  Huffman length 44
      HLEN44         : JPEG_HUFFENC_AC1_22_HLEN44_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 45
      HCODE45        : JPEG_HUFFENC_AC1_22_HCODE45_Field := 16#0#;
      --  Huffman length 45
      HLEN45         : JPEG_HUFFENC_AC1_22_HLEN45_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_22_Register use record
      HCODE44        at 0 range 0 .. 7;
      HLEN44         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE45        at 0 range 16 .. 23;
      HLEN45         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_23_HCODE46_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_23_HLEN46_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_23_HCODE47_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_23_HLEN47_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_23_Register is record
      --  Huffman code 46
      HCODE46        : JPEG_HUFFENC_AC1_23_HCODE46_Field := 16#0#;
      --  Huffman length 46
      HLEN46         : JPEG_HUFFENC_AC1_23_HLEN46_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 47
      HCODE47        : JPEG_HUFFENC_AC1_23_HCODE47_Field := 16#0#;
      --  Huffman length 47
      HLEN47         : JPEG_HUFFENC_AC1_23_HLEN47_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_23_Register use record
      HCODE46        at 0 range 0 .. 7;
      HLEN46         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE47        at 0 range 16 .. 23;
      HLEN47         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_24_HCODE48_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_24_HLEN48_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_24_HCODE49_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_24_HLEN49_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_24_Register is record
      --  Huffman code 48
      HCODE48        : JPEG_HUFFENC_AC1_24_HCODE48_Field := 16#0#;
      --  Huffman length 48
      HLEN48         : JPEG_HUFFENC_AC1_24_HLEN48_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 49
      HCODE49        : JPEG_HUFFENC_AC1_24_HCODE49_Field := 16#0#;
      --  Huffman length 49
      HLEN49         : JPEG_HUFFENC_AC1_24_HLEN49_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_24_Register use record
      HCODE48        at 0 range 0 .. 7;
      HLEN48         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE49        at 0 range 16 .. 23;
      HLEN49         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_25_HCODE50_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_25_HLEN50_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_25_HCODE51_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_25_HLEN51_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_25_Register is record
      --  Huffman code 50
      HCODE50        : JPEG_HUFFENC_AC1_25_HCODE50_Field := 16#0#;
      --  Huffman length 50
      HLEN50         : JPEG_HUFFENC_AC1_25_HLEN50_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 51
      HCODE51        : JPEG_HUFFENC_AC1_25_HCODE51_Field := 16#0#;
      --  Huffman length 51
      HLEN51         : JPEG_HUFFENC_AC1_25_HLEN51_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_25_Register use record
      HCODE50        at 0 range 0 .. 7;
      HLEN50         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE51        at 0 range 16 .. 23;
      HLEN51         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_26_HCODE52_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_26_HLEN52_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_26_HCODE53_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_26_HLEN53_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_26_Register is record
      --  Huffman code 52
      HCODE52        : JPEG_HUFFENC_AC1_26_HCODE52_Field := 16#0#;
      --  Huffman length 52
      HLEN52         : JPEG_HUFFENC_AC1_26_HLEN52_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 53
      HCODE53        : JPEG_HUFFENC_AC1_26_HCODE53_Field := 16#0#;
      --  Huffman length 53
      HLEN53         : JPEG_HUFFENC_AC1_26_HLEN53_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_26_Register use record
      HCODE52        at 0 range 0 .. 7;
      HLEN52         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE53        at 0 range 16 .. 23;
      HLEN53         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_27_HCODE54_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_27_HLEN54_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_27_HCODE55_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_27_HLEN55_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_27_Register is record
      --  Huffman code 54
      HCODE54        : JPEG_HUFFENC_AC1_27_HCODE54_Field := 16#0#;
      --  Huffman length 54
      HLEN54         : JPEG_HUFFENC_AC1_27_HLEN54_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 55
      HCODE55        : JPEG_HUFFENC_AC1_27_HCODE55_Field := 16#0#;
      --  Huffman length 55
      HLEN55         : JPEG_HUFFENC_AC1_27_HLEN55_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_27_Register use record
      HCODE54        at 0 range 0 .. 7;
      HLEN54         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE55        at 0 range 16 .. 23;
      HLEN55         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_28_HCODE56_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_28_HLEN56_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_28_HCODE57_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_28_HLEN57_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_28_Register is record
      --  Huffman code 56
      HCODE56        : JPEG_HUFFENC_AC1_28_HCODE56_Field := 16#0#;
      --  Huffman length 56
      HLEN56         : JPEG_HUFFENC_AC1_28_HLEN56_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 57
      HCODE57        : JPEG_HUFFENC_AC1_28_HCODE57_Field := 16#0#;
      --  Huffman length 57
      HLEN57         : JPEG_HUFFENC_AC1_28_HLEN57_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_28_Register use record
      HCODE56        at 0 range 0 .. 7;
      HLEN56         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE57        at 0 range 16 .. 23;
      HLEN57         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_29_HCODE58_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_29_HLEN58_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_29_HCODE59_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_29_HLEN59_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_29_Register is record
      --  Huffman code 58
      HCODE58        : JPEG_HUFFENC_AC1_29_HCODE58_Field := 16#0#;
      --  Huffman length 58
      HLEN58         : JPEG_HUFFENC_AC1_29_HLEN58_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 59
      HCODE59        : JPEG_HUFFENC_AC1_29_HCODE59_Field := 16#0#;
      --  Huffman length 59
      HLEN59         : JPEG_HUFFENC_AC1_29_HLEN59_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_29_Register use record
      HCODE58        at 0 range 0 .. 7;
      HLEN58         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE59        at 0 range 16 .. 23;
      HLEN59         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_30_HCODE60_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_30_HLEN60_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_30_HCODE61_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_30_HLEN61_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_30_Register is record
      --  Huffman code 60
      HCODE60        : JPEG_HUFFENC_AC1_30_HCODE60_Field := 16#0#;
      --  Huffman length 60
      HLEN60         : JPEG_HUFFENC_AC1_30_HLEN60_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 61
      HCODE61        : JPEG_HUFFENC_AC1_30_HCODE61_Field := 16#0#;
      --  Huffman length 61
      HLEN61         : JPEG_HUFFENC_AC1_30_HLEN61_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_30_Register use record
      HCODE60        at 0 range 0 .. 7;
      HLEN60         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE61        at 0 range 16 .. 23;
      HLEN61         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_31_HCODE62_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_31_HLEN62_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_31_HCODE63_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_31_HLEN63_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_31_Register is record
      --  Huffman code 62
      HCODE62        : JPEG_HUFFENC_AC1_31_HCODE62_Field := 16#0#;
      --  Huffman length 62
      HLEN62         : JPEG_HUFFENC_AC1_31_HLEN62_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 63
      HCODE63        : JPEG_HUFFENC_AC1_31_HCODE63_Field := 16#0#;
      --  Huffman length 63
      HLEN63         : JPEG_HUFFENC_AC1_31_HLEN63_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_31_Register use record
      HCODE62        at 0 range 0 .. 7;
      HLEN62         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE63        at 0 range 16 .. 23;
      HLEN63         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_32_HCODE64_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_32_HLEN64_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_32_HCODE65_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_32_HLEN65_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_32_Register is record
      --  Huffman code 64
      HCODE64        : JPEG_HUFFENC_AC1_32_HCODE64_Field := 16#0#;
      --  Huffman length 64
      HLEN64         : JPEG_HUFFENC_AC1_32_HLEN64_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 65
      HCODE65        : JPEG_HUFFENC_AC1_32_HCODE65_Field := 16#0#;
      --  Huffman length 65
      HLEN65         : JPEG_HUFFENC_AC1_32_HLEN65_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_32_Register use record
      HCODE64        at 0 range 0 .. 7;
      HLEN64         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE65        at 0 range 16 .. 23;
      HLEN65         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_33_HCODE66_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_33_HLEN66_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_33_HCODE67_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_33_HLEN67_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_33_Register is record
      --  Huffman code 66
      HCODE66        : JPEG_HUFFENC_AC1_33_HCODE66_Field := 16#0#;
      --  Huffman length 66
      HLEN66         : JPEG_HUFFENC_AC1_33_HLEN66_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 67
      HCODE67        : JPEG_HUFFENC_AC1_33_HCODE67_Field := 16#0#;
      --  Huffman length 67
      HLEN67         : JPEG_HUFFENC_AC1_33_HLEN67_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_33_Register use record
      HCODE66        at 0 range 0 .. 7;
      HLEN66         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE67        at 0 range 16 .. 23;
      HLEN67         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_34_HCODE68_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_34_HLEN68_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_34_HCODE69_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_34_HLEN69_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_34_Register is record
      --  Huffman code 68
      HCODE68        : JPEG_HUFFENC_AC1_34_HCODE68_Field := 16#0#;
      --  Huffman length 68
      HLEN68         : JPEG_HUFFENC_AC1_34_HLEN68_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 69
      HCODE69        : JPEG_HUFFENC_AC1_34_HCODE69_Field := 16#0#;
      --  Huffman length 69
      HLEN69         : JPEG_HUFFENC_AC1_34_HLEN69_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_34_Register use record
      HCODE68        at 0 range 0 .. 7;
      HLEN68         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE69        at 0 range 16 .. 23;
      HLEN69         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_35_HCODE70_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_35_HLEN70_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_35_HCODE71_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_35_HLEN71_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_35_Register is record
      --  Huffman code 70
      HCODE70        : JPEG_HUFFENC_AC1_35_HCODE70_Field := 16#0#;
      --  Huffman length 70
      HLEN70         : JPEG_HUFFENC_AC1_35_HLEN70_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 71
      HCODE71        : JPEG_HUFFENC_AC1_35_HCODE71_Field := 16#0#;
      --  Huffman length 71
      HLEN71         : JPEG_HUFFENC_AC1_35_HLEN71_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_35_Register use record
      HCODE70        at 0 range 0 .. 7;
      HLEN70         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE71        at 0 range 16 .. 23;
      HLEN71         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_36_HCODE72_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_36_HLEN72_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_36_HCODE73_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_36_HLEN73_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_36_Register is record
      --  Huffman code 72
      HCODE72        : JPEG_HUFFENC_AC1_36_HCODE72_Field := 16#0#;
      --  Huffman length 72
      HLEN72         : JPEG_HUFFENC_AC1_36_HLEN72_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 73
      HCODE73        : JPEG_HUFFENC_AC1_36_HCODE73_Field := 16#0#;
      --  Huffman length 73
      HLEN73         : JPEG_HUFFENC_AC1_36_HLEN73_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_36_Register use record
      HCODE72        at 0 range 0 .. 7;
      HLEN72         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE73        at 0 range 16 .. 23;
      HLEN73         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_37_HCODE74_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_37_HLEN74_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_37_HCODE75_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_37_HLEN75_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_37_Register is record
      --  Huffman code 74
      HCODE74        : JPEG_HUFFENC_AC1_37_HCODE74_Field := 16#0#;
      --  Huffman length 74
      HLEN74         : JPEG_HUFFENC_AC1_37_HLEN74_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 75
      HCODE75        : JPEG_HUFFENC_AC1_37_HCODE75_Field := 16#0#;
      --  Huffman length 75
      HLEN75         : JPEG_HUFFENC_AC1_37_HLEN75_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_37_Register use record
      HCODE74        at 0 range 0 .. 7;
      HLEN74         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE75        at 0 range 16 .. 23;
      HLEN75         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_38_HCODE76_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_38_HLEN76_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_38_HCODE77_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_38_HLEN77_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_38_Register is record
      --  Huffman code 76
      HCODE76        : JPEG_HUFFENC_AC1_38_HCODE76_Field := 16#0#;
      --  Huffman length 76
      HLEN76         : JPEG_HUFFENC_AC1_38_HLEN76_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 77
      HCODE77        : JPEG_HUFFENC_AC1_38_HCODE77_Field := 16#0#;
      --  Huffman length 77
      HLEN77         : JPEG_HUFFENC_AC1_38_HLEN77_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_38_Register use record
      HCODE76        at 0 range 0 .. 7;
      HLEN76         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE77        at 0 range 16 .. 23;
      HLEN77         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_39_HCODE78_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_39_HLEN78_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_39_HCODE79_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_39_HLEN79_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_39_Register is record
      --  Huffman code 78
      HCODE78        : JPEG_HUFFENC_AC1_39_HCODE78_Field := 16#0#;
      --  Huffman length 78
      HLEN78         : JPEG_HUFFENC_AC1_39_HLEN78_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 79
      HCODE79        : JPEG_HUFFENC_AC1_39_HCODE79_Field := 16#0#;
      --  Huffman length 79
      HLEN79         : JPEG_HUFFENC_AC1_39_HLEN79_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_39_Register use record
      HCODE78        at 0 range 0 .. 7;
      HLEN78         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE79        at 0 range 16 .. 23;
      HLEN79         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_40_HCODE80_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_40_HLEN80_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_40_HCODE81_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_40_HLEN81_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_40_Register is record
      --  Huffman code 80
      HCODE80        : JPEG_HUFFENC_AC1_40_HCODE80_Field := 16#0#;
      --  Huffman length 80
      HLEN80         : JPEG_HUFFENC_AC1_40_HLEN80_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 81
      HCODE81        : JPEG_HUFFENC_AC1_40_HCODE81_Field := 16#0#;
      --  Huffman length 81
      HLEN81         : JPEG_HUFFENC_AC1_40_HLEN81_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_40_Register use record
      HCODE80        at 0 range 0 .. 7;
      HLEN80         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE81        at 0 range 16 .. 23;
      HLEN81         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_41_HCODE82_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_41_HLEN82_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_41_HCODE83_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_41_HLEN83_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_41_Register is record
      --  Huffman code 82
      HCODE82        : JPEG_HUFFENC_AC1_41_HCODE82_Field := 16#0#;
      --  Huffman length 82
      HLEN82         : JPEG_HUFFENC_AC1_41_HLEN82_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 83
      HCODE83        : JPEG_HUFFENC_AC1_41_HCODE83_Field := 16#0#;
      --  Huffman length 83
      HLEN83         : JPEG_HUFFENC_AC1_41_HLEN83_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_41_Register use record
      HCODE82        at 0 range 0 .. 7;
      HLEN82         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE83        at 0 range 16 .. 23;
      HLEN83         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_42_HCODE84_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_42_HLEN84_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_42_HCODE85_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_42_HLEN85_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_42_Register is record
      --  Huffman code 84
      HCODE84        : JPEG_HUFFENC_AC1_42_HCODE84_Field := 16#0#;
      --  Huffman length 84
      HLEN84         : JPEG_HUFFENC_AC1_42_HLEN84_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 85
      HCODE85        : JPEG_HUFFENC_AC1_42_HCODE85_Field := 16#0#;
      --  Huffman length 85
      HLEN85         : JPEG_HUFFENC_AC1_42_HLEN85_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_42_Register use record
      HCODE84        at 0 range 0 .. 7;
      HLEN84         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE85        at 0 range 16 .. 23;
      HLEN85         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_43_HCODE86_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_43_HLEN86_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_43_HCODE87_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_43_HLEN87_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_43_Register is record
      --  Huffman code 86
      HCODE86        : JPEG_HUFFENC_AC1_43_HCODE86_Field := 16#0#;
      --  Huffman length 86
      HLEN86         : JPEG_HUFFENC_AC1_43_HLEN86_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 87
      HCODE87        : JPEG_HUFFENC_AC1_43_HCODE87_Field := 16#0#;
      --  Huffman length 87
      HLEN87         : JPEG_HUFFENC_AC1_43_HLEN87_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_43_Register use record
      HCODE86        at 0 range 0 .. 7;
      HLEN86         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE87        at 0 range 16 .. 23;
      HLEN87         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_44_HCODE88_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_44_HLEN88_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_44_HCODE89_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_44_HLEN89_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_44_Register is record
      --  Huffman code 88
      HCODE88        : JPEG_HUFFENC_AC1_44_HCODE88_Field := 16#0#;
      --  Huffman length 88
      HLEN88         : JPEG_HUFFENC_AC1_44_HLEN88_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 89
      HCODE89        : JPEG_HUFFENC_AC1_44_HCODE89_Field := 16#0#;
      --  Huffman length 89
      HLEN89         : JPEG_HUFFENC_AC1_44_HLEN89_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_44_Register use record
      HCODE88        at 0 range 0 .. 7;
      HLEN88         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE89        at 0 range 16 .. 23;
      HLEN89         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_45_HCODE90_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_45_HLEN90_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_45_HCODE91_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_45_HLEN91_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_45_Register is record
      --  Huffman code 90
      HCODE90        : JPEG_HUFFENC_AC1_45_HCODE90_Field := 16#0#;
      --  Huffman length 90
      HLEN90         : JPEG_HUFFENC_AC1_45_HLEN90_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 91
      HCODE91        : JPEG_HUFFENC_AC1_45_HCODE91_Field := 16#0#;
      --  Huffman length 91
      HLEN91         : JPEG_HUFFENC_AC1_45_HLEN91_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_45_Register use record
      HCODE90        at 0 range 0 .. 7;
      HLEN90         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE91        at 0 range 16 .. 23;
      HLEN91         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_46_HCODE92_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_46_HLEN92_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_46_HCODE93_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_46_HLEN93_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_46_Register is record
      --  Huffman code 92
      HCODE92        : JPEG_HUFFENC_AC1_46_HCODE92_Field := 16#0#;
      --  Huffman length 92
      HLEN92         : JPEG_HUFFENC_AC1_46_HLEN92_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 93
      HCODE93        : JPEG_HUFFENC_AC1_46_HCODE93_Field := 16#0#;
      --  Huffman length 93
      HLEN93         : JPEG_HUFFENC_AC1_46_HLEN93_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_46_Register use record
      HCODE92        at 0 range 0 .. 7;
      HLEN92         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE93        at 0 range 16 .. 23;
      HLEN93         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_47_HCODE94_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_47_HLEN94_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_47_HCODE95_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_47_HLEN95_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_47_Register is record
      --  Huffman code 94
      HCODE94        : JPEG_HUFFENC_AC1_47_HCODE94_Field := 16#0#;
      --  Huffman length 94
      HLEN94         : JPEG_HUFFENC_AC1_47_HLEN94_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 95
      HCODE95        : JPEG_HUFFENC_AC1_47_HCODE95_Field := 16#0#;
      --  Huffman length 95
      HLEN95         : JPEG_HUFFENC_AC1_47_HLEN95_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_47_Register use record
      HCODE94        at 0 range 0 .. 7;
      HLEN94         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE95        at 0 range 16 .. 23;
      HLEN95         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_48_HCODE96_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_48_HLEN96_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_48_HCODE97_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_48_HLEN97_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_48_Register is record
      --  Huffman code 96
      HCODE96        : JPEG_HUFFENC_AC1_48_HCODE96_Field := 16#0#;
      --  Huffman length 96
      HLEN96         : JPEG_HUFFENC_AC1_48_HLEN96_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 97
      HCODE97        : JPEG_HUFFENC_AC1_48_HCODE97_Field := 16#0#;
      --  Huffman length 97
      HLEN97         : JPEG_HUFFENC_AC1_48_HLEN97_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_48_Register use record
      HCODE96        at 0 range 0 .. 7;
      HLEN96         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE97        at 0 range 16 .. 23;
      HLEN97         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_49_HCODE98_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_49_HLEN98_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_49_HCODE99_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_49_HLEN99_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_49_Register is record
      --  Huffman code 98
      HCODE98        : JPEG_HUFFENC_AC1_49_HCODE98_Field := 16#0#;
      --  Huffman length 98
      HLEN98         : JPEG_HUFFENC_AC1_49_HLEN98_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 99
      HCODE99        : JPEG_HUFFENC_AC1_49_HCODE99_Field := 16#0#;
      --  Huffman length 99
      HLEN99         : JPEG_HUFFENC_AC1_49_HLEN99_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_49_Register use record
      HCODE98        at 0 range 0 .. 7;
      HLEN98         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE99        at 0 range 16 .. 23;
      HLEN99         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_50_HCODE100_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_50_HLEN100_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_50_HCODE101_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_50_HLEN101_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_50_Register is record
      --  Huffman code 100
      HCODE100       : JPEG_HUFFENC_AC1_50_HCODE100_Field := 16#0#;
      --  Huffman length 100
      HLEN100        : JPEG_HUFFENC_AC1_50_HLEN100_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 101
      HCODE101       : JPEG_HUFFENC_AC1_50_HCODE101_Field := 16#0#;
      --  Huffman length 101
      HLEN101        : JPEG_HUFFENC_AC1_50_HLEN101_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_50_Register use record
      HCODE100       at 0 range 0 .. 7;
      HLEN100        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE101       at 0 range 16 .. 23;
      HLEN101        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_51_HCODE102_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_51_HLEN102_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_51_HCODE103_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_51_HLEN103_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_51_Register is record
      --  Huffman code 102
      HCODE102       : JPEG_HUFFENC_AC1_51_HCODE102_Field := 16#0#;
      --  Huffman length 102
      HLEN102        : JPEG_HUFFENC_AC1_51_HLEN102_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 103
      HCODE103       : JPEG_HUFFENC_AC1_51_HCODE103_Field := 16#0#;
      --  Huffman length 103
      HLEN103        : JPEG_HUFFENC_AC1_51_HLEN103_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_51_Register use record
      HCODE102       at 0 range 0 .. 7;
      HLEN102        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE103       at 0 range 16 .. 23;
      HLEN103        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_52_HCODE104_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_52_HLEN104_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_52_HCODE105_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_52_HLEN105_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_52_Register is record
      --  Huffman code 104
      HCODE104       : JPEG_HUFFENC_AC1_52_HCODE104_Field := 16#0#;
      --  Huffman length 104
      HLEN104        : JPEG_HUFFENC_AC1_52_HLEN104_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 105
      HCODE105       : JPEG_HUFFENC_AC1_52_HCODE105_Field := 16#0#;
      --  Huffman length 105
      HLEN105        : JPEG_HUFFENC_AC1_52_HLEN105_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_52_Register use record
      HCODE104       at 0 range 0 .. 7;
      HLEN104        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE105       at 0 range 16 .. 23;
      HLEN105        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_53_HCODE106_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_53_HLEN106_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_53_HCODE107_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_53_HLEN107_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_53_Register is record
      --  Huffman code 106
      HCODE106       : JPEG_HUFFENC_AC1_53_HCODE106_Field := 16#0#;
      --  Huffman length 106
      HLEN106        : JPEG_HUFFENC_AC1_53_HLEN106_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 107
      HCODE107       : JPEG_HUFFENC_AC1_53_HCODE107_Field := 16#0#;
      --  Huffman length 107
      HLEN107        : JPEG_HUFFENC_AC1_53_HLEN107_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_53_Register use record
      HCODE106       at 0 range 0 .. 7;
      HLEN106        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE107       at 0 range 16 .. 23;
      HLEN107        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_54_HCODE108_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_54_HLEN108_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_54_HCODE109_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_54_HLEN109_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_54_Register is record
      --  Huffman code 108
      HCODE108       : JPEG_HUFFENC_AC1_54_HCODE108_Field := 16#0#;
      --  Huffman length 108
      HLEN108        : JPEG_HUFFENC_AC1_54_HLEN108_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 109
      HCODE109       : JPEG_HUFFENC_AC1_54_HCODE109_Field := 16#0#;
      --  Huffman length 109
      HLEN109        : JPEG_HUFFENC_AC1_54_HLEN109_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_54_Register use record
      HCODE108       at 0 range 0 .. 7;
      HLEN108        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE109       at 0 range 16 .. 23;
      HLEN109        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_55_HCODE110_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_55_HLEN110_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_55_HCODE111_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_55_HLEN111_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_55_Register is record
      --  Huffman code 110
      HCODE110       : JPEG_HUFFENC_AC1_55_HCODE110_Field := 16#0#;
      --  Huffman length 110
      HLEN110        : JPEG_HUFFENC_AC1_55_HLEN110_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 111
      HCODE111       : JPEG_HUFFENC_AC1_55_HCODE111_Field := 16#0#;
      --  Huffman length 111
      HLEN111        : JPEG_HUFFENC_AC1_55_HLEN111_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_55_Register use record
      HCODE110       at 0 range 0 .. 7;
      HLEN110        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE111       at 0 range 16 .. 23;
      HLEN111        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_56_HCODE112_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_56_HLEN112_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_56_HCODE113_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_56_HLEN113_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_56_Register is record
      --  Huffman code 112
      HCODE112       : JPEG_HUFFENC_AC1_56_HCODE112_Field := 16#0#;
      --  Huffman length 112
      HLEN112        : JPEG_HUFFENC_AC1_56_HLEN112_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 113
      HCODE113       : JPEG_HUFFENC_AC1_56_HCODE113_Field := 16#0#;
      --  Huffman length 113
      HLEN113        : JPEG_HUFFENC_AC1_56_HLEN113_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_56_Register use record
      HCODE112       at 0 range 0 .. 7;
      HLEN112        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE113       at 0 range 16 .. 23;
      HLEN113        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_57_HCODE114_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_57_HLEN114_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_57_HCODE115_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_57_HLEN115_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_57_Register is record
      --  Huffman code 114
      HCODE114       : JPEG_HUFFENC_AC1_57_HCODE114_Field := 16#0#;
      --  Huffman length 114
      HLEN114        : JPEG_HUFFENC_AC1_57_HLEN114_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 115
      HCODE115       : JPEG_HUFFENC_AC1_57_HCODE115_Field := 16#0#;
      --  Huffman length 115
      HLEN115        : JPEG_HUFFENC_AC1_57_HLEN115_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_57_Register use record
      HCODE114       at 0 range 0 .. 7;
      HLEN114        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE115       at 0 range 16 .. 23;
      HLEN115        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_58_HCODE116_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_58_HLEN116_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_58_HCODE117_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_58_HLEN117_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_58_Register is record
      --  Huffman code 116
      HCODE116       : JPEG_HUFFENC_AC1_58_HCODE116_Field := 16#0#;
      --  Huffman length 116
      HLEN116        : JPEG_HUFFENC_AC1_58_HLEN116_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 117
      HCODE117       : JPEG_HUFFENC_AC1_58_HCODE117_Field := 16#0#;
      --  Huffman length 117
      HLEN117        : JPEG_HUFFENC_AC1_58_HLEN117_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_58_Register use record
      HCODE116       at 0 range 0 .. 7;
      HLEN116        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE117       at 0 range 16 .. 23;
      HLEN117        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_59_HCODE118_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_59_HLEN118_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_59_HCODE119_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_59_HLEN119_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_59_Register is record
      --  Huffman code 118
      HCODE118       : JPEG_HUFFENC_AC1_59_HCODE118_Field := 16#0#;
      --  Huffman length 118
      HLEN118        : JPEG_HUFFENC_AC1_59_HLEN118_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 119
      HCODE119       : JPEG_HUFFENC_AC1_59_HCODE119_Field := 16#0#;
      --  Huffman length 119
      HLEN119        : JPEG_HUFFENC_AC1_59_HLEN119_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_59_Register use record
      HCODE118       at 0 range 0 .. 7;
      HLEN118        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE119       at 0 range 16 .. 23;
      HLEN119        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_60_HCODE120_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_60_HLEN120_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_60_HCODE121_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_60_HLEN121_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_60_Register is record
      --  Huffman code 120
      HCODE120       : JPEG_HUFFENC_AC1_60_HCODE120_Field := 16#0#;
      --  Huffman length 120
      HLEN120        : JPEG_HUFFENC_AC1_60_HLEN120_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 121
      HCODE121       : JPEG_HUFFENC_AC1_60_HCODE121_Field := 16#0#;
      --  Huffman length 121
      HLEN121        : JPEG_HUFFENC_AC1_60_HLEN121_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_60_Register use record
      HCODE120       at 0 range 0 .. 7;
      HLEN120        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE121       at 0 range 16 .. 23;
      HLEN121        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_61_HCODE122_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_61_HLEN122_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_61_HCODE123_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_61_HLEN123_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_61_Register is record
      --  Huffman code 122
      HCODE122       : JPEG_HUFFENC_AC1_61_HCODE122_Field := 16#0#;
      --  Huffman length 122
      HLEN122        : JPEG_HUFFENC_AC1_61_HLEN122_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 123
      HCODE123       : JPEG_HUFFENC_AC1_61_HCODE123_Field := 16#0#;
      --  Huffman length 123
      HLEN123        : JPEG_HUFFENC_AC1_61_HLEN123_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_61_Register use record
      HCODE122       at 0 range 0 .. 7;
      HLEN122        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE123       at 0 range 16 .. 23;
      HLEN123        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_62_HCODE124_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_62_HLEN124_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_62_HCODE125_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_62_HLEN125_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_62_Register is record
      --  Huffman code 124
      HCODE124       : JPEG_HUFFENC_AC1_62_HCODE124_Field := 16#0#;
      --  Huffman length 124
      HLEN124        : JPEG_HUFFENC_AC1_62_HLEN124_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 125
      HCODE125       : JPEG_HUFFENC_AC1_62_HCODE125_Field := 16#0#;
      --  Huffman length 125
      HLEN125        : JPEG_HUFFENC_AC1_62_HLEN125_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_62_Register use record
      HCODE124       at 0 range 0 .. 7;
      HLEN124        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE125       at 0 range 16 .. 23;
      HLEN125        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_63_HCODE126_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_63_HLEN126_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_63_HCODE127_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_63_HLEN127_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_63_Register is record
      --  Huffman code 126
      HCODE126       : JPEG_HUFFENC_AC1_63_HCODE126_Field := 16#0#;
      --  Huffman length 126
      HLEN126        : JPEG_HUFFENC_AC1_63_HLEN126_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 127
      HCODE127       : JPEG_HUFFENC_AC1_63_HCODE127_Field := 16#0#;
      --  Huffman length 127
      HLEN127        : JPEG_HUFFENC_AC1_63_HLEN127_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_63_Register use record
      HCODE126       at 0 range 0 .. 7;
      HLEN126        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE127       at 0 range 16 .. 23;
      HLEN127        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_64_HCODE128_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_64_HLEN128_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_64_HCODE129_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_64_HLEN129_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_64_Register is record
      --  Huffman code 128
      HCODE128       : JPEG_HUFFENC_AC1_64_HCODE128_Field := 16#0#;
      --  Huffman length 128
      HLEN128        : JPEG_HUFFENC_AC1_64_HLEN128_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 129
      HCODE129       : JPEG_HUFFENC_AC1_64_HCODE129_Field := 16#0#;
      --  Huffman length 129
      HLEN129        : JPEG_HUFFENC_AC1_64_HLEN129_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_64_Register use record
      HCODE128       at 0 range 0 .. 7;
      HLEN128        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE129       at 0 range 16 .. 23;
      HLEN129        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_65_HCODE130_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_65_HLEN130_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_65_HCODE131_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_65_HLEN131_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_65_Register is record
      --  Huffman code 130
      HCODE130       : JPEG_HUFFENC_AC1_65_HCODE130_Field := 16#0#;
      --  Huffman length 130
      HLEN130        : JPEG_HUFFENC_AC1_65_HLEN130_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 131
      HCODE131       : JPEG_HUFFENC_AC1_65_HCODE131_Field := 16#0#;
      --  Huffman length 131
      HLEN131        : JPEG_HUFFENC_AC1_65_HLEN131_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_65_Register use record
      HCODE130       at 0 range 0 .. 7;
      HLEN130        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE131       at 0 range 16 .. 23;
      HLEN131        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_66_HCODE132_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_66_HLEN132_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_66_HCODE133_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_66_HLEN133_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_66_Register is record
      --  Huffman code 132
      HCODE132       : JPEG_HUFFENC_AC1_66_HCODE132_Field := 16#0#;
      --  Huffman length 132
      HLEN132        : JPEG_HUFFENC_AC1_66_HLEN132_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 133
      HCODE133       : JPEG_HUFFENC_AC1_66_HCODE133_Field := 16#0#;
      --  Huffman length 133
      HLEN133        : JPEG_HUFFENC_AC1_66_HLEN133_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_66_Register use record
      HCODE132       at 0 range 0 .. 7;
      HLEN132        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE133       at 0 range 16 .. 23;
      HLEN133        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_67_HCODE134_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_67_HLEN134_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_67_HCODE135_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_67_HLEN135_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_67_Register is record
      --  Huffman code 134
      HCODE134       : JPEG_HUFFENC_AC1_67_HCODE134_Field := 16#0#;
      --  Huffman length 134
      HLEN134        : JPEG_HUFFENC_AC1_67_HLEN134_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 135
      HCODE135       : JPEG_HUFFENC_AC1_67_HCODE135_Field := 16#0#;
      --  Huffman length 135
      HLEN135        : JPEG_HUFFENC_AC1_67_HLEN135_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_67_Register use record
      HCODE134       at 0 range 0 .. 7;
      HLEN134        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE135       at 0 range 16 .. 23;
      HLEN135        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_68_HCODE136_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_68_HLEN136_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_68_HCODE137_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_68_HLEN137_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_68_Register is record
      --  Huffman code 136
      HCODE136       : JPEG_HUFFENC_AC1_68_HCODE136_Field := 16#0#;
      --  Huffman length 136
      HLEN136        : JPEG_HUFFENC_AC1_68_HLEN136_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 137
      HCODE137       : JPEG_HUFFENC_AC1_68_HCODE137_Field := 16#0#;
      --  Huffman length 137
      HLEN137        : JPEG_HUFFENC_AC1_68_HLEN137_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_68_Register use record
      HCODE136       at 0 range 0 .. 7;
      HLEN136        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE137       at 0 range 16 .. 23;
      HLEN137        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_69_HCODE138_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_69_HLEN138_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_69_HCODE139_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_69_HLEN139_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_69_Register is record
      --  Huffman code 138
      HCODE138       : JPEG_HUFFENC_AC1_69_HCODE138_Field := 16#0#;
      --  Huffman length 138
      HLEN138        : JPEG_HUFFENC_AC1_69_HLEN138_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 139
      HCODE139       : JPEG_HUFFENC_AC1_69_HCODE139_Field := 16#0#;
      --  Huffman length 139
      HLEN139        : JPEG_HUFFENC_AC1_69_HLEN139_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_69_Register use record
      HCODE138       at 0 range 0 .. 7;
      HLEN138        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE139       at 0 range 16 .. 23;
      HLEN139        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_70_HCODE140_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_70_HLEN140_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_70_HCODE141_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_70_HLEN141_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_70_Register is record
      --  Huffman code 140
      HCODE140       : JPEG_HUFFENC_AC1_70_HCODE140_Field := 16#0#;
      --  Huffman length 140
      HLEN140        : JPEG_HUFFENC_AC1_70_HLEN140_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 141
      HCODE141       : JPEG_HUFFENC_AC1_70_HCODE141_Field := 16#0#;
      --  Huffman length 141
      HLEN141        : JPEG_HUFFENC_AC1_70_HLEN141_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_70_Register use record
      HCODE140       at 0 range 0 .. 7;
      HLEN140        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE141       at 0 range 16 .. 23;
      HLEN141        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_71_HCODE142_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_71_HLEN142_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_71_HCODE143_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_71_HLEN143_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_71_Register is record
      --  Huffman code 142
      HCODE142       : JPEG_HUFFENC_AC1_71_HCODE142_Field := 16#0#;
      --  Huffman length 142
      HLEN142        : JPEG_HUFFENC_AC1_71_HLEN142_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 143
      HCODE143       : JPEG_HUFFENC_AC1_71_HCODE143_Field := 16#0#;
      --  Huffman length 143
      HLEN143        : JPEG_HUFFENC_AC1_71_HLEN143_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_71_Register use record
      HCODE142       at 0 range 0 .. 7;
      HLEN142        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE143       at 0 range 16 .. 23;
      HLEN143        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_72_HCODE144_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_72_HLEN144_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_72_HCODE145_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_72_HLEN145_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_72_Register is record
      --  Huffman code 144
      HCODE144       : JPEG_HUFFENC_AC1_72_HCODE144_Field := 16#0#;
      --  Huffman length 144
      HLEN144        : JPEG_HUFFENC_AC1_72_HLEN144_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 145
      HCODE145       : JPEG_HUFFENC_AC1_72_HCODE145_Field := 16#0#;
      --  Huffman length 145
      HLEN145        : JPEG_HUFFENC_AC1_72_HLEN145_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_72_Register use record
      HCODE144       at 0 range 0 .. 7;
      HLEN144        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE145       at 0 range 16 .. 23;
      HLEN145        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_73_HCODE146_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_73_HLEN146_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_73_HCODE147_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_73_HLEN147_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_73_Register is record
      --  Huffman code 146
      HCODE146       : JPEG_HUFFENC_AC1_73_HCODE146_Field := 16#0#;
      --  Huffman length 146
      HLEN146        : JPEG_HUFFENC_AC1_73_HLEN146_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 147
      HCODE147       : JPEG_HUFFENC_AC1_73_HCODE147_Field := 16#0#;
      --  Huffman length 147
      HLEN147        : JPEG_HUFFENC_AC1_73_HLEN147_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_73_Register use record
      HCODE146       at 0 range 0 .. 7;
      HLEN146        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE147       at 0 range 16 .. 23;
      HLEN147        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_74_HCODE148_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_74_HLEN148_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_74_HCODE149_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_74_HLEN149_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_74_Register is record
      --  Huffman code 148
      HCODE148       : JPEG_HUFFENC_AC1_74_HCODE148_Field := 16#0#;
      --  Huffman length 148
      HLEN148        : JPEG_HUFFENC_AC1_74_HLEN148_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 149
      HCODE149       : JPEG_HUFFENC_AC1_74_HCODE149_Field := 16#0#;
      --  Huffman length 149
      HLEN149        : JPEG_HUFFENC_AC1_74_HLEN149_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_74_Register use record
      HCODE148       at 0 range 0 .. 7;
      HLEN148        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE149       at 0 range 16 .. 23;
      HLEN149        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_75_HCODE150_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_75_HLEN150_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_75_HCODE151_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_75_HLEN151_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_75_Register is record
      --  Huffman code 150
      HCODE150       : JPEG_HUFFENC_AC1_75_HCODE150_Field := 16#0#;
      --  Huffman length 150
      HLEN150        : JPEG_HUFFENC_AC1_75_HLEN150_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 151
      HCODE151       : JPEG_HUFFENC_AC1_75_HCODE151_Field := 16#0#;
      --  Huffman length 151
      HLEN151        : JPEG_HUFFENC_AC1_75_HLEN151_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_75_Register use record
      HCODE150       at 0 range 0 .. 7;
      HLEN150        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE151       at 0 range 16 .. 23;
      HLEN151        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_76_HCODE152_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_76_HLEN152_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_76_HCODE153_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_76_HLEN153_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_76_Register is record
      --  Huffman code 152
      HCODE152       : JPEG_HUFFENC_AC1_76_HCODE152_Field := 16#0#;
      --  Huffman length 152
      HLEN152        : JPEG_HUFFENC_AC1_76_HLEN152_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 153
      HCODE153       : JPEG_HUFFENC_AC1_76_HCODE153_Field := 16#0#;
      --  Huffman length 153
      HLEN153        : JPEG_HUFFENC_AC1_76_HLEN153_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_76_Register use record
      HCODE152       at 0 range 0 .. 7;
      HLEN152        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE153       at 0 range 16 .. 23;
      HLEN153        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_77_HCODE154_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_77_HLEN154_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_77_HCODE155_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_77_HLEN155_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_77_Register is record
      --  Huffman code 154
      HCODE154       : JPEG_HUFFENC_AC1_77_HCODE154_Field := 16#0#;
      --  Huffman length 154
      HLEN154        : JPEG_HUFFENC_AC1_77_HLEN154_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 155
      HCODE155       : JPEG_HUFFENC_AC1_77_HCODE155_Field := 16#0#;
      --  Huffman length 155
      HLEN155        : JPEG_HUFFENC_AC1_77_HLEN155_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_77_Register use record
      HCODE154       at 0 range 0 .. 7;
      HLEN154        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE155       at 0 range 16 .. 23;
      HLEN155        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_78_HCODE156_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_78_HLEN156_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_78_HCODE157_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_78_HLEN157_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_78_Register is record
      --  Huffman code 156
      HCODE156       : JPEG_HUFFENC_AC1_78_HCODE156_Field := 16#0#;
      --  Huffman length 156
      HLEN156        : JPEG_HUFFENC_AC1_78_HLEN156_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 157
      HCODE157       : JPEG_HUFFENC_AC1_78_HCODE157_Field := 16#0#;
      --  Huffman length 157
      HLEN157        : JPEG_HUFFENC_AC1_78_HLEN157_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_78_Register use record
      HCODE156       at 0 range 0 .. 7;
      HLEN156        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE157       at 0 range 16 .. 23;
      HLEN157        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_79_HCODE158_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_79_HLEN158_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_79_HCODE159_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_79_HLEN159_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_79_Register is record
      --  Huffman code 158
      HCODE158       : JPEG_HUFFENC_AC1_79_HCODE158_Field := 16#0#;
      --  Huffman length 158
      HLEN158        : JPEG_HUFFENC_AC1_79_HLEN158_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 159
      HCODE159       : JPEG_HUFFENC_AC1_79_HCODE159_Field := 16#0#;
      --  Huffman length 159
      HLEN159        : JPEG_HUFFENC_AC1_79_HLEN159_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_79_Register use record
      HCODE158       at 0 range 0 .. 7;
      HLEN158        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE159       at 0 range 16 .. 23;
      HLEN159        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_80_HCODE160_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_80_HLEN160_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_80_HCODE161_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_80_HLEN161_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_80_Register is record
      --  Huffman code 160
      HCODE160       : JPEG_HUFFENC_AC1_80_HCODE160_Field := 16#0#;
      --  Huffman length 160
      HLEN160        : JPEG_HUFFENC_AC1_80_HLEN160_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 161
      HCODE161       : JPEG_HUFFENC_AC1_80_HCODE161_Field := 16#0#;
      --  Huffman length 161
      HLEN161        : JPEG_HUFFENC_AC1_80_HLEN161_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_80_Register use record
      HCODE160       at 0 range 0 .. 7;
      HLEN160        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE161       at 0 range 16 .. 23;
      HLEN161        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_81_HCODE162_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_81_HLEN162_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_81_HCODE163_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_81_HLEN163_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_81_Register is record
      --  Huffman code 162
      HCODE162       : JPEG_HUFFENC_AC1_81_HCODE162_Field := 16#0#;
      --  Huffman length 162
      HLEN162        : JPEG_HUFFENC_AC1_81_HLEN162_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 163
      HCODE163       : JPEG_HUFFENC_AC1_81_HCODE163_Field := 16#0#;
      --  Huffman length 163
      HLEN163        : JPEG_HUFFENC_AC1_81_HLEN163_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_81_Register use record
      HCODE162       at 0 range 0 .. 7;
      HLEN162        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE163       at 0 range 16 .. 23;
      HLEN163        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_82_HCODE164_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_82_HLEN164_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_82_HCODE165_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_82_HLEN165_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_82_Register is record
      --  Huffman code 164
      HCODE164       : JPEG_HUFFENC_AC1_82_HCODE164_Field := 16#0#;
      --  Huffman length 164
      HLEN164        : JPEG_HUFFENC_AC1_82_HLEN164_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 165
      HCODE165       : JPEG_HUFFENC_AC1_82_HCODE165_Field := 16#0#;
      --  Huffman length 165
      HLEN165        : JPEG_HUFFENC_AC1_82_HLEN165_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_82_Register use record
      HCODE164       at 0 range 0 .. 7;
      HLEN164        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE165       at 0 range 16 .. 23;
      HLEN165        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_83_HCODE166_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_83_HLEN166_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_83_HCODE167_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_83_HLEN167_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_83_Register is record
      --  Huffman code 166
      HCODE166       : JPEG_HUFFENC_AC1_83_HCODE166_Field := 16#0#;
      --  Huffman length 166
      HLEN166        : JPEG_HUFFENC_AC1_83_HLEN166_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 167
      HCODE167       : JPEG_HUFFENC_AC1_83_HCODE167_Field := 16#0#;
      --  Huffman length 167
      HLEN167        : JPEG_HUFFENC_AC1_83_HLEN167_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_83_Register use record
      HCODE166       at 0 range 0 .. 7;
      HLEN166        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE167       at 0 range 16 .. 23;
      HLEN167        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_84_HCODE168_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_84_HLEN168_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_84_HCODE169_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_84_HLEN169_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_84_Register is record
      --  Huffman code 168
      HCODE168       : JPEG_HUFFENC_AC1_84_HCODE168_Field := 16#0#;
      --  Huffman length 168
      HLEN168        : JPEG_HUFFENC_AC1_84_HLEN168_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 169
      HCODE169       : JPEG_HUFFENC_AC1_84_HCODE169_Field := 16#0#;
      --  Huffman length 169
      HLEN169        : JPEG_HUFFENC_AC1_84_HLEN169_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_84_Register use record
      HCODE168       at 0 range 0 .. 7;
      HLEN168        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE169       at 0 range 16 .. 23;
      HLEN169        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_85_HCODE170_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_85_HLEN170_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_85_HCODE171_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_85_HLEN171_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_85_Register is record
      --  Huffman code 170
      HCODE170       : JPEG_HUFFENC_AC1_85_HCODE170_Field := 16#0#;
      --  Huffman length 170
      HLEN170        : JPEG_HUFFENC_AC1_85_HLEN170_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 171
      HCODE171       : JPEG_HUFFENC_AC1_85_HCODE171_Field := 16#0#;
      --  Huffman length 171
      HLEN171        : JPEG_HUFFENC_AC1_85_HLEN171_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_85_Register use record
      HCODE170       at 0 range 0 .. 7;
      HLEN170        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE171       at 0 range 16 .. 23;
      HLEN171        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_86_HCODE172_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_86_HLEN172_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_86_HCODE173_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_86_HLEN173_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_86_Register is record
      --  Huffman code 172
      HCODE172       : JPEG_HUFFENC_AC1_86_HCODE172_Field := 16#0#;
      --  Huffman length 172
      HLEN172        : JPEG_HUFFENC_AC1_86_HLEN172_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 173
      HCODE173       : JPEG_HUFFENC_AC1_86_HCODE173_Field := 16#0#;
      --  Huffman length 173
      HLEN173        : JPEG_HUFFENC_AC1_86_HLEN173_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_86_Register use record
      HCODE172       at 0 range 0 .. 7;
      HLEN172        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE173       at 0 range 16 .. 23;
      HLEN173        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_AC1_87_HCODE174_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_87_HLEN174_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_AC1_87_HCODE175_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_AC1_87_HLEN175_Field is HAL.UInt4;

   --  JPEG Huffman encoder AC1
   type JPEG_HUFFENC_AC1_87_Register is record
      --  Huffman code 174
      HCODE174       : JPEG_HUFFENC_AC1_87_HCODE174_Field := 16#0#;
      --  Huffman length 174
      HLEN174        : JPEG_HUFFENC_AC1_87_HLEN174_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 175
      HCODE175       : JPEG_HUFFENC_AC1_87_HCODE175_Field := 16#0#;
      --  Huffman length 175
      HLEN175        : JPEG_HUFFENC_AC1_87_HLEN175_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_AC1_87_Register use record
      HCODE174       at 0 range 0 .. 7;
      HLEN174        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE175       at 0 range 16 .. 23;
      HLEN175        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_0_HCODE0_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_0_HLEN0_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_0_HCODE1_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_0_HLEN1_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_0_Register is record
      --  Huffman code 0
      HCODE0         : JPEG_HUFFENC_DC0_0_HCODE0_Field := 16#0#;
      --  Huffman length 0
      HLEN0          : JPEG_HUFFENC_DC0_0_HLEN0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 1
      HCODE1         : JPEG_HUFFENC_DC0_0_HCODE1_Field := 16#0#;
      --  Huffman length 1
      HLEN1          : JPEG_HUFFENC_DC0_0_HLEN1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_0_Register use record
      HCODE0         at 0 range 0 .. 7;
      HLEN0          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE1         at 0 range 16 .. 23;
      HLEN1          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_1_HCODE2_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_1_HLEN2_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_1_HCODE3_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_1_HLEN3_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_1_Register is record
      --  Huffman code 2
      HCODE2         : JPEG_HUFFENC_DC0_1_HCODE2_Field := 16#0#;
      --  Huffman length 2
      HLEN2          : JPEG_HUFFENC_DC0_1_HLEN2_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 3
      HCODE3         : JPEG_HUFFENC_DC0_1_HCODE3_Field := 16#0#;
      --  Huffman length 3
      HLEN3          : JPEG_HUFFENC_DC0_1_HLEN3_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_1_Register use record
      HCODE2         at 0 range 0 .. 7;
      HLEN2          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE3         at 0 range 16 .. 23;
      HLEN3          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_2_HCODE4_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_2_HLEN4_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_2_HCODE5_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_2_HLEN5_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_2_Register is record
      --  Huffman code 4
      HCODE4         : JPEG_HUFFENC_DC0_2_HCODE4_Field := 16#0#;
      --  Huffman length 4
      HLEN4          : JPEG_HUFFENC_DC0_2_HLEN4_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 5
      HCODE5         : JPEG_HUFFENC_DC0_2_HCODE5_Field := 16#0#;
      --  Huffman length 5
      HLEN5          : JPEG_HUFFENC_DC0_2_HLEN5_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_2_Register use record
      HCODE4         at 0 range 0 .. 7;
      HLEN4          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE5         at 0 range 16 .. 23;
      HLEN5          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_3_HCODE6_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_3_HLEN6_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_3_HCODE7_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_3_HLEN7_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_3_Register is record
      --  Huffman code 6
      HCODE6         : JPEG_HUFFENC_DC0_3_HCODE6_Field := 16#0#;
      --  Huffman length 6
      HLEN6          : JPEG_HUFFENC_DC0_3_HLEN6_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 7
      HCODE7         : JPEG_HUFFENC_DC0_3_HCODE7_Field := 16#0#;
      --  Huffman length 7
      HLEN7          : JPEG_HUFFENC_DC0_3_HLEN7_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_3_Register use record
      HCODE6         at 0 range 0 .. 7;
      HLEN6          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE7         at 0 range 16 .. 23;
      HLEN7          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_4_HCODE8_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_4_HLEN8_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_4_HCODE9_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_4_HLEN9_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_4_Register is record
      --  Huffman code 8
      HCODE8         : JPEG_HUFFENC_DC0_4_HCODE8_Field := 16#0#;
      --  Huffman length 8
      HLEN8          : JPEG_HUFFENC_DC0_4_HLEN8_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 9
      HCODE9         : JPEG_HUFFENC_DC0_4_HCODE9_Field := 16#0#;
      --  Huffman length 9
      HLEN9          : JPEG_HUFFENC_DC0_4_HLEN9_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_4_Register use record
      HCODE8         at 0 range 0 .. 7;
      HLEN8          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE9         at 0 range 16 .. 23;
      HLEN9          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_5_HCODE10_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_5_HLEN10_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_5_HCODE11_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_5_HLEN11_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_5_Register is record
      --  Huffman code 10
      HCODE10        : JPEG_HUFFENC_DC0_5_HCODE10_Field := 16#0#;
      --  Huffman length 10
      HLEN10         : JPEG_HUFFENC_DC0_5_HLEN10_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 11
      HCODE11        : JPEG_HUFFENC_DC0_5_HCODE11_Field := 16#0#;
      --  Huffman length 11
      HLEN11         : JPEG_HUFFENC_DC0_5_HLEN11_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_5_Register use record
      HCODE10        at 0 range 0 .. 7;
      HLEN10         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE11        at 0 range 16 .. 23;
      HLEN11         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_6_HCODE12_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_6_HLEN12_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_6_HCODE13_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_6_HLEN13_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_6_Register is record
      --  Huffman code 12
      HCODE12        : JPEG_HUFFENC_DC0_6_HCODE12_Field := 16#0#;
      --  Huffman length 12
      HLEN12         : JPEG_HUFFENC_DC0_6_HLEN12_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 13
      HCODE13        : JPEG_HUFFENC_DC0_6_HCODE13_Field := 16#0#;
      --  Huffman length 13
      HLEN13         : JPEG_HUFFENC_DC0_6_HLEN13_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_6_Register use record
      HCODE12        at 0 range 0 .. 7;
      HLEN12         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE13        at 0 range 16 .. 23;
      HLEN13         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC0_7_HCODE14_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_7_HLEN14_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC0_7_HCODE15_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC0_7_HLEN15_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC0
   type JPEG_HUFFENC_DC0_7_Register is record
      --  Huffman code 14
      HCODE14        : JPEG_HUFFENC_DC0_7_HCODE14_Field := 16#0#;
      --  Huffman length 14
      HLEN14         : JPEG_HUFFENC_DC0_7_HLEN14_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 15
      HCODE15        : JPEG_HUFFENC_DC0_7_HCODE15_Field := 16#0#;
      --  Huffman length 15
      HLEN15         : JPEG_HUFFENC_DC0_7_HLEN15_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC0_7_Register use record
      HCODE14        at 0 range 0 .. 7;
      HLEN14         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE15        at 0 range 16 .. 23;
      HLEN15         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_0_HCODE0_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_0_HLEN0_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_0_HCODE1_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_0_HLEN1_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_0_Register is record
      --  Huffman code 0
      HCODE0         : JPEG_HUFFENC_DC1_0_HCODE0_Field := 16#0#;
      --  Huffman length 0
      HLEN0          : JPEG_HUFFENC_DC1_0_HLEN0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 1
      HCODE1         : JPEG_HUFFENC_DC1_0_HCODE1_Field := 16#0#;
      --  Huffman length 1
      HLEN1          : JPEG_HUFFENC_DC1_0_HLEN1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_0_Register use record
      HCODE0         at 0 range 0 .. 7;
      HLEN0          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE1         at 0 range 16 .. 23;
      HLEN1          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_1_HCODE2_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_1_HLEN2_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_1_HCODE3_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_1_HLEN3_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_1_Register is record
      --  Huffman code 2
      HCODE2         : JPEG_HUFFENC_DC1_1_HCODE2_Field := 16#0#;
      --  Huffman length 2
      HLEN2          : JPEG_HUFFENC_DC1_1_HLEN2_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 3
      HCODE3         : JPEG_HUFFENC_DC1_1_HCODE3_Field := 16#0#;
      --  Huffman length 3
      HLEN3          : JPEG_HUFFENC_DC1_1_HLEN3_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_1_Register use record
      HCODE2         at 0 range 0 .. 7;
      HLEN2          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE3         at 0 range 16 .. 23;
      HLEN3          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_2_HCODE4_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_2_HLEN4_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_2_HCODE5_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_2_HLEN5_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_2_Register is record
      --  Huffman code 4
      HCODE4         : JPEG_HUFFENC_DC1_2_HCODE4_Field := 16#0#;
      --  Huffman length 4
      HLEN4          : JPEG_HUFFENC_DC1_2_HLEN4_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 5
      HCODE5         : JPEG_HUFFENC_DC1_2_HCODE5_Field := 16#0#;
      --  Huffman length 5
      HLEN5          : JPEG_HUFFENC_DC1_2_HLEN5_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_2_Register use record
      HCODE4         at 0 range 0 .. 7;
      HLEN4          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE5         at 0 range 16 .. 23;
      HLEN5          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_3_HCODE6_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_3_HLEN6_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_3_HCODE7_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_3_HLEN7_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_3_Register is record
      --  Huffman code 6
      HCODE6         : JPEG_HUFFENC_DC1_3_HCODE6_Field := 16#0#;
      --  Huffman length 6
      HLEN6          : JPEG_HUFFENC_DC1_3_HLEN6_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 7
      HCODE7         : JPEG_HUFFENC_DC1_3_HCODE7_Field := 16#0#;
      --  Huffman length 7
      HLEN7          : JPEG_HUFFENC_DC1_3_HLEN7_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_3_Register use record
      HCODE6         at 0 range 0 .. 7;
      HLEN6          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE7         at 0 range 16 .. 23;
      HLEN7          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_4_HCODE8_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_4_HLEN8_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_4_HCODE9_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_4_HLEN9_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_4_Register is record
      --  Huffman code 8
      HCODE8         : JPEG_HUFFENC_DC1_4_HCODE8_Field := 16#0#;
      --  Huffman length 8
      HLEN8          : JPEG_HUFFENC_DC1_4_HLEN8_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 9
      HCODE9         : JPEG_HUFFENC_DC1_4_HCODE9_Field := 16#0#;
      --  Huffman length 9
      HLEN9          : JPEG_HUFFENC_DC1_4_HLEN9_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_4_Register use record
      HCODE8         at 0 range 0 .. 7;
      HLEN8          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE9         at 0 range 16 .. 23;
      HLEN9          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_5_HCODE10_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_5_HLEN10_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_5_HCODE11_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_5_HLEN11_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_5_Register is record
      --  Huffman code 10
      HCODE10        : JPEG_HUFFENC_DC1_5_HCODE10_Field := 16#0#;
      --  Huffman length 10
      HLEN10         : JPEG_HUFFENC_DC1_5_HLEN10_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 11
      HCODE11        : JPEG_HUFFENC_DC1_5_HCODE11_Field := 16#0#;
      --  Huffman length 11
      HLEN11         : JPEG_HUFFENC_DC1_5_HLEN11_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_5_Register use record
      HCODE10        at 0 range 0 .. 7;
      HLEN10         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE11        at 0 range 16 .. 23;
      HLEN11         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_6_HCODE12_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_6_HLEN12_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_6_HCODE13_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_6_HLEN13_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_6_Register is record
      --  Huffman code 12
      HCODE12        : JPEG_HUFFENC_DC1_6_HCODE12_Field := 16#0#;
      --  Huffman length 12
      HLEN12         : JPEG_HUFFENC_DC1_6_HLEN12_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 13
      HCODE13        : JPEG_HUFFENC_DC1_6_HCODE13_Field := 16#0#;
      --  Huffman length 13
      HLEN13         : JPEG_HUFFENC_DC1_6_HLEN13_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_6_Register use record
      HCODE12        at 0 range 0 .. 7;
      HLEN12         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE13        at 0 range 16 .. 23;
      HLEN13         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype JPEG_HUFFENC_DC1_7_HCODE14_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_7_HLEN14_Field is HAL.UInt4;
   subtype JPEG_HUFFENC_DC1_7_HCODE15_Field is HAL.UInt8;
   subtype JPEG_HUFFENC_DC1_7_HLEN15_Field is HAL.UInt4;

   --  JPEG Huffman encoder DC1
   type JPEG_HUFFENC_DC1_7_Register is record
      --  Huffman code 14
      HCODE14        : JPEG_HUFFENC_DC1_7_HCODE14_Field := 16#0#;
      --  Huffman length 14
      HLEN14         : JPEG_HUFFENC_DC1_7_HLEN14_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Huffman code 15
      HCODE15        : JPEG_HUFFENC_DC1_7_HCODE15_Field := 16#0#;
      --  Huffman length 15
      HLEN15         : JPEG_HUFFENC_DC1_7_HLEN15_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_HUFFENC_DC1_7_Register use record
      HCODE14        at 0 range 0 .. 7;
      HLEN14         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HCODE15        at 0 range 16 .. 23;
      HLEN15         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  JPEG codec
   type JPEG_Peripheral is record
      --  JPEG codec control register
      JPEG_CONFR0         : aliased JPEG_CONFR0_Register;
      --  JPEG codec configuration register 1
      JPEG_CONFR1         : aliased JPEG_CONFR1_Register;
      --  JPEG codec configuration register 2
      JPEG_CONFR2         : aliased JPEG_CONFR2_Register;
      --  JPEG codec configuration register 3
      JPEG_CONFR3         : aliased JPEG_CONFR3_Register;
      --  JPEG codec configuration register 4
      JPEG_CONFR4         : aliased JPEG_CONFR_Register;
      --  JPEG codec configuration register 5
      JPEG_CONFR5         : aliased JPEG_CONFR_Register;
      --  JPEG codec configuration register 6
      JPEG_CONFR6         : aliased JPEG_CONFR_Register;
      --  JPEG codec configuration register 7
      JPEG_CONFR7         : aliased JPEG_CONFR_Register;
      --  JPEG control register
      JPEG_CR             : aliased JPEG_CR_Register;
      --  JPEG status register
      JPEG_SR             : aliased JPEG_SR_Register;
      --  JPEG clear flag register
      JPEG_CFR            : aliased JPEG_CFR_Register;
      --  JPEG data input register
      JPEG_DIR            : aliased HAL.UInt32;
      --  JPEG data output register
      JPEG_DOR            : aliased HAL.UInt32;
      --  JPEG quantization memory 0
      JPEG_QMEM0_0        : aliased JPEG_QMEM0_0_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_1        : aliased JPEG_QMEM0_1_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_2        : aliased JPEG_QMEM0_2_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_3        : aliased JPEG_QMEM0_3_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_4        : aliased JPEG_QMEM0_4_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_5        : aliased JPEG_QMEM0_5_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_6        : aliased JPEG_QMEM0_6_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_7        : aliased JPEG_QMEM0_7_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_8        : aliased JPEG_QMEM0_8_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_9        : aliased JPEG_QMEM0_9_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_10       : aliased JPEG_QMEM0_10_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_11       : aliased JPEG_QMEM0_11_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_12       : aliased JPEG_QMEM0_12_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_13       : aliased JPEG_QMEM0_13_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_14       : aliased JPEG_QMEM0_14_Register;
      --  JPEG quantization memory 0
      JPEG_QMEM0_15       : aliased JPEG_QMEM0_15_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_0        : aliased JPEG_QMEM1_0_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_1        : aliased JPEG_QMEM1_1_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_2        : aliased JPEG_QMEM1_2_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_3        : aliased JPEG_QMEM1_3_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_4        : aliased JPEG_QMEM1_4_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_5        : aliased JPEG_QMEM1_5_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_6        : aliased JPEG_QMEM1_6_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_7        : aliased JPEG_QMEM1_7_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_8        : aliased JPEG_QMEM1_8_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_9        : aliased JPEG_QMEM1_9_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_10       : aliased JPEG_QMEM1_10_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_11       : aliased JPEG_QMEM1_11_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_12       : aliased JPEG_QMEM1_12_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_13       : aliased JPEG_QMEM1_13_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_14       : aliased JPEG_QMEM1_14_Register;
      --  JPEG quantization memory 1
      JPEG_QMEM1_15       : aliased JPEG_QMEM1_15_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_0        : aliased JPEG_QMEM2_0_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_1        : aliased JPEG_QMEM2_1_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_2        : aliased JPEG_QMEM2_2_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_3        : aliased JPEG_QMEM2_3_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_4        : aliased JPEG_QMEM2_4_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_5        : aliased JPEG_QMEM2_5_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_6        : aliased JPEG_QMEM2_6_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_7        : aliased JPEG_QMEM2_7_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_8        : aliased JPEG_QMEM2_8_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_9        : aliased JPEG_QMEM2_9_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_10       : aliased JPEG_QMEM2_10_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_11       : aliased JPEG_QMEM2_11_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_12       : aliased JPEG_QMEM2_12_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_13       : aliased JPEG_QMEM2_13_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_14       : aliased JPEG_QMEM2_14_Register;
      --  JPEG quantization memory 2
      JPEG_QMEM2_15       : aliased JPEG_QMEM2_15_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_0        : aliased JPEG_QMEM3_0_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_1        : aliased JPEG_QMEM3_1_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_2        : aliased JPEG_QMEM3_2_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_3        : aliased JPEG_QMEM3_3_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_4        : aliased JPEG_QMEM3_4_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_5        : aliased JPEG_QMEM3_5_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_6        : aliased JPEG_QMEM3_6_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_7        : aliased JPEG_QMEM3_7_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_8        : aliased JPEG_QMEM3_8_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_9        : aliased JPEG_QMEM3_9_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_10       : aliased JPEG_QMEM3_10_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_11       : aliased JPEG_QMEM3_11_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_12       : aliased JPEG_QMEM3_12_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_13       : aliased JPEG_QMEM3_13_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_14       : aliased JPEG_QMEM3_14_Register;
      --  JPEG quantization memory 3
      JPEG_QMEM3_15       : aliased JPEG_QMEM3_15_Register;
      --  JPEG Huffman min
      JPEG_HUFFMIN0_0     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN0_1     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN0_2     : aliased HAL.UInt32;
      --  JPEG Huffman min 0
      JPEG_HUFFMIN0_3     : aliased JPEG_HUFFMIN0_3_Register;
      --  JPEG Huffman min
      JPEG_HUFFMIN1_0     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN1_1     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN1_2     : aliased HAL.UInt32;
      --  JPEG Huffman min 1
      JPEG_HUFFMIN1_3     : aliased JPEG_HUFFMIN1_3_Register;
      --  JPEG Huffman min
      JPEG_HUFFMIN2_0     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN2_1     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN2_2     : aliased HAL.UInt32;
      --  JPEG Huffman min 2
      JPEG_HUFFMIN2_3     : aliased JPEG_HUFFMIN2_3_Register;
      --  JPEG Huffman min
      JPEG_HUFFMIN3_0     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN3_1     : aliased HAL.UInt32;
      --  JPEG Huffman min
      JPEG_HUFFMIN3_2     : aliased HAL.UInt32;
      --  JPEG Huffman min 3
      JPEG_HUFFMIN3_3     : aliased JPEG_HUFFMIN3_3_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE0      : aliased JPEG_HUFFBASE0_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE1      : aliased JPEG_HUFFBASE1_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE2      : aliased JPEG_HUFFBASE2_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE3      : aliased JPEG_HUFFBASE3_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE4      : aliased JPEG_HUFFBASE4_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE5      : aliased JPEG_HUFFBASE5_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE6      : aliased JPEG_HUFFBASE6_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE7      : aliased JPEG_HUFFBASE7_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE8      : aliased JPEG_HUFFBASE8_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE9      : aliased JPEG_HUFFBASE9_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE10     : aliased JPEG_HUFFBASE10_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE11     : aliased JPEG_HUFFBASE11_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE12     : aliased JPEG_HUFFBASE12_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE13     : aliased JPEG_HUFFBASE13_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE14     : aliased JPEG_HUFFBASE14_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE15     : aliased JPEG_HUFFBASE15_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE16     : aliased JPEG_HUFFBASE16_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE17     : aliased JPEG_HUFFBASE17_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE18     : aliased JPEG_HUFFBASE18_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE19     : aliased JPEG_HUFFBASE19_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE20     : aliased JPEG_HUFFBASE20_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE21     : aliased JPEG_HUFFBASE21_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE22     : aliased JPEG_HUFFBASE22_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE23     : aliased JPEG_HUFFBASE23_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE24     : aliased JPEG_HUFFBASE24_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE25     : aliased JPEG_HUFFBASE25_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE26     : aliased JPEG_HUFFBASE26_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE27     : aliased JPEG_HUFFBASE27_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE28     : aliased JPEG_HUFFBASE28_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE29     : aliased JPEG_HUFFBASE29_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE30     : aliased JPEG_HUFFBASE30_Register;
      --  JPEG Huffman base
      JPEG_HUFFBASE31     : aliased JPEG_HUFFBASE31_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB0      : aliased JPEG_HUFFSYMB0_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB1      : aliased JPEG_HUFFSYMB1_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB2      : aliased JPEG_HUFFSYMB2_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB3      : aliased JPEG_HUFFSYMB3_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB4      : aliased JPEG_HUFFSYMB4_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB5      : aliased JPEG_HUFFSYMB5_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB6      : aliased JPEG_HUFFSYMB6_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB7      : aliased JPEG_HUFFSYMB7_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB8      : aliased JPEG_HUFFSYMB8_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB9      : aliased JPEG_HUFFSYMB9_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB10     : aliased JPEG_HUFFSYMB10_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB11     : aliased JPEG_HUFFSYMB11_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB12     : aliased JPEG_HUFFSYMB12_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB13     : aliased JPEG_HUFFSYMB13_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB14     : aliased JPEG_HUFFSYMB14_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB15     : aliased JPEG_HUFFSYMB15_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB16     : aliased JPEG_HUFFSYMB16_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB17     : aliased JPEG_HUFFSYMB17_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB18     : aliased JPEG_HUFFSYMB18_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB19     : aliased JPEG_HUFFSYMB19_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB20     : aliased JPEG_HUFFSYMB20_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB21     : aliased JPEG_HUFFSYMB21_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB22     : aliased JPEG_HUFFSYMB22_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB23     : aliased JPEG_HUFFSYMB23_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB24     : aliased JPEG_HUFFSYMB24_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB25     : aliased JPEG_HUFFSYMB25_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB26     : aliased JPEG_HUFFSYMB26_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB27     : aliased JPEG_HUFFSYMB27_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB28     : aliased JPEG_HUFFSYMB28_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB29     : aliased JPEG_HUFFSYMB29_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB30     : aliased JPEG_HUFFSYMB30_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB31     : aliased JPEG_HUFFSYMB31_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB32     : aliased JPEG_HUFFSYMB32_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB33     : aliased JPEG_HUFFSYMB33_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB34     : aliased JPEG_HUFFSYMB34_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB35     : aliased JPEG_HUFFSYMB35_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB36     : aliased JPEG_HUFFSYMB36_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB37     : aliased JPEG_HUFFSYMB37_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB38     : aliased JPEG_HUFFSYMB38_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB39     : aliased JPEG_HUFFSYMB39_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB40     : aliased JPEG_HUFFSYMB40_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB41     : aliased JPEG_HUFFSYMB41_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB42     : aliased JPEG_HUFFSYMB42_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB43     : aliased JPEG_HUFFSYMB43_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB44     : aliased JPEG_HUFFSYMB44_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB45     : aliased JPEG_HUFFSYMB45_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB46     : aliased JPEG_HUFFSYMB46_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB47     : aliased JPEG_HUFFSYMB47_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB48     : aliased JPEG_HUFFSYMB48_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB49     : aliased JPEG_HUFFSYMB49_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB50     : aliased JPEG_HUFFSYMB50_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB51     : aliased JPEG_HUFFSYMB51_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB52     : aliased JPEG_HUFFSYMB52_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB53     : aliased JPEG_HUFFSYMB53_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB54     : aliased JPEG_HUFFSYMB54_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB55     : aliased JPEG_HUFFSYMB55_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB56     : aliased JPEG_HUFFSYMB56_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB57     : aliased JPEG_HUFFSYMB57_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB58     : aliased JPEG_HUFFSYMB58_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB59     : aliased JPEG_HUFFSYMB59_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB60     : aliased JPEG_HUFFSYMB60_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB61     : aliased JPEG_HUFFSYMB61_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB62     : aliased JPEG_HUFFSYMB62_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB63     : aliased JPEG_HUFFSYMB63_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB64     : aliased JPEG_HUFFSYMB64_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB65     : aliased JPEG_HUFFSYMB65_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB66     : aliased JPEG_HUFFSYMB66_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB67     : aliased JPEG_HUFFSYMB67_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB68     : aliased JPEG_HUFFSYMB68_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB69     : aliased JPEG_HUFFSYMB69_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB70     : aliased JPEG_HUFFSYMB70_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB71     : aliased JPEG_HUFFSYMB71_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB72     : aliased JPEG_HUFFSYMB72_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB73     : aliased JPEG_HUFFSYMB73_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB74     : aliased JPEG_HUFFSYMB74_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB75     : aliased JPEG_HUFFSYMB75_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB76     : aliased JPEG_HUFFSYMB76_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB77     : aliased JPEG_HUFFSYMB77_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB78     : aliased JPEG_HUFFSYMB78_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB79     : aliased JPEG_HUFFSYMB79_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB80     : aliased JPEG_HUFFSYMB80_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB81     : aliased JPEG_HUFFSYMB81_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB82     : aliased JPEG_HUFFSYMB82_Register;
      --  JPEG Huffman symbol
      JPEG_HUFFSYMB83     : aliased JPEG_HUFFSYMB83_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM0        : aliased JPEG_DHTMEM0_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM1        : aliased JPEG_DHTMEM1_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM2        : aliased JPEG_DHTMEM2_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM3        : aliased JPEG_DHTMEM3_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM4        : aliased JPEG_DHTMEM4_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM5        : aliased JPEG_DHTMEM5_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM6        : aliased JPEG_DHTMEM6_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM7        : aliased JPEG_DHTMEM7_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM8        : aliased JPEG_DHTMEM8_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM9        : aliased JPEG_DHTMEM9_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM10       : aliased JPEG_DHTMEM10_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM11       : aliased JPEG_DHTMEM11_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM12       : aliased JPEG_DHTMEM12_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM13       : aliased JPEG_DHTMEM13_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM14       : aliased JPEG_DHTMEM14_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM15       : aliased JPEG_DHTMEM15_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM16       : aliased JPEG_DHTMEM16_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM17       : aliased JPEG_DHTMEM17_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM18       : aliased JPEG_DHTMEM18_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM19       : aliased JPEG_DHTMEM19_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM20       : aliased JPEG_DHTMEM20_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM21       : aliased JPEG_DHTMEM21_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM22       : aliased JPEG_DHTMEM22_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM23       : aliased JPEG_DHTMEM23_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM24       : aliased JPEG_DHTMEM24_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM25       : aliased JPEG_DHTMEM25_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM26       : aliased JPEG_DHTMEM26_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM27       : aliased JPEG_DHTMEM27_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM28       : aliased JPEG_DHTMEM28_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM29       : aliased JPEG_DHTMEM29_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM30       : aliased JPEG_DHTMEM30_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM31       : aliased JPEG_DHTMEM31_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM32       : aliased JPEG_DHTMEM32_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM33       : aliased JPEG_DHTMEM33_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM34       : aliased JPEG_DHTMEM34_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM35       : aliased JPEG_DHTMEM35_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM36       : aliased JPEG_DHTMEM36_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM37       : aliased JPEG_DHTMEM37_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM38       : aliased JPEG_DHTMEM38_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM39       : aliased JPEG_DHTMEM39_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM40       : aliased JPEG_DHTMEM40_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM41       : aliased JPEG_DHTMEM41_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM42       : aliased JPEG_DHTMEM42_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM43       : aliased JPEG_DHTMEM43_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM44       : aliased JPEG_DHTMEM44_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM45       : aliased JPEG_DHTMEM45_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM46       : aliased JPEG_DHTMEM46_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM47       : aliased JPEG_DHTMEM47_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM48       : aliased JPEG_DHTMEM48_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM49       : aliased JPEG_DHTMEM49_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM50       : aliased JPEG_DHTMEM50_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM51       : aliased JPEG_DHTMEM51_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM52       : aliased JPEG_DHTMEM52_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM53       : aliased JPEG_DHTMEM53_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM54       : aliased JPEG_DHTMEM54_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM55       : aliased JPEG_DHTMEM55_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM56       : aliased JPEG_DHTMEM56_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM57       : aliased JPEG_DHTMEM57_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM58       : aliased JPEG_DHTMEM58_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM59       : aliased JPEG_DHTMEM59_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM60       : aliased JPEG_DHTMEM60_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM61       : aliased JPEG_DHTMEM61_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM62       : aliased JPEG_DHTMEM62_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM63       : aliased JPEG_DHTMEM63_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM64       : aliased JPEG_DHTMEM64_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM65       : aliased JPEG_DHTMEM65_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM66       : aliased JPEG_DHTMEM66_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM67       : aliased JPEG_DHTMEM67_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM68       : aliased JPEG_DHTMEM68_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM69       : aliased JPEG_DHTMEM69_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM70       : aliased JPEG_DHTMEM70_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM71       : aliased JPEG_DHTMEM71_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM72       : aliased JPEG_DHTMEM72_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM73       : aliased JPEG_DHTMEM73_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM74       : aliased JPEG_DHTMEM74_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM75       : aliased JPEG_DHTMEM75_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM76       : aliased JPEG_DHTMEM76_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM77       : aliased JPEG_DHTMEM77_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM78       : aliased JPEG_DHTMEM78_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM79       : aliased JPEG_DHTMEM79_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM80       : aliased JPEG_DHTMEM80_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM81       : aliased JPEG_DHTMEM81_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM82       : aliased JPEG_DHTMEM82_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM83       : aliased JPEG_DHTMEM83_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM84       : aliased JPEG_DHTMEM84_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM85       : aliased JPEG_DHTMEM85_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM86       : aliased JPEG_DHTMEM86_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM87       : aliased JPEG_DHTMEM87_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM88       : aliased JPEG_DHTMEM88_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM89       : aliased JPEG_DHTMEM89_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM90       : aliased JPEG_DHTMEM90_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM91       : aliased JPEG_DHTMEM91_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM92       : aliased JPEG_DHTMEM92_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM93       : aliased JPEG_DHTMEM93_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM94       : aliased JPEG_DHTMEM94_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM95       : aliased JPEG_DHTMEM95_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM96       : aliased JPEG_DHTMEM96_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM97       : aliased JPEG_DHTMEM97_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM98       : aliased JPEG_DHTMEM98_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM99       : aliased JPEG_DHTMEM99_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM100      : aliased JPEG_DHTMEM100_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM101      : aliased JPEG_DHTMEM101_Register;
      --  JPEG DHT memory
      JPEG_DHTMEM102      : aliased JPEG_DHTMEM102_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_0  : aliased JPEG_HUFFENC_AC0_0_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_1  : aliased JPEG_HUFFENC_AC0_1_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_2  : aliased JPEG_HUFFENC_AC0_2_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_3  : aliased JPEG_HUFFENC_AC0_3_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_4  : aliased JPEG_HUFFENC_AC0_4_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_5  : aliased JPEG_HUFFENC_AC0_5_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_6  : aliased JPEG_HUFFENC_AC0_6_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_7  : aliased JPEG_HUFFENC_AC0_7_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_8  : aliased JPEG_HUFFENC_AC0_8_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_9  : aliased JPEG_HUFFENC_AC0_9_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_10 : aliased JPEG_HUFFENC_AC0_10_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_11 : aliased JPEG_HUFFENC_AC0_11_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_12 : aliased JPEG_HUFFENC_AC0_12_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_13 : aliased JPEG_HUFFENC_AC0_13_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_14 : aliased JPEG_HUFFENC_AC0_14_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_15 : aliased JPEG_HUFFENC_AC0_15_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_16 : aliased JPEG_HUFFENC_AC0_16_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_17 : aliased JPEG_HUFFENC_AC0_17_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_18 : aliased JPEG_HUFFENC_AC0_18_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_19 : aliased JPEG_HUFFENC_AC0_19_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_20 : aliased JPEG_HUFFENC_AC0_20_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_21 : aliased JPEG_HUFFENC_AC0_21_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_22 : aliased JPEG_HUFFENC_AC0_22_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_23 : aliased JPEG_HUFFENC_AC0_23_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_24 : aliased JPEG_HUFFENC_AC0_24_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_25 : aliased JPEG_HUFFENC_AC0_25_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_26 : aliased JPEG_HUFFENC_AC0_26_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_27 : aliased JPEG_HUFFENC_AC0_27_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_28 : aliased JPEG_HUFFENC_AC0_28_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_29 : aliased JPEG_HUFFENC_AC0_29_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_30 : aliased JPEG_HUFFENC_AC0_30_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_31 : aliased JPEG_HUFFENC_AC0_31_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_32 : aliased JPEG_HUFFENC_AC0_32_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_33 : aliased JPEG_HUFFENC_AC0_33_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_34 : aliased JPEG_HUFFENC_AC0_34_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_35 : aliased JPEG_HUFFENC_AC0_35_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_36 : aliased JPEG_HUFFENC_AC0_36_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_37 : aliased JPEG_HUFFENC_AC0_37_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_38 : aliased JPEG_HUFFENC_AC0_38_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_39 : aliased JPEG_HUFFENC_AC0_39_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_40 : aliased JPEG_HUFFENC_AC0_40_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_41 : aliased JPEG_HUFFENC_AC0_41_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_42 : aliased JPEG_HUFFENC_AC0_42_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_43 : aliased JPEG_HUFFENC_AC0_43_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_44 : aliased JPEG_HUFFENC_AC0_44_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_45 : aliased JPEG_HUFFENC_AC0_45_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_46 : aliased JPEG_HUFFENC_AC0_46_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_47 : aliased JPEG_HUFFENC_AC0_47_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_48 : aliased JPEG_HUFFENC_AC0_48_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_49 : aliased JPEG_HUFFENC_AC0_49_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_50 : aliased JPEG_HUFFENC_AC0_50_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_51 : aliased JPEG_HUFFENC_AC0_51_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_52 : aliased JPEG_HUFFENC_AC0_52_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_53 : aliased JPEG_HUFFENC_AC0_53_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_54 : aliased JPEG_HUFFENC_AC0_54_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_55 : aliased JPEG_HUFFENC_AC0_55_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_56 : aliased JPEG_HUFFENC_AC0_56_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_57 : aliased JPEG_HUFFENC_AC0_57_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_58 : aliased JPEG_HUFFENC_AC0_58_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_59 : aliased JPEG_HUFFENC_AC0_59_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_60 : aliased JPEG_HUFFENC_AC0_60_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_61 : aliased JPEG_HUFFENC_AC0_61_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_62 : aliased JPEG_HUFFENC_AC0_62_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_63 : aliased JPEG_HUFFENC_AC0_63_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_64 : aliased JPEG_HUFFENC_AC0_64_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_65 : aliased JPEG_HUFFENC_AC0_65_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_66 : aliased JPEG_HUFFENC_AC0_66_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_67 : aliased JPEG_HUFFENC_AC0_67_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_68 : aliased JPEG_HUFFENC_AC0_68_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_69 : aliased JPEG_HUFFENC_AC0_69_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_70 : aliased JPEG_HUFFENC_AC0_70_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_71 : aliased JPEG_HUFFENC_AC0_71_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_72 : aliased JPEG_HUFFENC_AC0_72_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_73 : aliased JPEG_HUFFENC_AC0_73_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_74 : aliased JPEG_HUFFENC_AC0_74_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_75 : aliased JPEG_HUFFENC_AC0_75_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_76 : aliased JPEG_HUFFENC_AC0_76_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_77 : aliased JPEG_HUFFENC_AC0_77_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_78 : aliased JPEG_HUFFENC_AC0_78_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_79 : aliased JPEG_HUFFENC_AC0_79_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_80 : aliased JPEG_HUFFENC_AC0_80_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_81 : aliased JPEG_HUFFENC_AC0_81_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_82 : aliased JPEG_HUFFENC_AC0_82_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_83 : aliased JPEG_HUFFENC_AC0_83_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_84 : aliased JPEG_HUFFENC_AC0_84_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_85 : aliased JPEG_HUFFENC_AC0_85_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_86 : aliased JPEG_HUFFENC_AC0_86_Register;
      --  JPEG Huffman encoder AC0
      JPEG_HUFFENC_AC0_87 : aliased JPEG_HUFFENC_AC0_87_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_0  : aliased JPEG_HUFFENC_AC1_0_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_1  : aliased JPEG_HUFFENC_AC1_1_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_2  : aliased JPEG_HUFFENC_AC1_2_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_3  : aliased JPEG_HUFFENC_AC1_3_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_4  : aliased JPEG_HUFFENC_AC1_4_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_5  : aliased JPEG_HUFFENC_AC1_5_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_6  : aliased JPEG_HUFFENC_AC1_6_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_7  : aliased JPEG_HUFFENC_AC1_7_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_8  : aliased JPEG_HUFFENC_AC1_8_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_9  : aliased JPEG_HUFFENC_AC1_9_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_10 : aliased JPEG_HUFFENC_AC1_10_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_11 : aliased JPEG_HUFFENC_AC1_11_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_12 : aliased JPEG_HUFFENC_AC1_12_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_13 : aliased JPEG_HUFFENC_AC1_13_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_14 : aliased JPEG_HUFFENC_AC1_14_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_15 : aliased JPEG_HUFFENC_AC1_15_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_16 : aliased JPEG_HUFFENC_AC1_16_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_17 : aliased JPEG_HUFFENC_AC1_17_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_18 : aliased JPEG_HUFFENC_AC1_18_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_19 : aliased JPEG_HUFFENC_AC1_19_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_20 : aliased JPEG_HUFFENC_AC1_20_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_21 : aliased JPEG_HUFFENC_AC1_21_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_22 : aliased JPEG_HUFFENC_AC1_22_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_23 : aliased JPEG_HUFFENC_AC1_23_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_24 : aliased JPEG_HUFFENC_AC1_24_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_25 : aliased JPEG_HUFFENC_AC1_25_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_26 : aliased JPEG_HUFFENC_AC1_26_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_27 : aliased JPEG_HUFFENC_AC1_27_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_28 : aliased JPEG_HUFFENC_AC1_28_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_29 : aliased JPEG_HUFFENC_AC1_29_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_30 : aliased JPEG_HUFFENC_AC1_30_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_31 : aliased JPEG_HUFFENC_AC1_31_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_32 : aliased JPEG_HUFFENC_AC1_32_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_33 : aliased JPEG_HUFFENC_AC1_33_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_34 : aliased JPEG_HUFFENC_AC1_34_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_35 : aliased JPEG_HUFFENC_AC1_35_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_36 : aliased JPEG_HUFFENC_AC1_36_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_37 : aliased JPEG_HUFFENC_AC1_37_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_38 : aliased JPEG_HUFFENC_AC1_38_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_39 : aliased JPEG_HUFFENC_AC1_39_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_40 : aliased JPEG_HUFFENC_AC1_40_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_41 : aliased JPEG_HUFFENC_AC1_41_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_42 : aliased JPEG_HUFFENC_AC1_42_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_43 : aliased JPEG_HUFFENC_AC1_43_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_44 : aliased JPEG_HUFFENC_AC1_44_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_45 : aliased JPEG_HUFFENC_AC1_45_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_46 : aliased JPEG_HUFFENC_AC1_46_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_47 : aliased JPEG_HUFFENC_AC1_47_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_48 : aliased JPEG_HUFFENC_AC1_48_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_49 : aliased JPEG_HUFFENC_AC1_49_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_50 : aliased JPEG_HUFFENC_AC1_50_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_51 : aliased JPEG_HUFFENC_AC1_51_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_52 : aliased JPEG_HUFFENC_AC1_52_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_53 : aliased JPEG_HUFFENC_AC1_53_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_54 : aliased JPEG_HUFFENC_AC1_54_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_55 : aliased JPEG_HUFFENC_AC1_55_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_56 : aliased JPEG_HUFFENC_AC1_56_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_57 : aliased JPEG_HUFFENC_AC1_57_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_58 : aliased JPEG_HUFFENC_AC1_58_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_59 : aliased JPEG_HUFFENC_AC1_59_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_60 : aliased JPEG_HUFFENC_AC1_60_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_61 : aliased JPEG_HUFFENC_AC1_61_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_62 : aliased JPEG_HUFFENC_AC1_62_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_63 : aliased JPEG_HUFFENC_AC1_63_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_64 : aliased JPEG_HUFFENC_AC1_64_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_65 : aliased JPEG_HUFFENC_AC1_65_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_66 : aliased JPEG_HUFFENC_AC1_66_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_67 : aliased JPEG_HUFFENC_AC1_67_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_68 : aliased JPEG_HUFFENC_AC1_68_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_69 : aliased JPEG_HUFFENC_AC1_69_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_70 : aliased JPEG_HUFFENC_AC1_70_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_71 : aliased JPEG_HUFFENC_AC1_71_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_72 : aliased JPEG_HUFFENC_AC1_72_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_73 : aliased JPEG_HUFFENC_AC1_73_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_74 : aliased JPEG_HUFFENC_AC1_74_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_75 : aliased JPEG_HUFFENC_AC1_75_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_76 : aliased JPEG_HUFFENC_AC1_76_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_77 : aliased JPEG_HUFFENC_AC1_77_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_78 : aliased JPEG_HUFFENC_AC1_78_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_79 : aliased JPEG_HUFFENC_AC1_79_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_80 : aliased JPEG_HUFFENC_AC1_80_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_81 : aliased JPEG_HUFFENC_AC1_81_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_82 : aliased JPEG_HUFFENC_AC1_82_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_83 : aliased JPEG_HUFFENC_AC1_83_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_84 : aliased JPEG_HUFFENC_AC1_84_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_85 : aliased JPEG_HUFFENC_AC1_85_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_86 : aliased JPEG_HUFFENC_AC1_86_Register;
      --  JPEG Huffman encoder AC1
      JPEG_HUFFENC_AC1_87 : aliased JPEG_HUFFENC_AC1_87_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_0  : aliased JPEG_HUFFENC_DC0_0_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_1  : aliased JPEG_HUFFENC_DC0_1_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_2  : aliased JPEG_HUFFENC_DC0_2_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_3  : aliased JPEG_HUFFENC_DC0_3_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_4  : aliased JPEG_HUFFENC_DC0_4_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_5  : aliased JPEG_HUFFENC_DC0_5_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_6  : aliased JPEG_HUFFENC_DC0_6_Register;
      --  JPEG Huffman encoder DC0
      JPEG_HUFFENC_DC0_7  : aliased JPEG_HUFFENC_DC0_7_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_0  : aliased JPEG_HUFFENC_DC1_0_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_1  : aliased JPEG_HUFFENC_DC1_1_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_2  : aliased JPEG_HUFFENC_DC1_2_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_3  : aliased JPEG_HUFFENC_DC1_3_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_4  : aliased JPEG_HUFFENC_DC1_4_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_5  : aliased JPEG_HUFFENC_DC1_5_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_6  : aliased JPEG_HUFFENC_DC1_6_Register;
      --  JPEG Huffman encoder DC1
      JPEG_HUFFENC_DC1_7  : aliased JPEG_HUFFENC_DC1_7_Register;
   end record
     with Volatile;

   for JPEG_Peripheral use record
      JPEG_CONFR0         at 16#0# range 0 .. 31;
      JPEG_CONFR1         at 16#4# range 0 .. 31;
      JPEG_CONFR2         at 16#8# range 0 .. 31;
      JPEG_CONFR3         at 16#C# range 0 .. 31;
      JPEG_CONFR4         at 16#10# range 0 .. 31;
      JPEG_CONFR5         at 16#14# range 0 .. 31;
      JPEG_CONFR6         at 16#18# range 0 .. 31;
      JPEG_CONFR7         at 16#1C# range 0 .. 31;
      JPEG_CR             at 16#30# range 0 .. 31;
      JPEG_SR             at 16#34# range 0 .. 31;
      JPEG_CFR            at 16#38# range 0 .. 31;
      JPEG_DIR            at 16#40# range 0 .. 31;
      JPEG_DOR            at 16#44# range 0 .. 31;
      JPEG_QMEM0_0        at 16#50# range 0 .. 31;
      JPEG_QMEM0_1        at 16#54# range 0 .. 31;
      JPEG_QMEM0_2        at 16#58# range 0 .. 31;
      JPEG_QMEM0_3        at 16#5C# range 0 .. 31;
      JPEG_QMEM0_4        at 16#60# range 0 .. 31;
      JPEG_QMEM0_5        at 16#64# range 0 .. 31;
      JPEG_QMEM0_6        at 16#68# range 0 .. 31;
      JPEG_QMEM0_7        at 16#6C# range 0 .. 31;
      JPEG_QMEM0_8        at 16#70# range 0 .. 31;
      JPEG_QMEM0_9        at 16#74# range 0 .. 31;
      JPEG_QMEM0_10       at 16#78# range 0 .. 31;
      JPEG_QMEM0_11       at 16#7C# range 0 .. 31;
      JPEG_QMEM0_12       at 16#80# range 0 .. 31;
      JPEG_QMEM0_13       at 16#84# range 0 .. 31;
      JPEG_QMEM0_14       at 16#88# range 0 .. 31;
      JPEG_QMEM0_15       at 16#8C# range 0 .. 31;
      JPEG_QMEM1_0        at 16#90# range 0 .. 31;
      JPEG_QMEM1_1        at 16#94# range 0 .. 31;
      JPEG_QMEM1_2        at 16#98# range 0 .. 31;
      JPEG_QMEM1_3        at 16#9C# range 0 .. 31;
      JPEG_QMEM1_4        at 16#A0# range 0 .. 31;
      JPEG_QMEM1_5        at 16#A4# range 0 .. 31;
      JPEG_QMEM1_6        at 16#A8# range 0 .. 31;
      JPEG_QMEM1_7        at 16#AC# range 0 .. 31;
      JPEG_QMEM1_8        at 16#B0# range 0 .. 31;
      JPEG_QMEM1_9        at 16#B4# range 0 .. 31;
      JPEG_QMEM1_10       at 16#B8# range 0 .. 31;
      JPEG_QMEM1_11       at 16#BC# range 0 .. 31;
      JPEG_QMEM1_12       at 16#C0# range 0 .. 31;
      JPEG_QMEM1_13       at 16#C4# range 0 .. 31;
      JPEG_QMEM1_14       at 16#C8# range 0 .. 31;
      JPEG_QMEM1_15       at 16#CC# range 0 .. 31;
      JPEG_QMEM2_0        at 16#D0# range 0 .. 31;
      JPEG_QMEM2_1        at 16#D4# range 0 .. 31;
      JPEG_QMEM2_2        at 16#D8# range 0 .. 31;
      JPEG_QMEM2_3        at 16#DC# range 0 .. 31;
      JPEG_QMEM2_4        at 16#E0# range 0 .. 31;
      JPEG_QMEM2_5        at 16#E4# range 0 .. 31;
      JPEG_QMEM2_6        at 16#E8# range 0 .. 31;
      JPEG_QMEM2_7        at 16#EC# range 0 .. 31;
      JPEG_QMEM2_8        at 16#F0# range 0 .. 31;
      JPEG_QMEM2_9        at 16#F4# range 0 .. 31;
      JPEG_QMEM2_10       at 16#F8# range 0 .. 31;
      JPEG_QMEM2_11       at 16#FC# range 0 .. 31;
      JPEG_QMEM2_12       at 16#100# range 0 .. 31;
      JPEG_QMEM2_13       at 16#104# range 0 .. 31;
      JPEG_QMEM2_14       at 16#108# range 0 .. 31;
      JPEG_QMEM2_15       at 16#10C# range 0 .. 31;
      JPEG_QMEM3_0        at 16#110# range 0 .. 31;
      JPEG_QMEM3_1        at 16#114# range 0 .. 31;
      JPEG_QMEM3_2        at 16#118# range 0 .. 31;
      JPEG_QMEM3_3        at 16#11C# range 0 .. 31;
      JPEG_QMEM3_4        at 16#120# range 0 .. 31;
      JPEG_QMEM3_5        at 16#124# range 0 .. 31;
      JPEG_QMEM3_6        at 16#128# range 0 .. 31;
      JPEG_QMEM3_7        at 16#12C# range 0 .. 31;
      JPEG_QMEM3_8        at 16#130# range 0 .. 31;
      JPEG_QMEM3_9        at 16#134# range 0 .. 31;
      JPEG_QMEM3_10       at 16#138# range 0 .. 31;
      JPEG_QMEM3_11       at 16#13C# range 0 .. 31;
      JPEG_QMEM3_12       at 16#140# range 0 .. 31;
      JPEG_QMEM3_13       at 16#144# range 0 .. 31;
      JPEG_QMEM3_14       at 16#148# range 0 .. 31;
      JPEG_QMEM3_15       at 16#14C# range 0 .. 31;
      JPEG_HUFFMIN0_0     at 16#150# range 0 .. 31;
      JPEG_HUFFMIN0_1     at 16#154# range 0 .. 31;
      JPEG_HUFFMIN0_2     at 16#158# range 0 .. 31;
      JPEG_HUFFMIN0_3     at 16#15C# range 0 .. 31;
      JPEG_HUFFMIN1_0     at 16#160# range 0 .. 31;
      JPEG_HUFFMIN1_1     at 16#164# range 0 .. 31;
      JPEG_HUFFMIN1_2     at 16#168# range 0 .. 31;
      JPEG_HUFFMIN1_3     at 16#16C# range 0 .. 31;
      JPEG_HUFFMIN2_0     at 16#170# range 0 .. 31;
      JPEG_HUFFMIN2_1     at 16#174# range 0 .. 31;
      JPEG_HUFFMIN2_2     at 16#178# range 0 .. 31;
      JPEG_HUFFMIN2_3     at 16#17C# range 0 .. 31;
      JPEG_HUFFMIN3_0     at 16#180# range 0 .. 31;
      JPEG_HUFFMIN3_1     at 16#184# range 0 .. 31;
      JPEG_HUFFMIN3_2     at 16#188# range 0 .. 31;
      JPEG_HUFFMIN3_3     at 16#18C# range 0 .. 31;
      JPEG_HUFFBASE0      at 16#190# range 0 .. 31;
      JPEG_HUFFBASE1      at 16#194# range 0 .. 31;
      JPEG_HUFFBASE2      at 16#198# range 0 .. 31;
      JPEG_HUFFBASE3      at 16#19C# range 0 .. 31;
      JPEG_HUFFBASE4      at 16#1A0# range 0 .. 31;
      JPEG_HUFFBASE5      at 16#1A4# range 0 .. 31;
      JPEG_HUFFBASE6      at 16#1A8# range 0 .. 31;
      JPEG_HUFFBASE7      at 16#1AC# range 0 .. 31;
      JPEG_HUFFBASE8      at 16#1B0# range 0 .. 31;
      JPEG_HUFFBASE9      at 16#1B4# range 0 .. 31;
      JPEG_HUFFBASE10     at 16#1B8# range 0 .. 31;
      JPEG_HUFFBASE11     at 16#1BC# range 0 .. 31;
      JPEG_HUFFBASE12     at 16#1C0# range 0 .. 31;
      JPEG_HUFFBASE13     at 16#1C4# range 0 .. 31;
      JPEG_HUFFBASE14     at 16#1C8# range 0 .. 31;
      JPEG_HUFFBASE15     at 16#1CC# range 0 .. 31;
      JPEG_HUFFBASE16     at 16#1D0# range 0 .. 31;
      JPEG_HUFFBASE17     at 16#1D4# range 0 .. 31;
      JPEG_HUFFBASE18     at 16#1D8# range 0 .. 31;
      JPEG_HUFFBASE19     at 16#1DC# range 0 .. 31;
      JPEG_HUFFBASE20     at 16#1E0# range 0 .. 31;
      JPEG_HUFFBASE21     at 16#1E4# range 0 .. 31;
      JPEG_HUFFBASE22     at 16#1E8# range 0 .. 31;
      JPEG_HUFFBASE23     at 16#1EC# range 0 .. 31;
      JPEG_HUFFBASE24     at 16#1F0# range 0 .. 31;
      JPEG_HUFFBASE25     at 16#1F4# range 0 .. 31;
      JPEG_HUFFBASE26     at 16#1F8# range 0 .. 31;
      JPEG_HUFFBASE27     at 16#1FC# range 0 .. 31;
      JPEG_HUFFBASE28     at 16#200# range 0 .. 31;
      JPEG_HUFFBASE29     at 16#204# range 0 .. 31;
      JPEG_HUFFBASE30     at 16#208# range 0 .. 31;
      JPEG_HUFFBASE31     at 16#20C# range 0 .. 31;
      JPEG_HUFFSYMB0      at 16#210# range 0 .. 31;
      JPEG_HUFFSYMB1      at 16#214# range 0 .. 31;
      JPEG_HUFFSYMB2      at 16#218# range 0 .. 31;
      JPEG_HUFFSYMB3      at 16#21C# range 0 .. 31;
      JPEG_HUFFSYMB4      at 16#220# range 0 .. 31;
      JPEG_HUFFSYMB5      at 16#224# range 0 .. 31;
      JPEG_HUFFSYMB6      at 16#228# range 0 .. 31;
      JPEG_HUFFSYMB7      at 16#22C# range 0 .. 31;
      JPEG_HUFFSYMB8      at 16#230# range 0 .. 31;
      JPEG_HUFFSYMB9      at 16#234# range 0 .. 31;
      JPEG_HUFFSYMB10     at 16#238# range 0 .. 31;
      JPEG_HUFFSYMB11     at 16#23C# range 0 .. 31;
      JPEG_HUFFSYMB12     at 16#240# range 0 .. 31;
      JPEG_HUFFSYMB13     at 16#244# range 0 .. 31;
      JPEG_HUFFSYMB14     at 16#248# range 0 .. 31;
      JPEG_HUFFSYMB15     at 16#24C# range 0 .. 31;
      JPEG_HUFFSYMB16     at 16#250# range 0 .. 31;
      JPEG_HUFFSYMB17     at 16#254# range 0 .. 31;
      JPEG_HUFFSYMB18     at 16#258# range 0 .. 31;
      JPEG_HUFFSYMB19     at 16#25C# range 0 .. 31;
      JPEG_HUFFSYMB20     at 16#260# range 0 .. 31;
      JPEG_HUFFSYMB21     at 16#264# range 0 .. 31;
      JPEG_HUFFSYMB22     at 16#268# range 0 .. 31;
      JPEG_HUFFSYMB23     at 16#26C# range 0 .. 31;
      JPEG_HUFFSYMB24     at 16#270# range 0 .. 31;
      JPEG_HUFFSYMB25     at 16#274# range 0 .. 31;
      JPEG_HUFFSYMB26     at 16#278# range 0 .. 31;
      JPEG_HUFFSYMB27     at 16#27C# range 0 .. 31;
      JPEG_HUFFSYMB28     at 16#280# range 0 .. 31;
      JPEG_HUFFSYMB29     at 16#284# range 0 .. 31;
      JPEG_HUFFSYMB30     at 16#288# range 0 .. 31;
      JPEG_HUFFSYMB31     at 16#28C# range 0 .. 31;
      JPEG_HUFFSYMB32     at 16#290# range 0 .. 31;
      JPEG_HUFFSYMB33     at 16#294# range 0 .. 31;
      JPEG_HUFFSYMB34     at 16#298# range 0 .. 31;
      JPEG_HUFFSYMB35     at 16#29C# range 0 .. 31;
      JPEG_HUFFSYMB36     at 16#2A0# range 0 .. 31;
      JPEG_HUFFSYMB37     at 16#2A4# range 0 .. 31;
      JPEG_HUFFSYMB38     at 16#2A8# range 0 .. 31;
      JPEG_HUFFSYMB39     at 16#2AC# range 0 .. 31;
      JPEG_HUFFSYMB40     at 16#2B0# range 0 .. 31;
      JPEG_HUFFSYMB41     at 16#2B4# range 0 .. 31;
      JPEG_HUFFSYMB42     at 16#2B8# range 0 .. 31;
      JPEG_HUFFSYMB43     at 16#2BC# range 0 .. 31;
      JPEG_HUFFSYMB44     at 16#2C0# range 0 .. 31;
      JPEG_HUFFSYMB45     at 16#2C4# range 0 .. 31;
      JPEG_HUFFSYMB46     at 16#2C8# range 0 .. 31;
      JPEG_HUFFSYMB47     at 16#2CC# range 0 .. 31;
      JPEG_HUFFSYMB48     at 16#2D0# range 0 .. 31;
      JPEG_HUFFSYMB49     at 16#2D4# range 0 .. 31;
      JPEG_HUFFSYMB50     at 16#2D8# range 0 .. 31;
      JPEG_HUFFSYMB51     at 16#2DC# range 0 .. 31;
      JPEG_HUFFSYMB52     at 16#2E0# range 0 .. 31;
      JPEG_HUFFSYMB53     at 16#2E4# range 0 .. 31;
      JPEG_HUFFSYMB54     at 16#2E8# range 0 .. 31;
      JPEG_HUFFSYMB55     at 16#2EC# range 0 .. 31;
      JPEG_HUFFSYMB56     at 16#2F0# range 0 .. 31;
      JPEG_HUFFSYMB57     at 16#2F4# range 0 .. 31;
      JPEG_HUFFSYMB58     at 16#2F8# range 0 .. 31;
      JPEG_HUFFSYMB59     at 16#2FC# range 0 .. 31;
      JPEG_HUFFSYMB60     at 16#300# range 0 .. 31;
      JPEG_HUFFSYMB61     at 16#304# range 0 .. 31;
      JPEG_HUFFSYMB62     at 16#308# range 0 .. 31;
      JPEG_HUFFSYMB63     at 16#30C# range 0 .. 31;
      JPEG_HUFFSYMB64     at 16#310# range 0 .. 31;
      JPEG_HUFFSYMB65     at 16#314# range 0 .. 31;
      JPEG_HUFFSYMB66     at 16#318# range 0 .. 31;
      JPEG_HUFFSYMB67     at 16#31C# range 0 .. 31;
      JPEG_HUFFSYMB68     at 16#320# range 0 .. 31;
      JPEG_HUFFSYMB69     at 16#324# range 0 .. 31;
      JPEG_HUFFSYMB70     at 16#328# range 0 .. 31;
      JPEG_HUFFSYMB71     at 16#32C# range 0 .. 31;
      JPEG_HUFFSYMB72     at 16#330# range 0 .. 31;
      JPEG_HUFFSYMB73     at 16#334# range 0 .. 31;
      JPEG_HUFFSYMB74     at 16#338# range 0 .. 31;
      JPEG_HUFFSYMB75     at 16#33C# range 0 .. 31;
      JPEG_HUFFSYMB76     at 16#340# range 0 .. 31;
      JPEG_HUFFSYMB77     at 16#344# range 0 .. 31;
      JPEG_HUFFSYMB78     at 16#348# range 0 .. 31;
      JPEG_HUFFSYMB79     at 16#34C# range 0 .. 31;
      JPEG_HUFFSYMB80     at 16#350# range 0 .. 31;
      JPEG_HUFFSYMB81     at 16#354# range 0 .. 31;
      JPEG_HUFFSYMB82     at 16#358# range 0 .. 31;
      JPEG_HUFFSYMB83     at 16#35C# range 0 .. 31;
      JPEG_DHTMEM0        at 16#360# range 0 .. 31;
      JPEG_DHTMEM1        at 16#364# range 0 .. 31;
      JPEG_DHTMEM2        at 16#368# range 0 .. 31;
      JPEG_DHTMEM3        at 16#36C# range 0 .. 31;
      JPEG_DHTMEM4        at 16#370# range 0 .. 31;
      JPEG_DHTMEM5        at 16#374# range 0 .. 31;
      JPEG_DHTMEM6        at 16#378# range 0 .. 31;
      JPEG_DHTMEM7        at 16#37C# range 0 .. 31;
      JPEG_DHTMEM8        at 16#380# range 0 .. 31;
      JPEG_DHTMEM9        at 16#384# range 0 .. 31;
      JPEG_DHTMEM10       at 16#388# range 0 .. 31;
      JPEG_DHTMEM11       at 16#38C# range 0 .. 31;
      JPEG_DHTMEM12       at 16#390# range 0 .. 31;
      JPEG_DHTMEM13       at 16#394# range 0 .. 31;
      JPEG_DHTMEM14       at 16#398# range 0 .. 31;
      JPEG_DHTMEM15       at 16#39C# range 0 .. 31;
      JPEG_DHTMEM16       at 16#3A0# range 0 .. 31;
      JPEG_DHTMEM17       at 16#3A4# range 0 .. 31;
      JPEG_DHTMEM18       at 16#3A8# range 0 .. 31;
      JPEG_DHTMEM19       at 16#3AC# range 0 .. 31;
      JPEG_DHTMEM20       at 16#3B0# range 0 .. 31;
      JPEG_DHTMEM21       at 16#3B4# range 0 .. 31;
      JPEG_DHTMEM22       at 16#3B8# range 0 .. 31;
      JPEG_DHTMEM23       at 16#3BC# range 0 .. 31;
      JPEG_DHTMEM24       at 16#3C0# range 0 .. 31;
      JPEG_DHTMEM25       at 16#3C4# range 0 .. 31;
      JPEG_DHTMEM26       at 16#3C8# range 0 .. 31;
      JPEG_DHTMEM27       at 16#3CC# range 0 .. 31;
      JPEG_DHTMEM28       at 16#3D0# range 0 .. 31;
      JPEG_DHTMEM29       at 16#3D4# range 0 .. 31;
      JPEG_DHTMEM30       at 16#3D8# range 0 .. 31;
      JPEG_DHTMEM31       at 16#3DC# range 0 .. 31;
      JPEG_DHTMEM32       at 16#3E0# range 0 .. 31;
      JPEG_DHTMEM33       at 16#3E4# range 0 .. 31;
      JPEG_DHTMEM34       at 16#3E8# range 0 .. 31;
      JPEG_DHTMEM35       at 16#3EC# range 0 .. 31;
      JPEG_DHTMEM36       at 16#3F0# range 0 .. 31;
      JPEG_DHTMEM37       at 16#3F4# range 0 .. 31;
      JPEG_DHTMEM38       at 16#3F8# range 0 .. 31;
      JPEG_DHTMEM39       at 16#3FC# range 0 .. 31;
      JPEG_DHTMEM40       at 16#400# range 0 .. 31;
      JPEG_DHTMEM41       at 16#404# range 0 .. 31;
      JPEG_DHTMEM42       at 16#408# range 0 .. 31;
      JPEG_DHTMEM43       at 16#40C# range 0 .. 31;
      JPEG_DHTMEM44       at 16#410# range 0 .. 31;
      JPEG_DHTMEM45       at 16#414# range 0 .. 31;
      JPEG_DHTMEM46       at 16#418# range 0 .. 31;
      JPEG_DHTMEM47       at 16#41C# range 0 .. 31;
      JPEG_DHTMEM48       at 16#420# range 0 .. 31;
      JPEG_DHTMEM49       at 16#424# range 0 .. 31;
      JPEG_DHTMEM50       at 16#428# range 0 .. 31;
      JPEG_DHTMEM51       at 16#42C# range 0 .. 31;
      JPEG_DHTMEM52       at 16#430# range 0 .. 31;
      JPEG_DHTMEM53       at 16#434# range 0 .. 31;
      JPEG_DHTMEM54       at 16#438# range 0 .. 31;
      JPEG_DHTMEM55       at 16#43C# range 0 .. 31;
      JPEG_DHTMEM56       at 16#440# range 0 .. 31;
      JPEG_DHTMEM57       at 16#444# range 0 .. 31;
      JPEG_DHTMEM58       at 16#448# range 0 .. 31;
      JPEG_DHTMEM59       at 16#44C# range 0 .. 31;
      JPEG_DHTMEM60       at 16#450# range 0 .. 31;
      JPEG_DHTMEM61       at 16#454# range 0 .. 31;
      JPEG_DHTMEM62       at 16#458# range 0 .. 31;
      JPEG_DHTMEM63       at 16#45C# range 0 .. 31;
      JPEG_DHTMEM64       at 16#460# range 0 .. 31;
      JPEG_DHTMEM65       at 16#464# range 0 .. 31;
      JPEG_DHTMEM66       at 16#468# range 0 .. 31;
      JPEG_DHTMEM67       at 16#46C# range 0 .. 31;
      JPEG_DHTMEM68       at 16#470# range 0 .. 31;
      JPEG_DHTMEM69       at 16#474# range 0 .. 31;
      JPEG_DHTMEM70       at 16#478# range 0 .. 31;
      JPEG_DHTMEM71       at 16#47C# range 0 .. 31;
      JPEG_DHTMEM72       at 16#480# range 0 .. 31;
      JPEG_DHTMEM73       at 16#484# range 0 .. 31;
      JPEG_DHTMEM74       at 16#488# range 0 .. 31;
      JPEG_DHTMEM75       at 16#48C# range 0 .. 31;
      JPEG_DHTMEM76       at 16#490# range 0 .. 31;
      JPEG_DHTMEM77       at 16#494# range 0 .. 31;
      JPEG_DHTMEM78       at 16#498# range 0 .. 31;
      JPEG_DHTMEM79       at 16#49C# range 0 .. 31;
      JPEG_DHTMEM80       at 16#4A0# range 0 .. 31;
      JPEG_DHTMEM81       at 16#4A4# range 0 .. 31;
      JPEG_DHTMEM82       at 16#4A8# range 0 .. 31;
      JPEG_DHTMEM83       at 16#4AC# range 0 .. 31;
      JPEG_DHTMEM84       at 16#4B0# range 0 .. 31;
      JPEG_DHTMEM85       at 16#4B4# range 0 .. 31;
      JPEG_DHTMEM86       at 16#4B8# range 0 .. 31;
      JPEG_DHTMEM87       at 16#4BC# range 0 .. 31;
      JPEG_DHTMEM88       at 16#4C0# range 0 .. 31;
      JPEG_DHTMEM89       at 16#4C4# range 0 .. 31;
      JPEG_DHTMEM90       at 16#4C8# range 0 .. 31;
      JPEG_DHTMEM91       at 16#4CC# range 0 .. 31;
      JPEG_DHTMEM92       at 16#4D0# range 0 .. 31;
      JPEG_DHTMEM93       at 16#4D4# range 0 .. 31;
      JPEG_DHTMEM94       at 16#4D8# range 0 .. 31;
      JPEG_DHTMEM95       at 16#4DC# range 0 .. 31;
      JPEG_DHTMEM96       at 16#4E0# range 0 .. 31;
      JPEG_DHTMEM97       at 16#4E4# range 0 .. 31;
      JPEG_DHTMEM98       at 16#4E8# range 0 .. 31;
      JPEG_DHTMEM99       at 16#4EC# range 0 .. 31;
      JPEG_DHTMEM100      at 16#4F0# range 0 .. 31;
      JPEG_DHTMEM101      at 16#4F4# range 0 .. 31;
      JPEG_DHTMEM102      at 16#4F8# range 0 .. 31;
      JPEG_HUFFENC_AC0_0  at 16#500# range 0 .. 31;
      JPEG_HUFFENC_AC0_1  at 16#504# range 0 .. 31;
      JPEG_HUFFENC_AC0_2  at 16#508# range 0 .. 31;
      JPEG_HUFFENC_AC0_3  at 16#50C# range 0 .. 31;
      JPEG_HUFFENC_AC0_4  at 16#510# range 0 .. 31;
      JPEG_HUFFENC_AC0_5  at 16#514# range 0 .. 31;
      JPEG_HUFFENC_AC0_6  at 16#518# range 0 .. 31;
      JPEG_HUFFENC_AC0_7  at 16#51C# range 0 .. 31;
      JPEG_HUFFENC_AC0_8  at 16#520# range 0 .. 31;
      JPEG_HUFFENC_AC0_9  at 16#524# range 0 .. 31;
      JPEG_HUFFENC_AC0_10 at 16#528# range 0 .. 31;
      JPEG_HUFFENC_AC0_11 at 16#52C# range 0 .. 31;
      JPEG_HUFFENC_AC0_12 at 16#530# range 0 .. 31;
      JPEG_HUFFENC_AC0_13 at 16#534# range 0 .. 31;
      JPEG_HUFFENC_AC0_14 at 16#538# range 0 .. 31;
      JPEG_HUFFENC_AC0_15 at 16#53C# range 0 .. 31;
      JPEG_HUFFENC_AC0_16 at 16#540# range 0 .. 31;
      JPEG_HUFFENC_AC0_17 at 16#544# range 0 .. 31;
      JPEG_HUFFENC_AC0_18 at 16#548# range 0 .. 31;
      JPEG_HUFFENC_AC0_19 at 16#54C# range 0 .. 31;
      JPEG_HUFFENC_AC0_20 at 16#550# range 0 .. 31;
      JPEG_HUFFENC_AC0_21 at 16#554# range 0 .. 31;
      JPEG_HUFFENC_AC0_22 at 16#558# range 0 .. 31;
      JPEG_HUFFENC_AC0_23 at 16#55C# range 0 .. 31;
      JPEG_HUFFENC_AC0_24 at 16#560# range 0 .. 31;
      JPEG_HUFFENC_AC0_25 at 16#564# range 0 .. 31;
      JPEG_HUFFENC_AC0_26 at 16#568# range 0 .. 31;
      JPEG_HUFFENC_AC0_27 at 16#56C# range 0 .. 31;
      JPEG_HUFFENC_AC0_28 at 16#570# range 0 .. 31;
      JPEG_HUFFENC_AC0_29 at 16#574# range 0 .. 31;
      JPEG_HUFFENC_AC0_30 at 16#578# range 0 .. 31;
      JPEG_HUFFENC_AC0_31 at 16#57C# range 0 .. 31;
      JPEG_HUFFENC_AC0_32 at 16#580# range 0 .. 31;
      JPEG_HUFFENC_AC0_33 at 16#584# range 0 .. 31;
      JPEG_HUFFENC_AC0_34 at 16#588# range 0 .. 31;
      JPEG_HUFFENC_AC0_35 at 16#58C# range 0 .. 31;
      JPEG_HUFFENC_AC0_36 at 16#590# range 0 .. 31;
      JPEG_HUFFENC_AC0_37 at 16#594# range 0 .. 31;
      JPEG_HUFFENC_AC0_38 at 16#598# range 0 .. 31;
      JPEG_HUFFENC_AC0_39 at 16#59C# range 0 .. 31;
      JPEG_HUFFENC_AC0_40 at 16#5A0# range 0 .. 31;
      JPEG_HUFFENC_AC0_41 at 16#5A4# range 0 .. 31;
      JPEG_HUFFENC_AC0_42 at 16#5A8# range 0 .. 31;
      JPEG_HUFFENC_AC0_43 at 16#5AC# range 0 .. 31;
      JPEG_HUFFENC_AC0_44 at 16#5B0# range 0 .. 31;
      JPEG_HUFFENC_AC0_45 at 16#5B4# range 0 .. 31;
      JPEG_HUFFENC_AC0_46 at 16#5B8# range 0 .. 31;
      JPEG_HUFFENC_AC0_47 at 16#5BC# range 0 .. 31;
      JPEG_HUFFENC_AC0_48 at 16#5C0# range 0 .. 31;
      JPEG_HUFFENC_AC0_49 at 16#5C4# range 0 .. 31;
      JPEG_HUFFENC_AC0_50 at 16#5C8# range 0 .. 31;
      JPEG_HUFFENC_AC0_51 at 16#5CC# range 0 .. 31;
      JPEG_HUFFENC_AC0_52 at 16#5D0# range 0 .. 31;
      JPEG_HUFFENC_AC0_53 at 16#5D4# range 0 .. 31;
      JPEG_HUFFENC_AC0_54 at 16#5D8# range 0 .. 31;
      JPEG_HUFFENC_AC0_55 at 16#5DC# range 0 .. 31;
      JPEG_HUFFENC_AC0_56 at 16#5E0# range 0 .. 31;
      JPEG_HUFFENC_AC0_57 at 16#5E4# range 0 .. 31;
      JPEG_HUFFENC_AC0_58 at 16#5E8# range 0 .. 31;
      JPEG_HUFFENC_AC0_59 at 16#5EC# range 0 .. 31;
      JPEG_HUFFENC_AC0_60 at 16#5F0# range 0 .. 31;
      JPEG_HUFFENC_AC0_61 at 16#5F4# range 0 .. 31;
      JPEG_HUFFENC_AC0_62 at 16#5F8# range 0 .. 31;
      JPEG_HUFFENC_AC0_63 at 16#5FC# range 0 .. 31;
      JPEG_HUFFENC_AC0_64 at 16#600# range 0 .. 31;
      JPEG_HUFFENC_AC0_65 at 16#604# range 0 .. 31;
      JPEG_HUFFENC_AC0_66 at 16#608# range 0 .. 31;
      JPEG_HUFFENC_AC0_67 at 16#60C# range 0 .. 31;
      JPEG_HUFFENC_AC0_68 at 16#610# range 0 .. 31;
      JPEG_HUFFENC_AC0_69 at 16#614# range 0 .. 31;
      JPEG_HUFFENC_AC0_70 at 16#618# range 0 .. 31;
      JPEG_HUFFENC_AC0_71 at 16#61C# range 0 .. 31;
      JPEG_HUFFENC_AC0_72 at 16#620# range 0 .. 31;
      JPEG_HUFFENC_AC0_73 at 16#624# range 0 .. 31;
      JPEG_HUFFENC_AC0_74 at 16#628# range 0 .. 31;
      JPEG_HUFFENC_AC0_75 at 16#62C# range 0 .. 31;
      JPEG_HUFFENC_AC0_76 at 16#630# range 0 .. 31;
      JPEG_HUFFENC_AC0_77 at 16#634# range 0 .. 31;
      JPEG_HUFFENC_AC0_78 at 16#638# range 0 .. 31;
      JPEG_HUFFENC_AC0_79 at 16#63C# range 0 .. 31;
      JPEG_HUFFENC_AC0_80 at 16#640# range 0 .. 31;
      JPEG_HUFFENC_AC0_81 at 16#644# range 0 .. 31;
      JPEG_HUFFENC_AC0_82 at 16#648# range 0 .. 31;
      JPEG_HUFFENC_AC0_83 at 16#64C# range 0 .. 31;
      JPEG_HUFFENC_AC0_84 at 16#650# range 0 .. 31;
      JPEG_HUFFENC_AC0_85 at 16#654# range 0 .. 31;
      JPEG_HUFFENC_AC0_86 at 16#658# range 0 .. 31;
      JPEG_HUFFENC_AC0_87 at 16#65C# range 0 .. 31;
      JPEG_HUFFENC_AC1_0  at 16#660# range 0 .. 31;
      JPEG_HUFFENC_AC1_1  at 16#664# range 0 .. 31;
      JPEG_HUFFENC_AC1_2  at 16#668# range 0 .. 31;
      JPEG_HUFFENC_AC1_3  at 16#66C# range 0 .. 31;
      JPEG_HUFFENC_AC1_4  at 16#670# range 0 .. 31;
      JPEG_HUFFENC_AC1_5  at 16#674# range 0 .. 31;
      JPEG_HUFFENC_AC1_6  at 16#678# range 0 .. 31;
      JPEG_HUFFENC_AC1_7  at 16#67C# range 0 .. 31;
      JPEG_HUFFENC_AC1_8  at 16#680# range 0 .. 31;
      JPEG_HUFFENC_AC1_9  at 16#684# range 0 .. 31;
      JPEG_HUFFENC_AC1_10 at 16#688# range 0 .. 31;
      JPEG_HUFFENC_AC1_11 at 16#68C# range 0 .. 31;
      JPEG_HUFFENC_AC1_12 at 16#690# range 0 .. 31;
      JPEG_HUFFENC_AC1_13 at 16#694# range 0 .. 31;
      JPEG_HUFFENC_AC1_14 at 16#698# range 0 .. 31;
      JPEG_HUFFENC_AC1_15 at 16#69C# range 0 .. 31;
      JPEG_HUFFENC_AC1_16 at 16#6A0# range 0 .. 31;
      JPEG_HUFFENC_AC1_17 at 16#6A4# range 0 .. 31;
      JPEG_HUFFENC_AC1_18 at 16#6A8# range 0 .. 31;
      JPEG_HUFFENC_AC1_19 at 16#6AC# range 0 .. 31;
      JPEG_HUFFENC_AC1_20 at 16#6B0# range 0 .. 31;
      JPEG_HUFFENC_AC1_21 at 16#6B4# range 0 .. 31;
      JPEG_HUFFENC_AC1_22 at 16#6B8# range 0 .. 31;
      JPEG_HUFFENC_AC1_23 at 16#6BC# range 0 .. 31;
      JPEG_HUFFENC_AC1_24 at 16#6C0# range 0 .. 31;
      JPEG_HUFFENC_AC1_25 at 16#6C4# range 0 .. 31;
      JPEG_HUFFENC_AC1_26 at 16#6C8# range 0 .. 31;
      JPEG_HUFFENC_AC1_27 at 16#6CC# range 0 .. 31;
      JPEG_HUFFENC_AC1_28 at 16#6D0# range 0 .. 31;
      JPEG_HUFFENC_AC1_29 at 16#6D4# range 0 .. 31;
      JPEG_HUFFENC_AC1_30 at 16#6D8# range 0 .. 31;
      JPEG_HUFFENC_AC1_31 at 16#6DC# range 0 .. 31;
      JPEG_HUFFENC_AC1_32 at 16#6E0# range 0 .. 31;
      JPEG_HUFFENC_AC1_33 at 16#6E4# range 0 .. 31;
      JPEG_HUFFENC_AC1_34 at 16#6E8# range 0 .. 31;
      JPEG_HUFFENC_AC1_35 at 16#6EC# range 0 .. 31;
      JPEG_HUFFENC_AC1_36 at 16#6F0# range 0 .. 31;
      JPEG_HUFFENC_AC1_37 at 16#6F4# range 0 .. 31;
      JPEG_HUFFENC_AC1_38 at 16#6F8# range 0 .. 31;
      JPEG_HUFFENC_AC1_39 at 16#6FC# range 0 .. 31;
      JPEG_HUFFENC_AC1_40 at 16#700# range 0 .. 31;
      JPEG_HUFFENC_AC1_41 at 16#704# range 0 .. 31;
      JPEG_HUFFENC_AC1_42 at 16#708# range 0 .. 31;
      JPEG_HUFFENC_AC1_43 at 16#70C# range 0 .. 31;
      JPEG_HUFFENC_AC1_44 at 16#710# range 0 .. 31;
      JPEG_HUFFENC_AC1_45 at 16#714# range 0 .. 31;
      JPEG_HUFFENC_AC1_46 at 16#718# range 0 .. 31;
      JPEG_HUFFENC_AC1_47 at 16#71C# range 0 .. 31;
      JPEG_HUFFENC_AC1_48 at 16#720# range 0 .. 31;
      JPEG_HUFFENC_AC1_49 at 16#724# range 0 .. 31;
      JPEG_HUFFENC_AC1_50 at 16#728# range 0 .. 31;
      JPEG_HUFFENC_AC1_51 at 16#72C# range 0 .. 31;
      JPEG_HUFFENC_AC1_52 at 16#730# range 0 .. 31;
      JPEG_HUFFENC_AC1_53 at 16#734# range 0 .. 31;
      JPEG_HUFFENC_AC1_54 at 16#738# range 0 .. 31;
      JPEG_HUFFENC_AC1_55 at 16#73C# range 0 .. 31;
      JPEG_HUFFENC_AC1_56 at 16#740# range 0 .. 31;
      JPEG_HUFFENC_AC1_57 at 16#744# range 0 .. 31;
      JPEG_HUFFENC_AC1_58 at 16#748# range 0 .. 31;
      JPEG_HUFFENC_AC1_59 at 16#74C# range 0 .. 31;
      JPEG_HUFFENC_AC1_60 at 16#750# range 0 .. 31;
      JPEG_HUFFENC_AC1_61 at 16#754# range 0 .. 31;
      JPEG_HUFFENC_AC1_62 at 16#758# range 0 .. 31;
      JPEG_HUFFENC_AC1_63 at 16#75C# range 0 .. 31;
      JPEG_HUFFENC_AC1_64 at 16#760# range 0 .. 31;
      JPEG_HUFFENC_AC1_65 at 16#764# range 0 .. 31;
      JPEG_HUFFENC_AC1_66 at 16#768# range 0 .. 31;
      JPEG_HUFFENC_AC1_67 at 16#76C# range 0 .. 31;
      JPEG_HUFFENC_AC1_68 at 16#770# range 0 .. 31;
      JPEG_HUFFENC_AC1_69 at 16#774# range 0 .. 31;
      JPEG_HUFFENC_AC1_70 at 16#778# range 0 .. 31;
      JPEG_HUFFENC_AC1_71 at 16#77C# range 0 .. 31;
      JPEG_HUFFENC_AC1_72 at 16#780# range 0 .. 31;
      JPEG_HUFFENC_AC1_73 at 16#784# range 0 .. 31;
      JPEG_HUFFENC_AC1_74 at 16#788# range 0 .. 31;
      JPEG_HUFFENC_AC1_75 at 16#78C# range 0 .. 31;
      JPEG_HUFFENC_AC1_76 at 16#790# range 0 .. 31;
      JPEG_HUFFENC_AC1_77 at 16#794# range 0 .. 31;
      JPEG_HUFFENC_AC1_78 at 16#798# range 0 .. 31;
      JPEG_HUFFENC_AC1_79 at 16#79C# range 0 .. 31;
      JPEG_HUFFENC_AC1_80 at 16#7A0# range 0 .. 31;
      JPEG_HUFFENC_AC1_81 at 16#7A4# range 0 .. 31;
      JPEG_HUFFENC_AC1_82 at 16#7A8# range 0 .. 31;
      JPEG_HUFFENC_AC1_83 at 16#7AC# range 0 .. 31;
      JPEG_HUFFENC_AC1_84 at 16#7B0# range 0 .. 31;
      JPEG_HUFFENC_AC1_85 at 16#7B4# range 0 .. 31;
      JPEG_HUFFENC_AC1_86 at 16#7B8# range 0 .. 31;
      JPEG_HUFFENC_AC1_87 at 16#7BC# range 0 .. 31;
      JPEG_HUFFENC_DC0_0  at 16#7C0# range 0 .. 31;
      JPEG_HUFFENC_DC0_1  at 16#7C4# range 0 .. 31;
      JPEG_HUFFENC_DC0_2  at 16#7C8# range 0 .. 31;
      JPEG_HUFFENC_DC0_3  at 16#7CC# range 0 .. 31;
      JPEG_HUFFENC_DC0_4  at 16#7D0# range 0 .. 31;
      JPEG_HUFFENC_DC0_5  at 16#7D4# range 0 .. 31;
      JPEG_HUFFENC_DC0_6  at 16#7D8# range 0 .. 31;
      JPEG_HUFFENC_DC0_7  at 16#7DC# range 0 .. 31;
      JPEG_HUFFENC_DC1_0  at 16#7E0# range 0 .. 31;
      JPEG_HUFFENC_DC1_1  at 16#7E4# range 0 .. 31;
      JPEG_HUFFENC_DC1_2  at 16#7E8# range 0 .. 31;
      JPEG_HUFFENC_DC1_3  at 16#7EC# range 0 .. 31;
      JPEG_HUFFENC_DC1_4  at 16#7F0# range 0 .. 31;
      JPEG_HUFFENC_DC1_5  at 16#7F4# range 0 .. 31;
      JPEG_HUFFENC_DC1_6  at 16#7F8# range 0 .. 31;
      JPEG_HUFFENC_DC1_7  at 16#7FC# range 0 .. 31;
   end record;

   --  JPEG codec
   JPEG_Periph : aliased JPEG_Peripheral
     with Import, Address => JPEG_Base;

   --  JPEG codec
   JPEG_S_Periph : aliased JPEG_Peripheral
     with Import, Address => JPEG_S_Base;

end STM32_SVD.JPEG;
