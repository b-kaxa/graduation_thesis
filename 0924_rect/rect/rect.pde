int round;
void setup() {
    size(700,700);
    frameRate(60);

    round = -250;
}

void draw() {
    // 背景色rgb
    background(255, 218, 185);

    // 座標軸を中央に変更
    translate(width/2, height/2);

    // 図形の座標軸を中央に変更
    rectMode(CENTER);

    // 座標軸を回転させる
    // rotate(radians(frameCount));

    // 長方形設置
    rect(0, -100, 100, 500);

    // 円設置
    round += 1;
    ellipse(0,round,100,100);

    // 座標を回転、PI=180°
    // rotate(PI/2);
}