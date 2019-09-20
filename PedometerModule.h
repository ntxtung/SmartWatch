#ifndef PEDOMETERMODULE_H_
#define PEDOMETERMODULE_H_

class PedometerModule {
private:
	int x_pin, y_pin, z_pin;
	int x_val, y_val, z_val;
	int x_last, y_last, z_last;
	int dx, dy, dz;
	int threshold;
	int flag;
	int step;
public:
	PedometerModule(int in_x_pin, int in_y_pin, int in_z_pin);
	void setup();
	void run();
	void reset();

	int getStepCount(){return this->step;}
};

#endif /* PEDOMETERMODULE_H_ */
