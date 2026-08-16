with Utils;                    use Utils;
with STM32_SVD.RCC;            use STM32_SVD.RCC;
with STM32_SVD.ADC;            use STM32_SVD.ADC;

package body Prng is
   function Fast_Rand return UInt32 is
      X : UInt32 := Prng_State;
   begin
      X := X xor Shift_Left (X, 13);
      X := X xor Shift_Right (X, 17);
      X := X xor Shift_Left (X, 5);
      Prng_State := X;
      return X;
   end Fast_Rand;
   procedure Seed_Prng_From_Vref_Lsb_C011 is
   begin
      --  Enable the ADC to get a seed from Vrefint bit 0 sampled at
      --  high speed 32 times.
      --  1. Enable ADC AHB Clock
      RCC_Periph.RCC_APBENR2.ADCEN := True;
      --  2. Use Synchronous Mode
      ADC_Periph.ADC_CFGR2.CKMODE := 1;

      --  Enable VREFINT internal channel
      ADC_Periph.ADC_CCR.VREFEN := True;

      --  3. Ensure ADC is fully disabled before configuring/calibrating
      if ADC_Periph.ADC_CR.ADEN then
         ADC_Periph.ADC_CR.ADDIS := True;
         loop
            exit when not ADC_Periph.ADC_CR.ADEN;
         end loop;
      end if;

      --  4. Enable Voltage Regulator
      ADC_Periph.ADC_CR.ADVREGEN := True;

      Delay_Ms (1);

      --  Regulator + VREFINT startup delay (~20 us)
      --    for (volatile int i = 0; i < 2000; i++) { __NOP(); }

      --  5. Run Calibration (ADC MUST be disabled)
      ADC_Periph.ADC_CR.ADCAL := True;
      loop
         exit when not ADC_Periph.ADC_CR.ADCAL;
      end loop;

      --  6. Enable ADC Peripheral
      ADC_Periph.ADC_ISR.ADRDY := True;   --  Clear ready flag
      ADC_Periph.ADC_CR.ADEN := True;
      loop
         exit when ADC_Periph.ADC_ISR.ADRDY; --  Wait until ADC hardware is ready!
      end loop;
      ADC_Periph.ADC_CFGR1.CHSELRMOD := False; --  Use bitvector
      ADC_Periph.ADC_CHSELR_MOD0.CHSEL.Arr (10) := True; --  Channel 10 (Vrefint)

      --  Set CFGR to software trigger single conversion
      --  ADC1->CFGR = 0;

      --  Channel 0 (VREFINT resolved by VREFEN)
      --        ADC1->SQR1 = 0;

      --  Set 2.5 cycles sampling time on CH0 to capture maximum thermal LSB noise
      ADC_Periph.ADC_SMPR :=
        (SMP1 => 0, SMP2 => 0, others => <>);  --  Shortest sample time

      declare
         Seed : UInt32 := 0;
         Val : UInt16;
      begin
         --  8. Sample 32 bits
         for I in 0 .. 31 loop
            --  Clear all flags before starting
            ADC_Periph.ADC_ISR :=
              (ADRDY => True,
               EOSMP => True,
               EOC => True,
               EOS => True,
               OVR => True,
               others => <>);
               --  Start conversion
               ADC_Periph.ADC_CR.ADSTART := True;

               --  Poll EOC
               loop
                  exit when ADC_Periph.ADC_ISR.EOC;
               end loop;

               --  Read DR (clears EOC and gives valid VREFINT reading ~0x680)
               Val := UInt16 (ADC_Periph.ADC_DR.DATA);
               Seed := Shift_Left (Seed, 1) or UInt32 (Val and 1);
         end loop;

         --  9. Shutdown ADC & VREFINT
         ADC_Periph.ADC_CR.ADDIS := True;
         ADC_Periph.ADC_CCR.VREFEN := False;

         if Seed /= 0 then
            Prng_State := Seed;
         end if;
      end;
   end Seed_Prng_From_Vref_Lsb_C011;

end Prng;
