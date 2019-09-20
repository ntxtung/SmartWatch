#include "Arduino.h"
#include "Screen.h"
#include "SimpleTimer.h"
#include "TimeLib.h"
#include "JC_Button.h"
#include "BluetoothModule.h"
#include "PedometerModule.h"
#include "PulseSensor.h"
//--------------------------------------------------
SimpleTimer mainTimer;
Screen scr; //SCL SDA
Button button(6); //Pin connect to Button VCC
BluetoothModule bluetoothModule(7, 8);
PedometerModule pedometerModule(A1, A2, A3);
PulseSensor pulseSensor(5, A0);

int mainTimerId;
int pedoTimerId;
int tempTimerId;

void runScreen() {
	scr.run();
}

void changeScreen() {
	p
	switch (scr.getShowingScreenId()) {
	case 0:
		mainTimer.enable(mainTimerId);
		break;
	case 1:
		mainTimer.disable(mainTimerId);
		mainTimer.enable(tempTimerId);
		break;
	case 2:
		mainTimer.disable(tempTimerId);
		mainTimer.enable(mainTimerId);
		break;
	case 3:
	default:
		break;
	}
	scr.changeToNextScreen();
	scr.run();

}

void pedoRun() {
	pedometerModule.run();
	scr.setStepCount(pedometerModule.getStepCount());
}

void bluetoothRun() {
	String inputStr = bluetoothModule.getBluetoothText();
	String inputArr[5] = { "", "", "", "", "" };
	int count = 0;
	if (inputStr.length() > 0) {
		Serial.println(inputStr);

		for (int i = 0; i < inputStr.length(); i++) {
			if (inputStr.charAt(i) == ',') {
				count++;
			} else {
				inputArr[count] += inputStr.charAt(i);
			}
		}
		if (inputArr[0] == "ST") {
			setTime(inputArr[1].toInt());
		} else if (inputArr[0] == "GS") {
			bluetoothModule.sendText("GS," + String(scr.getStepCount()));
			Serial.println("GS," + String(scr.getStepCount()));
		} else if (inputArr[0] == "GB") {
			bluetoothModule.sendText("GB," + String(scr.getBpm()));
			Serial.println("GB," + String(scr.getBpm()));
		} else if (inputArr[0] == "RS"){
			pedometerModule.reset();
		}
	}
}

void setup() {
	Serial.begin(9600);
	bluetoothModule.setup();
	Serial.println("SmartWatch Begin");

	scr.setup();
	pedometerModule.setup();
	button.begin();
	pulseSensor.setup();

	scr.setPulseSen(pulseSensor);

	setTime(1541109600);

	mainTimerId = mainTimer.setInterval(1000, runScreen);
	pedoTimerId = mainTimer.setInterval(100, pedoRun);
	tempTimerId = mainTimer.setInterval(200, runScreen);
	mainTimer.disable(tempTimerId);
}

void loop() {
	mainTimer.run();
	button.read();
	bluetoothRun();
	if (button.wasReleased()) {
		changeScreen();
	}
	if (hour() == 0 && minute() == 0 && second() == 0) {
		pedometerModule.reset();
	}
}
