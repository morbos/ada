with Ada.Text_IO; use Ada.Text_IO;
with Gen_List;

procedure List is
   HCI_READ_PACKET_NUM_MAX  : constant := 5;
   package HciDataPacketT is new Gen_List (Integer, HCI_READ_PACKET_NUM_MAX);
   use HciDataPacketT;
   HciReadPacketBuffer   : ListNode_Array;
   HciReadPktPool        : aliased ListNode;
   HciReadPktPoolPtr     : ListNodePtr := HciReadPktPool'Access;
   HciReadPktRxQueue     : aliased ListNode;
   HciReadPktRxQueuePtr  : ListNodePtr := HciReadPktRxQueue'Access;
   procedure Dump_List (Head : ListNodePtr)
   is
      P : ListNodePtr := Head.Next;
   begin
      Put_Line ("------");
      loop
         Put_Line (Integer'Image(P.Elem));
         P := P.Next;
         exit when P = Head;
      end loop;
      Put_Line ("------");
   end Dump_List;

   procedure Query_List (P : ListNodePtr)
   is
   begin
      if List_Is_Empty (P) then
         Put_Line ("Empty");
      else
         Put_Line ("not Empty");
         Put_Line (Integer'Image (List_Get_Size (P)));
         Dump_List (P);
      end if;
   end Query_List;

   N : ListNodePtr;

begin
   --  Initialize list heads of ready and free hci data packet queues
   List_Init_Head (HciReadPktPoolPtr);
   List_Init_Head (HciReadPktRxQueuePtr);

   --  Initialize the queue of free hci data packets
   for Index in 1 .. HCI_READ_PACKET_NUM_MAX loop
      HciReadPacketBuffer (Index).Elem := Index;
      List_Insert_Tail (HciReadPktPoolPtr, HciReadPacketBuffer (Index)'Access);
   end loop;

   Dump_List (HciReadPktPoolPtr);

   List_Remove_Head (HciReadPktPoolPtr, N);

   Dump_List (HciReadPktPoolPtr);

   List_Insert_Tail (HciReadPktPoolPtr, N);

   Dump_List (HciReadPktPoolPtr);

end List;
