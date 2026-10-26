with Utils;                    use Utils;
with CH32_SVD.RCC;             use CH32_SVD.RCC;
with CH32_SVD.ADC1;            use CH32_SVD.ADC1;
with CH32_SVD.ESIG;            use CH32_SVD.ESIG;
with System.Machine_Code;      use System.Machine_Code;

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
   procedure Seed_Prng_From_Vref_Lsb_CH32V003
   is
   begin
      --  Personalise the seed
      Prng_State := Prng_State xor ESIG_Periph.UNIID1;
      Prng_State := Prng_State xor ESIG_Periph.UNIID2;
      Prng_State := Prng_State xor ESIG_Periph.UNIID3;

      --  1. Enable ADC1 interface clock on APB2
      RCC_Periph.APB2PCENR.ADC1EN := True;

      --  2. Power up the ADC converter (ADON = True)
      ADC1_Periph.CTLR2.ADON := True;

      --  3. Wait for ADC internal stabilization delay (~1 ms)
      Delay_Ms (1);

      --  4. Reset calibration registers and poll until hardware clears it
      ADC1_Periph.CTLR2.RSTCAL := True;
      loop
         exit when not ADC1_Periph.CTLR2.RSTCAL;
      end loop;

      --  5. Execute calibration and poll until complete
      ADC1_Periph.CTLR2.CAL := True;
      loop
         exit when not ADC1_Periph.CTLR2.CAL;
      end loop;

      --  6. Configure regular sequence:
      --  Sequence length = 1 conversion (L = 0 means 1 conversion)
      ADC1_Periph.RSQR1.L := 0;

      --  Map 1st conversion in sequence (SQ1) to Channel 8 (Vrefint)
      ADC1_Periph.RSQR3.SQ.Arr (1) := 8;

      --  7. Configure sampling time:
      --  Shortest sample time (0 = 3.5 cycles) to capture maximum thermal noise
      ADC1_Periph.SAMPTR2_CHARGE2.SMP8_TKCG8 := 0;

      --  8. Configure trigger mode:
      --  EXTSEL = 7 (SWSTART software trigger), EXTTRIG = True
      ADC1_Periph.CTLR2.EXTSEL  := 7;
      ADC1_Periph.CTLR2.EXTTRIG := True;

      declare
         Seed : UInt32 := 0;
         Val  : UInt32;
      begin
         --  9. Sample 32 bits of LSB thermal noise
         for I in 0 .. 31 loop
            --  Clear EOC flag prior to firing
            ADC1_Periph.STATR.EOC := False;

            --  Trigger conversion via SWSTART
            ADC1_Periph.CTLR2.SWSTART := True;

            --  Poll End of Conversion flag
            loop
               exit when ADC1_Periph.STATR.EOC;
            end loop;

            --  Reading RDATAR clears EOC and retrieves the 10-bit conversion value
            Val  := ADC1_Periph.RDATAR and 16#03FF#;
            Seed := Shift_Left (Seed, 1) or (Val and 1);
            Delay_Ms (10);
         end loop;

         --  10. Power down the converter and disable peripheral clock
         ADC1_Periph.CTLR2.ADON := False;
         RCC_Periph.APB2PCENR.ADC1EN := False;

         if Seed /= 0 then
            Prng_State := Prng_State xor Seed;
         end if;
         if Prng_State = 0 then
            Prng_State := Prng_Start; --  Unlikely to need this
         end if;
--         Asm ("ebreak", Volatile => True);
      end;
   end Seed_Prng_From_Vref_Lsb_CH32V003;

end Prng;
