------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--           S Y S T E M . S T R I N G _ O P S _ C O N C A T _ 3            --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2018, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  NOTE: This package is obsolescent. It is no longer used by the compiler
--  which now generates concatenation inline. It is retained only because
--  it may be used during bootstrapping using old versions of the compiler.

--  pragma Compiler_Unit_Warning;

package body System.String_Ops_Concat_3 is

   ------------------
   -- Str_Concat_3 --
   ------------------

   function Str_Concat_3 (S1, S2, S3 : String) return String is
   begin
      if S1'Length = 0 then
         return S2 & S3;

      else
         declare
            L12 : constant Natural := S1'Length + S2'Length;
            L13 : constant Natural := L12 + S3'Length;
            R : String (S1'First .. S1'First + L13 - 1);

         begin
            R (S1'First       .. S1'Last)            := S1;
            R (S1'Last + 1    .. S1'First + L12 - 1) := S2;
            R (S1'First + L12 .. R'Last)             := S3;
            return R;
         end;
      end if;
   end Str_Concat_3;

end System.String_Ops_Concat_3;
