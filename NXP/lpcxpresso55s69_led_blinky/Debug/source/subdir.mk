################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/led_blinky.c \
../source/semihost_hardfault.c 

OBJS += \
./source/led_blinky.o \
./source/semihost_hardfault.o 

C_DEPS += \
./source/led_blinky.d \
./source/semihost_hardfault.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_LPC55S69JBD100_cm33_core0 -DARM_MATH_CM33 -DSERIAL_PORT_TYPE_UART=1 -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\board" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\source" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\drivers" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\device" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\CMSIS" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\startup" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\utilities" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\component\serial_manager" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\component\lists" -I"C:\Users\nxf57906\Documents\MCUXpressoIDE_11.1.1_3241\workspace\lpcxpresso55s69_led_blinky\component\uart" -O0 -fno-common -g3 -Wall -mcpu=cortex-m33  -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


