
 
#include <TimeLib.h>

void setup()  {
  Serial.begin(9600);
  while (!Serial) ; // Needed for Leonardo only
  setTime(1539379201);
}

void loop(){    

  if (timeStatus()!= timeNotSet) {
    digitalClockDisplay();  
  }
}

void digitalClockDisplay(){
  // digital clock display of the time
  Serial.print(hour());
  printDigits(minute());
  printDigits(second());
  Serial.print(" ");
  Serial.print(day());
  Serial.print(" ");
  Serial.print(month());
  Serial.print(" ");
  Serial.print(year()); 
  Serial.println(); 
}

void printDigits(int digits){
  // utility function for digital clock display: prints preceding colon and leading 0
  Serial.print(":");
  if(digits < 10)
    Serial.print('0');
  Serial.print(digits);
}


