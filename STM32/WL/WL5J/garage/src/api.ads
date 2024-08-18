with HAL;               use HAL;
package Api is
   type DoorStateT is (Undefined, Open, Closed, Cal);
   function DoorState (Rng : UInt16) return DoorStateT;
end Api;
