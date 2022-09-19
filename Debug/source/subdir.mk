################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../abs_solid_detector.cpp 

OBJS += \
./source/abs_solid_detector.o 

CPP_DEPS += \
./source/abs_solid_detector.d 


# Each subdirectory must supply rules for building sources it contributes
source/abs_solid_detector.o: /home/francesco/workspace/detector_solid/abs_solid_detector.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/francesco/tools/Xilinx/Vitis_HLS/2022.1/include/ap_sysc -I/home/francesco/tools/Xilinx/Vitis_HLS/2022.1/include/etc -I/home/francesco/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/systemc/include -I/home/francesco/workspace -I/home/francesco/tools/Xilinx/Vitis_HLS/2022.1/include -I/home/francesco/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


