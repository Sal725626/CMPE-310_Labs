const int LED1 = 12;

void setup(){
    pinMode (LED1, OUTPUT);
}

void loop(){

    digitalWrite(LED1, HIGH);
    display(1000);

    digitalWrite(LED1, LOW);
    display(1000);
}