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

with Interfaces.Bit_Types;       use Interfaces, Interfaces.Bit_Types;
with Interfaces.STM32.Flash;     use Interfaces.STM32.Flash;
with Interfaces.STM32.PWR;       use Interfaces.STM32.PWR;
with Interfaces.STM32.RCC;       use Interfaces.STM32.RCC;

--  with System.BB.Parameters;       use System.BB.Parameters;
with System.BB.MCU_Parameters;
with System.BB.Board_Parameters; use System.BB.Board_Parameters;
with System.STM32;               use System.STM32;

procedure Setup_Pll is

   procedure Initialize_Clocks;
   procedure Reset_Clocks;

   ------------------------------
   -- Clock Tree Configuration --
   ------------------------------
   MSI_Enabled     : constant Boolean := True;  -- use med-speed int. clock
   HSE_Enabled     : constant Boolean := False;  -- use high-speed ext. clock
   HSI_Enabled     : constant Boolean := False;  -- use high-speed int. clock
--  HSE_Bypass      : constant Boolean := False;
--  don't bypass ext. resonator
   LSI_Enabled     : constant Boolean := False;  -- use low-speed internal clk
   RNG_Enabled     : constant Boolean := True;
   Activate_PLL       : constant Boolean := True;
   Activate_Overdrive : constant Boolean := False;
--   Activate_PLLI2S    : constant Boolean := False;

   pragma Compile_Time_Error (not (if Activate_PLL then MSI_Enabled),
                              "PLL only supported with external clock");

   -----------------------
   -- Initialize_Clocks --
   -----------------------

   procedure Initialize_Clocks
   is
      -------------------------------
      -- Compute Clock Frequencies --
      -------------------------------

      PLLM_Value  : constant UInt3  := 0;
      PLLN_Value  : constant UInt7 := 24;
      PLLP        : constant UInt5 := 1; --  check this
      PLLQ        : constant UInt3 := 1;
--      SYSCLK      : constant Integer := HSICLK;
--      HCLK        : constant Integer :=
--                      (if not AHB_PRE.Enabled
--                       then SYSCLK
--                       else
--                         (case AHB_PRE.Value is
--                             when DIV2   => SYSCLK / 2,
--                             when DIV4   => SYSCLK / 4,
--                             when DIV8   => SYSCLK / 8,
--                             when DIV16  => SYSCLK / 16,
--                             when DIV64  => SYSCLK / 64,
--                             when DIV128 => SYSCLK / 128,
--                             when DIV256 => SYSCLK / 256,
--                             when DIV512 => SYSCLK / 512));
--      PCLK1       : constant Integer :=
--                      (if not APB1_PRE.Enabled
--                       then HCLK
--                       else
--                         (case APB1_PRE.Value is
--                             when DIV2  => HCLK / 2,
--                             when DIV4  => HCLK / 4,
--                             when DIV8  => HCLK / 8,
--                             when DIV16 => HCLK / 16));
--      PCLK2       : constant Integer :=
--                      (if not APB2_PRE.Enabled
--                       then HCLK
--                       else
--                         (case APB2_PRE.Value is
--                             when DIV2  => HCLK / 2,
--                             when DIV4  => HCLK / 4,
--                             when DIV8  => HCLK / 8,
--                             when DIV16 => HCLK / 16));

--      function To_AHB is new Ada.Unchecked_Conversion
--        (AHB_Prescaler, UInt4);
--      function To_APB is new Ada.Unchecked_Conversion
--        (APB_Prescaler, UInt3);
   begin

      --  Check configuration
--      pragma Compile_Time_Error
--        (PLLVC0 not in PLLVC0_Range or else PLLCLKOUT not in PLLOUT_Range,
--           "Invalid clock configuration");

--      pragma Compile_Time_Error
--        (SYSCLK /= Clock_Frequency,
--           "Cannot generate requested clock");

--      pragma Compile_Time_Error
--        (HCLK not in HCLK_Range
--           or else PCLK1 not in PCLK1_Range
--           or else PCLK2 not in PCLK2_Range,
--           "Invalid AHB/APB prescalers configuration");

      --  Configure flash
      --  Must be done before increasing the frequency, otherwise the CPU
      --  won't be able to fetch new instructions.
      FLASH_Periph.ACR.ICEN := False;
      FLASH_Periph.ACR.DCEN := False;
      FLASH_Periph.ACR.ICRST := True;
      FLASH_Periph.ACR.DCRST := True;
      FLASH_Periph.ACR :=
        (LATENCY => FLASH_Latency,
         ICEN    => True,
         DCEN    => True,
         PRFTEN  => True,
         others  => <>);

      --  PWR clock enable

--      RCC_Periph.APB1ENR1.PWREN := 1;

      --  Reset the power interface
--      RCC_Periph.APB1RSTR1.PWRRST := 1;
--      RCC_Periph.APB1RSTR1.PWRRST := 0;

      --  PWR initialization
      --  Select higher supply power for stable operation at max. freq.
      --  See table "General operating conditions" of the STM32 datasheets
      --  to obtain the maximal operating frequency depending on the power
      --  scaling mode and the over-drive mode

      System.BB.MCU_Parameters.PWR_Initialize;

      if HSI_Enabled then
         --  Setup internal clock and wait for HSI stabilisation.

         RCC_Periph.CR.HSION := True;

         loop
            exit when RCC_Periph.CR.HSIRDY;
         end loop;

      end if;

      if HSE_Enabled then
         --  Configure high-speed external clock, if enabled
         RCC_Periph.CR.HSEON := True;
--         RCC_Periph.CR.HSEBYP := (if HSE_Bypass then True else False);

         loop
            exit when RCC_Periph.CR.HSERDY = True;
         end loop;
      end if;

      --  Configure low-speed internal clock if enabled

      if LSI_Enabled then
         RCC_Periph.CSR.LSION := True;

         loop
            exit when RCC_Periph.CSR.LSIRDY = True;
         end loop;

      end if;

      --  Configure low-speed internal clock if enabled

      if MSI_Enabled then
         PWR_Periph.CR1.DBP := True;  --  This allows writes too vvvvvv
         --  To ENA MSIPLL we need to get LSE ready
         RCC_Periph.BDCR.RTCEN := True;
         RCC_Periph.BDCR.RTCSEL := 1;
         RCC_Periph.BDCR.LSEON := True;
         loop
            exit when RCC_Periph.BDCR.LSERDY = True;
         end loop;

         RCC_Periph.CR.MSIRANGE := 16#6#;  --  ~4Mhz
         RCC_Periph.CR.MSIRGSEL := True;

         RCC_Periph.CR.MSION := True;

         loop
            exit when RCC_Periph.CR.MSIRDY = True;
         end loop;

--         RCC_Periph.CR.MSIPLLEN := True;

      end if;

      if RNG_Enabled then
         --  vvvvv MSI, need a select for 4 choices
         RCC_Periph.CCIPR.RNGSEL := 3;
      end if;
      --  Activate PLL if enabled
      if Activate_PLL then
         --  Disable the main PLL before configuring it
         RCC_Periph.CR.PLLON := False;

         --  Configure the PLL clock source, multiplication and division
         --  factors
         RCC_Periph.PLLCFGR :=
              (PLLM   => PLLM_Value,
               PLLN   => PLLN_Value,
               PLLP   => PLLP,
               PLLR   => 1, -- fix this should be a computation
               PLLREN => True,
               PLLQ   => PLLQ,
               PLLQEN => True,
               PLLSRC => PLL_Source'Enum_Rep (PLL_SRC_MSI), --  Fix this.
               others => <>);

         RCC_Periph.CR.PLLON := True;

         loop
            exit when RCC_Periph.CR.PLLRDY;
         end loop;
      end if;

--      RCC_Periph.CCIPR.CLK48SEL := 3;

      --  Enable PLLSAI1
--      RCC_Periph.PLLSAI1CFGR.PLLSAI1N := 16#2b#; --  48mhz
--      RCC_Periph.PLLSAI1CFGR.PLLSAI1PEN := True;
--
--      RCC_Periph.CR.PLLSAI1ON := True;
--      loop
--         exit when RCC_Periph.CR.PLLSAI1RDY;
--      end loop;

      --  Configure OverDrive mode
      if Activate_Overdrive then
         System.BB.MCU_Parameters.PWR_Overdrive_Enable;
      end if;

      --  Configure derived clocks

      RCC_Periph.CFGR :=
        (MCOPRE => 4,
         MCOSEL => 1,
         PPRE2F => True,
         PPRE1F => True,
         HPREF => True,
         others => <>);

      if Activate_PLL then
         RCC_Periph.CFGR.SW := SYSCLK_Source'Enum_Rep (SYSCLK_SRC_PLL);
         loop
            exit when RCC_Periph.CFGR.SWS =
              SYSCLK_Source'Enum_Rep (SYSCLK_SRC_PLL);
         end loop;
      end if;

   end Initialize_Clocks;

   ------------------
   -- Reset_Clocks --
   ------------------

   procedure Reset_Clocks is
   begin
      null;
   end Reset_Clocks;

begin
      Reset_Clocks;
      Initialize_Clocks;
end Setup_Pll;
