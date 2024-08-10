with HAL;             use HAL;

--         U MHRAND_Init
--         U MHRAND_Prand
--         U MHRAND_Trand
--         U MHRAND_TrandNoBlk

package MH_Lib is

   procedure MH_Init;

   function MH_PRand return UInt32;

end MH_Lib;
