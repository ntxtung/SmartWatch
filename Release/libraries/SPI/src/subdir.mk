################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src\SPI.cpp 

LINK_OBJ += \
.\libraries\SPI\src\SPI.cpp.o 

CPP_DEPS += \
.\libraries\SPI\src\SPI.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\SPI\src\SPI.cpp.o: C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src\SPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


