int round_x = 160;
int round_y = -350;

float round_speed = 5.0;
float loop_speed;
float dr = 0;

void setup() {
    size(800,700);
}

void draw() {
    view_init();
    create_rects();
    create_loop_road();

    // 円を動かす
    if (round_y < 0) {
        round_y += round_speed;
    }

    // 分岐点まで来た時の処理
    if (0 <= round_y) {
        round_x -= 0;
        round_y -= 0;
        rotate(radians(dr));

        loop_speed = (round_speed / 2);
        dr += loop_speed;
    }

    fill(0,0,0);
    ellipse(round_x,round_y,65,65);

    round_init();
}

void view_init() {
    // 背景色rgb
    background(210, 180, 140);

    // 座標軸を中央に変更
    translate(width/2 - 160, height/2);

    // 図形の座標軸を中央に変更
    rectMode(CENTER);
}

void create_rects() {
    // 縦の長方形設置
    fill(255,255,255);
    noStroke();
    rect(160, 0, 80, 700);
}

void create_loop_road() {
    // 円の道を作る
    fill(255,255,255);
    ellipse(0,0,400,400);

    fill(210, 180, 140);
    ellipse(0,0,230,230);
}

void round_init() {
    // 円が画面外に出た時、初期化
    if (height / 1.6 < round_y) {
        round_x = 0;
        round_y = -350;
    }
}