with Main;     use Main;

with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);

procedure Server_WB55x
is
begin
   Board := Server_Board;
   Initialize;
   Process;
end Server_WB55x;
