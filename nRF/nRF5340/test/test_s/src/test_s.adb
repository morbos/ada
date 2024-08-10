with Ada.Real_Time; use Ada.Real_Time;
with CMSIS_V8;      use CMSIS_V8;
with CMSIS_V8.SAU;  use CMSIS_V8.SAU;
with NS_Api;        use NS_Api;
with Stask;         use Stask;

procedure Test_S is
   procedure S_To_NS;
   pragma Import (C, S_To_NS, "s_to_ns");
   procedure Init_IDAU;
   pragma Import (C, Init_IDAU, "init_idau");
   procedure Init_Led;
   pragma Import (C, Init_Led, "init_led");
begin
   Init_Led;
   Init_IDAU;
   S_To_NS; --  S_To_NS will not return.
--   loop
--      null;
--   end loop;
end Test_S;
