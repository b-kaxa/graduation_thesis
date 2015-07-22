int val = 0;
const int LED = 13;

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  val = analogRead(A0);
  
  Serial.write(val);
  digitalWrite(LED, val);
  delay(100);
}

