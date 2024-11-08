------------------------------------------------------------------------------
--                                                                          --
--                    GNAT RUN-TIME LIBRARY COMPONENTS                      --
--                                                                          --
--       S Y S T E M . C O M P A R E _ A R R A Y _ U N S I G N E D _ 8      --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2002-2018, Free Software Foundation, Inc.         --
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

--  This package contains functions for runtime comparisons on arrays whose
--  elements are 8-bit discrete type values to be treated as unsigned.

--  pragma Compiler_Unit_Warning;

package System.Compare_Array_Unsigned_8 is

   --  Note: although the functions in this package are in a sense Pure, the
   --  package cannot be declared as Pure, since the arguments are addresses,
   --  not the data, and the result is not pure wrt the address values.

   function Compare_Array_U8
     (Left      : System.Address;
      Right     : System.Address;
      Left_Len  : Natural;
      Right_Len : Natural) return Integer;
   --  Compare the array starting at address Left of length Left_Len with the
   --  array starting at address Right of length Right_Len. The comparison is
   --  in the normal Ada semantic sense of array comparison. The result is -1,
   --  0, +1 for Left < Right, Left = Right, Left > Right respectively. This
   --  function works with 4 byte words if the operands are aligned on 4-byte
   --  boundaries and long enough.

   function Compare_Array_U8_Unaligned
     (Left      : System.Address;
      Right     : System.Address;
      Left_Len  : Natural;
      Right_Len : Natural) return Integer;
   --  Same functionality as Compare_Array_U8 but always proceeds by bytes.
   --  Used when the caller knows that the operands are unaligned, or short
   --  enough that it makes no sense to go by words.

end System.Compare_Array_Unsigned_8;
