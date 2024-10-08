with Log;      use Log;

package body Memory is

--   package BleCmdBufferT is new Gen_List (BleCmdBuffer, 1);
--   BleCmdPool            : aliased BleCmdBufferT.ListNode
--     with Volatile, Address => System'To_Address (16#2003_0020#);
--   pragma Import (Ada, BleCmdPool);
--   BleCmdPoolPtr         : BleCmdBufferT.ListNodePtr := BleCmdPool'Access;
--
--   package EvtQueueBufferT is new Gen_List (EvtQueueBuffer, 1);
--   EvtQueuePool            : aliased EvtQueueBufferT.ListNode
--     with Volatile, Address => System'To_Address (16#2003_0a0c#);
--   pragma Import (Ada, EvtQueuePool);
--   EvtQueuePoolPtr         : EvtQueueBufferT.ListNodePtr := EvtQueuePool'Access;

   TL_DevInfoTable : aliased MB_DeviceInfoTable_T
     with Volatile, Address => System'To_Address (16#2003_012c#);

   TL_Ble_Table : aliased MB_Ble_Table_T
     with Volatile, Address => System'To_Address (16#2003_014c#);

   TL_ThreadTable : aliased MB_ThreadTable_T
     with Volatile, Address => System'To_Address (16#2003_015c#);

   TL_SysTable : aliased MB_SysTable_T
     with Volatile, Address => System'To_Address (16#2003_0168#);

   TL_MemManagerTable : aliased MB_MemManagerTable_T
     with Volatile, Address => System'To_Address (16#2003_0170#);

   TL_TracesTable : aliased MB_TracesTable_T
     with Volatile, Address => System'To_Address (16#2003_018c#);

   TL_Mac_802_15_4 : aliased MB_Mac_802_15_4_T
     with Volatile, Address => System'To_Address (16#2003_0190#);

   TL_SysQueue : aliased MB_SysQueue_T
     with Volatile, Address => System'To_Address (16#2003_0a24#);

   MapT : TL_RefTable := (
                          Device_Info_Table  => TL_DevInfoTable'Access,
                          Ble_Table          => TL_Ble_Table'Access,
                          Thread_Table       => TL_ThreadTable'Access,
                          Sys_Table          => TL_SysTable'Access,
                          Mem_Manager_Table  => TL_MemManagerTable'Access,
                          Traces_Table       => TL_TracesTable'Access,
                          Mac_802_15_4_Table => TL_Mac_802_15_4'Access,
                          Zigbee_Table       => null)
     with Volatile, Address => System'To_Address (16#2003_0000#);

   procedure Initialize_Memory
   is
   begin
      BleCmdBufferT.List_Init_Head (BleCmdPoolPtr);
      --  Initialize the queue of free hci data packets
--      BleCmdBufferT.List_Insert_Tail (BleCmdPoolPtr, BleCmdPoolBuffer (1)'Access);

      EvtQueueBufferT.List_Init_Head (EvtQueuePoolPtr);

      EvtQueueBufferT.List_Init_Head (HostTxQueuePoolPtr);

      TL_DevInfoTable.SafeBootInfoTable.Version := 0;
      TL_DevInfoTable.FusInfoTable := (0, 0, 0);
      TL_DevInfoTable.WirelessFwInfoTable := (Version    => 16#00030041#,
                                              MemorySize => 16#160c0027#,
                                              InfoStack  => 0,
                                              Reserved   => 0);

      TL_MemManagerTable.Spare_Ble_Buffer       := 16#200302b8#;
      TL_MemManagerTable.Spare_Sys_Buffer       := 16#200303c4#;
      TL_MemManagerTable.Blepool                := 16#200304d0#;
      TL_MemManagerTable.Blepoolsize            := 16#0000053c#;
      TL_MemManagerTable.Pevt_Free_Buffer_Queue := 16#2003019c#;
      TL_MemManagerTable.Traces_Evt_Pool        := 16#00000000#;
      TL_MemManagerTable.Tracespoolsize         := 16#00000000#;

      TL_Ble_Table.Pcmd_Buffer          := 16#20030020#;
      TL_Ble_Table.Pcs_Buffer           := 16#20030a14#;
      TL_Ble_Table.Pevt_Queue           := 16#20030a0c#;
      TL_Ble_Table.Phci_Acl_Data_Buffer := 16#08000c13#;

      TL_SysTable.Pcmd_Buffer := 16#200301ac#;
      TL_SysTable.Sys_Queue   := 16#20030a24#;

      TL_SysQueue.Next        := 16#20030a24#;
      TL_SysQueue.Prev        := 16#20030a24#;

      Initialize_Log;

   end Initialize_Memory;

end Memory;
