#include "PedometerModule.h"
#include "Arduino.h"

PedometerModule::PedometerModule(int in_x_pin, int in_y_pin, int in_z_pin) {
	this->x_pin = in_x_pin;
	this->y_pin = in_y_pin;
	this->z_pin = in_z_pin;

	this->x_val = 0;
	this->y_val = 0;
	this->z_val = 0;

	this->dx = 0;
	this->dy = 0;
	this->dz = 0;

	this->x_last = 0;
	this->y_last = 0;
	this->z_last = 0;

	this->threshold = 40;
	this->flag = 0;
	this->step = 0;
}

void PedometerModule::setup() {
	pinMode(x_pin, INPUT);
	pinMode(y_pin, INPUT);
	pinMode(z_pin, INPUT);

	x_last = analogRead(x_pin);
	y_last = analogRead(y_pin);
	z_last = analogRead(z_pin);
}

void PedometerModule::run() {
	x_val = analogRead(x_pin);
	y_val = analogRead(y_pin);
	z_val = analogRead(z_pin);

	dx = abs(x_val - x_last);
	dy = abs(y_val - y_last);
	dz = abs(z_val - z_last);

	if (dx > threshold || dy > threshold || dz > threshold) {
		if (flag == 0) {
			this->step ++;
			flag = 1;
		}
	} else {
		flag = 0;
	}

	x_last = x_val;
	y_last = y_val;
	z_last = z_val;
}

void PedometerModule::reset() {
	this->step = 0;
}
