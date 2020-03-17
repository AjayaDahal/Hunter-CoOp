#include <Wire.h>
#include <LIS3DSH.h>
 
LIS3DSH accel_dut;

const int pos_sens = A0;
const int no_button = A7;
int x_axis = A1;
int y_axis = A2;
int z_axis = A3;

//OLED CODE
const byte ROW_N = 4;                 // Number of display rows
const byte COLUMN_N = 20;             // Number of display columns

const byte DC = 2;                    // Arduino's pin assigned to the D/C line
//const byte RW = 13;                 // Arduino's pin assigned to the R/W line (optional, can be always low)
const byte E = 3;                     // Arduino's pin assigned to the E line
//const byte CS = 12;                 // Arduino's pin assigned to the /CS line (optional, can be always low)
//const byte RES = 13;                // Arduino's pin assigned to the Reset line (optional, can be always high)
const byte DATA_PINS[8] = {4, 5, 6, 7, 8, 9, 10, 11};      // Arduino's pins assigned to the data bus

const byte TEXT1[4][21] ={"  Insert 45-1533-1  ", 
                          "                    ", 
                          "    Press ENTER     ", 
                          "  to Begin Testing  "};

const byte TEXT2[4][21] ={"1.Insert 45-1533-1. ", 
                          "2.Insert DUT CABLE. ", 
                          "3.Press ENTER to    ", 
                          "  START TEST.       "};

const byte TEXT3[4][21] ={"                    ", 
                          "Testing Inclinometer", 
                          "   Please Wait...   ", 
                          "                    "};

const byte TEXT4[4][21] ={"                    ", 
                          "  ALL TESTS PASSED! ",  
                          "                    ", 
                          "                    "};

const byte TEXT5[4][21] ={"    Test FAILED!    ", 
                          "                    ", 
                          "  Possible Reason:  ", 
                          "  (Failure at U1)   "};

const byte TEXT6[4][21] ={"   Are BOTH LEDs    ", 
                          " On Board Blinking? ", 
                          "                    ", 
                          " YES     |       NO "};

const byte TEXT7[4][21] ={"   Please Wait      ", 
                          "                    ", 
                          " Tester is Loading. ", 
                          "                    "};

const byte TEXT8[4][21] ={"   Please Wait.     ", 
                          "                    ", 
                          " Tester is Loading. ", 
                          "                    "};

const byte TEXT9[4][21] ={"   Please Wait..    ", 
                          "                    ", 
                          " Tester is Loading. ", 
                          "                    "};

const byte TEXT10[4][21] ={"   Please Wait...   ", 
                          "                    ", 
                          " Tester is Loading. ", 
                          "                    "};

const byte TEXT11[4][21] ={" Programming Failed ", 
                          "                    ", 
                          "  Please Try Again  ", 
                          "     (Check U2)     "};

const byte TEXT12[4][21] ={" Programming DUT... ", 
                          "                    ", 
                          "                    ", 
                          "                    "};

const byte TEXT13[4][21] ={"    Test FAILED!    ", 
                          "                    ", 
                          "  Possible Reason:  ", 
                          "  (Backwards LED)   "};                                                    

const byte TEXT14[4][21] ={"   DUT NOT FOUND!   ", 
                          "                    ", 
                          "  Please Make Sure  ", 
                          "Device is Connected."}; 

const byte TEXT15[4][21] ={"Calibrating Board...", 
                          "DO NOT TURN OFF PWR!", 
                          "  KEEP HANDS AWAY   ", 
                          "    FROM TESTER!    "};

const byte TEXT16[4][21] ={" Motor Comm Failure ", 
                          "                    ", 
                          "     PLEASE SEE     ", 
                          "   04 ENGINEERING   "};

const byte TEXT17[4][21] ={"  Program SUCCESS!  ", 
                          "                    ", 
                          "                    ", 
                          "                    "};

const byte TEXT18[4][21] ={"    Press ENTER     ", 
                          "     to Program...  ", 
                          "                    ", 
                          "                    "};




                                                                         
                          
byte new_line[4] = {0x80, 0xA0, 0xC0, 0xE0};               // DDRAM address for each line of the display
byte rows = 0x08;                     // Display mode: 1/3 lines or 2/4 lines; default 2/4 (0x08)
// _______________________________________________________________________________________

void command(byte c)                  // SUBROUTINE: PREPARES THE TRANSMISSION OF A COMMAND
{
   digitalWrite(DC, LOW);             // Sets LOW the D/C line of the display -> command
//   digitalWrite(RW, LOW);           // Sets LOW the R/W line of the display (optional, can be always low)
   send8bit(c);                       // Sends the byte on the data bus
   enableCycle();                     // Calls the enable signal cycle subroutine
}
// _______________________________________________________________________________________

void data(byte d)                     // SUBROUTINE: PREPARES THE TRANSMISSION OF A BYTE OF DATA
{
   digitalWrite(DC, HIGH);            // Sets HIGH the D/C line of the display -> data
//   digitalWrite(RW, LOW);           // Sets LOW the R/W line of the display (optional, can be always low)
   send8bit(d);                       // Sends the byte on the data bus
   enableCycle();                     // Calls the enable signal cycle subroutine
}
// _______________________________________________________________________________________

void enableCycle(void)                // SUBROUTINE: EXECUTE THE ENABLE SIGNAL CYCLE (DATA LATCH)
{
   delayMicroseconds(1);              // Waits 1 us (required for timing purpose)
//   digitalWrite(CS, LOW);           // Sets LOW the /CS line of the display (optional, can be always low)
   digitalWrite(E, HIGH);             // Sets HIGH the E line of the display
   delayMicroseconds(1);              // Waits 1 us (required for timing purpose)
   digitalWrite(E, LOW);              // Sets LOW the E line of the display
//   digitalWrite(CS, HIGH);          // Sets HIGH the /CS line of the display (optional, can be always low)
   delayMicroseconds(1);              // Waits 1 us (required for timing purpose)
}
// _______________________________________________________________________________________

void send8bit(byte value)             // SUBROUTINE: SENDS THE BYTE ON THE DATA BUS
{
   for (byte i = 0; i < 8; i++)                          // One bit at a time,
   {
      digitalWrite(DATA_PINS[i], (value >> i) & 0x01);   //  sets the eight lines of the data bus, 
   }                                                     //  to send the character to the display
}
// _______________________________________________________________________________________

void output1(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT1[r][c]);            //  displays the correspondig string
      }
   }
}

void output2(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT2[r][c]);            //  displays the correspondig string
      }
   }
}

void output3(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT3[r][c]);            //  displays the correspondig string
      }
   }
}

void output4(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT4[r][c]);            //  displays the correspondig string
      }
   }
}

void output5(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT5[r][c]);            //  displays the correspondig string
      }
   }
}

void output6(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT6[r][c]);            //  displays the correspondig string
      }
   }
}

void output7(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT7[r][c]);            //  displays the correspondig string
      }
   }
}

void output8(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT8[r][c]);            //  displays the correspondig string
      }
   }
}

void output9(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT9[r][c]);            //  displays the correspondig string
      }
   }
}

void output10(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT10[r][c]);            //  displays the correspondig string
      }
   }
}

void output11(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT11[r][c]);            //  displays the correspondig string
      }
   }
}

void output12(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT12[r][c]);            //  displays the correspondig string
      }
   }
}

void output13(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT13[r][c]);            //  displays the correspondig string
      }
   }
}

void output14(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT14[r][c]);            //  displays the correspondig string
      }
   }
}

void output15(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT15[r][c]);            //  displays the correspondig string
      }
   }
}

void output16(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT16[r][c]);            //  displays the correspondig string
      }
   }
}

void output17(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT17[r][c]);            //  displays the correspondig string
      }
   }
}

void output18(void)                     // SUBROUTINE: DISPLAYS THE FOUR STRINGS, THEN THE SAME IN REVERSE ORDER
{
   byte r = 0;                        // Row index
   byte c = 0;                        // Column index

   //command(0x01);                     // Clears display (and cursor home)
   delay(2);                          // After a clear display, a minimum pause of 1-2 ms is required
   
   for (r=0; r<ROW_N; r++)            // One row at a time,
   {
      command(new_line[r]);           //  moves the cursor to the first column of that line
      for (c=0; c<COLUMN_N; c++)      // One character at a time, 
      {
         data(TEXT18[r][c]);            //  displays the correspondig string
      }
   }
}
// _______________________________________________________________________________________

void setup() 
{
  Serial.begin(115200);
  Wire.begin();// Address: 0x1E
  //accel_dut.setSELState(0);//DUT SEL LOW

  pinMode(DC, OUTPUT);               // Initializes Arduino pin for the D/C line
   digitalWrite(DC, LOW);             // Sets LOW the D/C line of the display
//   pinMode(RW, OUTPUT);             // Initializes Arduino pin for the R/W line (optional)
//   digitalWrite(RW, LOW);           // Sets LOW the R/W line of the display (optional, can be always low)
   pinMode(E, OUTPUT);                // Initializes Arduino pin for the E line
   digitalWrite(E, LOW);              // Sets LOW the E line of the display
//   pinMode(CS, OUTPUT);             // Initializes Arduino pin for the /CS line (optional)
//   digitalWrite(CS, HIGH);          // Sets HIGH the /CS line of the display (optional, can be always low)
   for (byte i=0; i<8; i++)
   {
      pinMode(DATA_PINS[i], OUTPUT);     // Initializes all Arduino pins for the data bus
      digitalWrite(DATA_PINS[i], LOW);   // Sets LOW the data bus
   }
//   pinMode(RES, OUTPUT);            // Initializes Arduino pin for the Reset line (optional)
//   digitalWrite(RES, HIGH);         // Sets HIGH the Reset line of the display (optional, can be always high)
   delayMicroseconds(200);            // Waits 200 us for stabilization purpose
   
   if (ROW_N == 2 || ROW_N == 4)
      rows = 0x08;                    // Display mode: 2/4 lines
   else
      rows = 0x00;                    // Display mode: 1/3 lines
   
   command(0x22 | rows); // Function set: extended command set (RE=1), lines #
   command(0x71);        // Function selection A:
   data(0x5C);           //  enable internal Vdd regulator at 5V I/O mode (def. value) (0x00 for disable, 2.8V I/O)
   command(0x20 | rows); // Function set: fundamental command set (RE=0) (exit from extended command set), lines #
   command(0x08);        // Display ON/OFF control: display off, cursor off, blink off (default values)
   command(0x22 | rows); // Function set: extended command set (RE=1), lines #
   command(0x79);        // OLED characterization: OLED command set enabled (SD=1)
   command(0xD5);        // Set display clock divide ratio/oscillator frequency:
   command(0x70);        //  divide ratio=1, frequency=7 (default values)
   command(0x78);        // OLED characterization: OLED command set disabled (SD=0) (exit from OLED command set)
   
   if (ROW_N > 2)
      command(0x09);     // Extended function set (RE=1): 5-dot font, B/W inverting disabled (def. val.), 3/4 lines
   else
      command(0x08);     // Extended function set (RE=1): 5-dot font, B/W inverting disabled (def. val.), 1/2 lines
   
   command(0x06);        // Entry Mode set - COM/SEG direction: COM0->COM31, SEG99->SEG0 (BDC=1, BDS=0)
   command(0x72);        // Function selection B:
   data(0x0A);           //  ROM/CGRAM selection: ROM C, CGROM=250, CGRAM=6 (ROM=10, OPR=10)
   command(0x79);        // OLED characterization: OLED command set enabled (SD=1)
   command(0xDA);        // Set SEG pins hardware configuration:
   command(0x10);        //  alternative odd/even SEG pin, disable SEG left/right remap (default values)
   command(0xDC);        // Function selection C:
   command(0x00);        //  internal VSL, GPIO input disable
   command(0x81);        // Set contrast control:
   command(0x7F);        //  contrast=127 (default value)
   command(0xD9);        // Set phase length:
   command(0xF1);        //  phase2=15, phase1=1 (default: 0x78)
   command(0xDB);        // Set VCOMH deselect level:
   command(0x40);        //  VCOMH deselect level=1 x Vcc (default: 0x20=0,77 x Vcc)
   command(0x78);        // OLED characterization: OLED command set disabled (SD=0) (exit from OLED command set)
   command(0x20 | rows); // Function set: fundamental command set (RE=0) (exit from extended command set), lines #
   command(0x01);        // Clear display
   delay(2);             // After a clear display, a minimum pause of 1-2 ms is required
   command(0x80);        // Set DDRAM address 0x00 in address counter (cursor home) (default value)
   command(0x0C);        // Display ON/OFF control: display ON, cursor off, blink off
   delay(250);           // Waits 250 ms for stabilization purpose after display on
   
   if (ROW_N == 2)
      new_line[1] = 0xC0;             // DDRAM address for each line of the display (only for 2-line mode)


  pinMode(12, INPUT);//ENTER/YES BUTTON
  pinMode(13, INPUT);//ENTER/YES BUTTON
 
}



void loop() 
{

  Start:

    while(Serial.find("ready") == false){
      output7();
      delay(250);
      output8();
      delay(250);
      output9();
      delay(250);
      output10();
      delay(250);

      if(Serial.find("ready") == true){
        goto main_test;
        //break;
      }
    }


main_test:

    int x = 0;
    int sstate = 0;
    int failled = 0;
    int fail_acc = 0;
    int fail_var = 0;
    int prog_fail = 0;
    int find_device = 0;
    int mot_fail = 0;
    int ent_button;
    int16_t dutx;
    int16_t duty;
    int16_t dutz;
    long sum_dutx = 0;
    long sum_duty = 0;
    long sum_dutz = 0;
    long avg_dutx = 0;
    long avg_duty = 0;
    long avg_dutz = 0;
    long diff_dutx = 0;
    long diff_duty = 0;
    long diff_dutz = 0;

    Wire.beginTransmission(0x66);
    Wire.write(0x79);
    Wire.endTransmission(true);
   
    while(sstate == 0 ){
      output2();
      //output18();
      ent_button = digitalRead(12);
      int position_sensor = analogRead(pos_sens);
      float pos_sens_volt = position_sensor * (5.0/1023.0);
//      Serial.println("Enter Button: ");
//      Serial.println(ent_button);
//      Serial.println("Position Sensor: ");
//      Serial.println(pos_sens_volt);
  
      if(ent_button == 1){
        goto Program;
        //break;
      }
  
      delay(10);
  
    }
/*
  byte error, address;
  int nDevices;
  nDevices = 0;
  for(address = 1; address < 127; address++ )
  {
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
    if (error == 0)
    {
      //Serial.print("I2C device found at address 0x");
      if (address<16)
        //Serial.print("0");
        //Serial.print(address,HEX);
        nDevices++;
        goto Program;
    }
  }
  if (nDevices == 0){
    //Serial.println("NO I2C DEVICES FOUND");
    find_device = 1;
    goto find_fail;
  }         
*/


Program:

  output12();
  Serial.println("1");
  delay(500);

  x = 0;
  while(Serial.find("yes") == false && x < 5){
    x = x + 1;
    if(Serial.find("yes") == true){
      break;
    }
    if(x == 5){
      prog_fail = 1;
      goto program_fail;
    }
    delay(10);
  }

  delay(2000);
  sstate = 1;
  //output6();
  Wire.beginTransmission(0x66);
  Wire.write(0x57);
  Wire.endTransmission(true);
  delay(2000);





  delay(4000);
  sstate = 1;
  output6();
  Wire.beginTransmission(0x66);
  Wire.write(0x57);
  Wire.endTransmission(true);
  delay(500);

  while(sstate == 1){
    ent_button = digitalRead(12);
    //Serial.println("Enter Button Value is: ");
    //Serial.println(ent_button);
    int no_esc_button = analogRead(no_button);
    float no_esc_volt = no_esc_button * (5.0/1023.0);
    //Serial.println("No Button: ");
    //Serial.println(no_esc_volt);

    if(ent_button == 1 && no_esc_volt > 4.50){
      goto TestAccel;
    }
    else if(no_esc_volt < 1.00 && ent_button == 0){
      failled = 1;
      goto fail_led;
    }
    delay(10);
  }

  



TestAccel:
//Start Test of Accelerometer (X, Y, and Z Axis Tests)//
  output3();

  accel_dut.enableDefault();
  accel_dut.setSELState(0);//DUT SEL LOW

  delay(2000);

  //Serial.println("Starting Test...");
  
  for(int i = 1; i < 26; i++){

//    Serial.println("Test Failed: ");
//    Serial.println(fail_var);

    delay(50);
   
    accel_dut.readAccel(&dutx, &duty, &dutz);

    if(dutx == 0 || duty == 0 || dutz == 0){
      fail_var = 0;
    }

//    Serial.print("DUT Accel ");
//    Serial.print("X: ");
//    Serial.print(dutx);
//    Serial.print(" Y: ");
//    Serial.print(duty);
//    Serial.print(" Z: ");
//    Serial.print(dutz);
//    Serial.println();
 
    sum_dutx = (sum_dutx + dutx);
    sum_duty = (sum_duty + duty);
    sum_dutz = (sum_dutz + dutz);

//    Serial.println("Sum X: ");
//    Serial.println(sum_dutx);
//    Serial.println("Sum Y: ");
//    Serial.println(sum_duty);
//    Serial.println("Sum Z: ");
//    Serial.println(sum_dutz);

    avg_dutx = (sum_dutx/i);
    avg_duty = (sum_duty/i);
    avg_dutz = (sum_dutz/i);

    delay(100);

//    Serial.println("Average X: ");
//    Serial.println(avg_dutx);
//    Serial.println("Average Y: ");
//    Serial.println(avg_duty);
//    Serial.println("Average Z: ");
//    Serial.println(avg_dutz);

    diff_dutx = abs(avg_dutx - dutx);
//    Serial.println("Difference X: ");
//    Serial.println(diff_dutx);
    
    if(diff_dutx > 100){
      fail_var = fail_var + 1;
      if(fail_var == 5){
//        Serial.println("Test Failed: ");
//        Serial.println(fail_var);
        fail_acc = 1;
        goto fail_accel;
      }
    }
    
    diff_duty = abs(avg_duty - duty);
//    Serial.println("Difference Y: ");
//    Serial.println(diff_duty);
    
    if(diff_duty > 100){
      fail_var = fail_var + 1;
      if(fail_var == 5){
//        Serial.println("Test Failed: ");
//        Serial.println(fail_var);
        fail_acc = 1;
        goto fail_accel;
      }
    }
    
    diff_dutz = abs(avg_dutz - dutz);
//    Serial.println("Difference Z: ");
//    Serial.println(diff_dutz);
    
    if(diff_dutz > 400){
      fail_var = fail_var + 1;
      if(fail_var == 5){
//        Serial.println("Test Failed: ");
//        Serial.println(fail_var);
        fail_acc = 1;
        goto fail_accel;
      }
    }
  }





//Calibration Procedure - 10 DEGREES
  delay(1000);
  Serial.println("2");
  output15();
  delay(500);

  x = 0;
  while(Serial.find("ten") == false && x < 5){
    x = x + 1;
    if(Serial.find("ten") == true){
      break;
    }
    if(x == 5){
      mot_fail = 1;
      goto motor_fail;
    }
    delay(10);
  }

//Calibration Procedure - 20 DEGREES
  delay(1000);
  Serial.println("3");
  output15();
  delay(500);

  x = 0;
  while(Serial.find("twenty") == false && x < 5){
    x = x + 1;
    if(Serial.find("twenty") == true){
      break;
    }
    if(x == 5){
      mot_fail = 1;
      goto motor_fail;
    }
    delay(10);
  }

//Calibration Procedure - 0 DEGREES(HOME POSITION)
  delay(1000);
  Serial.println("4");
  output15();
  delay(500);

  x = 0;
  while(Serial.find("zero") == false && x < 5){
    x = x + 1;
    if(Serial.find("zero") == true){
      break;
    }
    if(x == 5){
      mot_fail = 1;
      goto motor_fail;
    }
    delay(10);
  }










//PASS STATE
  sstate = 0;
  prog_fail = 0;
  fail_var = 0;
  failled = 0;
  fail_acc = 0;
  find_device = 0;
  mot_fail = 0;
  output17();
  output4();
  Wire.beginTransmission(0x66);
  Wire.write(0x79);
  Wire.endTransmission(true);
  delay(3000);
  goto main_test;


  fail_accel:
    if(fail_acc == 1){
      Serial.println("fail");
      sstate = 0;
      prog_fail = 0;
      fail_var = 0;
      failled = 0;
      fail_acc = 0;
      find_device = 0;
      mot_fail = 0;
      output5();
      Wire.beginTransmission(0x66);
      Wire.write(0x79);
      Wire.endTransmission(true);
      delay(5000);
      goto main_test;
    }

 fail_led:
    if(failled == 1){
      Serial.println("fail");
      sstate = 0;
      prog_fail = 0;
      fail_var = 0;
      failled = 0;
      fail_acc = 0;
      find_device = 0;
      mot_fail = 0;
      output13();
      Wire.beginTransmission(0x66);
      Wire.write(0x79);
      Wire.endTransmission(true);
      delay(5000);
      goto main_test;
    }

  program_fail:
    if(prog_fail = 1){
      Serial.println("fail");
      sstate = 0;
      prog_fail = 0;
      fail_var = 0;
      failled = 0;
      fail_acc = 0;
      find_device = 0;
      mot_fail = 0;
      output11();
      Wire.beginTransmission(0x66);
      Wire.write(0x79);
      Wire.endTransmission(true);
      delay(5000);
      goto main_test;
    }

  find_fail:
    if(find_device = 1){
      sstate = 0;
      prog_fail = 0;
      fail_var = 0;
      failled = 0;
      fail_acc = 0;
      find_device = 0;
      mot_fail = 0;
      output14();
      delay(5000);
      goto main_test;
    }

  motor_fail:
    if(mot_fail = 1){
      Serial.println("fail");
      sstate = 0;
      prog_fail = 0;
      fail_var = 0;
      failled = 0;
      fail_acc = 0;
      find_device = 0;
      mot_fail = 0;
      output16();
      Wire.beginTransmission(0x66);
      Wire.write(0x79);
      Wire.endTransmission(true);
      delay(5000);
      goto main_test;
    }


}
