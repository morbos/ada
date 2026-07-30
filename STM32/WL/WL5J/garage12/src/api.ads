with HAL;               use HAL;
with VL53L1X;           use VL53L1X;

package Api is
   type DoorStateT is (Undefined, Open, Closed, Cal);
   for DoorStateT use (Undefined => 0, Open => 7, Closed => 8, Cal => 9);
   function DoorState (This : in out VL53L1X_Ranging_Sensor) return DoorStateT;
end Api;
