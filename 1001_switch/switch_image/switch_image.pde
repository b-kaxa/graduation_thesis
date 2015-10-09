// 円の初期座標
int round_x = 0;
int round_y = -350;

// 分岐判定
float branch_num = random(0, 4);

//円の動作スピード
float round_speed = 15;

void setup() {
    // 画面サイズ
    size(700,700);
}

void draw() {
    view_init();
    create_rects();

    // 円を動かす
    if (round_y < 0) {
        round_y += round_speed;
    }

    // 分岐点まで来た時の処理
    if (0 <= round_y) {
        switch (ceil(branch_num)) {
            case 1:
                route_left(-260);
                break;
            case 2:
                route_left(-90);
                break;
            case 3:
                route_right(90);
                break;
            case 4:
                route_right(260);
                break;
        }
    }

    fill(0,0,0);
    ellipse(round_x,round_y,65,65);

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
    fill(255,255,255);
    noStroke();

    // 縦の長方形
    rect(0, -170, 80, 380);

    // 横の長方形
    rect(0, 0, 600, 80);

    // 1本目
    rect(-260, 210, 80, 500);
    // 2本目
    rect(-90, 210, 80, 500);
    // 3本目
    rect(90, 210, 80, 500);
    // 4本目
    rect(260, 210, 80, 500);

    // 分岐の数字の表示
    fill(255);
    textSize(64);
    text(ceil(branch_num), 150, -150);

}

void route_left(int x) {
    round_x -= round_speed;

    if (round_x <= x) {
        round_x = x;
        round_y += round_speed;
    }
}

void route_right(int x) {
    round_x += round_speed;

    if (x <= round_x) {
        round_x = x;
        round_y += round_speed;
    }
}

void round_init() {
    // 円が画面外に出た時、初期化
    if (width / 1.6 < round_x || round_x < -(width / 1.6)) {
        round_x = 0;
        round_y = -350;
        round_color_r = random(0, 255);
        round_color_b = random(0, 255);
    }
}