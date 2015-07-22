import processing.serial.*;
int angle;
Serial myPort;

void setup(){
  size(400, 400, P3D);
  noStroke();
  angle = 0;

  myPort = new Serial(this, Serial.list()[2], 9600);
}

void draw(){
  background(0);
  angle += 1;
  if(angle >= 135 && angle < 315) myPort.write(1);
  if(angle >= 315) myPort.write(0);
  if(angle > 360) angle = 0;
 
  translate(width/2, height/2); // centering
  rotateY(radians(angle));

  fill(255);
  scale(80);

  beginShape(QUADS);

  // Front white
  fill(255,255,255);
  vertex(-1, -1,  1);
  vertex( 1, -1,  1);
  vertex( 1,  1,  1);
  vertex(-1,  1,  1);
  
  // Left
  // light blue
  fill(255,255,255);
  vertex(-1, -1, -1);
  vertex(-1, -1,  1);
  vertex(-1,  1,  1);
  vertex(-1,  1, -1);

  // Right
  fill(0,255,255);
  vertex( 1, -1,  1);
  vertex( 1, -1, -1);
  vertex( 1,  1, -1);
  vertex( 1,  1,  1);

  // Back
  fill(0,255,255);
  vertex( 1, -1, -1);
  vertex(-1, -1, -1);
  vertex(-1,  1, -1);
  vertex( 1,  1, -1);

  endShape();

//  box(150, 150, 150);
}

void mousePressed(){
  myPort.write(1);
}

void mouseReleased(){
  myPort.write(0);
}
