with HAL;             use HAL;

package Bluenrg_Aci is

   type Evt_Blue_Aci is record
      Ecode : UInt16;
   end record
     with Pack, Alignment => 1;

   EVT_BLUE_ACI_SIZE : constant UInt8 := 2;

end Bluenrg_Aci;
