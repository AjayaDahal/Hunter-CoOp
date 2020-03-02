//Author: Zach DiGennaro
//232-336-1 U2 Code
//Updated On: January 30, 2019

const int temp_sens = A0;

void setup() {

Serial.begin(9600);

pinMode(2, INPUT);//Power Switch Signal
pinMode(3, OUTPUT);//Power Switch LED Signal

pinMode(4, OUTPUT);//Sig1 to U1(LV Arduino)
pinMode(5, INPUT);//Sig2 to U1(LV Arduino)
pinMode(6, OUTPUT);//Sig3 to U1(LV Arduino)

pinMode(7, OUTPUT);//Relay for PC Power(A1)(- TO OPERATE, + TO RESET)
pinMode(8, OUTPUT);//Relay for PC Power(A2)(+ TO OPERATE, - TO RESET)



}

void loop() {
  
  int sstate = 0;
  int rstate = 0;
  int zstate = 0;


  int pw_switch = digitalRead(2);
  while(sstate == 0){
    digitalWrite(7, HIGH);
    digitalWrite(8, LOW);
    digitalWrite(4, LOW);
    pw_switch = digitalRead(2);
    Serial.println("Switch Value: ");
    Serial.println(pw_switch);
    if(pw_switch == 1){
      digitalWrite(3, HIGH);
      Serial.println("COMPUTER ON!");
      break;
    }
    delay(10);
  }

  sstate = 1;
  digitalWrite(7, LOW);
  digitalWrite(8, HIGH);
  delay(500);
  
  pw_switch = digitalRead(2);
  while(rstate == 0){
    pw_switch = digitalRead(2);
    
    if(pw_switch == 0){
      digitalWrite(4, HIGH);
      digitalWrite(3, LOW);
      Serial.println("USER HAS TURNED PWR SW OFF, WAITING FOR LV...");
      break;
    }
    delay(10);
  }

  rstate = 1;
  int lv_shutdown = digitalRead(5);
  while(zstate == 0){
    lv_shutdown = digitalRead(5);
    if(lv_shutdown == 1){
      break;
    }
    
  }

  zstate = 1;
  delay(60000);
  sstate = 0;
  digitalWrite(7, HIGH);
  digitalWrite(8, LOW);
  delay(2000);


}
