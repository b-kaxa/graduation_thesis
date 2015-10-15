// 円の初期座標
int round_x = 0;
int round_y = -350;

float round_color = random(0, 3);
int round_speed = 3;

void setup() {
    size(700,700);
}

void draw() {
    view_init();
    create_rects();
    round_down();
    create_round();
    round_init();
}

void view_init() {
    // 背景色rgb
    background(210, 180, 140);

    // 座標軸を中央に変更
    translate(width/2, height/2);

    // 図形の座標軸を中央に変更
    rectMode(CENTER);
}

void create_rects() {
    // 縦の長方形設置
    fill(255,255,255);
    noStroke();
    rect(0, 0, 175, 1400);
}

void round_down() {
    // 円を動かす
    round_y += round_speed;
}

void create_round() {
    // 円を描写する
    if (ceil(round_color) == 2) {
        fill(255,100,100);
    } else if (ceil(round_color) == 3) {
        fill(255,255,0);
    } else {
        fill(100,100,255);
    }
    ellipse(round_x,round_y,100,100);
}

void round_init() {
    // 円が画面外に出た時、初期化
    if ((height / 1.6) < round_y) {
        round_x = 0;
        round_y = -350;
        round_color = random(0, 3);
    }
}