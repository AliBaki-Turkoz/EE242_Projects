################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.cpp \
../Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp 

OBJS += \
./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.o \
./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.o 

CPP_DEPS += \
./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.d \
./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/%.o Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/%.su: ../Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/%.cpp Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/ -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_Number_Recognition_MT2__MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-porting-2f-espressif

clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_Number_Recognition_MT2__MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-porting-2f-espressif:
	-$(RM) ./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.d ./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.o ./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.su ./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.d ./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.o ./Middlewares/Third_Party/EdgeImpulse_Number_Recognition_MT2__MachineLearning/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_Number_Recognition_MT2__MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-porting-2f-espressif

