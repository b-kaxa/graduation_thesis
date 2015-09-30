int round;
void setup() {
    size(700,700);
    frameRate(60);

    round = -400;
}

void draw() {
    view_init();

    // 斜めの長方形設置
    fill(255,255,255);
    rotate(PI/4);
    noStroke();
    rect(0, 300, 150, 500);

    // 斜めの長方形設置
    fill(255,255,255);
    rotate(-PI/2);
    noStroke();
    rect(0, 300, 150, 500);

    // 座標を戻す
    rotate(PI/4);




    // 縦の長方形設置
    fill(255,255,255);
    noStroke();
    rect(0, -150, 175, 500);

    // 動く円設置
    fill(0,0,255);
    if (round < 0) {
        round += 1;
    }
    ellipse(0,round,100,100);

    // 座標を回転、PI=180°
    // rotate(PI/2);
}

void view_init() {
    // 背景色rgb
    background(255, 218, 185);

    // 座標軸を中央に変更
    translate(width/2, height/2);

    // 図形の座標軸を中央に変更
    rectMode(CENTER);
}