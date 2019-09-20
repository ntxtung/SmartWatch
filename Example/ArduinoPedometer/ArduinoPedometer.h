/*------------------------------------------------------------
This is the .h file for ARDUINO PEDOMETER Library
This is the property of Frugal Labs Tech Solutions Pvt. Ltd.
Please refer lisence.txt for complete details.
-------------------------------------------------------------*/

#ifndef ArduinoPedometer_H
#define ArduinoPedometer_H
#if ARDUINO >= 15
#include "Arduino.h"

#else
#include "WProgram.h"

#endif
#define RX 11
#define TX 10
#define xpin A1
#define ypin A2
#define zpin A3

class ArduinoPedometer
{
	public:
			float xval[15]={0};
			float yval[15]={0};
			float zval[15]={0};
			float xavg;
			float yavg;
			float zavg;
			int steps,flag=0;
			float threshhold=80.0;
			ArduinoPedometer();
			int getPedo();
      void printPedo(int p);
      void jsonPrint(int pdo);
      void calibrate();
		
	private:

};

#endif
