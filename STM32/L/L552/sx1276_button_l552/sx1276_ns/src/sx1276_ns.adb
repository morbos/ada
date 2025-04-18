with HAL;      use HAL;
with HAL.SPI;  use HAL.SPI;
with STM32.Device;   use STM32.Device;
with STM32.Board;    use STM32.Board;
with STM32.MPU;      use STM32.MPU;
with Ada.Real_Time; use Ada.Real_Time;

with Exti;  pragma Unreferenced (Exti);

procedure sx1276_Ns is
   type Integer_Ptr is access all Integer;

   type LoRa_Packet is new SPI_Data_8b (1 .. 255);

   Idx   : Integer := LEDs'First;

   procedure MS_Delay (Units : Integer);
   procedure MS_Delay (Units : Integer) is
   begin
      delay until Clock + Milliseconds (Units);
   end MS_Delay;

   procedure Init_MPU;
   procedure Init_MPU
   is
      Ram : Attr_Type := (Outer => 4, Inner => 4);
      Rom : Attr_Type := (Outer => 4, Inner => 5);
      Dev : Attr_Type := (Outer => 0, Inner => 0);
   begin
      Add_Attrib (AttrIdx => 0, Attrib => Ram);
      Add_Attrib (AttrIdx => 1, Attrib => Dev);
      Add_Attrib (AttrIdx => 2, Attrib => Rom);
      Add_Region (Region_Num => 0,
                  Addr       => 16#3000_0000#,
                  Size       => (2 ** 18) - 1,
                  AttIdx     => 0);
      Add_Region (Region_Num => 1,
                  Addr       => 16#2000_0000#,
                  Size       => (2 ** 18) - 1,
                  AttIdx     => 0);
      Add_Region (Region_Num => 2,
                  Addr       => 16#5000_0000#,
                  Size       => 16#1000_0000# - 1,
                  AttIdx     => 1);
      Add_Region (Region_Num => 3,
                  Addr       => 16#4000_0000#,
                  Size       => 16#1000_0000# - 1,
                  AttIdx     => 1);
      Add_Region (Region_Num => 4,
                  Addr       => 16#E000_0000#,
                  Size       => 16#1000_0000# - 1,
                  AttIdx     => 1);
      Add_Region (Region_Num => 5,
                  Addr       => 16#0802_0000#,
                  Size       => 16#0004_0000# - 1,
                  AttIdx     => 2);
      Enable_MPU;
   end Init_MPU;

   procedure Advance_LEDs;
   procedure Advance_LEDs
   is
   begin
      Toggle (LEDs (Idx));
      if Idx = LEDs'Last then
         Idx := LEDs'First;
      else
         Idx := Idx + 1;
      end if;
   end Advance_LEDs;

   procedure Initialize_SX1276;
   pragma Import (C, Initialize_SX1276, "initialize_sx1276_from_ns");
   procedure Send_SX1276 (Buffer : LoRa_Packet; Len : Integer);
   pragma Import (C, Send_SX1276, "send_sx1276_from_ns");
   function Recv_SX1276 (Buffer : LoRa_Packet; Len : Integer_Ptr) return UInt32;
   pragma Import (C, Recv_SX1276, "recv_sx1276_from_ns");
   TxBuffer : LoRa_Packet;
   RxBuffer : LoRa_Packet;
   S : String := "Hello";
   RecLen : aliased Integer;
   RecLenPtr : Integer_Ptr := RecLen'Access;
   Result : UInt32;
begin
   Init_MPU;
   Initialize_SX1276;
   for I in S'Range loop
      TxBuffer (I) := Character'Pos (S (I));
      RxBuffer (I) := Character'Pos (S (I));
   end loop;
   loop
      Turn_On (Blue_LED);
      MS_Delay (1000);
      Turn_Off (Blue_LED);
      MS_Delay (1000);
   end loop;
--   loop
--      Send_SX1276 (TxBuffer, S'Length);
--      Result := Recv_SX1276 (RxBuffer, RecLenPtr);
--      My_Delay;
--      Advance_LEDs;
--   end loop;
end sx1276_Ns;
