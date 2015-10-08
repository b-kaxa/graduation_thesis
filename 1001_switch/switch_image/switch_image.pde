int round_x;
int round_y;
float branch_num = random(0, 4);

void setup() {
    size(700,700);
    println(ceil(branch_num));

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

    // 円が画面外に出た時、初期化
    if (height / 1.6 < round_y) {
        round_x = 0;
        round_y = -350;
        branch_num = random(0, 4);
        println(ceil(branch_num));
    }

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

}

void route_left(int x) {
    round_x--;

    if (round_x <= x) {
        round_x = x;
        round_y++;
    }
}

void route_right(int x) {
    round_x++;

    if (x <= round_x) {
        round_x = x;
        round_y++;
    }
}