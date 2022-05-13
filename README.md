# experimento-discriminacion-vibrotactil-angie

This is the repo for Angie experiment. This include schematics and software also a manual about how to connect it

# Software

## Requirements
* Latest Processing 3.x from www.processing.org
* Install the following libraries using "Sketch -> Import libraries -> add libraries..."
	* G4P Controls library
	* G4P GUI Builder
	* Arduino library
	* Firmata library

## Instructions
1. Open processing.
2. Open project and point to software/manual_controller_2_vbr_last/manual_controller_2_vbr_last.pde
3. Select "file -> export application"
4. Select the current operating system.
5. Select "Embed java VM"
6. Click on "Export"
7. After completing, Processing will open a window with the executables (app for MacOS, sh for Linux, exe for windows).
8. Double click on the executable.

NOTE: The application stores all exported experiments in a text format under the "DATA" folder, everytime the application is recompiled this folder is deleted, so before compiling the application you should copy all the folder to another place to avoid loosing info.

# Hardware
## Requirements
* Latest Arduino from www.arduino.cc
	* Firmata library
* Arduino UNO Board
* Skinner Duino Shield  [get files](https://github.com/Juriquilla-ENES-INB-A13/SkinnerDuino-shield)

# Sensors Connection

## SkinerDuino shield
* SkinnerDuino has a set of pins for sensors, and they are labeled as DIO, the wiring is as follows:
	* 5V GND 8
	* 5V GND 7
	* 5V GND 4
	* 5V GND 2

<img src="/images/annotated-connections.jpg" width="400" />

	This pins are connected to the same numbered digital pins in Arduino UNO.

* Other Connections
	* Vibration motor connected to OUT3.3V
	* Left pump connected to OUT1
	* Right pump connected to OUT2

* Power
	* The peristaltic pumps need between 24V to 26V so you need a power source with 5mm barrel connector.
	* For avoiding issues, dont add or desolder ALL electrolitic capacitors, and the green LED.

## Poke and Inside Sensor
* FC-51 Obstacle distance IR sensor
* Connector from top
	OUT GND VCC

	<img src="/images/poke-sensor-connection.png" width="450"/>

## Peristaltic pump
* Campden Instruments 80204A pump
	* 24V - 28V
	* Connections
		* RED Power
		* Blue Operate
		* Green 0V/GND

<img src="/images/peristaltic-pump-wiring.png" width="400" />

# Skinner Duino Connections
|Item                |  Port  |
|--------------------|--------|
|Vibration motor     |OUT 3.3V|
|Pump                | OUT 1  |
|Poke sensor left    |   8    |
|Poke sensor right   |   7    |
|Servo door          |   4    |
|Internal IR Sensor  |   2    |

# Instructions
The software needs a firmware called firmata, which has to be uploaded to the Arduino UNO Board

## Arduino
1. Open Arduino IDE
2. Install Firmata library
3. Open menu "Examples -> firmata -> Standard firmata"
4. Select on which port is the Arduino UNO board connected.
5. Check on menu "Tools -> Board" that "Arduino UNO" board is selected.
6. Upload the firmware to the board.

## Processing