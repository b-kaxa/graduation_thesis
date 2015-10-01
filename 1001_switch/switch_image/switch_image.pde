void setup() {
    size(700,700);
}

void draw() {
    view_init();
    create_rects();

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