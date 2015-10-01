int round_x;
int round_y;

void setup() {
    size(800,700);

    round_x = 0;
    round_y = -350;
}

void draw() {
    view_init();
    create_rects();
    create_loop_road();

    // 円を動かす
    if (round_y < 0) {
        round_y += 1;
    }

    // 分岐点まで来た時の処理
    if (0 <= round_y) {
        round_x -= 1;
    }

    if (round_x < -260) {
        round_x = -260;
        round_y += 1;
    }

    fill(0,0,0);
    ellipse(round_x,round_y,65,65);

    // 円が画面外に出た時、初期化
    if (height / 1.6 < round_y) {
        round_x = 0;
        round_y = -350;
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
    // 縦の長方形設置
    fill(255,255,255);
    noStroke();
    rect(0, 0, 80, 700);
}

void create_loop_road() {
    fill(255,255,255);
    ellipse(-160,35,400,400);

}