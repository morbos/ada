with Utils;                        use Utils;

package body Api is
   function DoorState (This : in out VL53L1X_Ranging_Sensor) return DoorStateT
   is
      OpenCount   : UInt16 := 0;
      ClosedCount : UInt16 := 0;
      State       : DoorStateT := Undefined;
      Rng         : UInt16;
   begin
      loop
         Rng := Read_Range_Single_Millimeters (This);
         if Rng > 500 then
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
