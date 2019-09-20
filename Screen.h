#include "U8x8lib.h"
#include "PulseSensor.h"

#ifdef U8X8_HAVE_HW_SPI
#include <SPI.h>
#endif
#ifdef U8X8_HAVE_HW_I2C
#include <Wire.h>
#endif

#ifndef SCREEN_H_
#define SCREEN_H_

class Screen {
private:
//	int x = 0;
//	int lastx = 0;
//	int lasty = 0;
	byte showingScreenId = 0;
	byte numberOfScreen = 4;
	int stepCount = 0;
	int bpm = 0;
	PulseSensor pulseSen;
public:
	Screen();
	void setup();
	void run();
	void showTimerScreen();
	void showFootStepScreen();
	void showHeartRateScreen();
	void showAboutScreen();
	void changeToNextScreen();

	void setStepCount(int inStep);

	const PulseSensor& getPulseSen() const {
		return pulseSen;
	}

	void setPulseSen(const PulseSensor& pulseSen) {
		this->pulseSen = pulseSen;
	}

	byte getShowingScreenId() const {
		return showingScreenId;
	}

	int getStepCount() const {
		return stepCount;
	}

	int getBpm() const {
		return bpm;
	}
};

#endif /* SCREEN_H_ */
