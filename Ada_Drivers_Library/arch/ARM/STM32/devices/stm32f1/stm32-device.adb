------------------------------------------------------------------------------
--                                                                          --
--                     Copyright (C) 2015-2016, AdaCore                     --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--     3. Neither the name of the copyright holder nor the names of its     --
--        contributors may be used to endorse or promote products derived   --
--        from this software without specific prior written permission.     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
------------------------------------------------------------------------------

with System; use System;
pragma Warnings (Off, "* is an internal GNAT unit");
with System.BB.Parameters;
pragma Warnings (On, "* is an internal GNAT unit");

with STM32_SVD.RCC; use STM32_SVD.RCC;

package body STM32.Device is

   HSE_VALUE : constant := System.BB.Parameters.HSE_Clock;
   --  External oscillator in Hz

   HSI_VALUE : constant := 16_000_000;
   --  Internal oscillator in Hz

   HPRE_Presc_Table : constant array (UInt4) of UInt32 :=
     (1, 1, 1, 1, 1, 1, 1, 1, 2, 4, 8, 16, 64, 128, 256, 512);

   PPRE_Presc_Table : constant array (UInt3) of UInt32 :=
     (1, 1, 1, 1, 2, 4, 8, 16);

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out GPIO_Port) is
   begin
      if This'Address = GPIOA_Base then
         RCC_Periph.APB2ENR.IOPAEN := True;
      elsif This'Address = GPIOB_Base then
         RCC_Periph.APB2ENR.IOPBEN := True;
      elsif This'Address = GPIOC_Base then
         RCC_Periph.APB2ENR.IOPCEN := True;
      elsif This'Address = GPIOD_Base then
         RCC_Periph.APB2ENR.IOPDEN := True;
      elsif This'Address = GPIOE_Base then
         RCC_Periph.APB2ENR.IOPEEN := True;
      elsif This'Address = GPIOF_Base then
         RCC_Periph.APB2ENR.IOPFEN := True;
      elsif This'Address = GPIOG_Base then
         RCC_Periph.APB2ENR.IOPGEN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   procedure Disable_Clock (This : aliased in out GPIO_Port) is
   begin
      if This'Address = GPIOA_Base then
         RCC_Periph.APB2ENR.IOPAEN := False;
      elsif This'Address = GPIOB_Base then
         RCC_Periph.APB2ENR.IOPBEN := False;
      elsif This'Address = GPIOC_Base then
         RCC_Periph.APB2ENR.IOPCEN := False;
      elsif This'Address = GPIOD_Base then
         RCC_Periph.APB2ENR.IOPDEN := False;
      elsif This'Address = GPIOE_Base then
         RCC_Periph.APB2ENR.IOPEEN := False;
      elsif This'Address = GPIOF_Base then
         RCC_Periph.APB2ENR.IOPFEN := False;
      elsif This'Address = GPIOG_Base then
         RCC_Periph.APB2ENR.IOPGEN := False;
      else
         raise Unknown_Device;
      end if;
   end Disable_Clock;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (Point : GPIO_Point)
   is
   begin
      Enable_Clock (Point.Periph.all);
   end Enable_Clock;

   procedure Disable_Clock (Point : GPIO_Point)
   is
   begin
      Disable_Clock (Point.Periph.all);
   end Disable_Clock;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (Points : GPIO_Points)
   is
   begin
      for Point of Points loop
         Enable_Clock (Point.Periph.all);
      end loop;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : aliased in out GPIO_Port) is
   begin
      if This'Address = GPIOA_Base then
         RCC_Periph.APB2RSTR.IOPARST := True;
         RCC_Periph.APB2RSTR.IOPARST := False;
      elsif This'Address = GPIOB_Base then
         RCC_Periph.APB2RSTR.IOPBRST := True;
         RCC_Periph.APB2RSTR.IOPBRST := False;
      elsif This'Address = GPIOC_Base then
         RCC_Periph.APB2RSTR.IOPCRST := True;
         RCC_Periph.APB2RSTR.IOPCRST := False;
      elsif This'Address = GPIOD_Base then
         RCC_Periph.APB2RSTR.IOPDRST := True;
         RCC_Periph.APB2RSTR.IOPDRST := False;
      elsif This'Address = GPIOE_Base then
         RCC_Periph.APB2RSTR.IOPERST := True;
         RCC_Periph.APB2RSTR.IOPERST := False;
      elsif This'Address = GPIOF_Base then
         RCC_Periph.APB2RSTR.IOPFRST := True;
         RCC_Periph.APB2RSTR.IOPFRST := False;
      elsif This'Address = GPIOG_Base then
         RCC_Periph.APB2RSTR.IOPGRST := True;
         RCC_Periph.APB2RSTR.IOPGRST := False;
      else
         raise Unknown_Device;
      end if;
   end Reset;

   -----------
   -- Reset --
   -----------

   procedure Reset (Point : GPIO_Point) is
   begin
      Reset (Point.Periph.all);
   end Reset;

   -----------
   -- Reset --
   -----------

   procedure Reset (Points : GPIO_Points)
   is
      Do_Reset : Boolean;
   begin
      for J in Points'Range loop
         Do_Reset := True;
         for K in Points'First .. J - 1 loop
            if Points (K).Periph = Points (J).Periph then
               Do_Reset := False;

               exit;
            end if;
         end loop;

         if Do_Reset then
            Reset (Points (J).Periph.all);
         end if;
      end loop;
   end Reset;

   ------------------------------
   -- GPIO_Port_Representation --
   ------------------------------

   function GPIO_Port_Representation (Port : GPIO_Port) return UInt4 is
   begin
--        TODO: rather ugly to have this board-specific range here
      if Port'Address = GPIOA_Base then
         return 0;
      elsif Port'Address = GPIOB_Base then
         return 1;
      elsif Port'Address = GPIOC_Base then
         return 2;
      elsif Port'Address = GPIOD_Base then
         return 3;
      elsif Port'Address = GPIOE_Base then
         return 4;
      elsif Port'Address = GPIOF_Base then
         return 5;
      elsif Port'Address = GPIOG_Base then
         return 6;
      else
         raise Program_Error;
      end if;
   end GPIO_Port_Representation;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out Analog_To_Digital_Converter)
   is
   begin
      if This'Address = ADC1_Base then
         RCC_Periph.APB2ENR.ADC1EN := True;
      elsif This'Address = ADC2_Base then
         RCC_Periph.APB2ENR.ADC2EN := True;
      elsif This'Address = ADC3_Base then
         RCC_Periph.APB2ENR.ADC3EN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   -------------------------
   -- Reset_All_ADC_Units --
   -------------------------

   procedure Reset_All_ADC_Units is
   begin
      RCC_Periph.APB2RSTR.ADC1RST := True;
      RCC_Periph.APB2RSTR.ADC1RST := False;
      RCC_Periph.APB2RSTR.ADC2RST := True;
      RCC_Periph.APB2RSTR.ADC2RST := False;
   end Reset_All_ADC_Units;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out Digital_To_Analog_Converter)
   is
      pragma Unreferenced (This);
   begin
      RCC_Periph.APB1ENR.DACEN := True;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : aliased in out Digital_To_Analog_Converter) is
      pragma Unreferenced (This);
   begin
      RCC_Periph.APB1RSTR.DACRST := True;
      RCC_Periph.APB1RSTR.DACRST := False;
   end Reset;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out USART) is
   begin
      if This.Periph.all'Address = USART1_Base then
         RCC_Periph.APB2ENR.USART1EN := True;
      elsif This.Periph.all'Address = USART2_Base then
         RCC_Periph.APB1ENR.USART2EN := True;
      elsif This.Periph.all'Address = USART3_Base then
         RCC_Periph.APB1ENR.USART3EN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : aliased in out USART) is
   begin
      if This.Periph.all'Address = USART1_Base then
         RCC_Periph.APB2RSTR.USART1RST := True;
         RCC_Periph.APB2RSTR.USART1RST := False;
      elsif This.Periph.all'Address = USART2_Base then
         RCC_Periph.APB1RSTR.USART2RST := True;
         RCC_Periph.APB1RSTR.USART2RST := False;
      elsif This.Periph.all'Address = USART3_Base then
         RCC_Periph.APB1RSTR.USART3RST := True;
         RCC_Periph.APB1RSTR.USART3RST := False;
      else
         raise Unknown_Device;
      end if;
   end Reset;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out DMA_Controller) is
   begin
      if This'Address = STM32_SVD.DMA1_Base then
         RCC_Periph.AHBENR.DMA1EN := True;
--      elsif This'Address = STM32_SVD.DMA2_Base then  Bluepill has only the 1 DMA ctrlr
--         RCC_Periph.AHBENR.DMA2EN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : aliased in out DMA_Controller) is
   begin
      --  Doesn't seem to be a RST for DMA on the F103...
--      if This'Address = STM32_SVD.DMA1_Base then
--      RCC_Periph.AHBRSTR.DMA1RST := True;
--      RCC_Periph.AHBRSTR.DMA1RST := False;
--   elsif This'Address = STM32_SVD.DMA2_Base then
--      RCC_Periph.AHBRSTR.DMA2RST := True;
--      RCC_Periph.AHBRSTR.DMA2RST := False;
--   else
--      raise Unknown_Device;
--   end if;
      null;
   end Reset;

   ----------------
   -- As_Port_Id --
   ----------------

   function As_Port_Id (Port : I2C_Port) return I2C_Port_Id is
   begin
      if Port.Periph.all'Address = I2C1_Base then
         return I2C_Id_1;
      elsif Port.Periph.all'Address = I2C2_Base then
         return I2C_Id_2;
      else
         raise Unknown_Device;
      end if;
   end As_Port_Id;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased I2C_Port) is
   begin
      Enable_Clock (As_Port_Id (This));
   end Enable_Clock;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : I2C_Port_Id) is
   begin
      case This is
         when I2C_Id_1 =>
            RCC_Periph.APB1ENR.I2C1EN := True;
         when I2C_Id_2 =>
            RCC_Periph.APB1ENR.I2C2EN := True;
      end case;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : I2C_Port) is
   begin
      Reset (As_Port_Id (This));
   end Reset;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : I2C_Port_Id) is
   begin
      case This is
         when I2C_Id_1 =>
            RCC_Periph.APB1RSTR.I2C1RST := True;
            RCC_Periph.APB1RSTR.I2C1RST := False;
         when I2C_Id_2 =>
            RCC_Periph.APB1RSTR.I2C2RST := True;
            RCC_Periph.APB1RSTR.I2C2RST := False;
      end case;
   end Reset;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : SPI_Port) is
   begin
      if This.Periph.all'Address = SPI1_Base then
         RCC_Periph.APB2ENR.SPI1EN := True;
      elsif This.Periph.all'Address = SPI2_Base then
         RCC_Periph.APB1ENR.SPI2EN := True;
      elsif This.Periph.all'Address = SPI3_Base then
         RCC_Periph.APB1ENR.SPI3EN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : in out SPI_Port) is
   begin
      if This.Periph.all'Address = SPI1_Base then
         RCC_Periph.APB2RSTR.SPI1RST := True;
         RCC_Periph.APB2RSTR.SPI1RST := False;
      elsif This.Periph.all'Address = SPI2_Base then
         RCC_Periph.APB1RSTR.SPI2RST := True;
         RCC_Periph.APB1RSTR.SPI2RST := False;
      elsif This.Periph.all'Address = SPI3_Base then
         RCC_Periph.APB1RSTR.SPI3RST := True;
         RCC_Periph.APB1RSTR.SPI3RST := False;
      else
         raise Unknown_Device;
      end if;
   end Reset;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : I2S_Port) is
   begin
      if This.Periph.all'Address = SPI1_Base then
         RCC_Periph.APB2ENR.SPI1EN := True;
      elsif This.Periph.all'Address = SPI2_Base then
         RCC_Periph.APB1ENR.SPI2EN := True;
      elsif This.Periph.all'Address = SPI3_Base then
         RCC_Periph.APB1ENR.SPI3EN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : in out I2S_Port) is
   begin
      if This.Periph.all'Address = SPI1_Base then
         RCC_Periph.APB2RSTR.SPI1RST := True;
         RCC_Periph.APB2RSTR.SPI1RST := False;
      elsif This.Periph.all'Address = SPI2_Base then
         RCC_Periph.APB1RSTR.SPI2RST := True;
         RCC_Periph.APB1RSTR.SPI2RST := False;
      elsif This.Periph.all'Address = SPI3_Base then
         RCC_Periph.APB1RSTR.SPI3RST := True;
         RCC_Periph.APB1RSTR.SPI3RST := False;
      else
         raise Unknown_Device;
      end if;
   end Reset;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : in out Timer) is
   begin
      if This'Address = TIM1_Base then
         RCC_Periph.APB2ENR.TIM1EN := True;
      elsif This'Address = TIM2_Base then
         RCC_Periph.APB1ENR.TIM2EN := True;
      elsif This'Address = TIM3_Base then
         RCC_Periph.APB1ENR.TIM3EN := True;
      elsif This'Address = TIM4_Base then
         RCC_Periph.APB1ENR.TIM4EN := True;
      elsif This'Address = TIM5_Base then
         RCC_Periph.APB1ENR.TIM5EN := True;
      elsif This'Address = TIM6_Base then
         RCC_Periph.APB1ENR.TIM6EN := True;
      elsif This'Address = TIM7_Base then
         RCC_Periph.APB1ENR.TIM7EN := True;
      elsif This'Address = TIM8_Base then
         RCC_Periph.APB2ENR.TIM8EN := True;
      elsif This'Address = TIM9_Base then
         RCC_Periph.APB2ENR.TIM9EN := True;
      elsif This'Address = TIM10_Base then
         RCC_Periph.APB2ENR.TIM10EN := True;
      elsif This'Address = TIM11_Base then
         RCC_Periph.APB2ENR.TIM11EN := True;
      elsif This'Address = TIM12_Base then
         RCC_Periph.APB1ENR.TIM12EN := True;
      elsif This'Address = TIM13_Base then
         RCC_Periph.APB1ENR.TIM13EN := True;
      elsif This'Address = TIM14_Base then
         RCC_Periph.APB1ENR.TIM14EN := True;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : in out Timer) is
   begin
      if This'Address = TIM1_Base then
         RCC_Periph.APB2RSTR.TIM1RST := True;
         RCC_Periph.APB2RSTR.TIM1RST := False;
      elsif This'Address = TIM2_Base then
         RCC_Periph.APB1RSTR.TIM2RST := True;
         RCC_Periph.APB1RSTR.TIM2RST := False;
      elsif This'Address = TIM3_Base then
         RCC_Periph.APB1RSTR.TIM3RST := True;
         RCC_Periph.APB1RSTR.TIM3RST := False;
      elsif This'Address = TIM4_Base then
         RCC_Periph.APB1RSTR.TIM4RST := True;
         RCC_Periph.APB1RSTR.TIM4RST := False;
      elsif This'Address = TIM5_Base then
         RCC_Periph.APB1RSTR.TIM5RST := True;
         RCC_Periph.APB1RSTR.TIM5RST := False;
      elsif This'Address = TIM6_Base then
         RCC_Periph.APB1RSTR.TIM6RST := True;
         RCC_Periph.APB1RSTR.TIM6RST := False;
      elsif This'Address = TIM7_Base then
         RCC_Periph.APB1RSTR.TIM7RST := True;
         RCC_Periph.APB1RSTR.TIM7RST := False;
      elsif This'Address = TIM8_Base then
         RCC_Periph.APB2RSTR.TIM8RST := True;
         RCC_Periph.APB2RSTR.TIM8RST := False;
      elsif This'Address = TIM9_Base then
         RCC_Periph.APB2RSTR.TIM9RST := True;
         RCC_Periph.APB2RSTR.TIM9RST := False;
      elsif This'Address = TIM10_Base then
         RCC_Periph.APB2RSTR.TIM10RST := True;
         RCC_Periph.APB2RSTR.TIM10RST := False;
      elsif This'Address = TIM11_Base then
         RCC_Periph.APB2RSTR.TIM11RST := True;
         RCC_Periph.APB2RSTR.TIM11RST := False;
      elsif This'Address = TIM12_Base then
         RCC_Periph.APB1RSTR.TIM12RST := True;
         RCC_Periph.APB1RSTR.TIM12RST := False;
      elsif This'Address = TIM13_Base then
         RCC_Periph.APB1RSTR.TIM13RST := True;
         RCC_Periph.APB1RSTR.TIM13RST := False;
      elsif This'Address = TIM14_Base then
         RCC_Periph.APB1RSTR.TIM14RST := True;
         RCC_Periph.APB1RSTR.TIM14RST := False;
      else
         raise Unknown_Device;
      end if;
   end Reset;

   ------------------------------
   -- System_Clock_Frequencies --
   ------------------------------

   function System_Clock_Frequencies return RCC_System_Clocks
   is
      Source       : constant UInt2 := RCC_Periph.CFGR.SWS;
      Result       : RCC_System_Clocks;
   begin
      case Source is
         when 0 =>
            --  HSI as source
            Result.SYSCLK := HSI_VALUE;
         when 1 =>
            --  HSE as source
            Result.SYSCLK := HSE_VALUE;
         when 2 =>
            --  PLL as source
            declare
               HSE_Source : constant Boolean := RCC_Periph.CFGR.PLLSRC;
               Xtpre      : constant Boolean := RCC_Periph.CFGR.PLLXTPRE;
               PllMul     : constant UInt4   := RCC_Periph.CFGR.PLLMUL;
               Pllvco     : UInt32;
               Mul        : UInt32;
            begin
               if not HSE_Source then
                  Pllvco := HSI_VALUE / 2;
               else
                  Pllvco := HSE_VALUE;
                  if Xtpre then
                     Pllvco := Pllvco / 2;
                  end if;
               end if;

               if PllMul < 14 then
                  Mul := UInt32 (PllMul) + 2;
               else
                  Mul := 16;
               end if;

               Result.SYSCLK := Pllvco * Mul;
            end;
         when others =>
            Result.SYSCLK := HSI_VALUE;
      end case;

      declare
         HPRE  : constant UInt4 := RCC_Periph.CFGR.HPRE;
         PPRE1 : constant UInt3 := RCC_Periph.CFGR.PPRE.Arr (1);
         PPRE2 : constant UInt3 := RCC_Periph.CFGR.PPRE.Arr (2);
      begin
         Result.HCLK  := Result.SYSCLK / HPRE_Presc_Table (HPRE);
         Result.PCLK1 := Result.HCLK / PPRE_Presc_Table (PPRE1);
         Result.PCLK2 := Result.HCLK / PPRE_Presc_Table (PPRE2);

         --  Timer clocks
         --  If the APB prescaler (PPRE1, PPRE2 in the RCC_CFGR register)
         --  is configured to a division factor of 1, TIMxCLK = PCLKx.
         --  Otherwise, the timer clock frequencies are set to twice to the
         --  frequency of the APB domain to which the timers are connected :
         --  TIMxCLK = 2xPCLKx.
         if PPRE_Presc_Table (PPRE1) = 1 then
            Result.TIMCLK1 := Result.PCLK1;
         else
            Result.TIMCLK1 := Result.PCLK1 * 2;
         end if;
         if PPRE_Presc_Table (PPRE2) = 1 then
            Result.TIMCLK2 := Result.PCLK2;
         else
            Result.TIMCLK2 := Result.PCLK2 * 2;
         end if;
      end;

      return Result;
   end System_Clock_Frequencies;

   --------------------
   -- PLLI2S_Enabled --
   --------------------

   function PLLI2S_Enabled return Boolean is
   begin
      return False;
   end PLLI2S_Enabled;

   ------------------------
   -- Set_PLLI2S_Factors --
   ------------------------

   procedure Set_PLLI2S_Factors (Pll_N : UInt9;
                                 Pll_R : UInt3)
   is
   begin
      null;
   end Set_PLLI2S_Factors;

   -------------------
   -- Enable_PLLI2S --
   -------------------

   procedure Enable_PLLI2S is
   begin
      null;
   end Enable_PLLI2S;

   --------------------
   -- Disable_PLLI2S --
   --------------------

   procedure Disable_PLLI2S is
   begin
      null;
   end Disable_PLLI2S;

   -----------------------
   -- Enable_DCMI_Clock --
   -----------------------

   procedure Enable_DCMI_Clock is
   begin
      null;
   end Enable_DCMI_Clock;

   ----------------
   -- Reset_DCMI --
   ----------------

   procedure Reset_DCMI is
   begin
      null;
   end Reset_DCMI;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : in out CRC_32) is
      pragma Unreferenced (This);
   begin
      RCC_Periph.AHBENR.CRCEN := True;
   end Enable_Clock;

   -------------------
   -- Disable_Clock --
   -------------------

   procedure Disable_Clock (This : in out CRC_32) is
      pragma Unreferenced (This);
   begin
      RCC_Periph.AHBENR.CRCEN := False;
   end Disable_Clock;

   -----------
   -- Reset --
   -----------

   procedure Reset (This : in out CRC_32) is
      pragma Unreferenced (This);
   begin
--      RCC_Periph.AHBRSTR.CRCRST := True;
--      RCC_Periph.AHBRSTR.CRCRST := False;
      null;
   end Reset;

end STM32.Device;
