--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.USBSRAM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USBSRAM_CHEP_TxRxBD_0_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_0_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 0
   type USBSRAM_CHEP_TxRxBD_0_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_0_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP0R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_0_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_0_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_0_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_0_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_0_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 0
   type USBSRAM_CHEP_TxRxBD_0_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_0_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_0_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_0_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_0_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_0_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_0_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 0
   type USBSRAM_CHEP_RxTxBD_0_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP0R register at the next IN token addressed to it.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_0_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_0_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_0_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_0_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_0_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_0_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 0
   type USBSRAM_CHEP_RxTxBD_0_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP0R register at the next OUT/SETUP token addressed to it.
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_0_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_0_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_0_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_0_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_1_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_1_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 1
   type USBSRAM_CHEP_TxRxBD_1_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP1R register at the next IN token addressed to it.
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_1_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP1R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_1_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_1_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_1_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_1_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_1_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 1
   type USBSRAM_CHEP_TxRxBD_1_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP1R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_1_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP1R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_1_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_1_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_1_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_1_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_1_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 1
   type USBSRAM_CHEP_RxTxBD_1_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP1R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_1_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_1_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_1_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_1_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_1_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_1_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 1
   type USBSRAM_CHEP_RxTxBD_1_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP1R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_1_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_1_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_1_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_1_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_2_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_2_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 2
   type USBSRAM_CHEP_TxRxBD_2_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP2R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_2_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP2R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_2_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_2_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_2_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_2_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_2_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 2
   type USBSRAM_CHEP_TxRxBD_2_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP2R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_2_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP2R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_2_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_2_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_2_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_2_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_2_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 2
   type USBSRAM_CHEP_RxTxBD_2_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP2R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_2_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_2_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_2_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_2_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_2_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_2_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 2
   type USBSRAM_CHEP_RxTxBD_2_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP2R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_2_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_2_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_2_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_2_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_3_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_3_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 3
   type USBSRAM_CHEP_TxRxBD_3_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP3R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_3_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP3R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_3_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_3_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_3_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_3_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_3_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 3
   type USBSRAM_CHEP_TxRxBD_3_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP3R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_3_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP3R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_3_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_3_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_3_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_3_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_3_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 3
   type USBSRAM_CHEP_RxTxBD_3_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP3R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_3_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_3_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_3_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_3_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_3_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_3_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 3
   type USBSRAM_CHEP_RxTxBD_3_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP3R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_3_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_3_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_3_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_3_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_4_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_4_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 4
   type USBSRAM_CHEP_TxRxBD_4_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP4R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_4_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP4R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_4_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_4_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_4_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_4_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_4_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 4
   type USBSRAM_CHEP_TxRxBD_4_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP4R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_4_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP4R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_4_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_4_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_4_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_4_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_4_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 4
   type USBSRAM_CHEP_RxTxBD_4_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP4R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_4_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_4_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_4_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_4_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_4_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_4_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 4
   type USBSRAM_CHEP_RxTxBD_4_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP4R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_4_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_4_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_4_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_4_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_5_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_5_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 5
   type USBSRAM_CHEP_TxRxBD_5_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP5R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_5_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP5R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_5_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_5_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_5_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_5_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_5_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 5
   type USBSRAM_CHEP_TxRxBD_5_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP5R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_5_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP5R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_5_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_5_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_5_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_5_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_5_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 5
   type USBSRAM_CHEP_RxTxBD_5_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP5R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_5_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_5_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_5_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_5_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_5_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_5_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 5
   type USBSRAM_CHEP_RxTxBD_5_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP5R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_5_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_5_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_5_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_5_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_6_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_6_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 6
   type USBSRAM_CHEP_TxRxBD_6_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP6R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_6_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP6R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_6_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_6_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_6_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_6_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_6_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 6
   type USBSRAM_CHEP_TxRxBD_6_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP6R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_6_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP6R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_6_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_6_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_6_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_6_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_6_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 6
   type USBSRAM_CHEP_RxTxBD_6_Register is record
      --  These bits point to the starting address of the packet buffer
      --  containing data to be transmitted by the endpoint/channel associated
      --  with the USB_CHEP6R register at the next IN token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned.
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_6_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_6_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_6_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_6_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_6_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_6_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 6
   type USBSRAM_CHEP_RxTxBD_6_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer, which
      --  contains the data received by the endpoint/channel associated with
      --  the USB_CHEP6R register at the next OUT/SETUP token addressed to it.
      --  Bits 1 and 0 must always be written as '00 ' since packet memory is
      --  word wide and all packet buffers must be word aligned. Note: This
      --  table location is used to store two different values, both required
      --  during packet reception. The most significant bits contains the
      --  definition of allocated buffer size, to allow buffer overflow
      --  detection, while the least significant part of this location is
      --  written back by the USB peripheral at the end of reception to give
      --  the actual number of received bytes. Due to the restrictions on the
      --  number of available bits, buffer size is represented using the number
      --  of allocated memory blocks, where block size can be selected to
      --  choose the trade-off between fine-granularity/small-buffer and
      --  coarse-granularity/large-buffer. The size of allocated buffer is a
      --  part of the endpoint/channel descriptor and it is normally defined
      --  during the enumeration process according to its maxPacketSize
      --  parameter value (see 'Universal Serial Bus Specification ').
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_6_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_6_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_6_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_6_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_7_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_7_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 7
   type USBSRAM_CHEP_TxRxBD_7_Register is record
      --  These bits point to the starting address of the packet buffer
      ADDR_Tx        : USBSRAM_CHEP_TxRxBD_7_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEP7R register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_TxRxBD_7_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_7_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_TxRxBD_7_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_TxRxBD_7_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_TxRxBD_7_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 7
   type USBSRAM_CHEP_TxRxBD_7_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer
      ADDR_Rx   : USBSRAM_CHEP_TxRxBD_7_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEP7R register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_TxRxBD_7_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_TxRxBD_7_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_TxRxBD_7_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_7_ADDR_Tx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_7_COUNT_Tx_Field is HAL.UInt10;

   --  Channel/endpoint transmit buffer descriptor 7
   type USBSRAM_CHEP_RxTxBD_7_Register is record
      --  These bits point to the starting address of the packet buffer
      ADDR_Tx        : USBSRAM_CHEP_RxTxBD_7_ADDR_Tx_Field := 16#0#;
      --  These bits contain the number of bytes to be transmitted by the
      --  endpoint/channel associated with the USB_CHEPnR register at the next
      --  IN token addressed to it.
      COUNT_Tx       : USBSRAM_CHEP_RxTxBD_7_COUNT_Tx_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_7_Register use record
      ADDR_Tx        at 0 range 0 .. 15;
      COUNT_Tx       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBSRAM_CHEP_RxTxBD_7_ALTERNATE_ADDR_Rx_Field is HAL.UInt16;
   subtype USBSRAM_CHEP_RxTxBD_7_ALTERNATE_COUNT_Rx_Field is HAL.UInt10;
   subtype USBSRAM_CHEP_RxTxBD_7_ALTERNATE_NUM_BLOCK_Field is HAL.UInt5;

   --  Channel/endpoint transmit buffer descriptor 7
   type USBSRAM_CHEP_RxTxBD_7_ALTERNATE_Register is record
      --  These bits point to the starting address of the packet buffer
      ADDR_Rx   : USBSRAM_CHEP_RxTxBD_7_ALTERNATE_ADDR_Rx_Field := 16#0#;
      --  Read-only. These bits contain the number of bytes received by the
      --  endpoint/channel associated with the USB_CHEPnR register during the
      --  last OUT/SETUP transaction addressed to it.
      COUNT_Rx  : USBSRAM_CHEP_RxTxBD_7_ALTERNATE_COUNT_Rx_Field := 16#0#;
      --  These bits define the number of memory blocks allocated to this
      --  packet buffer. The actual amount of allocated memory depends on the
      --  BLSIZE value as illustrated in less than xe7 []/>.
      NUM_BLOCK : USBSRAM_CHEP_RxTxBD_7_ALTERNATE_NUM_BLOCK_Field := 16#0#;
      --  This bit selects the size of memory block used to define the
      --  allocated buffer area. - If BLSIZE = 0, the memory block is 2-byte
      --  large, which is the minimum block allowed in a half-word wide memory.
      --  With this block size the allocated buffer size ranges from 2 to 62
      --  bytes. - If BLSIZE = 1, the memory block is 32-byte large, which
      --  permits to reach the maximum packet length defined by USB
      --  specifications. With this block size the allocated buffer size
      --  theoretically ranges from 32 to 1024 bytes, which is the longest
      --  packet size allowed by USB standard specifications. However, the
      --  applicable size is limited by the available buffer memory.
      BLSIZE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSRAM_CHEP_RxTxBD_7_ALTERNATE_Register use record
      ADDR_Rx   at 0 range 0 .. 15;
      COUNT_Rx  at 0 range 16 .. 25;
      NUM_BLOCK at 0 range 26 .. 30;
      BLSIZE    at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SEC_USBSRAM_Disc is
     (Default,
      Alternate);

   --  USBSRAM Address block
   type USBSRAM_Peripheral
     (Discriminent : SEC_USBSRAM_Disc := Default)
   is record
      case Discriminent is
         when Default =>
            --  Channel/endpoint transmit buffer descriptor 0
            USBSRAM_CHEP_TxRxBD_0 : aliased USBSRAM_CHEP_TxRxBD_0_Register;
            --  Channel/endpoint transmit buffer descriptor 0
            USBSRAM_CHEP_RxTxBD_0 : aliased USBSRAM_CHEP_RxTxBD_0_Register;
            --  Channel/endpoint transmit buffer descriptor 1
            USBSRAM_CHEP_TxRxBD_1 : aliased USBSRAM_CHEP_TxRxBD_1_Register;
            --  Channel/endpoint transmit buffer descriptor 1
            USBSRAM_CHEP_RxTxBD_1 : aliased USBSRAM_CHEP_RxTxBD_1_Register;
            --  Channel/endpoint transmit buffer descriptor 2
            USBSRAM_CHEP_TxRxBD_2 : aliased USBSRAM_CHEP_TxRxBD_2_Register;
            --  Channel/endpoint transmit buffer descriptor 2
            USBSRAM_CHEP_RxTxBD_2 : aliased USBSRAM_CHEP_RxTxBD_2_Register;
            --  Channel/endpoint transmit buffer descriptor 3
            USBSRAM_CHEP_TxRxBD_3 : aliased USBSRAM_CHEP_TxRxBD_3_Register;
            --  Channel/endpoint transmit buffer descriptor 3
            USBSRAM_CHEP_RxTxBD_3 : aliased USBSRAM_CHEP_RxTxBD_3_Register;
            --  Channel/endpoint transmit buffer descriptor 4
            USBSRAM_CHEP_TxRxBD_4 : aliased USBSRAM_CHEP_TxRxBD_4_Register;
            --  Channel/endpoint transmit buffer descriptor 4
            USBSRAM_CHEP_RxTxBD_4 : aliased USBSRAM_CHEP_RxTxBD_4_Register;
            --  Channel/endpoint transmit buffer descriptor 5
            USBSRAM_CHEP_TxRxBD_5 : aliased USBSRAM_CHEP_TxRxBD_5_Register;
            --  Channel/endpoint transmit buffer descriptor 5
            USBSRAM_CHEP_RxTxBD_5 : aliased USBSRAM_CHEP_RxTxBD_5_Register;
            --  Channel/endpoint transmit buffer descriptor 6
            USBSRAM_CHEP_TxRxBD_6 : aliased USBSRAM_CHEP_TxRxBD_6_Register;
            --  Channel/endpoint transmit buffer descriptor 6
            USBSRAM_CHEP_RxTxBD_6 : aliased USBSRAM_CHEP_RxTxBD_6_Register;
            --  Channel/endpoint transmit buffer descriptor 7
            USBSRAM_CHEP_TxRxBD_7 : aliased USBSRAM_CHEP_TxRxBD_7_Register;
            --  Channel/endpoint transmit buffer descriptor 7
            USBSRAM_CHEP_RxTxBD_7 : aliased USBSRAM_CHEP_RxTxBD_7_Register;
         when Alternate =>
            --  Channel/endpoint transmit buffer descriptor 0
            USBSRAM_CHEP_TxRxBD_0_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_0_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 0
            USBSRAM_CHEP_RxTxBD_0_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_0_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 1
            USBSRAM_CHEP_TxRxBD_1_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_1_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 1
            USBSRAM_CHEP_RxTxBD_1_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_1_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 2
            USBSRAM_CHEP_TxRxBD_2_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_2_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 2
            USBSRAM_CHEP_RxTxBD_2_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_2_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 3
            USBSRAM_CHEP_TxRxBD_3_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_3_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 3
            USBSRAM_CHEP_RxTxBD_3_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_3_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 4
            USBSRAM_CHEP_TxRxBD_4_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_4_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 4
            USBSRAM_CHEP_RxTxBD_4_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_4_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 5
            USBSRAM_CHEP_TxRxBD_5_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_5_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 5
            USBSRAM_CHEP_RxTxBD_5_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_5_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 6
            USBSRAM_CHEP_TxRxBD_6_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_6_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 6
            USBSRAM_CHEP_RxTxBD_6_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_6_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 7
            USBSRAM_CHEP_TxRxBD_7_ALTERNATE : aliased USBSRAM_CHEP_TxRxBD_7_ALTERNATE_Register;
            --  Channel/endpoint transmit buffer descriptor 7
            USBSRAM_CHEP_RxTxBD_7_ALTERNATE : aliased USBSRAM_CHEP_RxTxBD_7_ALTERNATE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USBSRAM_Peripheral use record
      USBSRAM_CHEP_TxRxBD_0           at 16#0# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_0           at 16#4# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_1           at 16#8# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_1           at 16#C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_2           at 16#10# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_2           at 16#14# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_3           at 16#18# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_3           at 16#1C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_4           at 16#20# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_4           at 16#24# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_5           at 16#28# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_5           at 16#2C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_6           at 16#30# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_6           at 16#34# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_7           at 16#38# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_7           at 16#3C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_0_ALTERNATE at 16#0# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_0_ALTERNATE at 16#4# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_1_ALTERNATE at 16#8# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_1_ALTERNATE at 16#C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_2_ALTERNATE at 16#10# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_2_ALTERNATE at 16#14# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_3_ALTERNATE at 16#18# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_3_ALTERNATE at 16#1C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_4_ALTERNATE at 16#20# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_4_ALTERNATE at 16#24# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_5_ALTERNATE at 16#28# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_5_ALTERNATE at 16#2C# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_6_ALTERNATE at 16#30# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_6_ALTERNATE at 16#34# range 0 .. 31;
      USBSRAM_CHEP_TxRxBD_7_ALTERNATE at 16#38# range 0 .. 31;
      USBSRAM_CHEP_RxTxBD_7_ALTERNATE at 16#3C# range 0 .. 31;
   end record;

   --  USBSRAM Address block
   SEC_USBSRAM_Periph : aliased USBSRAM_Peripheral
     with Import, Address => SEC_USBSRAM_Base;

   --  USBSRAM Address block
   USBSRAM_Periph : aliased USBSRAM_Peripheral
     with Import, Address => USBSRAM_Base;

end STM32_SVD.USBSRAM;
