#include<time>

const int TRANSDUCER = A1;

const int SOLENOID_IN = 2;
const int SOLENOID_IN_EX = 3; 

const int SOLENOID_OUT = 4;
const int SOLENOID_OUT_EX = 5;

const int passLED = 7;
const int failLED = 8;

void setup() {
  serial.begin(9600);

  pinMode(TRANSDUCER, INPUT);
  
  pinMode(SOLENOID_IN, OUTPUT);
  pinMode(SOLENOID_IN_EX, OUTPUT);
  
  pinMode(SOLENOID_OUT, OUTPUT);
  pinMode(SOLENOID_OUT_EX, OUTPUT);

  pinMode(passLED, OUTPUT);
  pinMode(failLED, OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  
}

void checkingPressureDrop(){

  


}


