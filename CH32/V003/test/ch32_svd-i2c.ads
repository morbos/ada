--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register 1
   type CTLR1_Register is record
      --  Peripheral enable
      PE             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  ARP enable
      ENARP          : Boolean := False;
      --  PEC enable
      ENPEC          : Boolean := False;
      --  General call enable
      ENGC           : Boolean := False;
      --  Clock stretching disable (Slave mode)
      NOSTRETCH      : Boolean := False;
      --  Start generation
      START          : Boolean := False;
      --  Stop generation
      STOP           : Boolean := False;
      --  Acknowledge enable
      ACK            : Boolean := False;
      --  Acknowledge/PEC Position (for data reception)
      POS            : Boolean := False;
      --  Packet error checking
      PEC            : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Software reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR1_Register use record
      PE             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ENARP          at 0 range 4 .. 4;
      ENPEC          at 0 range 5 .. 5;
      ENGC           at 0 range 6 .. 6;
      NOSTRETCH      at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ACK            at 0 range 10 .. 10;
      POS            at 0 range 11 .. 11;
      PEC            at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTLR2_FREQ_Field is HAL.UInt6;

   --  Control register 2
   type CTLR2_Register is record
      --  Peripheral clock frequency
      FREQ           : CTLR2_FREQ_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Error interrupt enable
      ITERREN        : Boolean := False;
      --  Event interrupt enable
      ITEVTEN        : Boolean := False;
      --  Buffer interrupt enable
      ITBUFEN        : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  DMA last transfer
      LAST           : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR2_Register use record
      FREQ           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ITERREN        at 0 range 8 .. 8;
      ITEVTEN        at 0 range 9 .. 9;
      ITBUFEN        at 0 range 10 .. 10;
      DMAEN          at 0 range 11 .. 11;
      LAST           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OADDR1_ADD7_1_Field is HAL.UInt7;
   subtype OADDR1_ADD9_8_Field is HAL.UInt2;

   --  Own address register 1
   type OADDR1_Register is record
      --  Interface address
      ADD0           : Boolean := False;
      --  Interface address
      ADD7_1         : OADDR1_ADD7_1_Field := 16#0#;
      --  Interface address
      ADD9_8         : OADDR1_ADD9_8_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Addressing mode (slave mode)
      ADDMODE        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OADDR1_Register use record
      ADD0           at 0 range 0 .. 0;
      ADD7_1         at 0 range 1 .. 7;
      ADD9_8         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      ADDMODE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OADDR2_ADD2_Field is HAL.UInt7;

   --  Own address register 2
   type OADDR2_Register is record
      --  Dual addressing mode enable
      ENDUAL        : Boolean := False;
      --  Interface address
      ADD2          : OADDR2_ADD2_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OADDR2_Register use record
      ENDUAL        at 0 range 0 .. 0;
      ADD2          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATAR_DATAR_Field is HAL.UInt8;

   --  Data register
   type DATAR_Register is record
      --  8-bit data register
      DATAR         : DATAR_DATAR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATAR_Register use record
      DATAR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Status register 1
   type STAR1_Register is record
      --  Read-only. Start bit (Master mode)
      SB             : Boolean := False;
      --  Read-only. Address sent (master mode)/matched (slave mode)
      ADDR           : Boolean := False;
      --  Read-only. Byte transfer finished
      BTF            : Boolean := False;
      --  Read-only. 10-bit header sent (Master mode)
      ADD10          : Boolean := False;
      --  Read-only. Stop detection (slave mode)
      STOPF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Read-only. Data register not empty (receivers)
      RxNE           : Boolean := False;
      --  Read-only. Data register empty (transmitters)
      TxE            : Boolean := False;
      --  Bus error
      BERR           : Boolean := False;
      --  Arbitration lost (master mode)
      ARLO           : Boolean := False;
      --  Acknowledge failure
      AF             : Boolean := False;
      --  Overrun/Underrun
      OVR            : Boolean := False;
      --  PEC Error in reception
      PECERR         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAR1_Register use record
      SB             at 0 range 0 .. 0;
      ADDR           at 0 range 1 .. 1;
      BTF            at 0 range 2 .. 2;
      ADD10          at 0 range 3 .. 3;
      STOPF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RxNE           at 0 range 6 .. 6;
      TxE            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      AF             at 0 range 10 .. 10;
      OVR            at 0 range 11 .. 11;
      PECERR         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype STAR2_PEC_Field is HAL.UInt8;

   --  Status register 2
   type STAR2_Register is record
      --  Read-only. Master/slave
      MSL            : Boolean;
      --  Read-only. Bus busy
      BUSY           : Boolean;
      --  Read-only. Transmitter/receiver
      TRA            : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. General call address (Slave mode)
      GENCALL        : Boolean;
      --  unspecified
      Reserved_5_6   : HAL.UInt2;
      --  Read-only. Dual flag (Slave mode)
      DUALF          : Boolean;
      --  Read-only. acket error checking register
      PEC            : STAR2_PEC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAR2_Register use record
      MSL            at 0 range 0 .. 0;
      BUSY           at 0 range 1 .. 1;
      TRA            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GENCALL        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      DUALF          at 0 range 7 .. 7;
      PEC            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CKCFGR_CCR_Field is HAL.UInt12;

   --  Clock control register
   type CKCFGR_Register is record
      --  Clock control register in Fast/Standard mode (Master mode)
      CCR            : CKCFGR_CCR_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Fast mode duty cycle
      DUTY           : Boolean := False;
      --  I2C master mode selection
      F_S            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CKCFGR_Register use record
      CCR            at 0 range 0 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DUTY           at 0 range 14 .. 14;
      F_S            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter integrated circuit
   type I2C1_Peripheral is record
      --  Control register 1
      CTLR1  : aliased CTLR1_Register;
      --  Control register 2
      CTLR2  : aliased CTLR2_Register;
      --  Own address register 1
      OADDR1 : aliased OADDR1_Register;
      --  Own address register 2
      OADDR2 : aliased OADDR2_Register;
      --  Data register
      DATAR  : aliased DATAR_Register;
      --  Status register 1
      STAR1  : aliased STAR1_Register;
      --  Status register 2
      STAR2  : aliased STAR2_Register;
      --  Clock control register
      CKCFGR : aliased CKCFGR_Register;
   end record
     with Volatile;

   for I2C1_Peripheral use record
      CTLR1  at 16#0# range 0 .. 31;
      CTLR2  at 16#4# range 0 .. 31;
      OADDR1 at 16#8# range 0 .. 31;
      OADDR2 at 16#C# range 0 .. 31;
      DATAR  at 16#10# range 0 .. 31;
      STAR1  at 16#14# range 0 .. 31;
      STAR2  at 16#18# range 0 .. 31;
      CKCFGR at 16#1C# range 0 .. 31;
   end record;

   --  Inter integrated circuit
   I2C1_Periph : aliased I2C1_Peripheral
     with Import, Address => I2C1_Base;

end CH32_SVD.I2C;
