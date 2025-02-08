--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.VDEC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  VDEC address block description
   type VDEC_Peripheral is record
      --  VDEC ID register
      VDEC_SWREG0   : aliased HAL.UInt32;
      --  VDEC interrupt register decoder register
      VDEC_SWREG1   : aliased HAL.UInt32;
      --  VDEC device configuration decoder register
      VDEC_SWREG2   : aliased HAL.UInt32;
      --  VDEC decoder control register 0, decmode, picture type
      VDEC_SWREG3   : aliased HAL.UInt32;
      --  VDEC decoder control register 1, picture parameters
      VDEC_SWREG4   : aliased HAL.UInt32;
      --  VDEC decoder control register 2, stream decoding table selects
      VDEC_SWREG5   : aliased HAL.UInt32;
      --  VDEC decoder control register 3, stream buffer information
      VDEC_SWREG6   : aliased HAL.UInt32;
      --  VDEC decoder control register 4, H264, VC-1, VP6 and	progressive JPEG
      --  control
      VDEC_SWREG7   : aliased HAL.UInt32;
      --  VDEC decoder control register 5, H264, VC-1, VP6, 	progressive JPEG
      --  and RV control
      VDEC_SWREG8   : aliased HAL.UInt32;
      --  VDEC decoder control register 6/base address for MB-control,
      --  RLC	/VC-1 intensity control 0/VP6,VP7,VP8 ctrl-stream length/	RV pic
      --  slice amount
      VDEC_SWREG9   : aliased HAL.UInt32;
      --  VDEC base address for differential motion vector base
      --  address	RLC-mode/H264 P initial fwd ref pic list register, 4-9/	VC-1
      --  intensity control 1/VP7 and VP8 segmentation base	register
      VDEC_SWREG10  : aliased HAL.UInt32;
      --  VDEC decoder control register 7, VLC/base address for H.264	intra
      --  prediction 4x4/base address for MPEG-4 DC component, RLC	/ H264 P
      --  initial fwd ref pic list register, 10- 15/VC-1 intensity	control 2
      --  register
      VDEC_SWREG11  : aliased HAL.UInt32;
      --  VDEC base address for RLC data, RLC/stream start address	/decoded end
      --  addr register, VLC
      VDEC_SWREG12  : aliased HAL.UInt32;
      --  VDEC base address for decoded picture/base address for JPEG	decoder
      --  output luminance picture register
      VDEC_SWREG13  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 0/base address	for JPEG
      --  decoder output chrominance picture register
      VDEC_SWREG14  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 1/JPEG control	register
      VDEC_SWREG15  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 2/list of VLC
      --  code	lengths in first JPEG AC table register
      VDEC_SWREG16  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 3/list of VLC
      --  code	lengths in first JPEG AC table register
      VDEC_SWREG17  : aliased HAL.UInt32;
      --  VDEC base address for reference picture list of VLC code lengths	in
      --  first JPEG AC table/VP8 golden refer picture base register
      VDEC_SWREG18  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 5/list of VLC
      --  code	lengths in first/second JPEG AC table register
      VDEC_SWREG19  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 6/list of VLC
      --  code	lengths in second JPEG AC table register
      VDEC_SWREG20  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 7/list of VLC
      --  code	lengths in second JPEG AC table register
      VDEC_SWREG21  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 8/list of VLC
      --  code	lengths in second JPEG AC table/VP7,VP8 DCT stream 1
      --  base	register
      VDEC_SWREG22  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 9/list of VLC
      --  code	lengths in first JPEG DC table/VP6 scan maps/VP7,VP8 DCT	stream
      --  2 base register
      VDEC_SWREG23  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 10/list of VLC
      --  code	lengths in first JPEG DC table/VP6 scan maps/VP7, VP8 DCT	stream
      --  3 base register
      VDEC_SWREG24  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 11/list of VLC
      --  code	lengths in second JPEG DC table/VP6 scan maps/VP7,VP8 DCT	stream
      --  4 base register
      VDEC_SWREG25  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 12/list of VLC
      --  code	lengths in second JPEG DC table/VP6 scan maps/VP7, VP8
      --  DCT	stream 5 base register
      VDEC_SWREG26  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 13/VC-1 bitpl mbctrl	or
      --  VP6, VP7, VP8 ctrl stream base/progressive JPEG DC table	register
      VDEC_SWREG27  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 14/VP6 scan
      --  maps	/progressive JPEG DC table/VP7, VP8 DCT stream 6 base	register
      VDEC_SWREG28  : aliased HAL.UInt32;
      --  VDEC base address for reference picture index 15/VP6 scan maps/	VP7,
      --  VP8 DCT stream 7 base register
      VDEC_SWREG29  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 0 and 1, H264 VLC	/VP6 scan
      --  maps/VP7, VP8 loop filter mb level adjusts	register
      VDEC_SWREG30  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 2 and 3, H264 VLC/	VP6 scan
      --  maps/VP7, VP8 loop filter ref pic level adjusts	register
      VDEC_SWREG31  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 4 and 5, H264 VLC/	VP6 scan
      --  maps/VP7, VP8 loop filter levels	register
      VDEC_SWREG32  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 6 and 7, H264 VLC	/VP6 scan
      --  maps/VP7, VP8 quantization values register
      VDEC_SWREG33  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 8 and 9, H264 VLC	/VP8
      --  prediction filter taps register
      VDEC_SWREG34  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 10 and 11, H264 VLC	/VP8
      --  prediction filter taps register
      VDEC_SWREG35  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 12 and 13, H264 VLC/	VP8
      --  prediction filter taps Register
      VDEC_SWREG36  : aliased HAL.UInt32;
      --  VDEC reference picture numbers for index 14 and 15, H264 VLC	/VP8
      --  prediction filter taps register
      VDEC_SWREG37  : aliased HAL.UInt32;
      --  VDEC reference picture long term flags, H264 VLC/	VP8 prediction
      --  filter taps register
      VDEC_SWREG38  : aliased HAL.UInt32;
      --  VDEC reference picture valid flags, H264 VLC/	VP8 prediction filter
      --  taps register
      VDEC_SWREG39  : aliased HAL.UInt32;
      --  VDEC base address for standard dependent table	register
      VDEC_SWREG40  : aliased HAL.UInt32;
      --  VDEC base address for direct mode motion vectors/	progressive JPEG
      --  AC/DC coefficient read/write base	register
      VDEC_SWREG41  : aliased HAL.UInt32;
      --  VDEC bi_dir initial ref pic list register, 0-2/VP6 prediction	filter
      --  taps/progressive JPEG Cb ACDC coefficient base	register
      VDEC_SWREG42  : aliased HAL.UInt32;
      --  VDEC bi-dir initial ref pic list register, 3-5/VP6 prediction	filter
      --  taps/progressive JPEG Cr ACDC coefficient base	register
      VDEC_SWREG43  : aliased HAL.UInt32;
      --  VDEC bi-dir initial ref pic list register, 6-8/VP6 prediction	filter
      --  taps register
      VDEC_SWREG44  : aliased HAL.UInt32;
      --  VDEC bi-dir initial ref pic list register, 9-11/VP6 prediction	filter
      --  taps register
      VDEC_SWREG45  : aliased HAL.UInt32;
      --  VDEC bi-dir initial ref pic list register, 12-14/VP7,VP8	quantization
      --  values register
      VDEC_SWREG46  : aliased HAL.UInt32;
      --  VDEC bi-dir and P fwd initial ref pic list register, 15 and P
      --  0-3/	VP7,VP8 quantization values register
      VDEC_SWREG47  : aliased HAL.UInt32;
      --  VDEC error concealment register
      VDEC_SWREG48  : aliased HAL.UInt32;
      --  VDEC prediction filter tap register for H264
      VDEC_SWREG49  : aliased HAL.UInt32;
      --  VDEC synthesis configuration register decoder 0
      VDEC_SWREG50  : aliased HAL.UInt32;
      --  VDEC reference picture buffer control register
      VDEC_SWREG51  : aliased HAL.UInt32;
      --  VDEC synthesis configuration register decoder 1
      VDEC_SWREG54  : aliased HAL.UInt32;
      --  VDEC reference picture buffer 2/advanced prefetch control	register
      VDEC_SWREG55  : aliased HAL.UInt32;
      --  VDEC device configuration register decoder 2/multicore
      --  control	register
      VDEC_SWREG58  : aliased HAL.UInt32;
      --  VDEC H264 chrominance 8 pixel interleaved data base	register
      VDEC_SWREG59  : aliased HAL.UInt32;
      --  VDEC base address for H264 and AVS decoded chroma picture	register
      VDEC_SWREG102 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 0	register
      VDEC_SWREG103 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 1	register
      VDEC_SWREG104 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 2	register
      VDEC_SWREG105 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 3	register
      VDEC_SWREG106 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 4	register
      VDEC_SWREG107 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 5	register
      VDEC_SWREG108 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 6	register
      VDEC_SWREG109 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 7	register
      VDEC_SWREG110 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 8	register
      VDEC_SWREG111 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 9	register
      VDEC_SWREG112 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 10	register
      VDEC_SWREG113 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 11	register
      VDEC_SWREG114 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 12	register
      VDEC_SWREG115 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 13	register
      VDEC_SWREG116 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 14	register
      VDEC_SWREG117 : aliased HAL.UInt32;
      --  VDEC base address for reference chroma picture index 15	register
      VDEC_SWREG118 : aliased HAL.UInt32;
   end record
     with Volatile;

   for VDEC_Peripheral use record
      VDEC_SWREG0   at 16#0# range 0 .. 31;
      VDEC_SWREG1   at 16#4# range 0 .. 31;
      VDEC_SWREG2   at 16#8# range 0 .. 31;
      VDEC_SWREG3   at 16#C# range 0 .. 31;
      VDEC_SWREG4   at 16#10# range 0 .. 31;
      VDEC_SWREG5   at 16#14# range 0 .. 31;
      VDEC_SWREG6   at 16#18# range 0 .. 31;
      VDEC_SWREG7   at 16#1C# range 0 .. 31;
      VDEC_SWREG8   at 16#20# range 0 .. 31;
      VDEC_SWREG9   at 16#24# range 0 .. 31;
      VDEC_SWREG10  at 16#28# range 0 .. 31;
      VDEC_SWREG11  at 16#2C# range 0 .. 31;
      VDEC_SWREG12  at 16#30# range 0 .. 31;
      VDEC_SWREG13  at 16#34# range 0 .. 31;
      VDEC_SWREG14  at 16#38# range 0 .. 31;
      VDEC_SWREG15  at 16#3C# range 0 .. 31;
      VDEC_SWREG16  at 16#40# range 0 .. 31;
      VDEC_SWREG17  at 16#44# range 0 .. 31;
      VDEC_SWREG18  at 16#48# range 0 .. 31;
      VDEC_SWREG19  at 16#4C# range 0 .. 31;
      VDEC_SWREG20  at 16#50# range 0 .. 31;
      VDEC_SWREG21  at 16#54# range 0 .. 31;
      VDEC_SWREG22  at 16#58# range 0 .. 31;
      VDEC_SWREG23  at 16#5C# range 0 .. 31;
      VDEC_SWREG24  at 16#60# range 0 .. 31;
      VDEC_SWREG25  at 16#64# range 0 .. 31;
      VDEC_SWREG26  at 16#68# range 0 .. 31;
      VDEC_SWREG27  at 16#6C# range 0 .. 31;
      VDEC_SWREG28  at 16#70# range 0 .. 31;
      VDEC_SWREG29  at 16#74# range 0 .. 31;
      VDEC_SWREG30  at 16#78# range 0 .. 31;
      VDEC_SWREG31  at 16#7C# range 0 .. 31;
      VDEC_SWREG32  at 16#80# range 0 .. 31;
      VDEC_SWREG33  at 16#84# range 0 .. 31;
      VDEC_SWREG34  at 16#88# range 0 .. 31;
      VDEC_SWREG35  at 16#8C# range 0 .. 31;
      VDEC_SWREG36  at 16#90# range 0 .. 31;
      VDEC_SWREG37  at 16#94# range 0 .. 31;
      VDEC_SWREG38  at 16#98# range 0 .. 31;
      VDEC_SWREG39  at 16#9C# range 0 .. 31;
      VDEC_SWREG40  at 16#A0# range 0 .. 31;
      VDEC_SWREG41  at 16#A4# range 0 .. 31;
      VDEC_SWREG42  at 16#A8# range 0 .. 31;
      VDEC_SWREG43  at 16#AC# range 0 .. 31;
      VDEC_SWREG44  at 16#B0# range 0 .. 31;
      VDEC_SWREG45  at 16#B4# range 0 .. 31;
      VDEC_SWREG46  at 16#B8# range 0 .. 31;
      VDEC_SWREG47  at 16#BC# range 0 .. 31;
      VDEC_SWREG48  at 16#C0# range 0 .. 31;
      VDEC_SWREG49  at 16#C4# range 0 .. 31;
      VDEC_SWREG50  at 16#C8# range 0 .. 31;
      VDEC_SWREG51  at 16#CC# range 0 .. 31;
      VDEC_SWREG54  at 16#D8# range 0 .. 31;
      VDEC_SWREG55  at 16#DC# range 0 .. 31;
      VDEC_SWREG58  at 16#E8# range 0 .. 31;
      VDEC_SWREG59  at 16#EC# range 0 .. 31;
      VDEC_SWREG102 at 16#198# range 0 .. 31;
      VDEC_SWREG103 at 16#19C# range 0 .. 31;
      VDEC_SWREG104 at 16#1A0# range 0 .. 31;
      VDEC_SWREG105 at 16#1A4# range 0 .. 31;
      VDEC_SWREG106 at 16#1A8# range 0 .. 31;
      VDEC_SWREG107 at 16#1AC# range 0 .. 31;
      VDEC_SWREG108 at 16#1B0# range 0 .. 31;
      VDEC_SWREG109 at 16#1B4# range 0 .. 31;
      VDEC_SWREG110 at 16#1B8# range 0 .. 31;
      VDEC_SWREG111 at 16#1BC# range 0 .. 31;
      VDEC_SWREG112 at 16#1C0# range 0 .. 31;
      VDEC_SWREG113 at 16#1C4# range 0 .. 31;
      VDEC_SWREG114 at 16#1C8# range 0 .. 31;
      VDEC_SWREG115 at 16#1CC# range 0 .. 31;
      VDEC_SWREG116 at 16#1D0# range 0 .. 31;
      VDEC_SWREG117 at 16#1D4# range 0 .. 31;
      VDEC_SWREG118 at 16#1D8# range 0 .. 31;
   end record;

   --  VDEC address block description
   VDEC_Periph : aliased VDEC_Peripheral
     with Import, Address => VDEC_Base;

   --  VDEC address block description
   VDEC_S_Periph : aliased VDEC_Peripheral
     with Import, Address => VDEC_S_Base;

end STM32_SVD.VDEC;
