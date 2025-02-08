--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.VENC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  VENC address block description
   type VENC_Peripheral is record
      --  VENC ID register
      VENC_SWREG0   : aliased HAL.UInt32;
      --  VENC interrupt register
      VENC_SWREG1   : aliased HAL.UInt32;
      --  VENC bus interface configuration register
      VENC_SWREG2   : aliased HAL.UInt32;
      --  VENC device configuration register
      VENC_SWREG3   : aliased HAL.UInt32;
      --  VENC base address for output stream data register
      VENC_SWREG5   : aliased HAL.UInt32;
      --  VENC base address for output control data register
      VENC_SWREG6   : aliased HAL.UInt32;
      --  VENC base address for reference luma register
      VENC_SWREG7   : aliased HAL.UInt32;
      --  VENC base address for reference chroma register
      VENC_SWREG8   : aliased HAL.UInt32;
      --  VENC base address for reconstructed luma register
      VENC_SWREG9   : aliased HAL.UInt32;
      --  VENC base address for reconstructed chroma register
      VENC_SWREG10  : aliased HAL.UInt32;
      --  VENC base address for input picture luma register
      VENC_SWREG11  : aliased HAL.UInt32;
      --  VENC base address for input picture cb register
      VENC_SWREG12  : aliased HAL.UInt32;
      --  VENC base address for input picture cr register
      VENC_SWREG13  : aliased HAL.UInt32;
      --  VENC encoder control register 0
      VENC_SWREG14  : aliased HAL.UInt32;
      --  VENC encoder control register 1
      VENC_SWREG15  : aliased HAL.UInt32;
      --  VENC encoder control register 2
      VENC_SWREG16  : aliased HAL.UInt32;
      --  VENC encoder control register 3
      VENC_SWREG17  : aliased HAL.UInt32;
      --  VENC encoder control register 4
      VENC_SWREG18  : aliased HAL.UInt32;
      --  VENC encoder control register 5
      VENC_SWREG19  : aliased HAL.UInt32;
      --  VENC encoder control register 6
      VENC_SWREG20  : aliased HAL.UInt32;
      --  VENC encoder control register 7
      VENC_SWREG21  : aliased HAL.UInt32;
      --  VENC stream header remainder MSB bits register
      VENC_SWREG22  : aliased HAL.UInt32;
      --  VENC stream header remainder LSB bits register
      VENC_SWREG23  : aliased HAL.UInt32;
      --  VENC stream buffer limit/output stream size register
      VENC_SWREG24  : aliased HAL.UInt32;
      --  VENC encoder control register 8
      VENC_SWREG25  : aliased HAL.UInt32;
      --  VENC intra-slice bitmap/base address for VP8 counters	register
      VENC_SWREG26  : aliased HAL.UInt32;
      --  VENC encoder control register 9
      VENC_SWREG27  : aliased HAL.UInt32;
      --  VENC encoder control register 10
      VENC_SWREG28  : aliased HAL.UInt32;
      --  VENC encoder control register 11
      VENC_SWREG29  : aliased HAL.UInt32;
      --  VENC encoder control register 12
      VENC_SWREG30  : aliased HAL.UInt32;
      --  VENC encoder control register 13
      VENC_SWREG31  : aliased HAL.UInt32;
      --  VENC encoder control register 14
      VENC_SWREG32  : aliased HAL.UInt32;
      --  VENC encoder control register 15
      VENC_SWREG33  : aliased HAL.UInt32;
      --  VENC encoder control register 16
      VENC_SWREG34  : aliased HAL.UInt32;
      --  VENC H.264 checkpoint word error 5-6/encoder control register 17
      VENC_SWREG35  : aliased HAL.UInt32;
      --  VENC H.264 checkpoint delta QP 1-8/encoder control register 18
      VENC_SWREG36  : aliased HAL.UInt32;
      --  VENC encoder control register 19, VP8 filter, stream start offset
      VENC_SWREG37  : aliased HAL.UInt32;
      --  VENC macroblock count output register
      VENC_SWREG38  : aliased HAL.UInt32;
      --  VENC base address for next pic luminance register
      VENC_SWREG39  : aliased HAL.UInt32;
      --  VENC stabilization mode control register
      VENC_SWREG40  : aliased HAL.UInt32;
      --  VENC stabilization motion sum div8 output register
      VENC_SWREG41  : aliased HAL.UInt32;
      --  VENC stabilization GMV output, matrix 1, up-left position	output
      --  register
      VENC_SWREG42  : aliased HAL.UInt32;
      --  VENC stabilization GMV output, matrix 2, up position	output register
      VENC_SWREG43  : aliased HAL.UInt32;
      --  VENC stabilization matrix 3, up-right position	output register
      VENC_SWREG44  : aliased HAL.UInt32;
      --  VENC stabilization matrix 4, left position	output register
      VENC_SWREG45  : aliased HAL.UInt32;
      --  VENC stabilization matrix 5, GMV position	output register
      VENC_SWREG46  : aliased HAL.UInt32;
      --  VENC stabilization matrix 6, right position	output register
      VENC_SWREG47  : aliased HAL.UInt32;
      --  VENC stabilization matrix 7, down-left position	output register
      VENC_SWREG48  : aliased HAL.UInt32;
      --  VENC stabilization matrix 8, down position	output register
      VENC_SWREG49  : aliased HAL.UInt32;
      --  VENC stabilization matrix 9, down-right position	output register
      VENC_SWREG50  : aliased HAL.UInt32;
      --  VENC base address for cabac context tables H264	or probability tables
      --  VP8 register
      VENC_SWREG51  : aliased HAL.UInt32;
      --  VENC base address for MV output writing	register
      VENC_SWREG52  : aliased HAL.UInt32;
      --  VENC RGB to YUV conversion coefficient A - B	register
      VENC_SWREG53  : aliased HAL.UInt32;
      --  VENC RGB to YUV conversion coefficient C - E	register
      VENC_SWREG54  : aliased HAL.UInt32;
      --  VENC RGB to YUV conversion coefficient F, RGB mask	MSB bit position
      --  register
      VENC_SWREG55  : aliased HAL.UInt32;
      --  VENC intra area register
      VENC_SWREG56  : aliased HAL.UInt32;
      --  VENC CIR intra mb position register
      VENC_SWREG57  : aliased HAL.UInt32;
      --  VENC intra slice bitmap for slices 0..31/base address for VP8	1st DCT
      --  partition register
      VENC_SWREG58  : aliased HAL.UInt32;
      --  VENC intra slice bitmap for slices 32..63/base address for VP8	2nd
      --  DCT partition register
      VENC_SWREG59  : aliased HAL.UInt32;
      --  VENC 1st ROI area register
      VENC_SWREG60  : aliased HAL.UInt32;
      --  VENC 2nd ROI area register
      VENC_SWREG61  : aliased HAL.UInt32;
      --  VENC ROI area delta QP, MV register
      VENC_SWREG62  : aliased HAL.UInt32;
      --  VENC synthesis configuration register encoder 0	register
      VENC_SWREG63  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 1/VP8 intra 16x16 mode 0-1	penalty
      --  register
      VENC_SWREG64  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 2/VP8 intra 16x16 mode 2-3	penalty
      --  register
      VENC_SWREG65  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 3/VP8 intra 4x4 mode 0-1	penalty register
      VENC_SWREG66  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 4/VP8 intra 4x4 mode 2-3	penalty register
      VENC_SWREG67  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 5/VP8 intra 4x4 mode 4-5	penalty register
      VENC_SWREG68  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 6/VP8 intra 4x4 mode 6-7	penalty register
      VENC_SWREG69  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 7/VP8 intra 4x4 mode 8-9	penalty register
      VENC_SWREG70  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 8/base address for VP8	segmentation map
      --  register
      VENC_SWREG71  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 9/VP8 segment1	parameter register
      VENC_SWREG72  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 10/VP8 segment1	parameter register
      VENC_SWREG73  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 11/VP8 segment1 	parameter register
      VENC_SWREG74  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 12/VP8 segment1 	parameter register
      VENC_SWREG75  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 13/VP8 segment1	parameter register
      VENC_SWREG76  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 14/VP8 segment1	parameter register
      VENC_SWREG77  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 15/VP8 segment1	parameter register
      VENC_SWREG78  : aliased HAL.UInt32;
      --  VENC JPEG luma quantization 16/VP8 segment2	parameter register
      VENC_SWREG79  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 1/VP8 segment2	parameter register
      VENC_SWREG80  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 2/VP8 segment2	parameter register
      VENC_SWREG81  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 3/VP8 segment2	parameter register
      VENC_SWREG82  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 4/VP8 segment2	parameter register
      VENC_SWREG83  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 5/VP8 segment2	parameter register
      VENC_SWREG84  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 6/VP8 segment2	parameter register
      VENC_SWREG85  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 7/VP8 segment2	parameter register
      VENC_SWREG86  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 8/VP8 segment2	parameter register
      VENC_SWREG87  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 9/VP8 segment3	parameter register
      VENC_SWREG88  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 10/VP8 segment3	parameter register
      VENC_SWREG89  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 11/VP8 segment3	parameter register
      VENC_SWREG90  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 12/VP8 segment3	parameter register
      VENC_SWREG91  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 13/VP8 segment3	parameter register
      VENC_SWREG92  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 14/VP8 segment3	parameter register
      VENC_SWREG93  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 15/VP8 segment3	parameter register
      VENC_SWREG94  : aliased HAL.UInt32;
      --  VENC JPEG chroma quantization 16/VP8 segment3	parameter register
      VENC_SWREG95  : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values 0-3 register
      VENC_SWREG96  : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values 4-7 register
      VENC_SWREG97  : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG98  : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG99  : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG100 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG101 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG102 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG103 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG104 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG105 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG106 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG107 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG108 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG109 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG110 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG111 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG112 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG113 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG114 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG115 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG116 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG117 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG118 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG119 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG120 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG121 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG122 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG123 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG124 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG125 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values register
      VENC_SWREG126 : aliased HAL.UInt32;
      --  VENC DMV 4p/1p penalty values 124-127	register
      VENC_SWREG127 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values 0-3	register
      VENC_SWREG128 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values 4-7	register
      VENC_SWREG129 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG130 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG131 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG132 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG133 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG134 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG135 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG136 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG137 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG138 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG139 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG140 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG141 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG142 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG143 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG144 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG145 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG146 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG147 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG148 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG149 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG150 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG151 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG152 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG153 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG154 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG155 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG156 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG157 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values register
      VENC_SWREG158 : aliased HAL.UInt32;
      --  VENC DMV qpel penalty values 124-127 register
      VENC_SWREG159 : aliased HAL.UInt32;
      --  VENC VP8 bit cost of inter type, coeff for dmv penalty	register
      VENC_SWREG160 : aliased HAL.UInt32;
      --  VENC VP8 bit cost of golden ref frame	register
      VENC_SWREG161 : aliased HAL.UInt32;
      --  VENC VP8 loop filter delta register
      VENC_SWREG162 : aliased HAL.UInt32;
      --  VENC VP8 loop filter delta register
      VENC_SWREG163 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG164 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG165 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG166 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG167 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG168 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG169 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG170 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG171 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG172 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG173 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG174 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG175 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG176 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG177 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG178 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG179 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG180 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG181 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG182 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG183 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG184 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG185 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG186 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG187 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG188 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG189 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG190 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG191 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG192 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG193 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG194 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG195 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG196 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG197 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG198 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG199 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG200 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG201 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG202 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG203 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG204 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG205 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG206 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG207 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG208 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG209 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG210 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG211 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG212 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG213 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG214 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG215 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG216 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG217 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG218 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG219 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG220 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG221 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG222 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG223 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG224 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG225 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG226 : aliased HAL.UInt32;
      --  VENC VP8 deadzone lookup table register
      VENC_SWREG227 : aliased HAL.UInt32;
      --  VENC VP8 deadzone rate multiplier for plane 0-1	register
      VENC_SWREG228 : aliased HAL.UInt32;
      --  VENC VP8 deadzone rate multiplier for plane 2-3	register
      VENC_SWREG229 : aliased HAL.UInt32;
      --  VENC VP8 deadzone rate for macroblock skip token 0-1	register
      VENC_SWREG230 : aliased HAL.UInt32;
      --  VENC base address for output of down-scaled encoder image	in YUYV
      --  4:2:2 format register
      VENC_SWREG231 : aliased HAL.UInt32;
      --  VENC scaling control register
      VENC_SWREG232 : aliased HAL.UInt32;
      --  VENC scaling control register
      VENC_SWREG233 : aliased HAL.UInt32;
      --  VENC squared error output calculated for 13x13 pixels	per macroblock
      --  register
      VENC_SWREG236 : aliased HAL.UInt32;
      --  VENC MAD 2 control and output register
      VENC_SWREG237 : aliased HAL.UInt32;
      --  VENC MAD 3 control and output register
      VENC_SWREG238 : aliased HAL.UInt32;
      --  VENC VP8 predictor interpolation coefficient for full pixel	position
      --  register
      VENC_SWREG239 : aliased HAL.UInt32;
      --  VENC VP8 predictor interpolation coefficient for 1/8 pixel	position
      --  register
      VENC_SWREG240 : aliased HAL.UInt32;
      --  VENC VP8 predictor interpolation coefficient for 2/8 pixel	position
      --  register
      VENC_SWREG241 : aliased HAL.UInt32;
      --  VENC VP8 predictor interpolation coefficient for 3/8 pixel	position
      --  register
      VENC_SWREG242 : aliased HAL.UInt32;
      --  VENC VP8 predictor interpolation coefficient for 4/8 pixel	position
      --  register
      VENC_SWREG243 : aliased HAL.UInt32;
      --  VENC base address for VP8 3rd DCT partition	register
      VENC_SWREG244 : aliased HAL.UInt32;
      --  VENC base address for VP8 4th DCT partition	register
      VENC_SWREG245 : aliased HAL.UInt32;
      --  VENC segment 1: intra 16x16 mode 0-2 penalty	register
      VENC_SWREG256 : aliased HAL.UInt32;
      --  VENC segment 1: intra 16x16 mode 3, intra 4x4 0-1	penalty register
      VENC_SWREG257 : aliased HAL.UInt32;
      --  VENC segment 1: intra 4x4 mode 2-4 penalty	register
      VENC_SWREG258 : aliased HAL.UInt32;
      --  VENC segment 1: intra 4x4 mode 5-7 penalty	register
      VENC_SWREG259 : aliased HAL.UInt32;
      --  VENC segment 1: intra 4x4 mode 8-9 penalty, previous	mode favor for
      --  H.264 register
      VENC_SWREG260 : aliased HAL.UInt32;
      --  VENC segment 1: bit cost of inter type, intra 16x16 mode	favor
      --  register
      VENC_SWREG261 : aliased HAL.UInt32;
      --  VENC segment 1: inter MB mode favor, skip mode penalty, 	penalty
      --  value for 2nd reference frame register
      VENC_SWREG262 : aliased HAL.UInt32;
      --  VENC segment 1: penalty value register
      VENC_SWREG263 : aliased HAL.UInt32;
      --  VENC segment 1: penalty value register
      VENC_SWREG264 : aliased HAL.UInt32;
      --  VENC segment 1: deadzone rate multiplier for plane 0-1	register
      VENC_SWREG265 : aliased HAL.UInt32;
      --  VENC segment 1: deadzone rate multiplier for plane 2-3	register
      VENC_SWREG266 : aliased HAL.UInt32;
      --  VENC segment 1: deadzone rate for macroblock skip token 0-1,	dmv
      --  penalty coefficient register
      VENC_SWREG267 : aliased HAL.UInt32;
      --  VENC segment 2: intra 16x16 mode 0-2 penalty	register
      VENC_SWREG268 : aliased HAL.UInt32;
      --  VENC segment 2: intra 16x16 mode 3 penalty, intra 4x4 mode
      --  0-1	penalty register
      VENC_SWREG269 : aliased HAL.UInt32;
      --  VENC segment 2: intra 4x4 mode 2-4 penalty	register
      VENC_SWREG270 : aliased HAL.UInt32;
      --  VENC segment 2: intra 4x4 mode 5-7 penalty	register
      VENC_SWREG271 : aliased HAL.UInt32;
      --  VENC segment 2: intra 4x4 mode 8-9 penalty, intra 4x4 previous	mode
      --  favor for H.264 register
      VENC_SWREG272 : aliased HAL.UInt32;
      --  VENC segment 2: bit cost of inter type, intra 16x16	mode favor
      --  register
      VENC_SWREG273 : aliased HAL.UInt32;
      --  VENC segment 2: inter MB mode favor, skip mode penalty, 	penalty
      --  value register
      VENC_SWREG274 : aliased HAL.UInt32;
      --  VENC segment 2: penalty value register
      VENC_SWREG275 : aliased HAL.UInt32;
      --  VENC segment 2: penalty value register
      VENC_SWREG276 : aliased HAL.UInt32;
      --  VENC segment 2: deadzone rate multiplier for plane 0-1	register
      VENC_SWREG277 : aliased HAL.UInt32;
      --  VENC segment 2: deadzone rate multiplier for plane 2-3	register
      VENC_SWREG278 : aliased HAL.UInt32;
      --  VENC segment 2: deadzone rate for macroblock skip token 0-1,	dmv
      --  penalty coefficient register
      VENC_SWREG279 : aliased HAL.UInt32;
      --  VENC segment 3: intra 16x16 mode 0-2 penalty	register
      VENC_SWREG280 : aliased HAL.UInt32;
      --  VENC segment 3: intra 16x16 mode 3 penalty, intra 4x4 mode
      --  0-1	penalty register
      VENC_SWREG281 : aliased HAL.UInt32;
      --  VENC segment 3: intra 4x4 mode 2-4 penalty	register
      VENC_SWREG282 : aliased HAL.UInt32;
      --  VENC segment 3: intra 4x4 mode 5-7 penalty	register
      VENC_SWREG283 : aliased HAL.UInt32;
      --  VENC segment 3: intra 4x4 mode 8-9 penalty, intra 4x4	previous mode
      --  favor for H.264 register
      VENC_SWREG284 : aliased HAL.UInt32;
      --  VENC segment 3: bit cost of inter type, intra 16x16 	mode favor
      --  register
      VENC_SWREG285 : aliased HAL.UInt32;
      --  VENC segment 3: inter MB mode favor in intra/inter selection,	inter
      --  MB mode favor, penalty value for second reference frame	register
      VENC_SWREG286 : aliased HAL.UInt32;
      --  VENC segment 3: penalty value register
      VENC_SWREG287 : aliased HAL.UInt32;
      --  VENC segment 3: penalty value register
      VENC_SWREG288 : aliased HAL.UInt32;
      --  VENC segment 3: deadzone rate multiplier for plane 0-1	register
      VENC_SWREG289 : aliased HAL.UInt32;
      --  VENC segment 3: deadzone rate multiplier for plane 2-3	register
      VENC_SWREG290 : aliased HAL.UInt32;
      --  VENC segment 3: deadzone rate for macroblock skip token 0-1,	dmv
      --  penalty coefficient register
      VENC_SWREG291 : aliased HAL.UInt32;
      --  VENC VP8 average variance in prev frame	register
      VENC_SWREG292 : aliased HAL.UInt32;
      --  VENC VP8 16384/average variance in prev frame, 	H264 field control
      --  register
      VENC_SWREG293 : aliased HAL.UInt32;
      --  VENC Mb boost register
      VENC_SWREG294 : aliased HAL.UInt32;
      --  VENC variance control, Pskop conding mode	register
      VENC_SWREG295 : aliased HAL.UInt32;
      --  VENC synthesis configuration register encoder 1	read only register
      VENC_SWREG296 : aliased HAL.UInt32;
      --  VENC MBRC control register
      VENC_SWREG297 : aliased HAL.UInt32;
      --  VENC segment 4: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG298 : aliased HAL.UInt32;
      --  VENC segment 4: skip mode penalty, inter MB mode favor	register
      VENC_SWREG299 : aliased HAL.UInt32;
      --  VENC segment 4: penalty value register
      VENC_SWREG300 : aliased HAL.UInt32;
      --  VENC segment 4: penalty value register
      VENC_SWREG301 : aliased HAL.UInt32;
      --  VENC segment 5: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG302 : aliased HAL.UInt32;
      --  VENC segment 5: skip mode penalty, inter MB mode favor	register
      VENC_SWREG303 : aliased HAL.UInt32;
      --  VENC segment 5: penalty value register
      VENC_SWREG304 : aliased HAL.UInt32;
      --  VENC segment 5: penalty value register
      VENC_SWREG305 : aliased HAL.UInt32;
      --  VENC segment 6: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG306 : aliased HAL.UInt32;
      --  VENC segment 6: skip mode penalty, inter MB mode favor	register
      VENC_SWREG307 : aliased HAL.UInt32;
      --  VENC segment 6: penalty value register
      VENC_SWREG308 : aliased HAL.UInt32;
      --  VENC segment 6: penalty value register
      VENC_SWREG309 : aliased HAL.UInt32;
      --  VENC segment 7: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG310 : aliased HAL.UInt32;
      --  VENC segment 7: skip mode penalty, inter MB mode favor	register
      VENC_SWREG311 : aliased HAL.UInt32;
      --  VENC segment 7: penalty value register
      VENC_SWREG312 : aliased HAL.UInt32;
      --  VENC segment 7: penalty value register
      VENC_SWREG313 : aliased HAL.UInt32;
      --  VENC segment 8: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG314 : aliased HAL.UInt32;
      --  VENC segment 8: skip mode penalty, inter MB mode favor	register
      VENC_SWREG315 : aliased HAL.UInt32;
      --  VENC segment 8: penalty value register
      VENC_SWREG316 : aliased HAL.UInt32;
      --  VENC segment 8: penalty value register
      VENC_SWREG317 : aliased HAL.UInt32;
      --  VENC segment 9: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG318 : aliased HAL.UInt32;
      --  VENC segment 9: skip mode penalty, inter MB mode favor	register
      VENC_SWREG319 : aliased HAL.UInt32;
      --  VENC segment 9: penalty value register
      VENC_SWREG320 : aliased HAL.UInt32;
      --  VENC segment 9: penalty value register
      VENC_SWREG321 : aliased HAL.UInt32;
      --  VENC segment 10: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG322 : aliased HAL.UInt32;
      --  VENC segment 10: skip mode penalty, inter MB mode favor	register
      VENC_SWREG323 : aliased HAL.UInt32;
      --  VENC segment 10: penalty value register
      VENC_SWREG324 : aliased HAL.UInt32;
      --  VENC segment 10: penalty value register
      VENC_SWREG325 : aliased HAL.UInt32;
      --  VENC segment 11: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG326 : aliased HAL.UInt32;
      --  VENC segment 11: skip mode penalty, inter MB mode favor	register
      VENC_SWREG327 : aliased HAL.UInt32;
      --  VENC segment 11: penalty value register
      VENC_SWREG328 : aliased HAL.UInt32;
      --  VENC segment 11: penalty value register
      VENC_SWREG329 : aliased HAL.UInt32;
      --  VENC segment 12: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame register
      VENC_SWREG330 : aliased HAL.UInt32;
      --  VENC segment 12: skip mode penalty, inter MB mode favor	register
      VENC_SWREG331 : aliased HAL.UInt32;
      --  VENC segment 12: penalty value register
      VENC_SWREG332 : aliased HAL.UInt32;
      --  VENC segment 12: penalty value register
      VENC_SWREG333 : aliased HAL.UInt32;
      --  VENC segment 13: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame 	register
      VENC_SWREG334 : aliased HAL.UInt32;
      --  VENC segment 13: skip mode penalty, inter MB mode favor	register
      VENC_SWREG335 : aliased HAL.UInt32;
      --  VENC segment 13: penalty value register
      VENC_SWREG336 : aliased HAL.UInt32;
      --  VENC segment 13: penalty value register
      VENC_SWREG337 : aliased HAL.UInt32;
      --  VENC segment 14: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG338 : aliased HAL.UInt32;
      --  VENC segment 14: skip mode penalty, inter MB mode favor	register
      VENC_SWREG339 : aliased HAL.UInt32;
      --  VENC segment 14: penalty value register
      VENC_SWREG340 : aliased HAL.UInt32;
      --  VENC segment 14: penalty value register
      VENC_SWREG341 : aliased HAL.UInt32;
      --  VENC segment 15: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG342 : aliased HAL.UInt32;
      --  VENC segment 15: skip mode penalty, inter MB mode favor	register
      VENC_SWREG343 : aliased HAL.UInt32;
      --  VENC segment 15: penalty value register
      VENC_SWREG344 : aliased HAL.UInt32;
      --  VENC segment 15: penalty value register
      VENC_SWREG345 : aliased HAL.UInt32;
      --  VENC segment 16: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame	register
      VENC_SWREG346 : aliased HAL.UInt32;
      --  VENC segment 16: skip mode penalty, inter MB mode	favor register
      VENC_SWREG347 : aliased HAL.UInt32;
      --  VENC segment 16: penalty value register
      VENC_SWREG348 : aliased HAL.UInt32;
      --  VENC segment 16: penalty value register
      VENC_SWREG349 : aliased HAL.UInt32;
      --  VENC segment 17: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame register
      VENC_SWREG350 : aliased HAL.UInt32;
      --  VENC segment 17: skip mode penalty, inter MB mode	favor register
      VENC_SWREG351 : aliased HAL.UInt32;
      --  VENC segment 17: penalty value register
      VENC_SWREG352 : aliased HAL.UInt32;
      --  VENC segment 17: penalty value register
      VENC_SWREG353 : aliased HAL.UInt32;
      --  VENC segment 18: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame register
      VENC_SWREG354 : aliased HAL.UInt32;
      --  VENC segment 18: skip mode penalty, inter MB mode 	favor register
      VENC_SWREG355 : aliased HAL.UInt32;
      --  VENC segment 18: penalty value register
      VENC_SWREG356 : aliased HAL.UInt32;
      --  VENC segment 18: penalty value register
      VENC_SWREG357 : aliased HAL.UInt32;
      --  VENC segment 19: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame register
      VENC_SWREG358 : aliased HAL.UInt32;
      --  VENC segment 19: skip mode penalty, inter MB mode	favor register
      VENC_SWREG359 : aliased HAL.UInt32;
      --  VENC segment 19: penalty value register
      VENC_SWREG360 : aliased HAL.UInt32;
      --  VENC segment 19: penalty value register
      VENC_SWREG361 : aliased HAL.UInt32;
      --  VENC segment 20: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame register
      VENC_SWREG362 : aliased HAL.UInt32;
      --  VENC segment 20: skip mode penalty, inter MB mode	favor register
      VENC_SWREG363 : aliased HAL.UInt32;
      --  VENC segment 20: penalty value register
      VENC_SWREG364 : aliased HAL.UInt32;
      --  VENC segment 20: penalty value register
      VENC_SWREG365 : aliased HAL.UInt32;
      --  VENC segment 21: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame register
      VENC_SWREG366 : aliased HAL.UInt32;
      --  VENC segment 21: skip mode penalty, inter MB mode	favor register
      VENC_SWREG367 : aliased HAL.UInt32;
      --  VENC segment 21: penalty value register
      VENC_SWREG368 : aliased HAL.UInt32;
      --  VENC segment 21: penalty value register
      VENC_SWREG369 : aliased HAL.UInt32;
      --  VENC segment 22: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG370 : aliased HAL.UInt32;
      --  VENC segment 22: skip mode penalty, inter MB mode	favor register
      VENC_SWREG371 : aliased HAL.UInt32;
      --  VENC segment 22: penalty value register
      VENC_SWREG372 : aliased HAL.UInt32;
      --  VENC segment 22: penalty value register
      VENC_SWREG373 : aliased HAL.UInt32;
      --  VENC segment 23: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG374 : aliased HAL.UInt32;
      --  VENC segment 23: skip mode penalty, inter MB mode	favor register
      VENC_SWREG375 : aliased HAL.UInt32;
      --  VENC segment 23: penalty value register
      VENC_SWREG376 : aliased HAL.UInt32;
      --  VENC segment 23: penalty value register
      VENC_SWREG377 : aliased HAL.UInt32;
      --  VENC segment 24: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG378 : aliased HAL.UInt32;
      --  VENC segment 24: skip mode penalty, inter MB mode	favor register
      VENC_SWREG379 : aliased HAL.UInt32;
      --  VENC segment 24: penalty value register
      VENC_SWREG380 : aliased HAL.UInt32;
      --  VENC segment 24: penalty value register
      VENC_SWREG381 : aliased HAL.UInt32;
      --  VENC segment 25: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG382 : aliased HAL.UInt32;
      --  VENC segment 25: skip mode penalty, inter MB mode	favor register
      VENC_SWREG383 : aliased HAL.UInt32;
      --  VENC segment 25: penalty value register
      VENC_SWREG384 : aliased HAL.UInt32;
      --  VENC segment 25: penalty value register
      VENC_SWREG385 : aliased HAL.UInt32;
      --  VENC segment 26: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG386 : aliased HAL.UInt32;
      --  VENC segment 26: skip mode penalty, inter MB mode	favor register
      VENC_SWREG387 : aliased HAL.UInt32;
      --  VENC segment 26: penalty value register
      VENC_SWREG388 : aliased HAL.UInt32;
      --  VENC segment 26: penalty value register
      VENC_SWREG389 : aliased HAL.UInt32;
      --  VENC segment 27: intra 4x4 previous mode favor, intra 16x16mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG390 : aliased HAL.UInt32;
      --  VENC segment 27: skip mode penalty, inter MB mode	favor register
      VENC_SWREG391 : aliased HAL.UInt32;
      --  VENC segment 27: penalty value register
      VENC_SWREG392 : aliased HAL.UInt32;
      --  VENC segment 27: penalty value register
      VENC_SWREG393 : aliased HAL.UInt32;
      --  VENC segment 28: intra 4x4 previous mode favor, intra 16x16mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG394 : aliased HAL.UInt32;
      --  VENC segment 28: skip mode penalty, inter MB mode	favor register
      VENC_SWREG395 : aliased HAL.UInt32;
      --  VENC segment 28: penalty value register
      VENC_SWREG396 : aliased HAL.UInt32;
      --  VENC segment 28: penalty value register
      VENC_SWREG397 : aliased HAL.UInt32;
      --  VENC segment 29: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG398 : aliased HAL.UInt32;
      --  VENC segment 29: skip mode penalty, inter MB mode	favor register
      VENC_SWREG399 : aliased HAL.UInt32;
      --  VENC segment 29: penalty value register
      VENC_SWREG400 : aliased HAL.UInt32;
      --  VENC segment 29: penalty value register
      VENC_SWREG401 : aliased HAL.UInt32;
      --  VENC segment 30: intra 4x4 previous mode favor, intra 16x16	mode
      --  favor, penalty value for second reference frame	register
      VENC_SWREG402 : aliased HAL.UInt32;
      --  VENC segment 30: skip mode penalty, inter MB mode	favor register
      VENC_SWREG403 : aliased HAL.UInt32;
      --  VENC segment 30: penalty value register
      VENC_SWREG404 : aliased HAL.UInt32;
      --  VENC segment 30: penalty value register
      VENC_SWREG405 : aliased HAL.UInt32;
      --  VENC segment 31: intra 4x4 previous mode favor, intra 16x16
      --  mode	favor, penalty value for second reference frame 	register
      VENC_SWREG406 : aliased HAL.UInt32;
      --  VENC segment 31: skip mode penalty, inter MB mode favor	register
      VENC_SWREG407 : aliased HAL.UInt32;
      --  VENC segment 31: penalty value register
      VENC_SWREG408 : aliased HAL.UInt32;
      --  VENC segment 31: penalty value register
      VENC_SWREG409 : aliased HAL.UInt32;
      --  VENC MBRC control, QP, offset, enable	register
      VENC_SWREG410 : aliased HAL.UInt32;
      --  VENC gain of MB QP delta. 8.8 format register
      VENC_SWREG411 : aliased HAL.UInt32;
      --  VENC average of MB complexity register
      VENC_SWREG412 : aliased HAL.UInt32;
      --  VENC reorder control register
      VENC_SWREG421 : aliased HAL.UInt32;
      --  VENC AXI read ID register
      VENC_SWREG422 : aliased HAL.UInt32;
      --  VENC base address MSB for reference luma compression table	register
      VENC_SWREG423 : aliased HAL.UInt32;
      --  VENC base address MSB for reference chroma compression table	register
      VENC_SWREG424 : aliased HAL.UInt32;
      --  VENC base address MSB for reconstructed luma compression	table
      --  register
      VENC_SWREG425 : aliased HAL.UInt32;
      --  VENC base address for reconstructed chroma compression	table register
      VENC_SWREG426 : aliased HAL.UInt32;
      --  VENC base address MSB for second reference luma compression	table
      --  register
      VENC_SWREG427 : aliased HAL.UInt32;
      --  VENC base address MSB for second reference chroma compression	table
      --  register
      VENC_SWREG428 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for output stream	data register
      VENC_SWREG429 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for output control	data register
      VENC_SWREG430 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for reference luma	register
      VENC_SWREG431 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for reference chroma	register
      VENC_SWREG432 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for reconstructed luma	register
      VENC_SWREG433 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for reconstructed chroma	register
      VENC_SWREG434 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for input picture luma	register
      VENC_SWREG435 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for input picture cb register
      VENC_SWREG436 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for input picture cr	register
      VENC_SWREG437 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for second reference	luma register
      VENC_SWREG438 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for second reference	chroma
      --  register
      VENC_SWREG439 : aliased HAL.UInt32;
      --  VENC high 32 bits of H264 secondary ref pic base	register
      VENC_SWREG440 : aliased HAL.UInt32;
      --  VENC high 32 bits of H264 secondary ref pic base	register
      VENC_SWREG441 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for next pic luminance	register
      VENC_SWREG442 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for cabac context tables H264	or
      --  probability tables VP8 register
      VENC_SWREG443 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for MV output writing	register
      VENC_SWREG444 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for VP8 1st DCT	partition register
      VENC_SWREG445 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for VP8 2nd DCT	partition register
      VENC_SWREG446 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for VP8 counters	for probability
      --  updates register
      VENC_SWREG447 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for VP8 segmentation map	segment Id
      --  2- bits/macroblock register
      VENC_SWREG448 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for output of down-scaled	encoder
      --  image in YUYV 4:2:2 format register
      VENC_SWREG449 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for VP8 3rd DCT	partition register
      VENC_SWREG450 : aliased HAL.UInt32;
      --  VENC high 32 bits of base address for VP8 4th DCT	partition register
      VENC_SWREG451 : aliased HAL.UInt32;
      --  VENC low-latency control register
      VENC_SWREG497 : aliased HAL.UInt32;
   end record
     with Volatile;

   for VENC_Peripheral use record
      VENC_SWREG0   at 16#0# range 0 .. 31;
      VENC_SWREG1   at 16#4# range 0 .. 31;
      VENC_SWREG2   at 16#8# range 0 .. 31;
      VENC_SWREG3   at 16#C# range 0 .. 31;
      VENC_SWREG5   at 16#14# range 0 .. 31;
      VENC_SWREG6   at 16#18# range 0 .. 31;
      VENC_SWREG7   at 16#1C# range 0 .. 31;
      VENC_SWREG8   at 16#20# range 0 .. 31;
      VENC_SWREG9   at 16#24# range 0 .. 31;
      VENC_SWREG10  at 16#28# range 0 .. 31;
      VENC_SWREG11  at 16#2C# range 0 .. 31;
      VENC_SWREG12  at 16#30# range 0 .. 31;
      VENC_SWREG13  at 16#34# range 0 .. 31;
      VENC_SWREG14  at 16#38# range 0 .. 31;
      VENC_SWREG15  at 16#3C# range 0 .. 31;
      VENC_SWREG16  at 16#40# range 0 .. 31;
      VENC_SWREG17  at 16#44# range 0 .. 31;
      VENC_SWREG18  at 16#48# range 0 .. 31;
      VENC_SWREG19  at 16#4C# range 0 .. 31;
      VENC_SWREG20  at 16#50# range 0 .. 31;
      VENC_SWREG21  at 16#54# range 0 .. 31;
      VENC_SWREG22  at 16#58# range 0 .. 31;
      VENC_SWREG23  at 16#5C# range 0 .. 31;
      VENC_SWREG24  at 16#60# range 0 .. 31;
      VENC_SWREG25  at 16#64# range 0 .. 31;
      VENC_SWREG26  at 16#68# range 0 .. 31;
      VENC_SWREG27  at 16#6C# range 0 .. 31;
      VENC_SWREG28  at 16#70# range 0 .. 31;
      VENC_SWREG29  at 16#74# range 0 .. 31;
      VENC_SWREG30  at 16#78# range 0 .. 31;
      VENC_SWREG31  at 16#7C# range 0 .. 31;
      VENC_SWREG32  at 16#80# range 0 .. 31;
      VENC_SWREG33  at 16#84# range 0 .. 31;
      VENC_SWREG34  at 16#88# range 0 .. 31;
      VENC_SWREG35  at 16#8C# range 0 .. 31;
      VENC_SWREG36  at 16#90# range 0 .. 31;
      VENC_SWREG37  at 16#94# range 0 .. 31;
      VENC_SWREG38  at 16#98# range 0 .. 31;
      VENC_SWREG39  at 16#9C# range 0 .. 31;
      VENC_SWREG40  at 16#A0# range 0 .. 31;
      VENC_SWREG41  at 16#A4# range 0 .. 31;
      VENC_SWREG42  at 16#A8# range 0 .. 31;
      VENC_SWREG43  at 16#AC# range 0 .. 31;
      VENC_SWREG44  at 16#B0# range 0 .. 31;
      VENC_SWREG45  at 16#B4# range 0 .. 31;
      VENC_SWREG46  at 16#B8# range 0 .. 31;
      VENC_SWREG47  at 16#BC# range 0 .. 31;
      VENC_SWREG48  at 16#C0# range 0 .. 31;
      VENC_SWREG49  at 16#C4# range 0 .. 31;
      VENC_SWREG50  at 16#C8# range 0 .. 31;
      VENC_SWREG51  at 16#CC# range 0 .. 31;
      VENC_SWREG52  at 16#D0# range 0 .. 31;
      VENC_SWREG53  at 16#D4# range 0 .. 31;
      VENC_SWREG54  at 16#D8# range 0 .. 31;
      VENC_SWREG55  at 16#DC# range 0 .. 31;
      VENC_SWREG56  at 16#E0# range 0 .. 31;
      VENC_SWREG57  at 16#E4# range 0 .. 31;
      VENC_SWREG58  at 16#E8# range 0 .. 31;
      VENC_SWREG59  at 16#EC# range 0 .. 31;
      VENC_SWREG60  at 16#F0# range 0 .. 31;
      VENC_SWREG61  at 16#F4# range 0 .. 31;
      VENC_SWREG62  at 16#F8# range 0 .. 31;
      VENC_SWREG63  at 16#FC# range 0 .. 31;
      VENC_SWREG64  at 16#100# range 0 .. 31;
      VENC_SWREG65  at 16#104# range 0 .. 31;
      VENC_SWREG66  at 16#108# range 0 .. 31;
      VENC_SWREG67  at 16#10C# range 0 .. 31;
      VENC_SWREG68  at 16#110# range 0 .. 31;
      VENC_SWREG69  at 16#114# range 0 .. 31;
      VENC_SWREG70  at 16#118# range 0 .. 31;
      VENC_SWREG71  at 16#11C# range 0 .. 31;
      VENC_SWREG72  at 16#120# range 0 .. 31;
      VENC_SWREG73  at 16#124# range 0 .. 31;
      VENC_SWREG74  at 16#128# range 0 .. 31;
      VENC_SWREG75  at 16#12C# range 0 .. 31;
      VENC_SWREG76  at 16#130# range 0 .. 31;
      VENC_SWREG77  at 16#134# range 0 .. 31;
      VENC_SWREG78  at 16#138# range 0 .. 31;
      VENC_SWREG79  at 16#13C# range 0 .. 31;
      VENC_SWREG80  at 16#140# range 0 .. 31;
      VENC_SWREG81  at 16#144# range 0 .. 31;
      VENC_SWREG82  at 16#148# range 0 .. 31;
      VENC_SWREG83  at 16#14C# range 0 .. 31;
      VENC_SWREG84  at 16#150# range 0 .. 31;
      VENC_SWREG85  at 16#154# range 0 .. 31;
      VENC_SWREG86  at 16#158# range 0 .. 31;
      VENC_SWREG87  at 16#15C# range 0 .. 31;
      VENC_SWREG88  at 16#160# range 0 .. 31;
      VENC_SWREG89  at 16#164# range 0 .. 31;
      VENC_SWREG90  at 16#168# range 0 .. 31;
      VENC_SWREG91  at 16#16C# range 0 .. 31;
      VENC_SWREG92  at 16#170# range 0 .. 31;
      VENC_SWREG93  at 16#174# range 0 .. 31;
      VENC_SWREG94  at 16#178# range 0 .. 31;
      VENC_SWREG95  at 16#17C# range 0 .. 31;
      VENC_SWREG96  at 16#180# range 0 .. 31;
      VENC_SWREG97  at 16#184# range 0 .. 31;
      VENC_SWREG98  at 16#188# range 0 .. 31;
      VENC_SWREG99  at 16#18C# range 0 .. 31;
      VENC_SWREG100 at 16#190# range 0 .. 31;
      VENC_SWREG101 at 16#194# range 0 .. 31;
      VENC_SWREG102 at 16#198# range 0 .. 31;
      VENC_SWREG103 at 16#19C# range 0 .. 31;
      VENC_SWREG104 at 16#1A0# range 0 .. 31;
      VENC_SWREG105 at 16#1A4# range 0 .. 31;
      VENC_SWREG106 at 16#1A8# range 0 .. 31;
      VENC_SWREG107 at 16#1AC# range 0 .. 31;
      VENC_SWREG108 at 16#1B0# range 0 .. 31;
      VENC_SWREG109 at 16#1B4# range 0 .. 31;
      VENC_SWREG110 at 16#1B8# range 0 .. 31;
      VENC_SWREG111 at 16#1BC# range 0 .. 31;
      VENC_SWREG112 at 16#1C0# range 0 .. 31;
      VENC_SWREG113 at 16#1C4# range 0 .. 31;
      VENC_SWREG114 at 16#1C8# range 0 .. 31;
      VENC_SWREG115 at 16#1CC# range 0 .. 31;
      VENC_SWREG116 at 16#1D0# range 0 .. 31;
      VENC_SWREG117 at 16#1D4# range 0 .. 31;
      VENC_SWREG118 at 16#1D8# range 0 .. 31;
      VENC_SWREG119 at 16#1DC# range 0 .. 31;
      VENC_SWREG120 at 16#1E0# range 0 .. 31;
      VENC_SWREG121 at 16#1E4# range 0 .. 31;
      VENC_SWREG122 at 16#1E8# range 0 .. 31;
      VENC_SWREG123 at 16#1EC# range 0 .. 31;
      VENC_SWREG124 at 16#1F0# range 0 .. 31;
      VENC_SWREG125 at 16#1F4# range 0 .. 31;
      VENC_SWREG126 at 16#1F8# range 0 .. 31;
      VENC_SWREG127 at 16#1FC# range 0 .. 31;
      VENC_SWREG128 at 16#200# range 0 .. 31;
      VENC_SWREG129 at 16#204# range 0 .. 31;
      VENC_SWREG130 at 16#208# range 0 .. 31;
      VENC_SWREG131 at 16#20C# range 0 .. 31;
      VENC_SWREG132 at 16#210# range 0 .. 31;
      VENC_SWREG133 at 16#214# range 0 .. 31;
      VENC_SWREG134 at 16#218# range 0 .. 31;
      VENC_SWREG135 at 16#21C# range 0 .. 31;
      VENC_SWREG136 at 16#220# range 0 .. 31;
      VENC_SWREG137 at 16#224# range 0 .. 31;
      VENC_SWREG138 at 16#228# range 0 .. 31;
      VENC_SWREG139 at 16#22C# range 0 .. 31;
      VENC_SWREG140 at 16#230# range 0 .. 31;
      VENC_SWREG141 at 16#234# range 0 .. 31;
      VENC_SWREG142 at 16#238# range 0 .. 31;
      VENC_SWREG143 at 16#23C# range 0 .. 31;
      VENC_SWREG144 at 16#240# range 0 .. 31;
      VENC_SWREG145 at 16#244# range 0 .. 31;
      VENC_SWREG146 at 16#248# range 0 .. 31;
      VENC_SWREG147 at 16#24C# range 0 .. 31;
      VENC_SWREG148 at 16#250# range 0 .. 31;
      VENC_SWREG149 at 16#254# range 0 .. 31;
      VENC_SWREG150 at 16#258# range 0 .. 31;
      VENC_SWREG151 at 16#25C# range 0 .. 31;
      VENC_SWREG152 at 16#260# range 0 .. 31;
      VENC_SWREG153 at 16#264# range 0 .. 31;
      VENC_SWREG154 at 16#268# range 0 .. 31;
      VENC_SWREG155 at 16#26C# range 0 .. 31;
      VENC_SWREG156 at 16#270# range 0 .. 31;
      VENC_SWREG157 at 16#274# range 0 .. 31;
      VENC_SWREG158 at 16#278# range 0 .. 31;
      VENC_SWREG159 at 16#27C# range 0 .. 31;
      VENC_SWREG160 at 16#280# range 0 .. 31;
      VENC_SWREG161 at 16#284# range 0 .. 31;
      VENC_SWREG162 at 16#288# range 0 .. 31;
      VENC_SWREG163 at 16#28C# range 0 .. 31;
      VENC_SWREG164 at 16#290# range 0 .. 31;
      VENC_SWREG165 at 16#294# range 0 .. 31;
      VENC_SWREG166 at 16#298# range 0 .. 31;
      VENC_SWREG167 at 16#29C# range 0 .. 31;
      VENC_SWREG168 at 16#2A0# range 0 .. 31;
      VENC_SWREG169 at 16#2A4# range 0 .. 31;
      VENC_SWREG170 at 16#2A8# range 0 .. 31;
      VENC_SWREG171 at 16#2AC# range 0 .. 31;
      VENC_SWREG172 at 16#2B0# range 0 .. 31;
      VENC_SWREG173 at 16#2B4# range 0 .. 31;
      VENC_SWREG174 at 16#2B8# range 0 .. 31;
      VENC_SWREG175 at 16#2BC# range 0 .. 31;
      VENC_SWREG176 at 16#2C0# range 0 .. 31;
      VENC_SWREG177 at 16#2C4# range 0 .. 31;
      VENC_SWREG178 at 16#2C8# range 0 .. 31;
      VENC_SWREG179 at 16#2CC# range 0 .. 31;
      VENC_SWREG180 at 16#2D0# range 0 .. 31;
      VENC_SWREG181 at 16#2D4# range 0 .. 31;
      VENC_SWREG182 at 16#2D8# range 0 .. 31;
      VENC_SWREG183 at 16#2DC# range 0 .. 31;
      VENC_SWREG184 at 16#2E0# range 0 .. 31;
      VENC_SWREG185 at 16#2E4# range 0 .. 31;
      VENC_SWREG186 at 16#2E8# range 0 .. 31;
      VENC_SWREG187 at 16#2EC# range 0 .. 31;
      VENC_SWREG188 at 16#2F0# range 0 .. 31;
      VENC_SWREG189 at 16#2F4# range 0 .. 31;
      VENC_SWREG190 at 16#2F8# range 0 .. 31;
      VENC_SWREG191 at 16#2FC# range 0 .. 31;
      VENC_SWREG192 at 16#300# range 0 .. 31;
      VENC_SWREG193 at 16#304# range 0 .. 31;
      VENC_SWREG194 at 16#308# range 0 .. 31;
      VENC_SWREG195 at 16#30C# range 0 .. 31;
      VENC_SWREG196 at 16#310# range 0 .. 31;
      VENC_SWREG197 at 16#314# range 0 .. 31;
      VENC_SWREG198 at 16#318# range 0 .. 31;
      VENC_SWREG199 at 16#31C# range 0 .. 31;
      VENC_SWREG200 at 16#320# range 0 .. 31;
      VENC_SWREG201 at 16#324# range 0 .. 31;
      VENC_SWREG202 at 16#328# range 0 .. 31;
      VENC_SWREG203 at 16#32C# range 0 .. 31;
      VENC_SWREG204 at 16#330# range 0 .. 31;
      VENC_SWREG205 at 16#334# range 0 .. 31;
      VENC_SWREG206 at 16#338# range 0 .. 31;
      VENC_SWREG207 at 16#33C# range 0 .. 31;
      VENC_SWREG208 at 16#340# range 0 .. 31;
      VENC_SWREG209 at 16#344# range 0 .. 31;
      VENC_SWREG210 at 16#348# range 0 .. 31;
      VENC_SWREG211 at 16#34C# range 0 .. 31;
      VENC_SWREG212 at 16#350# range 0 .. 31;
      VENC_SWREG213 at 16#354# range 0 .. 31;
      VENC_SWREG214 at 16#358# range 0 .. 31;
      VENC_SWREG215 at 16#35C# range 0 .. 31;
      VENC_SWREG216 at 16#360# range 0 .. 31;
      VENC_SWREG217 at 16#364# range 0 .. 31;
      VENC_SWREG218 at 16#368# range 0 .. 31;
      VENC_SWREG219 at 16#36C# range 0 .. 31;
      VENC_SWREG220 at 16#370# range 0 .. 31;
      VENC_SWREG221 at 16#374# range 0 .. 31;
      VENC_SWREG222 at 16#378# range 0 .. 31;
      VENC_SWREG223 at 16#37C# range 0 .. 31;
      VENC_SWREG224 at 16#380# range 0 .. 31;
      VENC_SWREG225 at 16#384# range 0 .. 31;
      VENC_SWREG226 at 16#388# range 0 .. 31;
      VENC_SWREG227 at 16#38C# range 0 .. 31;
      VENC_SWREG228 at 16#390# range 0 .. 31;
      VENC_SWREG229 at 16#394# range 0 .. 31;
      VENC_SWREG230 at 16#398# range 0 .. 31;
      VENC_SWREG231 at 16#39C# range 0 .. 31;
      VENC_SWREG232 at 16#3A0# range 0 .. 31;
      VENC_SWREG233 at 16#3A4# range 0 .. 31;
      VENC_SWREG236 at 16#3B0# range 0 .. 31;
      VENC_SWREG237 at 16#3B4# range 0 .. 31;
      VENC_SWREG238 at 16#3B8# range 0 .. 31;
      VENC_SWREG239 at 16#3BC# range 0 .. 31;
      VENC_SWREG240 at 16#3C0# range 0 .. 31;
      VENC_SWREG241 at 16#3C4# range 0 .. 31;
      VENC_SWREG242 at 16#3C8# range 0 .. 31;
      VENC_SWREG243 at 16#3CC# range 0 .. 31;
      VENC_SWREG244 at 16#3D0# range 0 .. 31;
      VENC_SWREG245 at 16#3D4# range 0 .. 31;
      VENC_SWREG256 at 16#400# range 0 .. 31;
      VENC_SWREG257 at 16#404# range 0 .. 31;
      VENC_SWREG258 at 16#408# range 0 .. 31;
      VENC_SWREG259 at 16#40C# range 0 .. 31;
      VENC_SWREG260 at 16#410# range 0 .. 31;
      VENC_SWREG261 at 16#414# range 0 .. 31;
      VENC_SWREG262 at 16#418# range 0 .. 31;
      VENC_SWREG263 at 16#41C# range 0 .. 31;
      VENC_SWREG264 at 16#420# range 0 .. 31;
      VENC_SWREG265 at 16#424# range 0 .. 31;
      VENC_SWREG266 at 16#428# range 0 .. 31;
      VENC_SWREG267 at 16#42C# range 0 .. 31;
      VENC_SWREG268 at 16#430# range 0 .. 31;
      VENC_SWREG269 at 16#434# range 0 .. 31;
      VENC_SWREG270 at 16#438# range 0 .. 31;
      VENC_SWREG271 at 16#43C# range 0 .. 31;
      VENC_SWREG272 at 16#440# range 0 .. 31;
      VENC_SWREG273 at 16#444# range 0 .. 31;
      VENC_SWREG274 at 16#448# range 0 .. 31;
      VENC_SWREG275 at 16#44C# range 0 .. 31;
      VENC_SWREG276 at 16#450# range 0 .. 31;
      VENC_SWREG277 at 16#454# range 0 .. 31;
      VENC_SWREG278 at 16#458# range 0 .. 31;
      VENC_SWREG279 at 16#45C# range 0 .. 31;
      VENC_SWREG280 at 16#460# range 0 .. 31;
      VENC_SWREG281 at 16#464# range 0 .. 31;
      VENC_SWREG282 at 16#468# range 0 .. 31;
      VENC_SWREG283 at 16#46C# range 0 .. 31;
      VENC_SWREG284 at 16#470# range 0 .. 31;
      VENC_SWREG285 at 16#474# range 0 .. 31;
      VENC_SWREG286 at 16#478# range 0 .. 31;
      VENC_SWREG287 at 16#47C# range 0 .. 31;
      VENC_SWREG288 at 16#480# range 0 .. 31;
      VENC_SWREG289 at 16#484# range 0 .. 31;
      VENC_SWREG290 at 16#488# range 0 .. 31;
      VENC_SWREG291 at 16#48C# range 0 .. 31;
      VENC_SWREG292 at 16#490# range 0 .. 31;
      VENC_SWREG293 at 16#494# range 0 .. 31;
      VENC_SWREG294 at 16#498# range 0 .. 31;
      VENC_SWREG295 at 16#49C# range 0 .. 31;
      VENC_SWREG296 at 16#4A0# range 0 .. 31;
      VENC_SWREG297 at 16#4A4# range 0 .. 31;
      VENC_SWREG298 at 16#4A8# range 0 .. 31;
      VENC_SWREG299 at 16#4AC# range 0 .. 31;
      VENC_SWREG300 at 16#4B0# range 0 .. 31;
      VENC_SWREG301 at 16#4B4# range 0 .. 31;
      VENC_SWREG302 at 16#4B8# range 0 .. 31;
      VENC_SWREG303 at 16#4BC# range 0 .. 31;
      VENC_SWREG304 at 16#4C0# range 0 .. 31;
      VENC_SWREG305 at 16#4C4# range 0 .. 31;
      VENC_SWREG306 at 16#4C8# range 0 .. 31;
      VENC_SWREG307 at 16#4CC# range 0 .. 31;
      VENC_SWREG308 at 16#4D0# range 0 .. 31;
      VENC_SWREG309 at 16#4D4# range 0 .. 31;
      VENC_SWREG310 at 16#4D8# range 0 .. 31;
      VENC_SWREG311 at 16#4DC# range 0 .. 31;
      VENC_SWREG312 at 16#4E0# range 0 .. 31;
      VENC_SWREG313 at 16#4E4# range 0 .. 31;
      VENC_SWREG314 at 16#4E8# range 0 .. 31;
      VENC_SWREG315 at 16#4EC# range 0 .. 31;
      VENC_SWREG316 at 16#4F0# range 0 .. 31;
      VENC_SWREG317 at 16#4F4# range 0 .. 31;
      VENC_SWREG318 at 16#4F8# range 0 .. 31;
      VENC_SWREG319 at 16#4FC# range 0 .. 31;
      VENC_SWREG320 at 16#500# range 0 .. 31;
      VENC_SWREG321 at 16#504# range 0 .. 31;
      VENC_SWREG322 at 16#508# range 0 .. 31;
      VENC_SWREG323 at 16#50C# range 0 .. 31;
      VENC_SWREG324 at 16#510# range 0 .. 31;
      VENC_SWREG325 at 16#514# range 0 .. 31;
      VENC_SWREG326 at 16#518# range 0 .. 31;
      VENC_SWREG327 at 16#51C# range 0 .. 31;
      VENC_SWREG328 at 16#520# range 0 .. 31;
      VENC_SWREG329 at 16#524# range 0 .. 31;
      VENC_SWREG330 at 16#528# range 0 .. 31;
      VENC_SWREG331 at 16#52C# range 0 .. 31;
      VENC_SWREG332 at 16#530# range 0 .. 31;
      VENC_SWREG333 at 16#534# range 0 .. 31;
      VENC_SWREG334 at 16#538# range 0 .. 31;
      VENC_SWREG335 at 16#53C# range 0 .. 31;
      VENC_SWREG336 at 16#540# range 0 .. 31;
      VENC_SWREG337 at 16#544# range 0 .. 31;
      VENC_SWREG338 at 16#548# range 0 .. 31;
      VENC_SWREG339 at 16#54C# range 0 .. 31;
      VENC_SWREG340 at 16#550# range 0 .. 31;
      VENC_SWREG341 at 16#554# range 0 .. 31;
      VENC_SWREG342 at 16#558# range 0 .. 31;
      VENC_SWREG343 at 16#55C# range 0 .. 31;
      VENC_SWREG344 at 16#560# range 0 .. 31;
      VENC_SWREG345 at 16#564# range 0 .. 31;
      VENC_SWREG346 at 16#568# range 0 .. 31;
      VENC_SWREG347 at 16#56C# range 0 .. 31;
      VENC_SWREG348 at 16#570# range 0 .. 31;
      VENC_SWREG349 at 16#574# range 0 .. 31;
      VENC_SWREG350 at 16#578# range 0 .. 31;
      VENC_SWREG351 at 16#57C# range 0 .. 31;
      VENC_SWREG352 at 16#580# range 0 .. 31;
      VENC_SWREG353 at 16#584# range 0 .. 31;
      VENC_SWREG354 at 16#588# range 0 .. 31;
      VENC_SWREG355 at 16#58C# range 0 .. 31;
      VENC_SWREG356 at 16#590# range 0 .. 31;
      VENC_SWREG357 at 16#594# range 0 .. 31;
      VENC_SWREG358 at 16#598# range 0 .. 31;
      VENC_SWREG359 at 16#59C# range 0 .. 31;
      VENC_SWREG360 at 16#5A0# range 0 .. 31;
      VENC_SWREG361 at 16#5A4# range 0 .. 31;
      VENC_SWREG362 at 16#5A8# range 0 .. 31;
      VENC_SWREG363 at 16#5AC# range 0 .. 31;
      VENC_SWREG364 at 16#5B0# range 0 .. 31;
      VENC_SWREG365 at 16#5B4# range 0 .. 31;
      VENC_SWREG366 at 16#5B8# range 0 .. 31;
      VENC_SWREG367 at 16#5BC# range 0 .. 31;
      VENC_SWREG368 at 16#5C0# range 0 .. 31;
      VENC_SWREG369 at 16#5C4# range 0 .. 31;
      VENC_SWREG370 at 16#5C8# range 0 .. 31;
      VENC_SWREG371 at 16#5CC# range 0 .. 31;
      VENC_SWREG372 at 16#5D0# range 0 .. 31;
      VENC_SWREG373 at 16#5D4# range 0 .. 31;
      VENC_SWREG374 at 16#5D8# range 0 .. 31;
      VENC_SWREG375 at 16#5DC# range 0 .. 31;
      VENC_SWREG376 at 16#5E0# range 0 .. 31;
      VENC_SWREG377 at 16#5E4# range 0 .. 31;
      VENC_SWREG378 at 16#5E8# range 0 .. 31;
      VENC_SWREG379 at 16#5EC# range 0 .. 31;
      VENC_SWREG380 at 16#5F0# range 0 .. 31;
      VENC_SWREG381 at 16#5F4# range 0 .. 31;
      VENC_SWREG382 at 16#5F8# range 0 .. 31;
      VENC_SWREG383 at 16#5FC# range 0 .. 31;
      VENC_SWREG384 at 16#600# range 0 .. 31;
      VENC_SWREG385 at 16#604# range 0 .. 31;
      VENC_SWREG386 at 16#608# range 0 .. 31;
      VENC_SWREG387 at 16#60C# range 0 .. 31;
      VENC_SWREG388 at 16#610# range 0 .. 31;
      VENC_SWREG389 at 16#614# range 0 .. 31;
      VENC_SWREG390 at 16#618# range 0 .. 31;
      VENC_SWREG391 at 16#61C# range 0 .. 31;
      VENC_SWREG392 at 16#620# range 0 .. 31;
      VENC_SWREG393 at 16#624# range 0 .. 31;
      VENC_SWREG394 at 16#628# range 0 .. 31;
      VENC_SWREG395 at 16#62C# range 0 .. 31;
      VENC_SWREG396 at 16#630# range 0 .. 31;
      VENC_SWREG397 at 16#634# range 0 .. 31;
      VENC_SWREG398 at 16#638# range 0 .. 31;
      VENC_SWREG399 at 16#63C# range 0 .. 31;
      VENC_SWREG400 at 16#640# range 0 .. 31;
      VENC_SWREG401 at 16#644# range 0 .. 31;
      VENC_SWREG402 at 16#648# range 0 .. 31;
      VENC_SWREG403 at 16#64C# range 0 .. 31;
      VENC_SWREG404 at 16#650# range 0 .. 31;
      VENC_SWREG405 at 16#654# range 0 .. 31;
      VENC_SWREG406 at 16#658# range 0 .. 31;
      VENC_SWREG407 at 16#65C# range 0 .. 31;
      VENC_SWREG408 at 16#660# range 0 .. 31;
      VENC_SWREG409 at 16#664# range 0 .. 31;
      VENC_SWREG410 at 16#668# range 0 .. 31;
      VENC_SWREG411 at 16#66C# range 0 .. 31;
      VENC_SWREG412 at 16#670# range 0 .. 31;
      VENC_SWREG421 at 16#694# range 0 .. 31;
      VENC_SWREG422 at 16#698# range 0 .. 31;
      VENC_SWREG423 at 16#69C# range 0 .. 31;
      VENC_SWREG424 at 16#6A0# range 0 .. 31;
      VENC_SWREG425 at 16#6A4# range 0 .. 31;
      VENC_SWREG426 at 16#6A8# range 0 .. 31;
      VENC_SWREG427 at 16#6AC# range 0 .. 31;
      VENC_SWREG428 at 16#6B0# range 0 .. 31;
      VENC_SWREG429 at 16#6B4# range 0 .. 31;
      VENC_SWREG430 at 16#6B8# range 0 .. 31;
      VENC_SWREG431 at 16#6BC# range 0 .. 31;
      VENC_SWREG432 at 16#6C0# range 0 .. 31;
      VENC_SWREG433 at 16#6C4# range 0 .. 31;
      VENC_SWREG434 at 16#6C8# range 0 .. 31;
      VENC_SWREG435 at 16#6CC# range 0 .. 31;
      VENC_SWREG436 at 16#6D0# range 0 .. 31;
      VENC_SWREG437 at 16#6D4# range 0 .. 31;
      VENC_SWREG438 at 16#6D8# range 0 .. 31;
      VENC_SWREG439 at 16#6DC# range 0 .. 31;
      VENC_SWREG440 at 16#6E0# range 0 .. 31;
      VENC_SWREG441 at 16#6E4# range 0 .. 31;
      VENC_SWREG442 at 16#6E8# range 0 .. 31;
      VENC_SWREG443 at 16#6EC# range 0 .. 31;
      VENC_SWREG444 at 16#6F0# range 0 .. 31;
      VENC_SWREG445 at 16#6F4# range 0 .. 31;
      VENC_SWREG446 at 16#6F8# range 0 .. 31;
      VENC_SWREG447 at 16#6FC# range 0 .. 31;
      VENC_SWREG448 at 16#700# range 0 .. 31;
      VENC_SWREG449 at 16#704# range 0 .. 31;
      VENC_SWREG450 at 16#708# range 0 .. 31;
      VENC_SWREG451 at 16#70C# range 0 .. 31;
      VENC_SWREG497 at 16#7C4# range 0 .. 31;
   end record;

   --  VENC address block description
   VENC_Periph : aliased VENC_Peripheral
     with Import, Address => VENC_Base;

   --  VENC address block description
   VENC_S_Periph : aliased VENC_Peripheral
     with Import, Address => VENC_S_Base;

end STM32_SVD.VENC;
