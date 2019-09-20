#include "Screen.h"
#include "Arduino.h"
#include "U8x8lib.h"
#include "TimeLib.h"
#include "PulseSensor.h"

U8X8_SH1106_128X64_NONAME_HW_I2C u8x8(U8X8_PIN_NONE);
Screen::Screen() {
	this->stepCount = 0;
	this->bpm = 0;
}

void Screen::setup() {
	u8x8.begin();
	u8x8.clear();

//	u8x8.setFont(u8x8_font_amstrad_cpc_extended_f);
	u8x8.setFont(u8x8_font_chroma48medium8_r);
//	u8x8.setFont(u8x8_font_victoriamedium8_u);
	//u8x8.setFlipMode(1);
	Serial.println("OLED screen setup complete!");
}

void Screen::showTimerScreen() {
	u8x8.setCursor(0, 2);
	String h, m, s;
	String d, mo, y;
	if (hour() < 10) {
		h = "0" + String(hour());
	} else {
		h = String(hour());
	}
	if (minute() < 10) {
		m = "0" + String(minute());
	} else {
		m = String(minute());
	}
	if (second() < 10) {
		s = "0" + String(second());
	} else {
		s = String(second());
	}
	if (day() < 10) {
		d = "0" + String(day());
	} else {
		d = String(day());
	}
	if (month() < 10) {
		mo = "0" + String(month());
	} else {
		mo = String(month());
	}
	y = String(year());

	String time = h + ":" + m + ":" + s;
	String date = d + " " + mo + " " + y;
//	u8x8.print(dateTime);
	u8x8.setCursor(3, 1);
	u8x8.print(date);
	u8x8.draw2x2String(0, 3, time.c_str());
}

void Screen::showFootStepScreen() {
	u8x8.setCursor(3, 2);
	u8x8.println("Buoc chan");
//	u8x8.println(this->stepCount);
	u8x8.draw2x2String(2, 3, String(this->stepCount).c_str());
}

void Screen::showHeartRateScreen() {
	this->pulseSen.run();	u8x8.setCursor(3, 2);

	u8x8.print("BPM: ");
	this->bpm = this->pulseSen.getBpm();
//	u8x8.print(this->bpm);
	u8x8.draw2x2String(2, 3, String(this->bpm).c_str());
}

void Screen::showAboutScreen() {
	this->bpm = 0;
	u8x8.setCursor(0, 1);
	u8x8.println("My Watch");
	u8x8.println("Ver 1.0");
	u8x8.println("Last mod:");
	u8x8.println("11:00 - 20/11");
	u8x8.println("Thank you");
}

void Screen::run() {
	switch (this->showingScreenId) {
	case 0:
		this->showTimerScreen();
		break;
	case 1:
		this->showFootStepScreen();
		break;
	case 2:
		this->showHeartRateScreen();
		break;
	case 3:
		this->pulseSen.stop();
		this->showAboutScreen();
		break;
	}
}

void Screen::changeToNextScreen() {
	u8x8.clear();
	if (this->showingScreenId == this->numberOfScreen - 1) {
		this->showingScreenId = 0;
	} else {
		this->showingScreenId++;
	}
}

void Screen::setStepCount(int inStep) {
	this->stepCount = inStep;
	this->run();
}
