CC = avr-gcc
CXX = avr-g++
HARDWARE = /Users/aaronmorrison/Arduino.app/Contents/Java/hardware
# HARDWARE = /usr/share/arduino/hardware
DEFINES = -DF_CPU=16000000L -DARDUINO=10612 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR -DTOWER -DNODE_GROUND
MICRO = -mmcu=atmega2560
CFLAGS = -std=gnu11 $(MICRO) $(DEFINES)
CXXFLAGS = -std=gnu++11 $(MICRO) $(DEFINES)
ELFFLAGS = -w -Os -flto -fuse-linker-plugin -Wl,--gc-sections,--relax -mmcu=atmega2560

#linux arduino doesn't put the /avr/ in the file path
INCLUDES =  -I$(HARDWARE)/arduino/cores/arduino
INCLUDES += -I$(HARDWARE)/arduino/variants/mega
#my mac _does_ put the /avr/ in there
INCLUDES += -I$(HARDWARE)/arduino/avr/cores/arduino
INCLUDES += -I$(HARDWARE)/arduino/avr/variants/mega
INCLUDES += -I../

#our source files are in the parent directory
VPATH += ..
#the arduino sources are in one of these two
VPATH += $(HARDWARE)/arduino/avr/cores/arduino/
VPATH += $(HARDWARE)/arduino/cores/arduino/
VPATH += $(HARDWARE)/arduino/avr/libraries/SPI/src
VPATH += $(HARDWARE)/../libraries/LiquidCrystal/src
VPATH += $(HARDWARE)/../libraries/SD/src
VPATH += $(HARDWARE)/../libraries/SD/src/utility

#our source files
objects  =linac.o
objects +=linac_test.o

#header files - always recompile everything whenever a header changes
headers =linac.h
headers +=tower_pin_defines.h

#arduino source files: get compiled into core.a
lib_objects  = wiring_pulse.o
lib_objects += WInterrupts.o
lib_objects += hooks.o
lib_objects += wiring.o
lib_objects += wiring_analog.o
lib_objects += wiring_digital.o
lib_objects += wiring_shift.o
lib_objects += CDC.o
lib_objects += HardwareSerial.o
lib_objects += HardwareSerial0.o
lib_objects += HardwareSerial1.o
lib_objects += HardwareSerial2.o
lib_objects += HardwareSerial3.o
lib_objects += IPAddress.o
lib_objects += PluggableUSB.o
lib_objects += Print.o
lib_objects += Stream.o
lib_objects += Tone.o
lib_objects += USBCore.o
lib_objects += WMath.o
lib_objects += WString.o
lib_objects += abi.o
lib_objects += main.o

all:  linac.hex

linac.hex: linac.elf
	avr-objcopy -O ihex -R .eeprom linac.elf linac.hex

linac.elf: $(objects) core.a 
	$(CC) $(ELFFLAGS) -o $@ $(objects) core.a -lm

core.a: $(lib_objects)
	-rm core.a
	avr-ar rcs core.a $^

%.o: %.c $(headers)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

%.o: %.cpp $(headers)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

.PHONY: clean
clean:
	-rm *.o
	-rm core.a
	-rm linac.elf
	-rm linac.hex

