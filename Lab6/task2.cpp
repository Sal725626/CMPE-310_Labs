
const int LED1 = 12;
const int LED2 = 10;

void setup() {

    pinMode (LED1, OUTPUT);
    pinMode (LED2, OUTPUT); 
                    }

void loop() {
    
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
    delay(1000);

    //led1 on
    digitalWrite(LED1, LOW);
    delay(1000);

    // led1 on and led2 off now
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, LOW);
    delay(1000);
    //both off
    digitalWrite(LED1, LOW);
}