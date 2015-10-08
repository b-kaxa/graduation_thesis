int round_x;
int round_y;
float dr = 0;

void setup() {
    size(800,700);

    // 円の初期座標
    round_x = 160;
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
        round_x -= 0;
        round_y -= 0;
        rotate(radians(dr));
        dr += 0.5;
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

    fill(255, 218, 185);
    ellipse(0,0,230,230);
}