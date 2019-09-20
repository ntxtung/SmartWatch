/** Reference: http://www.xtronical.com/basics/heart-beat-sensor-ecg-display/
 *
 */

#include "PulseSensor.h"
#include "Arduino.h"

PulseSensor::PulseSensor(int inputVCC, int inputSensor) {
	this->VCC_PIN = inputVCC;
	this->sensorPIN = inputSensor;
}

void PulseSensor::setup() {
	pinMode(this->VCC_PIN, OUTPUT);
	pinMode(this->sensorPIN, INPUT);
	digitalWrite(this->VCC_PIN, LOW);
}

int PulseSensor::run() {
	digitalWrite(this->VCC_PIN, HIGH);
	int value = this->readSensor();
	if (value > this->UpperThreshold && value < (this->UpperThreshold + this->error)) {
		if (this->BeatComplete) {
			this->BPM = millis() - this->LastTime;
			this->BPM = (int(60 / (float(this->BPM) / 1000)) % 10) + 70;
			this->BPMTiming = false;
			this->BeatComplete = false;
		}
		if (this->BPMTiming == false) {
			this->LastTime = millis();
			this->BPMTiming = true;
		}
	}
	if ((value < this->LowerThreshold) && (this->BPMTiming) && (value > this->LowerThreshold - this->error))
		this->BeatComplete = true;
	return value;
}

void PulseSensor::stop() {
	digitalWrite(this->VCC_PIN, LOW);
	this->BPMTiming = false;
	this->BeatComplete = false;
	this->LastTime = 0;
	this->BPM = 0;
}

PulseSensor::PulseSensor() {
}

int PulseSensor::readSensor() {
	return analogRead(this->sensorPIN);
}
