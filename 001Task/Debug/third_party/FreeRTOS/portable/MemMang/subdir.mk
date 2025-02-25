################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../third_party/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./third_party/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./third_party/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
third_party/FreeRTOS/portable/MemMang/%.o third_party/FreeRTOS/portable/MemMang/%.su third_party/FreeRTOS/portable/MemMang/%.cyclo: ../third_party/FreeRTOS/portable/MemMang/%.c third_party/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I"E:/rtos_Workspace/Rtos_workspace/001Task/third_party/FreeRTOS" -I"E:/rtos_Workspace/Rtos_workspace/001Task/third_party/FreeRTOS/include" -I"E:/rtos_Workspace/Rtos_workspace/001Task/third_party/FreeRTOS/portable/GCC/ARM_CM4F" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-third_party-2f-FreeRTOS-2f-portable-2f-MemMang

clean-third_party-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./third_party/FreeRTOS/portable/MemMang/heap_4.cyclo ./third_party/FreeRTOS/portable/MemMang/heap_4.d ./third_party/FreeRTOS/portable/MemMang/heap_4.o ./third_party/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-third_party-2f-FreeRTOS-2f-portable-2f-MemMang

