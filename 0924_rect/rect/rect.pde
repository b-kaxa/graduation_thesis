int round_x;
int round_y;
float round_color_r = random(0, 255);
float round_color_b = random(0, 255);

void setup() {
    size(700,700);
    frameRate(60);

    round_x = 0;
    round_y = -350;
}

void draw() {
    view_init();
    create_rects();

    // 円を動かす
    if (round_y < 0) {
        round_y += 1;
    }

    // 分岐点まで来た時の処理
    if (0 <= round_y) {
        round_y += 1;
        if (100 <= round_color_r) {
            round_x -= 1;
        } else {
            round_x += 1;
        }
    }

    // round_color = random(0, 255);

    fill(round_color_r,0,round_color_b);
    ellipse(round_x,round_y,100,100);

    // 円が画面外に出た時、初期化
    if (width / 1.6 < round_x || round_x < -(width / 1.6)) {
        round_x = 0;
        round_y = -350;
        round_color_r = random(0, 255);
        round_color_b = random(0, 255);
    }
}

void view_init() {
    // 背景色rgb
    background(255, 218, 185);

    // 座標軸を中央に変更
    translate(width/2, height/2);

    // 図形の座標軸を中央に変更
    rectMode(CENTER);
}

void create_rects() {
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
}