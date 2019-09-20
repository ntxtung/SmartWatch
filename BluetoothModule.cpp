#include "SoftwareSerial.h"
#include "Arduino.h"
#include "BluetoothModule.h"

SoftwareSerial bluetoothSerial(7, 8); // RX, TX
		/* Connect RX to TX and TX to RX
		 */
BluetoothModule::BluetoothModule(int RX, int TX) {
	bluetoothSerial = SoftwareSerial(RX, TX);
	this->bluetoothRecv = "";
}

void BluetoothModule::setup() {
	bluetoothSerial.begin(9600);
}

String BluetoothModule::getBluetoothText() {
	if (bluetoothSerial.available()) {
		bluetoothRecv += char(bluetoothSerial.read());
	} else {
		if (bluetoothRecv != "") {
			String copy = bluetoothRecv;
//			Serial.println(copy);
			this->bluetoothRecv = "";
			return copy;
		}
		bluetoothRecv = "";
	}
	return "";
}

void BluetoothModule::sendText(String input) {
	bluetoothSerial.write(input.c_str());
}
