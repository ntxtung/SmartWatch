#include "SoftwareSerial.h"
#include "Arduino.h"

#ifndef BLUETOOTHMODULE_H_
#define BLUETOOTHMODULE_H_

class BluetoothModule {
private:
	String bluetoothRecv;
public:
	BluetoothModule(int RX, int TX);
	void setup();
	String getBluetoothText();
	void sendText(String input);
};

#endif /* BLUETOOTHMODULE_H_ */
