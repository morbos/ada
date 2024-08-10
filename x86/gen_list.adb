package body Gen_List is

   procedure List_Init_Head
     (ListHead : in out ListNodePtr)
   is
   begin
      ListHead.Next := ListHead;
      ListHead.Prev := ListHead;
   end List_Init_Head;

   function List_Is_Empty
     (ListHead : ListNodePtr) return Boolean
   is
      Result  : Boolean;
   begin
      if ListHead.Next = ListHead then
         Result := True;
      else
         Result := False;
      end if;
      return Result;
   end List_Is_Empty;

   procedure List_Insert_Head
     (ListHead : ListNodePtr;
      Node     : ListNodePtr)
   is
   begin
      Node.Next      := ListHead.Next;
      Node.Prev      := ListHead;
      ListHead.Next  := Node;
      Node.Next.Prev := Node;
   end List_Insert_Head;

   procedure List_Insert_Tail
     (ListHead : ListNodePtr;
      Node     : ListNodePtr)
   is
   begin
      Node.Next      := ListHead;
      Node.Prev      := ListHead.Prev;
      ListHead.Prev  := Node;
      Node.Prev.Next := Node;
   end List_Insert_Tail;

   procedure List_Remove_Node
     (Node : in out ListNodePtr)
   is
   begin
      Node.Prev.Next := Node.Next;
      Node.Next.Prev := Node.Prev;
   end List_Remove_Node;

   procedure List_Remove_Head
     (ListHead : in out ListNodePtr;
      Node     : in out ListNodePtr)
   is
      Temp    : ListNodePtr;
   begin
      Node          := ListHead.Next;
      Temp          := Node.Next;
      Temp.Prev     := ListHead;
      ListHead.Next := Temp;
      Node.Next     := null;
      Node.Prev     := null;
   end List_Remove_Head;

   procedure List_Remove_Tail
     (ListHead : ListNodePtr;
      Node     : in out ListNodePtr)
   is
      Temp    : ListNodePtr;
   begin
      Node          := ListHead.Prev;
      Temp          := Node.Prev;
      Temp.Next     := ListHead;
      ListHead.Prev := Temp;
      Node.Next     := null;
      Node.Prev     := null;
   end List_Remove_Tail;

   procedure List_Insert_Node_After
     (Node     : in out ListNodePtr;
      Ref_Node : in out ListNodePtr)
   is
   begin
      Node.Next      := Ref_Node.Next;
      Node.Prev      := Ref_Node;
      Ref_Node.Next  := Node;
      Node.Next.Prev := Node;
   end List_Insert_Node_After;

   procedure List_Insert_Node_Before
     (Node     : in out ListNodePtr;
      Ref_Node : in out ListNodePtr)
   is
   begin
      Node.Next      := Ref_Node;
      Node.Prev      := Ref_Node.Prev;
      Ref_Node.Prev  := Node;
      Node.Prev.Next := Node;
   end List_Insert_Node_Before;

   function List_Get_Size
     (ListHead : ListNodePtr) return Natural
   is
      Size    : Natural := 0;
      Temp    : ListNodePtr;
   begin
      Temp := ListHead.Next;
      while Temp /= ListHead loop
         Size := Size + 1;
         Temp := Temp.Next;
      end loop;
      return Size;
   end List_Get_Size;

   procedure List_Get_Next_Node
     (Ref_Node : ListNodePtr;
      Node     : out ListNodePtr)
   is
   begin
      Node    := Ref_Node.Next;
   end List_Get_Next_Node;

   procedure List_Get_Prev_Node
     (Ref_Node : ListNodePtr;
      Node     : out ListNodePtr)
   is
   begin
      Node    := Ref_Node.Prev;
   end List_Get_Prev_Node;

end Gen_List;
