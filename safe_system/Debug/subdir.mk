################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CLCD_program.c \
../DIO-progarm.c \
../EEPROM_program.c \
../KPD_program.c \
../PORT_program.c \
../TWI_program.c \
../login.c \
../map.c \
../safe_system.c 

OBJS += \
./CLCD_program.o \
./DIO-progarm.o \
./EEPROM_program.o \
./KPD_program.o \
./PORT_program.o \
./TWI_program.o \
./login.o \
./map.o \
./safe_system.o 

C_DEPS += \
./CLCD_program.d \
./DIO-progarm.d \
./EEPROM_program.d \
./KPD_program.d \
./PORT_program.d \
./TWI_program.d \
./login.d \
./map.d \
./safe_system.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


