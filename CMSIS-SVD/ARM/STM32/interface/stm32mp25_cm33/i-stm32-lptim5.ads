--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.LPTIM5 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  LPTIM5 interrupt and status register
   type LPTIM5_ISR_Register is record
      --  Read-only. Compare 1 interrupt flag The CC1IF flag is set by hardware
      --  to inform application that LPTIM_CNT register value matches the
      --  compare register's value. The CC1IF flag can be cleared by writing 1
      --  to the CC1CF bit in the LPTIM_ICR register.
      CC1IF          : Boolean;
      --  Read-only. Autoreload match ARRM is set by hardware to inform
      --  application that LPTIM_CNT register’s value reached the LPTIM_ARR
      --  register’s value. ARRM flag can be cleared by writing 1 to the
      --  ARRMCF bit in the LPTIM_ICR register.
      ARRM           : Boolean;
      --  Read-only. External trigger edge event EXTTRIG is set by hardware to
      --  inform application that a valid edge on the selected external trigger
      --  input has occurred. If the trigger is ignored because the timer has
      --  already started, then this flag is not set. EXTTRIG flag can be
      --  cleared by writing 1 to the EXTTRIGCF bit in the LPTIM_ICR register.
      EXTTRIG        : Boolean;
      --  Read-only. Compare register 1 update OK CMP1OK is set by hardware to
      --  inform application that the APB bus write operation to the LPTIM_CCR1
      --  register has been successfully completed. CMP1OK flag can be cleared
      --  by writing 1 to the CMP1OKCF bit in the LPTIM_ICR register.
      CMP1OK         : Boolean;
      --  Read-only. Autoreload register update OK ARROK is set by hardware to
      --  inform application that the APB bus write operation to the LPTIM_ARR
      --  register has been successfully completed. ARROK flag can be cleared
      --  by writing 1 to the ARROKCF bit in the LPTIM_ICR register.
      ARROK          : Boolean;
      --  Read-only. Counter direction change down to up In Encoder mode, UP
      --  bit is set by hardware to inform application that the counter
      --  direction has changed from down to up. UP flag can be cleared by
      --  writing 1 to the UPCF bit in the LPTIM_ICR register. Note: If the
      --  LPTIM does not support encoder mode feature, this bit is reserved.
      --  Refer to Section68.3: LPTIM implementation.
      UP             : Boolean;
      --  Read-only. Counter direction change up to down In Encoder mode, DOWN
      --  bit is set by hardware to inform application that the counter
      --  direction has changed from up to down. DOWN flag can be cleared by
      --  writing 1 to the DOWNCF bit in the LPTIM_ICR register. Note: If the
      --  LPTIM does not support encoder mode feature, this bit is reserved.
      --  Refer to Section68.3: LPTIM implementation.
      DOWN           : Boolean;
      --  Read-only. LPTIM update event occurred UE is set by hardware to
      --  inform application that an update event was generated. UE flag can be
      --  cleared by writing 1 to the UECF bit in the LPTIM_ICR register.
      UE             : Boolean;
      --  Read-only. Repetition register update OK REPOK is set by hardware to
      --  inform application that the APB bus write operation to the LPTIM_RCR
      --  register has been successfully completed. REPOK flag can be cleared
      --  by writing 1 to the REPOKCF bit in the LPTIM_ICR register.
      REPOK          : Boolean;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15;
      --  Read-only. Interrupt enable register update OK DIEROK is set by
      --  hardware to inform application that the APB bus write operation to
      --  the LPTIM_DIER register has been successfully completed. DIEROK flag
      --  can be cleared by writing 1 to the DIEROKCF bit in the LPTIM_ICR
      --  register.
      DIEROK         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_ISR_Register use record
      CC1IF          at 0 range 0 .. 0;
      ARRM           at 0 range 1 .. 1;
      EXTTRIG        at 0 range 2 .. 2;
      CMP1OK         at 0 range 3 .. 3;
      ARROK          at 0 range 4 .. 4;
      UP             at 0 range 5 .. 5;
      DOWN           at 0 range 6 .. 6;
      UE             at 0 range 7 .. 7;
      REPOK          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      DIEROK         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM5 interrupt clear register
   type LPTIM5_ICR_Register is record
      --  Write-only. Capture/compare 1 clear flag Writing 1 to this bit clears
      --  the CC1IF flag in the LPTIM_ISR register.
      CC1CF          : Boolean := False;
      --  Write-only. Autoreload match clear flag Writing 1 to this bit clears
      --  the ARRM flag in the LPTIM_ISR register
      ARRMCF         : Boolean := False;
      --  Write-only. External trigger valid edge clear flag Writing 1 to this
      --  bit clears the EXTTRIG flag in the LPTIM_ISR register
      EXTTRIGCF      : Boolean := False;
      --  Write-only. Compare register 1 update OK clear flag Writing 1 to this
      --  bit clears the CMP1OK flag in the LPTIM_ISR register.
      CMP1OKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK clear flag Writing 1 to
      --  this bit clears the ARROK flag in the LPTIM_ISR register
      ARROKCF        : Boolean := False;
      --  Write-only. Direction change to UP clear flag Writing 1 to this bit
      --  clear the UP flag in the LPTIM_ISR register. Note: If the LPTIM does
      --  not support encoder mode feature, this bit is reserved. Refer to
      --  Section68.3.
      UPCF           : Boolean := False;
      --  Write-only. Direction change to down clear flag Writing 1 to this bit
      --  clear the DOWN flag in the LPTIM_ISR register. Note: If the LPTIM
      --  does not support encoder mode feature, this bit is reserved. Refer to
      --  Section68.3.
      DOWNCF         : Boolean := False;
      --  Write-only. Update event clear flag Writing 1 to this bit clear the
      --  UE flag in the LPTIM_ISR register.
      UECF           : Boolean := False;
      --  Write-only. Repetition register update OK clear flag Writing 1 to
      --  this bit clears the REPOK flag in the LPTIM_ISR register.
      REPOKCF        : Boolean := False;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Interrupt enable register update OK clear flag Writing 1
      --  to this bit clears the DIEROK flag in the LPTIM_ISR register.
      DIEROKCF       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_ICR_Register use record
      CC1CF          at 0 range 0 .. 0;
      ARRMCF         at 0 range 1 .. 1;
      EXTTRIGCF      at 0 range 2 .. 2;
      CMP1OKCF       at 0 range 3 .. 3;
      ARROKCF        at 0 range 4 .. 4;
      UPCF           at 0 range 5 .. 5;
      DOWNCF         at 0 range 6 .. 6;
      UECF           at 0 range 7 .. 7;
      REPOKCF        at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      DIEROKCF       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LPTIM5 interrupt enable register
   type LPTIM5_DIER_Register is record
      --  Capture/compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  Autoreload match Interrupt Enable
      ARRMIE        : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      EXTTRIGIE     : Boolean := False;
      --  Compare register 1 update OK interrupt enable
      CMP1OKIE      : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      ARROKIE       : Boolean := False;
      --  Direction change to UP Interrupt Enable Note: If the LPTIM does not
      --  support encoder mode feature, this bit is reserved. Refer to
      --  Section68.3.
      UPIE          : Boolean := False;
      --  Direction change to down Interrupt Enable Note: If the LPTIM does not
      --  support encoder mode feature, this bit is reserved. Refer to
      --  Section68.3.
      DOWNIE        : Boolean := False;
      --  Update event interrupt enable
      UEIE          : Boolean := False;
      --  Repetition register update OK interrupt Enable
      REPOKIE       : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTIM5_DIER_Register use record
      CC1IE         at 0 range 0 .. 0;
      ARRMIE        at 0 range 1 .. 1;
      EXTTRIGIE     at 0 range 2 .. 2;
      CMP1OKIE      at 0 range 3 .. 3;
      ARROKIE       at 0 range 4 .. 4;
      UPIE          at 0 range 5 .. 5;
      DOWNIE        at 0 range 6 .. 6;
      UEIE          at 0 range 7 .. 7;
      REPOKIE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPTIM5 address block description
   type LPTIM5_Peripheral is record
      --  LPTIM5 interrupt and status register
      LPTIM5_ISR  : aliased LPTIM5_ISR_Register;
      --  LPTIM5 interrupt clear register
      LPTIM5_ICR  : aliased LPTIM5_ICR_Register;
      --  LPTIM5 interrupt enable register
      LPTIM5_DIER : aliased LPTIM5_DIER_Register;
   end record
     with Volatile;

   for LPTIM5_Peripheral use record
      LPTIM5_ISR  at 16#0# range 0 .. 31;
      LPTIM5_ICR  at 16#4# range 0 .. 31;
      LPTIM5_DIER at 16#8# range 0 .. 31;
   end record;

   --  LPTIM5 address block description
   LPTIM5_Periph : aliased LPTIM5_Peripheral
     with Import, Address => LPTIM5_Base;

   --  LPTIM5 address block description
   LPTIM5_S_Periph : aliased LPTIM5_Peripheral
     with Import, Address => LPTIM5_S_Base;

end Interfaces.STM32.LPTIM5;
