import processing.serial.*;
Serial myPort;

int val;
String text;

void setup()
{
  println(Serial.list());
  size(600, 600);
  
//  String port = Serial.list()[2];
  myPort = new Serial(this, "/dev/cu.usbmodem1411", 9600);
}
 
void draw()
{
  delay(100);
  background(0);
  textSize(40);
  text(val, 300, 300);
}
 
void serialEvent(Serial myPort){
  // read data from Arduino
  val = myPort.read();
}

