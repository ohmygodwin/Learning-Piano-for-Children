/*
  Button
 
 Turns on and off a light emitting diode(LED) connected to digital  
 pin 13, when pressing a pushbutton attached to pin 2. 
 
 
 The circuit:
 * LED attached from pin 13 to ground 
 * pushbutton attached to pin 2 from +5V
 * 10K resistor attached to pin 2 from ground
 
 * Note: on most Arduinos there is already an LED on the board
 attached to pin 13.
 
 
 created 2005
 by DojoDave <http://www.0j0.org>
 modified 28 Oct 2010
 by Tom Igoe
 
 This example code is in the public domain.
 
 http://www.arduino.cc/en/Tutorial/Button
 */

// constants won't change. They're used here to 
// set pin numbers:

const int buttonPin = 2;     // the number of the pushbutton pin
const int ledPin =  13;      // the number of the LED pin
const int buttonPin2 = 3;
const int ledPin2 = 12;
const int buttonPin3= 4;
const int ledPin3 = 11;
const int buttonPin4 = 5;
const int ledPin4 = 10;
const int speakerPin = 9;    //speaker

// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState4 = 0;
void setup() {
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);      
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);     
  pinMode(ledPin2, OUTPUT);
  pinMode(buttonPin2, INPUT);
  pinMode(ledPin3, OUTPUT);
  pinMode(buttonPin3, INPUT);
  pinMode(ledPin4, OUTPUT);
  pinMode(buttonPin4, INPUT);
}

void loop(){
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);
  buttonState2 = digitalRead(buttonPin2);
  buttonState3 = digitalRead(buttonPin3);
  buttonState4 = digitalRead(buttonPin4);

  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if (buttonState == LOW) {     
    // turn LED on:    
    digitalWrite(ledPin, HIGH); 
    tone(9, 1915, 500); 
  } 
  else {
    // turn LED off:
    digitalWrite(ledPin, LOW); 
    
  }
 
  if (buttonState2 == LOW) {
    digitalWrite(ledPin2, HIGH);
    tone(9, 1700, 500);
  }
  else{
    digitalWrite(ledPin2, LOW);
  }
  
   if (buttonState3 == LOW) {     
    // turn LED on:    
    digitalWrite(ledPin3, HIGH); 
    tone(9, 1519, 500); 
  } 
  else {
    // turn LED off:
    digitalWrite(ledPin3, LOW); 
  }
  
   if (buttonState4 == LOW) {     
    // turn LED on:    
    digitalWrite(ledPin4, HIGH); 
    tone(9, 1432, 500); 
  } 
  else {
    // turn LED off:
    digitalWrite(ledPin4, LOW); 
  }
}
