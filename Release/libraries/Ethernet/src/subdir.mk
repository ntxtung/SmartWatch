################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\Dhcp.cpp \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\Dns.cpp \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\Ethernet.cpp \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\EthernetClient.cpp \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\EthernetServer.cpp \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\EthernetUdp.cpp \
C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\socket.cpp 

LINK_OBJ += \
.\libraries\Ethernet\src\Dhcp.cpp.o \
.\libraries\Ethernet\src\Dns.cpp.o \
.\libraries\Ethernet\src\Ethernet.cpp.o \
.\libraries\Ethernet\src\EthernetClient.cpp.o \
.\libraries\Ethernet\src\EthernetServer.cpp.o \
.\libraries\Ethernet\src\EthernetUdp.cpp.o \
.\libraries\Ethernet\src\socket.cpp.o 

CPP_DEPS += \
.\libraries\Ethernet\src\Dhcp.cpp.d \
.\libraries\Ethernet\src\Dns.cpp.d \
.\libraries\Ethernet\src\Ethernet.cpp.d \
.\libraries\Ethernet\src\EthernetClient.cpp.d \
.\libraries\Ethernet\src\EthernetServer.cpp.d \
.\libraries\Ethernet\src\EthernetUdp.cpp.d \
.\libraries\Ethernet\src\socket.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\Ethernet\src\Dhcp.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\Dhcp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Ethernet\src\Dns.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\Dns.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Ethernet\src\Ethernet.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\Ethernet.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Ethernet\src\EthernetClient.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\EthernetClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Ethernet\src\EthernetServer.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\EthernetServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Ethernet\src\EthernetUdp.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\EthernetUdp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Ethernet\src\socket.cpp.o: C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src\socket.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\c-photon\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR     -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"C:\c-photon\arduinoPlugin\libraries\U8g2\2.23.18\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\c-photon\arduinoPlugin\libraries\Time\1.5.0" -I"C:\c-photon\arduinoPlugin\libraries\DS1307RTC\1.4.0" -I"C:\c-photon\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\c-photon\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SoftwareSerial\src" -I"C:\c-photon\arduinoPlugin\libraries\WiFi\1.2.7\src" -I"C:\c-photon\arduinoPlugin\libraries\Button\1.0.0" -I"C:\c-photon\arduinoPlugin\libraries\JC_Button\2.0.1\src" -I"C:\c-photon\arduinoPlugin\libraries\ArduinoJson\6.4.0-beta\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


