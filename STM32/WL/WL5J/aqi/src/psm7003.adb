with Interfaces;                   use Interfaces;
with Uart;                         use Uart;
with STM32.Device;                 use STM32.Device;
with STM32.USARTs;                 use STM32.USARTs;

package body PSM7003 is

   --  Per the datasheet for the PSM7003
   Magic_Num : constant UInt8_Array (1 .. 2) := (16#42#, 16#4d#);

   type PM_Select is
     (PM1_0,
      PM2_5,
      PM10_0);

   type PM_Array is array (PM_Select range PM1_0 .. PM10_0) of UInt16;

   type Uart_Frame is record
      Magic      : UInt16;   --  0
      Len        : UInt16;   --  1
      Pm_Ug      : PM_Array; --  2 .. 4
      Pm1_Conc   : PM_Array; --  5 .. 7
      N_0_3      : UInt16;   --  8
      N_0_5      : UInt16;   --  9
      N_1_0      : UInt16;   --  10
      N_2_5      : UInt16;   --  11
      N_5_0      : UInt16;   --  12
      N_10_0     : UInt16;   --  13
      Reserved   : UInt16;   --  14
      Csum       : UInt16;   --  15
   end record
     with Pack;
   Error     : UInt32 := 0;
   --  We overlay a 32byte UART buffer on top of the Uart_Frame, in
   --  this way, we can structure the UART buffer.
   A         : UInt8_Array (1 .. 32);
   Frm       : Uart_Frame;
   for Frm'Alignment use 1;
   for Frm'Address use A'Address;

   procedure Swap (X : in out UInt16);

   procedure Swap (X : in out UInt16)
   is
      Result : UInt16 := X;
   begin
      Result := Shift_Left (X, 8) or (Shift_Right (X, 8));
      X := Result;
   end Swap;

   function Check_Valid return Boolean;

   --  Validate the checksum. We already checked the magic# prior.
   function Check_Valid return Boolean
   is
      Sum : UInt16 := 0;
   begin
      --  First 30 summed, last 2 are the sum
      for I in 1 .. 30 loop
         Sum := Sum + UInt16 (A (I));
      end loop;
      Swap (Frm.Csum);
      if Frm.Csum = Sum then
         return True;
      else
         return False;
      end if;
   end Check_Valid;
   function Get_PM_2_5 return UInt16
   is
      Idx   : Integer := 1;
      Buff  : UInt8_Array (1 .. 2);
      C     : UInt9;
      for C'Alignment use 1;
      for C'Address use Buff'Address;
   begin
      loop
         loop
            if Rx_Ready (USART_2) then
               Receive (USART_2, C);
               if Idx = 1 and Buff (1) /= Magic_Num (1) then
                  Idx := 1;
               elsif Idx = 2 and Buff (1) /= Magic_Num (2) then
                  Idx := 1;
               else
                  A (Idx) := Buff (1);
                  Idx := Idx + 1;
                  exit when Idx = 33;
               end if;
            end if;
         end loop;
         if Check_Valid then
            for J in PM_Select loop
               Swap (Frm.Pm_Ug (J));
            end loop;
            return Frm.Pm_Ug (PM2_5);
         else
            Error := Error + 1;
            Idx := 1;
         end if;
      end loop;
   end Get_PM_2_5;

end PSM7003;
