void setup() {
    size(700,700);
    frameRate(60);
}

void draw() {
    // 背景色rgb
    background(255, 218, 185);

    // 座標軸を中央に変更
    translate(width/2, height/2);

    // 図形の座標軸を中央に変更
    rectMode(CENTER);

    // 長方形
    rect(0, 0, 100, 500);

    // 座標を回転、PI=180°
    // rotate(PI/2);
}