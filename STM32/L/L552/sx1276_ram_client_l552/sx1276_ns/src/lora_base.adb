--  with SX1276_API;      use SX1276_API;
with LoRa_Client;    use LoRa_Client;
with Utils;          use Utils;

package body LoRa_Base is

   TxBuffer : LoRa_Packet;
   RxBuffer : LoRa_Packet;

   RecLen : aliased Integer;
   RecLenPtr : Integer_Ptr := RecLen'Access;

   RecRSSI : aliased Integer;
   RecRSSI_Ptr : Integer_Ptr := RecRSSI'Access;

   SeqNum : UInt4 := 0;

   procedure Send_SX1276 (Buffer : LoRa_Packet; Len : Integer);
   pragma Import (C, Send_SX1276, "send_sx1276_from_ns");
   function Recv_SX1276 (Buffer : LoRa_Packet;
                         Len    : Integer_Ptr;
                         RSSI   : Integer_Ptr) return UInt32;
   pragma Import (C, Recv_SX1276, "recv_sx1276_from_ns");

   procedure LoRa_Ping
   is
   begin
      LoRa_Ping (LoRa_BCAST);
   end LoRa_Ping;

   procedure LoRa_Ping (To : UInt8)
   is
      N   : ListNode;
   begin
      N.Elem.Hdr.To    := To;
      N.Elem.Hdr.From  := My_Id;
      N.Elem.Cmd := (Cmd => LORA_CMD_PING, others => 0);
      LoRa_Send (N, False);
   end LoRa_Ping;

   procedure LoRa_Send (N : ListNode; Reply : Boolean)
   is
      X   : ListNodePtr;
   begin
--  vvvv needs thought.
      if List_Is_Empty (WorklistPoolPtr) then
         --  Delay here till the list frees up
         null;
      end if;

      --  Get a worklist entry
      List_Remove_Head (WorklistPoolPtr, X);
      --  Put it in the workQ
      List_Insert_Tail (WorklistQueuePtr, X);
      X.Elem.Timestamp := Clock;
      X.Elem.RSSI := 0;
      X.Elem.Hdr := N.Elem.Hdr;
      X.Elem.Cmd := N.Elem.Cmd;
      if Reply then
         X.Elem.Cmd.SeqNum := N.Elem.Cmd.SeqNum;
      else
         X.Elem.Cmd.SeqNum := SeqNum;
      end if;
      X.Elem.Payload := N.Elem.Payload;
      declare
         HdrLen : Integer := LoRa_Header'Size / 8;
         Pkt : aliased LoRa_Packet := TxBuffer;
         LHdr : aliased LoRa_Header := X.Elem.Hdr;
         for LHdr'Address use Pkt'Address;
         for LHdr'Alignment use 1;
         LCmd : aliased LoRa_CmdHeader := X.Elem.Cmd;
         for LCmd'Address use Pkt ((LoRa_Header'Size / 8)  + 1)'Address;
         for LCmd'Alignment use 1;
         CmdLen : Integer := LoRa_CmdHeader'Size / 8;
         Len : Integer := HdrLen + CmdLen;
         LNotify : aliased Notify8 := X.Elem.Payload;
         for LNotify'Address use Pkt (((LoRa_CmdHeader'Size + LoRa_Header'Size) / 8)  + 1)'Address;
         for LNotify'Alignment use 1;
         NotifyLen : Integer := Notify8'Size / 8;
      begin
         case N.Elem.Cmd.Cmd is
            when LORA_NOTIFY8  =>
               Len := HdrLen + CmdLen + NotifyLen;
            when LORA_NOTIFY8_REPLY =>
               Len := HdrLen + CmdLen + NotifyLen;
            when others =>
               Len := HdrLen + CmdLen;
         end case;
         Turn_On (Red_LED);
         Send_SX1276 (Pkt, Len);
         SeqNum := SeqNum + 1;
      end;

   end LoRa_Send;

   function LoRa_Receive return Boolean
   is
      X   : ListNodePtr;
      Result : Boolean := False;
      Size : Natural;
   begin
      --  vvvv this is used in the L5 veneer, and is UInt32.
      if 1 = Recv_SX1276 (RxBuffer, RecLenPtr, RecRSSI_Ptr) then
         if (RxBuffer (1) = LoRa_BCAST) or (RxBuffer (1) = My_Id) then
            --  Get a worklist entry
            List_Remove_Head (WorklistPoolPtr, X);
            --  Put it in the workQ
            List_Insert_Tail (WorklistQueuePtr, X);
            Size := List_Get_Size (WorklistQueuePtr);
            LoRa_Parse (RxBuffer, X);
            Result := True;
         end if;
      end if;
      return Result;
   end LoRa_Receive;

   procedure LoRa_Send_Ping_Reply (P : ListNodePtr)
   is
      N : ListNode;
   begin
      N.Elem.Hdr.To := P.Elem.Hdr.From;
      N.Elem.Hdr.From := My_Id;
      N.Elem.Cmd := (Cmd => LORA_CMD_PING_REPLY, others => 0);
      N.Elem.Cmd.SeqNum := P.Elem.Cmd.SeqNum;
      LoRa_Send (N, True);
   end LoRa_Send_Ping_Reply;

   procedure LoRa_Send_Notify8_Reply (P : in out ListNodePtr)
   is
      N : ListNode;
   begin
      N.Elem.Hdr.To := P.Elem.Hdr.From;
      N.Elem.Hdr.From := My_Id;
      N.Elem.Cmd := (Cmd => LORA_NOTIFY8_REPLY, others => 0);
      N.Elem.Cmd.SeqNum := P.Elem.Cmd.SeqNum;
      N.Elem.Payload := P.Elem.Payload;
      Turn_On (Green_LED);
      LoRa_Send (N, True);
      --  Reply sent, recycle the original NOTIFY8
      List_Remove_Node (P);
      List_Insert_Tail (WorklistPoolPtr, P);
   end LoRa_Send_Notify8_Reply;

   procedure LoRa_Rcv_Notify8_Reply (Ptr : ListNodePtr; Notify : Notify8)
   is
      P : ListNodePtr;
      N : ListNodePtr;
      Size : Natural;
   begin
      --  A reply means we must have the orig in the Q
      P := WorklistQueuePtr;
      if not List_Is_Empty (P) then
         Size := List_Get_Size (P);
         N := P.Next;
         while Size > 0 loop
            --  To = From
            if (N.Elem.Hdr.To = Ptr.Elem.Hdr.From) and
               (N.Elem.Cmd.Cmd = LORA_NOTIFY8) and
               (N.Elem.Cmd.SeqNum = Ptr.Elem.Cmd.SeqNum)
            then
               List_Remove_Node (N);
               List_Insert_Tail (WorklistPoolPtr, N);
               return;
            end if;
            Size := Size - 1;
            N := N.Next;
         end loop;
      end if;
   end LoRa_Rcv_Notify8_Reply;

   procedure LoRa_Parse (Buf : LoRa_Packet; P : in out ListNodePtr)
   is
      Hdr : LoRa_Header;
      HdrLen : Integer := LoRa_Header'Size / 8;
      for Hdr'Address use Buf'Address;
      for Hdr'Alignment use 1;
      Cmd : LoRa_CmdHeader;
      CmdLen : Integer := LoRa_CmdHeader'Size / 8;
      for Cmd'Address use Buf (HdrLen + 1)'Address;
      for Cmd'Alignment use 1;
      Len : Integer := (HdrLen + CmdLen);
   begin
      P.Elem.Timestamp := Clock;
      P.Elem.RSSI := UInt8 (RecRSSI);
      P.Elem.Hdr := Hdr;
      P.Elem.Cmd := Cmd;
      case Cmd.Cmd is
         when LORA_CMD_PING  =>
            LoRa_Send_Ping_Reply (P);
         when LORA_CMD_PING_REPLY =>
            null;
         when LORA_NOTIFY8  =>
            declare
               Notify : Notify8;
               for Notify'Address use Buf (Len + 1)'Address;
               for Notify'Alignment use 1;
            begin
               P.Elem.Payload := Notify;
               LoRa_Rcv_Notify8 (P);
            end;
         when LORA_NOTIFY8_REPLY =>
            declare
               Notify : Notify8;
               for Notify'Address use Buf (Len + 1)'Address;
               for Notify'Alignment use 1;
            begin
               LoRa_Rcv_Notify8_Reply (P, Notify);
            end;
         when others =>
            null;
      end case;
   end LoRa_Parse;

   procedure LoRa_Sweep
   is
      P    : ListNodePtr;
      N    : ListNodePtr;
      Size : Natural;
      Timeout  : Natural := 1000;
   begin
      --  Scan the queue looking for pkts that never got replies
      --  A reply means we must have the orig in the Q
      P := WorklistQueuePtr;
      if not List_Is_Empty (P) then
         Size := List_Get_Size (P);
         N := P.Next;
         while Size > 0 loop
            --  Delete:
            --  1)  To: BCAST
            --  2)  Replies
            --  3)  NOTIFY8's with retry count = N
            --  Resend
            --  NOTIFY8's
            if ((Clock - N.Elem.Timestamp) > Milliseconds (Timeout)) then
               if N.Elem.Cmd.Cmd = LORA_NOTIFY8 then
                  if N.Elem.Cmd.Retry = LORA_RETRY_LIMIT then
                     List_Remove_Node (N);
                     List_Insert_Tail (WorklistPoolPtr, N);
                  else
                     N.Elem.Cmd.Retry := N.Elem.Cmd.Retry + 1;
                     LoRa_Send (N.all, True);
                  end if;
               else
                  --  Remove it.
                  List_Remove_Node (N);
                  List_Insert_Tail (WorklistPoolPtr, N);
               end if;
            end if;
            Size := Size - 1;
            N := N.Next;
         end loop;
      end if;
   end LoRa_Sweep;

end LoRa_Base;
