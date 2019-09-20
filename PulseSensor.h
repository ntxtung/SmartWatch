#ifndef PULSESENSOR_H_
#define PULSESENSOR_H_

class PulseSensor {
private:
	int VCC_PIN;
	int sensorPIN;
	bool BPMTiming = false;
	bool BeatComplete = false;
	int LastTime = 0;
	int BPM = 0;
	int UpperThreshold = 650;
	int LowerThreshold = 400;
	int error = 2000;
public:
	PulseSensor();
	PulseSensor(int inputVCC, int inputSensor);
	void setup();
	int run();
	void stop();
	int readSensor();

	int getBpm() const {
		return BPM;
	}
};

#endif /* PULSESENSOR_H_ */
