import processing.serial.*;
Serial myPort;

void setup(){
  myPort = new Serial(this, Serial.list()[2], 9600);
}

void draw(){

}

void mousePressed(){
  myPort.write(1);
}

void mouseReleased(){
  myPort.write(0);
}
