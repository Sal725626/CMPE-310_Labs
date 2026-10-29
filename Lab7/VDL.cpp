// Voltage Measurement using Arduino UNO
#include <LiquidCrystal_I2C.h>
#include <Wire.h>
LiquidCrystal_I2C lcd(0x27, 16, 2);


int voltageV = A0; // input pin


void setup() {
  // put your setup code here, to run once:
pinMode (voltageV, INPUT);
  lcd.init();
  lcd.backlight();
 
}


void loop() {
  // put your main code here, to run repeatedly:
  int VoltageMsmt = analogRead(voltageV);
  float Vcalc = (5.0/1023)*VoltageMsmt;
  Vcalc = Vcalc*2.00;
  lcd.setCursor(0,0);
  lcd.print ("BATT ");
  lcd.print (Vcalc, 2);
  lcd.print ("V ");
  delay(500);
}
