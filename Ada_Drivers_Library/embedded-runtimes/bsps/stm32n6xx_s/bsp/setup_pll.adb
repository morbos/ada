------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          Copyright (C) 2012-2016, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- You should have received a copy of the GNU General Public License along  --
-- with this library; see the file COPYING3. If not, see:                   --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

pragma Ada_2012; -- To work around pre-commit check?
pragma Suppress (All_Checks);

--  This initialization procedure mainly initializes the PLLs and
--  all derived clocks.

--  with Ada.Unchecked_Conversion;

--  with Interfaces.Bit_Types;       use Interfaces, Interfaces.Bit_Types;
--  with Interfaces.STM32.Flash;     use Interfaces.STM32.Flash;
--  with Interfaces.STM32.RCC;       use Interfaces.STM32.RCC;
--  with Interfaces.STM32.PWR;       use Interfaces.STM32.PWR;
--  with Interfaces.STM32.ICache;    use Interfaces.STM32.ICache;
--  with Interfaces.STM32.DCACHE;    use Interfaces.STM32.DCACHE;

--  with System.BB.Parameters;       use System.BB.Parameters;
--  with System.BB.MCU_Parameters;
--  with System.BB.Board_Parameters; use System.BB.Board_Parameters;
--  with System.STM32;               use System.STM32;

procedure Setup_Pll is
   procedure Initialize_Clocks;
   procedure Reset_Clocks;
   procedure CPU_Init;

   -----------------------
   -- Initialize_Clocks --
   -----------------------

   procedure Initialize_Clocks is
   begin
      null;
   end Initialize_Clocks;

   ------------------
   -- Reset_Clocks --
   ------------------

   procedure Reset_Clocks is
   begin
      null;
   end Reset_Clocks;

   procedure CPU_Init is
   begin
--      RCC_Periph.RCC_AHB1SMENR.ICACHESMEN := True;
--      RCC_Periph.RCC_AHB1ENR.DCACHE1EN := True;
      null;
   end CPU_Init;

begin
   CPU_Init;
   Reset_Clocks;
   Initialize_Clocks;
end Setup_Pll;
