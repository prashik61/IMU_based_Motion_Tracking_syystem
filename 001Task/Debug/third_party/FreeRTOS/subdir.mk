################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../third_party/FreeRTOS/croutine.c \
../third_party/FreeRTOS/event_groups.c \
../third_party/FreeRTOS/list.c \
../third_party/FreeRTOS/queue.c \
../third_party/FreeRTOS/stream_buffer.c \
../third_party/FreeRTOS/tasks.c \
../third_party/FreeRTOS/timers.c 

OBJS += \
./third_party/FreeRTOS/croutine.o \
./third_party/FreeRTOS/event_groups.o \
./third_party/FreeRTOS/list.o \
./third_party/FreeRTOS/queue.o \
./third_party/FreeRTOS/stream_buffer.o \
./third_party/FreeRTOS/tasks.o \
./third_party/FreeRTOS/timers.o 

C_DEPS += \
./third_party/FreeRTOS/croutine.d \
./third_party/FreeRTOS/event_groups.d \
./third_party/FreeRTOS/list.d \
./third_party/FreeRTOS/queue.d \
./third_party/FreeRTOS/stream_buffer.d \
./third_party/FreeRTOS/tasks.d \
./third_party/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
third_party/FreeRTOS/%.o third_party/FreeRTOS/%.su third_party/FreeRTOS/%.cyclo: ../third_party/FreeRTOS/%.c third_party/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I"E:/rtos_Workspace/Rtos_workspace/001Task/third_party/FreeRTOS" -I"E:/rtos_Workspace/Rtos_workspace/001Task/third_party/FreeRTOS/include" -I"E:/rtos_Workspace/Rtos_workspace/001Task/third_party/FreeRTOS/portable/GCC/ARM_CM4F" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-third_party-2f-FreeRTOS

clean-third_party-2f-FreeRTOS:
	-$(RM) ./third_party/FreeRTOS/croutine.cyclo ./third_party/FreeRTOS/croutine.d ./third_party/FreeRTOS/croutine.o ./third_party/FreeRTOS/croutine.su ./third_party/FreeRTOS/event_groups.cyclo ./third_party/FreeRTOS/event_groups.d ./third_party/FreeRTOS/event_groups.o ./third_party/FreeRTOS/event_groups.su ./third_party/FreeRTOS/list.cyclo ./third_party/FreeRTOS/list.d ./third_party/FreeRTOS/list.o ./third_party/FreeRTOS/list.su ./third_party/FreeRTOS/queue.cyclo ./third_party/FreeRTOS/queue.d ./third_party/FreeRTOS/queue.o ./third_party/FreeRTOS/queue.su ./third_party/FreeRTOS/stream_buffer.cyclo ./third_party/FreeRTOS/stream_buffer.d ./third_party/FreeRTOS/stream_buffer.o ./third_party/FreeRTOS/stream_buffer.su ./third_party/FreeRTOS/tasks.cyclo ./third_party/FreeRTOS/tasks.d ./third_party/FreeRTOS/tasks.o ./third_party/FreeRTOS/tasks.su ./third_party/FreeRTOS/timers.cyclo ./third_party/FreeRTOS/timers.d ./third_party/FreeRTOS/timers.o ./third_party/FreeRTOS/timers.su

.PHONY: clean-third_party-2f-FreeRTOS

