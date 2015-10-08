//グローバル変数
float X,Y;
float Cx=100, Cy=100;
float Angle = 0;
float R = 0;

float dr = 5.0;

//初期化
void setup(){
   size(800,800);
   colorMode(HSB,100);
   background(99);
   frameRate(10);
}


void draw(){
   background(99);
   //関数呼び出し
   fade();

   //角度を10度ずつ増加させる
   Angle = Angle + 1;

   //角度を度からラジアンに変換させる
   X = Cx + ( R * cos(radians(Angle)) );
   Y = Cy + ( R * -sin(radians(Angle)) );

   noStroke();
   //1周ごとに色変化
   fill(99,99,99);

   translate(width / 2, height / 2);
   rotate(radians(dr));
   dr += 3.0;

   //図形を描く
   rectMode(CENTER);
   rect(X, Y, 10, 10);
}

//画面リセット用の関数
void fade(){
   noStroke();
   fill(99,30);
   rectMode(CORNER);
   rect(0, 0, 200, 200);
}