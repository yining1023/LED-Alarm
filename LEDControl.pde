//#include <Time.h>
//time_t t = now();


const int zeroHour = A1;
const int oneHour = 8;
const int twoHour = 5;
const int threeHour = 7;
const int fourHour = 3;
const int fiveHour = 2;
const int sixHour = 26;
const int sevenHour = 46;
const int eightHour = 52;
const int nineHour = A2;
const int tenHour = 53;
const int elevenHour = A3;
const int yellowPin = A0;
const int greenPin = 6;
const int bluePin = 13;
const int redPin = A11;
boolean alarmOn = false;

void setup() {
  // initiate serial communication:
  //setTime(18,15,45,02,02,2010);
  Serial.begin(9600);
  Serial.setTimeout(10);
  // initialize the LED pins as outputs:
  pinMode(yellowPin, OUTPUT);
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
  pinMode(zeroHour, OUTPUT);
  pinMode(oneHour, OUTPUT);
  pinMode(twoHour, OUTPUT);
  pinMode(threeHour, OUTPUT);
  pinMode(fourHour, OUTPUT);
  pinMode(fiveHour, OUTPUT);
  pinMode(sixHour, OUTPUT);
  pinMode(sevenHour, OUTPUT);
  pinMode(eightHour, OUTPUT);
  pinMode(nineHour, OUTPUT);
  pinMode(tenHour, OUTPUT);
  pinMode(elevenHour, OUTPUT);
  

  // set the color pins high to turn off the LED:
  digitalWrite(yellowPin, LOW);
  digitalWrite(redPin, LOW);
  digitalWrite(greenPin, LOW);
  digitalWrite(bluePin, LOW);
   digitalWrite(zeroHour, LOW);
  digitalWrite(oneHour, LOW);
  digitalWrite(twoHour, LOW);
  digitalWrite(threeHour, LOW);
   digitalWrite(fourHour, LOW);
  digitalWrite(fiveHour, LOW);
  digitalWrite(sixHour, LOW);
  digitalWrite(sevenHour, LOW);
   digitalWrite(eightHour, LOW);
  digitalWrite(nineHour, LOW);
  digitalWrite(tenHour, LOW);
  digitalWrite(elevenHour, LOW);
  

}
void loop() {

  int currentPin = 0; // current pin to be faded

  // if there's any serial data in the buffer, read a byte:
  if (Serial.available() > 0) {

  char inByte = Serial.read();
  
  if(inByte == 'z'){
     alarmOn = true;
   }
  if (inByte == 'p') {
    alarmOn = false;
  }
  
   
   if (alarmOn == true) {

     
     digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
     digitalWrite(redPin, LOW); 
     digitalWrite(bluePin, LOW);
     digitalWrite(greenPin, LOW);
     digitalWrite(yellowPin, LOW);
    delay(100);
     digitalWrite(oneHour, HIGH);
     digitalWrite(twoHour, HIGH); 
     digitalWrite(threeHour, HIGH);
     digitalWrite(fourHour, HIGH);
     digitalWrite(fiveHour, HIGH); 
     digitalWrite(sixHour, HIGH);
     digitalWrite(sevenHour, HIGH);
     digitalWrite(eightHour, HIGH); 
     digitalWrite(nineHour, HIGH);
     digitalWrite(tenHour, HIGH);
     digitalWrite(elevenHour, HIGH);
     digitalWrite(zeroHour, HIGH);
     digitalWrite(redPin, HIGH); 
     digitalWrite(bluePin, HIGH);
     digitalWrite(greenPin, HIGH);
     digitalWrite(yellowPin, HIGH);
     delay(100);
    }  
   
   if (alarmOn == false) {
       if(inByte == 'r'){
     digitalWrite(redPin, HIGH); 
     digitalWrite(bluePin, LOW);
     digitalWrite(greenPin, LOW);
     digitalWrite(yellowPin, LOW);
  }
  
  else if(inByte == 'g'){
     digitalWrite(redPin, LOW); 
     digitalWrite(bluePin, LOW);
     digitalWrite(greenPin, HIGH);
     digitalWrite(yellowPin, LOW);
  }
  
 else if(inByte == 'b'){
     digitalWrite(redPin, LOW); 
     digitalWrite(bluePin, HIGH);
     digitalWrite(greenPin, LOW);
     digitalWrite(yellowPin, LOW);
  }
  
 else if(inByte == 'y'){
     digitalWrite(redPin, LOW); 
     digitalWrite(bluePin, LOW);
     digitalWrite(greenPin, LOW);
     digitalWrite(yellowPin, HIGH);
  }
  
 else if(inByte == 'k'){
     digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, HIGH);
  }
  
else if(inByte == '1'){
    digitalWrite(oneHour, HIGH);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '2'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, HIGH); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '3'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, HIGH);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '4'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, HIGH);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == 'f'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, HIGH); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '6'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, HIGH);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '7'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, HIGH);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '8'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, HIGH); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == '9'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, HIGH);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == 'j'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, HIGH);
     digitalWrite(elevenHour, LOW);
     digitalWrite(zeroHour, LOW);
  }
 else if(inByte == 'q'){
    digitalWrite(oneHour, LOW);
     digitalWrite(twoHour, LOW); 
     digitalWrite(threeHour, LOW);
     digitalWrite(fourHour, LOW);
     digitalWrite(fiveHour, LOW); 
     digitalWrite(sixHour, LOW);
     digitalWrite(sevenHour, LOW);
     digitalWrite(eightHour, LOW); 
     digitalWrite(nineHour, LOW);
     digitalWrite(tenHour, LOW);
     digitalWrite(elevenHour, HIGH);
     digitalWrite(zeroHour, LOW);
  }
   }

  Serial.println(inByte);
      
    }
}



