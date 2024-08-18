package body Api is
   function DoorState (Rng : UInt16) return DoorStateT
   is
   begin
      if Rng = 4000 then
         return Cal;
      elsif Rng > 500 then
         return Open;
      else
         return Closed;
      end if;
   end DoorState;
end Api;
