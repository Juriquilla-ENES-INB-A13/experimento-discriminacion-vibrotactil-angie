# experimento-discriminacion-vibrotactil-angie
experimento-discriminacion-vibrotactil-angie


This is the repo for Angie experiment. This include schematics and software also a manual about how to connect it


# Hardware

* Arduino UNO Board
* Skinner Duino Shield 


# Software
* Latest Processing 3.x from www.processing.org
	* G4P Controls library
	* G4P GUI Builder 
	* Arduino library
	* Firmata library

* Latest Arduino from www.arduino.cc
	* Firmata library

# Sensors Connection

## Poke and Inside Sensor
* FC-51 Obstacle distance IR sensor
	


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

