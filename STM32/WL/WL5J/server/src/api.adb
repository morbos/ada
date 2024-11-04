with Utils;                        use Utils;

package body Api is
   function DoorState (Rng : UInt16) return DoorStateT
   is
      OpenCount : UInt16 := 0;
      ClosedCount : UInt16 := 0;
      State : DoorStateT := Undefined;
   begin
      loop
         if Rng = 4000 then
            State := Cal;
            exit;
         elsif Rng > 500 then
            OpenCount := OpenCount + 1;
            ClosedCount := 0;
            State := Open;
         else
            ClosedCount := ClosedCount + 1;
            OpenCount := 0;
            State := Closed;
         end if;
         if (OpenCount = 5) or (ClosedCount = 5) then
            exit;
         end if;
         My_Delay (1_000);
      end loop;
      return State;
   end DoorState;
end Api;
