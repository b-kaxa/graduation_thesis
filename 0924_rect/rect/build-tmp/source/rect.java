import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class rect extends PApplet {

int round;
public void setup() {
    
    frameRate(60);

    round = -250;
}

public void draw() {
    // \u80cc\u666f\u8272rgb
    background(255, 218, 185);

    // \u5ea7\u6a19\u8ef8\u3092\u4e2d\u592e\u306b\u5909\u66f4
    translate(width/2, height/2);

    // \u56f3\u5f62\u306e\u5ea7\u6a19\u8ef8\u3092\u4e2d\u592e\u306b\u5909\u66f4
    rectMode(CENTER);

    // \u5ea7\u6a19\u8ef8\u3092\u56de\u8ee2\u3055\u305b\u308b
    // rotate(radians(frameCount));

    // \u9577\u65b9\u5f62\u8a2d\u7f6e
    rect(0, -100, 100, 500);

    // \u5186\u8a2d\u7f6e
    round += 1;
    ellipse(0,round,100,100);

    // \u5ea7\u6a19\u3092\u56de\u8ee2\u3001PI=180\u00b0
    // rotate(PI/2);
}
  public void settings() {  size(700,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rect" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
