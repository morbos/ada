with Hci_Le;        use Hci_Le;
with Comm.Run;      use Comm.Run;
with Log;           use Log;

with Gen_List;

package body Hci is

   procedure Hci_Timeout_Callback
   is
   begin
      null;
   end Hci_Timeout_Callback;

   procedure Hci_Init
   is
      --  Elem : HciReadPktPoolPtr;
   begin
      --  Initialize list heads of ready and free hci data packet queues
      List_Init_Head (HciReadPktPoolPtr);
      List_Init_Head (HciReadPktRxQueuePtr);

      --  Initialize the queue of free hci data packets
      for Index in 1 .. HCI_READ_PACKET_NUM_MAX loop
         List_Insert_Tail (HciReadPktPoolPtr, HciReadPacketBuffer (Index)'Access);
      end loop;
   end Hci_Init;

   function HCI_Verify (HciReadPacket : ListNodePtr) return Integer
   is
      Buffer : DataBuffT := HciReadPacket.Elem.DataBuff;
      HCI_PCK_TYPE_OFFSET              : constant Integer :=  1;
      EVENT_PARAMETER_TOT_LEN_OFFSET   : constant Integer :=  3;
   begin

      if Buffer (HCI_PCK_TYPE_OFFSET) /= HCI_EVENT_PKT then
         return 1;  -- Incorrect type.
      end if;
      if Buffer (EVENT_PARAMETER_TOT_LEN_OFFSET) /= UInt8 (HciReadPacket.Elem.Data_Len - (1 + HCI_EVENT_HDR_SIZE)) then
         return 2; --  Wrong length (packet truncated or too long).
      end if;
      return 0;
   end HCI_Verify;

   procedure HCI_Process
   is
      HciReadPacket : ListNodePtr;
      List_Empty    : Boolean := List_Is_Empty (HciReadPktRxQueuePtr);
   begin
--      Disable_SPI_IRQ;
      --  process any pending events read */
      while List_Empty = False loop
         List_Remove_Head (HciReadPktRxQueuePtr, HciReadPacket);
--         Enable_SPI_IRQ;
         HCI_Event_CB (HciReadPacket.Elem.DataBuff);
--         Disable_SPI_IRQ;
         List_Insert_Tail (HciReadPktPoolPtr, HciReadPacket);
         List_Empty := List_Is_Empty (HciReadPktRxQueuePtr);
      end loop;
      --  Explicit call to HCI_Isr(), since it
--      HCI_Isr;
--      Enable_SPI_IRQ;
   end HCI_Process;

   function HCI_Queue_Empty return Boolean
   is
   begin
      return List_Is_Empty (HciReadPktRxQueuePtr);
   end HCI_Queue_Empty;

   procedure HCI_Isr
   is
      use HciDataPacketT;
      HciReadPacket : ListNodePtr;
      Len           : UInt16;
--      BLE           : BlueNRG_Radio   (BlueNRG_Port'Access);
   begin
      null;
--      Clear_External_Interrupt (EXTI_Line_5);
--
--      while BlueNRG_DataPresent loop
--         if not List_Is_Empty (HciReadPktPoolPtr) then
--            List_Remove_Head (HciReadPktPoolPtr, HciReadPacket);
--            Len := BLE.BlueNRG_SPI_Read_All (HciReadPacket.Elem.DataBuff);
--            if Len > 0 then
--               Logger (16#BB#);
--               Logger (UInt8 (Len and 16#ff#));
--               HciReadPacket.Elem.Data_Len := UInt8 (Len and 16#FF#);
--               if HCI_Verify (HciReadPacket) = 0 then
--                  for I in 1 .. Len loop
--                     Logger (HciReadPacket.Elem.DataBuff (Integer (I)));
--                  end loop;
--                  List_Insert_Tail (HciReadPktRxQueuePtr, HciReadPacket);
--               else
--                  List_Insert_Head (HciReadPktPoolPtr, HciReadPacket);
--               end if;
--            else
--               List_Insert_Head (HciReadPktPoolPtr, HciReadPacket);
--            end if;
--         else
--            --  HCI Read Packet Pool is empty, wait for a free packet.
--            Clear_External_Interrupt (EXTI_Line_5);
--            exit;
--         end if;
--      end loop;
   end HCI_Isr;

   procedure Hci_Write
     (Data1    : DataBuffT;
      Data2    : DataBuffT;
      N_Bytes1 : UInt8;
      N_Bytes2 : UInt8)
   is
   begin
      Logger (16#aa#);
      Logger (N_Bytes1);
      Logger (N_Bytes2);
      for I in 1 .. N_Bytes1 loop
         Logger (Data1 (Integer (I)));
      end loop;
      for I in 1 .. N_Bytes2 loop
         Logger (Data2 (Integer (I)));
      end loop;
--      Hal_Write_Serial (Data1, Data2, N_Bytes1, N_Bytes2);
   end Hci_Write;

   procedure Hci_Send_Cmd
     (Opcode : Opcode_Type;
      Plen   : UInt8;
      Param  : DataBuffT)
   is
      HeaderSize : constant Integer := Integer (HCI_HDR_SIZE + HCI_COMMAND_HDR_SIZE);
      Header     : DataBuffT;
      Hc         : Hci_Command_Hdr;
      for Hc'Address use Header (2)'Address;
      Dummy      : DataBuffT;
   begin
      Hc.Opcode := Opcode;
      Hc.Plen   := Plen;

      Header (1) := HCI_COMMAND_PKT;

      --  Osal_MemCpy(header+1, &hc, sizeof(hc));

      if Plen > 0 then
         Hci_Write (Header, Param, UInt8 (HeaderSize), Plen);
      else -- When the param is not set, pass a dummy buffer
         Hci_Write (Header, Dummy, UInt8 (HeaderSize), Plen);
      end if;

   end Hci_Send_Cmd;

   procedure Move_List
     (Dest_List : ListNodePtr;
      Src_List  : ListNodePtr)
   is
      Tmp_Node : ListNodePtr;
   begin
      while not List_Is_Empty (Src_List) loop
         List_Remove_Tail (Src_List, Tmp_Node);
         List_Insert_Head (Dest_List, Tmp_Node);
      end loop;
   end Move_List;

   procedure Free_Event_List
   is
      use HciDataPacketT;
      Pckt    : ListNodePtr;
   begin
--      Disable_SPI_IRQ;
      while List_Get_Size (HciReadPktPoolPtr) < HCI_READ_PACKET_NUM_MAX / 2 loop
         List_Remove_Head (HciReadPktRxQueuePtr, Pckt);
         List_Insert_Tail (HciReadPktPoolPtr, Pckt);
         --  Explicit call to HCI_Isr(), since it cannot be called by ISR if IRQ is kept high by
         --  BlueNRG
         HCI_Isr;
      end loop;
--      Enable_SPI_IRQ;
   end Free_Event_List;

   function Hci_Send_Req
     (R     : in out Hci_Request;
      Async : Boolean) return Integer
   is
      HciReadPacket   : ListNodePtr := null;
      HciTempQueue    : aliased ListNode;
      HciTempQueuePtr : ListNodePtr := HciTempQueue'Unchecked_Access;
      Opcode          : Opcode_Type := R.Opcode;
      Dummy           : DataBuffT;
   begin

      List_Init_Head (HciTempQueuePtr);

      Free_Event_List;
      if R.Clen > 0 then
         Hci_Send_Cmd (R.Opcode, R.Clen, R.Cparam.all);
      else
         Hci_Send_Cmd (R.Opcode, R.Clen, Dummy);
      end if;

      if Async then
         return 0;
      end if;

      loop
         loop
            exit when not HCI_Queue_Empty;
         end loop;

         --  Extract packet from HCI event queue. */
--         Disable_SPI_IRQ;
         List_Remove_Head (HciReadPktRxQueuePtr, HciReadPacket);
         declare
            Hci_Hdr    : Hci_Uart_Pckt;
            Buff       : DataBuffT := HciReadPacket.Elem.DataBuff;
            for Hci_Hdr'Address use Buff'Address;
            Event_Pckt : Hci_Event_Pckt;
            for Event_Pckt'Alignment use 1;
            for Event_Pckt'Address use Buff (1 + Integer (HCI_HDR_SIZE))'Address;
            Len        : UInt8 :=
              HciReadPacket.Elem.Data_Len - (1 + HCI_EVENT_HDR_SIZE);
            Idx        : UInt8;
         begin
            if Hci_Hdr.Pkt_Type = HCI_EVENT_PKT then
               case Event_Pckt.Evt is
                  when EVT_CMD_STATUS_CODE =>
                     declare
                        Cs : Evt_Cmd_Status;
                        for Cs'Alignment use 1;
                        for Cs'Address use
                          Buff (1 + Integer (HCI_HDR_SIZE + HCI_EVENT_HDR_SIZE))'Address;
                     begin
                        if Cs.Opcode /= Opcode then
                           goto Failed;
                        end if;
                        if R.Event /= EVT_CMD_STATUS_CODE then
                           if Cs.Status > 0 then
                              goto Failed;
                           end if;
                        else
                           if Len < R.Rlen then
                              R.Rlen := Len;
                           end if;
                           Idx := HCI_HDR_SIZE + HCI_EVENT_HDR_SIZE;
                           for I in 1 .. R.Rlen loop
                              R.Rparam (Integer (I)) :=
                                HciReadPacket.Elem.DataBuff (Integer (I + Idx));
                           end loop;
                           --  Osal_MemCpy(r->rparam, ptr, r->rlen);
                           goto Done;
                        end if;
                     end;
                  when EVT_CMD_COMPLETE_CODE =>
                     declare
                        Cc : Evt_Cmd_Complete;
                        for Cc'Address use
                          Buff (1 + Integer (HCI_HDR_SIZE + HCI_EVENT_HDR_SIZE))'Address;
                     begin
                        if Cc.Opcode /= Opcode then
                           goto Failed;
                        end if;
                        Len := Len - EVT_CMD_COMPLETE_SIZE;
                        Idx := HCI_HDR_SIZE + HCI_EVENT_HDR_SIZE + EVT_CMD_COMPLETE_SIZE;

                        if Len < R.Rlen then
                           R.Rlen := Len;
                        end if;
                        for I in 1 .. R.Rlen loop
                           R.Rparam (Integer (I)) :=
                             HciReadPacket.Elem.DataBuff (Integer (I + Idx));
                        end loop;
                        goto Done;
                     end;

                  when EVT_LE_META_EVENT_CODE =>
                     declare
                        Me : Evt_Le_Meta_Event;
                        for Me'Address use
                          Buff (1 + Integer (HCI_HDR_SIZE + HCI_EVENT_HDR_SIZE))'Address;
                     begin
                        if Me.Subevent = R.Event then
                           Len := Len - 1;
                           Idx := HCI_HDR_SIZE + HCI_EVENT_HDR_SIZE + EVT_LE_META_EVENT_SIZE;
                           if Len < R.Rlen then
                              R.Rlen := Len;
                           end if;
                           for I in 1 .. R.Rlen loop
                              R.Rparam (Integer (I)) :=
                                HciReadPacket.Elem.DataBuff (Integer (I + Idx));
                           end loop;
                           goto Done;
                        end if;
                     end;
                  when EVT_HARDWARE_ERROR_CODE =>
                     goto Failed;
                  when others =>
                     null;
               end case;
            end if;

            --  If there are no more packets to be processed, be sure there is at list one
            --  packet in the pool to process the expected event.
            --  If no free packets are available, discard the processed event and insert it
            --  into the pool.
            if List_Is_Empty (HciReadPktPoolPtr) and List_Is_Empty (HciReadPktRxQueuePtr) then
               List_Insert_Tail (HciReadPktPoolPtr, HciReadPacket);
               HciReadPacket := null;
            else
               --  Insert the packet in a different queue. These packets will be
               --  inserted back in the main queue just before exiting from send_req(), so that
               --  these events can be processed by the application.
               List_Insert_Tail (HciTempQueuePtr, HciReadPacket);
               HciReadPacket := null;
            end if;

            HCI_Isr;

--            Enable_SPI_IRQ;
         end;
      end loop;
<<Failed>>
      if HciReadPacket /= null then
         List_Insert_Head (HciReadPktPoolPtr, HciReadPacket);
      end if;
      Move_List (HciReadPktRxQueuePtr, HciTempQueuePtr);
--      Enable_SPI_IRQ;
      return -1;
<<Done>>
      --  Insert the packet back into the pool.
      List_Insert_Head (HciReadPktPoolPtr, HciReadPacket);
      Move_List (HciReadPktRxQueuePtr, HciTempQueuePtr);
--      Enable_SPI_IRQ;
      return 0;
   end Hci_Send_Req;

end Hci;
