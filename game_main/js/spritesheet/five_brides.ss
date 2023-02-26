const DEBUG_MODE = 0;              // 0: OFF, 1: ON
const FADEIN_TIME = 500;          // キャラクターのフェードイン時間
const FADEOUT_TIME = 1000;         // キャラクターのフェードアウト時間
const LABEL_FONTSIZE = 30;         // ラベルのフォントサイズ
const LABEL_OFFSET = 130;          // ラベルのオフセット
const LABEL_FILL = "yellow";       // ラベルのFILL色
const LABEL_STROKE = "black";      // ラベルのSTROKE色
const LABEL_STROKE_WIDTH = 5;      // ラベルのSTROKE幅
const LABEL_TIME = FADEIN_TIME/35  // フェードイン中のラベル表示時間（単位：フレーム）
const TITLE_FONTSIZE = 30;         // タイトルのフォントサイズ
const TITLE_FILL = "white";        // タイトルのFILL色
const TITLE_STROKE = "black";      // タイトルのSTROKE色
const TITLE_STROKE_WIDTH = 5;      // タイトルのSTROKE幅
const COMPLETE_FONTSIZE = 50;      // そろった！のフォントサイズ
const COMPLETE_FILL = "pink";      // そろった！のFILL色
const COMPLETE_STROKE = "red";     // そろった！のSTROKE色
const COMPLETE_STROKE_WIDTH = 10;  // そろった！のSTROKE幅
const COMPLETE_SPEED = 1200;       // そろった！のスピード
const SHAPE_FILL = "pink";         // そろった背景！のFILL色
const SHAPE_STROKE = "pink";       // そろった！のSTROKE色

// tweener定義
const CHAR_FADEIN = (char_size) => ({
    tweens: [
    ['to', {width:80, height:80, alpha: 0.0}, 1],
    ['to', {width:char_size, height:char_size, alpha: 1.0}, FADEIN_TIME, 'easeOutSine']
    ]
});
const CHAR_FADEOUT = {
    tweens: [
    ['to', {alpha: 1.0}, 1],
    ['to', {width:80, height:80, alpha: 0.0}, FADEOUT_TIME, 'easeOutQuad']
    ]
};
const LABEL_MOVE = (x1, y1, x2, y2, t1, t2) => ({
    tweens: [
    ['to', {x:x1, y:y1}, t1, 'easeInOutBack'],
    ['to', {x:x2, y:y2}, t2, 'easeInOutBack']
    ]
});

// asset定義（背景）
ASSETS.image["mainwindow"] = "./images/five_brides.jpg" + datestr;

// asset定義（タイトル）
ASSETS.image["title"] = "./images/info.png" + datestr;
ASSETS.spritesheet["title"] = 
{
  "frame": { "width": 445, "height": 428, "cols": 1, "rows": 1 },
  "animations" : {
    "000": {"frames": [0],  "next": "000", "frequency": 1 }
  }
}

// asset定義（壁穴）
ASSETS.image["hole000"] = "./images/hole4.png" + datestr;
ASSETS.image["hole001"] = "./images/hole4.png" + datestr;
ASSETS.image["hole002"] = "./images/hole4.png" + datestr;
ASSETS.image["hole003"] = "./images/hole4.png" + datestr;
ASSETS.image["hole004"] = "./images/hole4.png" + datestr;
ASSETS.spritesheet["hole000"] = 
{
  "frame": { "width": 640, "height": 640, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [0],  "next": "000", "frequency": 1 },
    "001": {"frames": [1],  "next": "006", "frequency": 10 },
    "002": {"frames": [1],  "next": "006", "frequency": 10 },
    "003": {"frames": [1],  "next": "006", "frequency": 10 },
    "004": {"frames": [1],  "next": "006", "frequency": 10 },
    "005": {"frames": [1],  "next": "006", "frequency": 10 },
    "006": {"frames": [2],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole001"] = 
{
  "frame": { "width": 640, "height": 640, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [3],  "next": "000", "frequency": 1 },
    "001": {"frames": [4],  "next": "006", "frequency": 10 },
    "002": {"frames": [4],  "next": "006", "frequency": 10 },
    "003": {"frames": [4],  "next": "006", "frequency": 10 },
    "004": {"frames": [4],  "next": "006", "frequency": 10 },
    "005": {"frames": [4],  "next": "006", "frequency": 10 },
    "006": {"frames": [5],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole002"] = 
{
  "frame": { "width": 640, "height": 640, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [6],  "next": "000", "frequency": 1 },
    "001": {"frames": [7],  "next": "006", "frequency": 10 },
    "002": {"frames": [7],  "next": "006", "frequency": 10 },
    "003": {"frames": [7],  "next": "006", "frequency": 10 },
    "004": {"frames": [7],  "next": "006", "frequency": 10 },
    "005": {"frames": [7],  "next": "006", "frequency": 10 },
    "006": {"frames": [8],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole003"] = 
{
  "frame": { "width": 640, "height": 640, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [9],   "next": "000", "frequency": 1 },
    "001": {"frames": [10],  "next": "006", "frequency": 10 },
    "002": {"frames": [10],  "next": "006", "frequency": 10 },
    "003": {"frames": [10],  "next": "006", "frequency": 10 },
    "004": {"frames": [10],  "next": "006", "frequency": 10 },
    "005": {"frames": [10],  "next": "006", "frequency": 10 },
    "006": {"frames": [11],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole004"] = 
{
  "frame": { "width": 640, "height": 640, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [12],  "next": "000", "frequency": 1 },
    "001": {"frames": [13],  "next": "006", "frequency": 10 },
    "002": {"frames": [13],  "next": "006", "frequency": 10 },
    "003": {"frames": [13],  "next": "006", "frequency": 10 },
    "004": {"frames": [13],  "next": "006", "frequency": 10 },
    "005": {"frames": [13],  "next": "006", "frequency": 10 },
    "006": {"frames": [14],  "next": "006", "frequency": 1 }
  }
}

// asset定義（キャラクタ）
const CHARACTER = {
  "000": { x: 160, y: 250, char_size: 320, hole_size: 320, label_in:"", label_out:"", current_anim:"" },
  "001": { x: 480, y: 250, char_size: 320, hole_size: 320, label_in:"", label_out:"", current_anim:"" },
  "002": { x: 320, y: 500, char_size: 320, hole_size: 320, label_in:"", label_out:"", current_anim:"" },
  "003": { x: 160, y: 750, char_size: 320, hole_size: 320, label_in:"", label_out:"", current_anim:"" },
  "004": { x: 480, y: 750, char_size: 320, hole_size: 320, label_in:"", label_out:"", current_anim:"" }
};

ASSETS.image["char000"] = "./images/character41.png" + datestr;
ASSETS.image["char001"] = "./images/character42.png" + datestr;
ASSETS.image["char002"] = "./images/character43.png" + datestr;
ASSETS.image["char003"] = "./images/character44.png" + datestr;
ASSETS.image["char004"] = "./images/character45.png" + datestr;
ASSETS.spritesheet["char000"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 10, "rows": 5 },
  "animations" : {
    "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35],  "next": "101", "frequency": 2, "label": "" },
    "001": {"frames": [40], "next": "001", "frequency": 1, "label": "" },
    "002": {"frames": [41], "next": "002", "frequency": 1, "label": "" },
    "003": {"frames": [42], "next": "003", "frequency": 1, "label": "" },
    "004": {"frames": [43], "next": "004", "frequency": 1, "label": "" },
    "005": {"frames": [44], "next": "005", "frequency": 1, "label": "" },
    "006": {"frames": [45], "next": "006", "frequency": 1, "label": "" },
    "101": {"frames": [35], "next": "101", "frequency": 1, "label": "" },
  }
}
ASSETS.spritesheet["char001"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 10, "rows": 5 },
  "animations" : {
    "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29],  "next": "101", "frequency": 2, "label": "" },
    "001": {"frames": [40], "next": "001", "frequency": 1, "label": "" },
    "002": {"frames": [41], "next": "002", "frequency": 1, "label": "" },
    "003": {"frames": [42], "next": "003", "frequency": 1, "label": "" },
    "004": {"frames": [43], "next": "004", "frequency": 1, "label": "" },
    "005": {"frames": [44], "next": "005", "frequency": 1, "label": "" },
    "006": {"frames": [45], "next": "006", "frequency": 1, "label": "" },
    "101": {"frames": [29], "next": "101", "frequency": 1, "label": "" },
  }
}
ASSETS.spritesheet["char002"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 10, "rows": 5 },
  "animations" : {
    "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35],  "next": "101", "frequency": 2, "label": "" },
    "001": {"frames": [40], "next": "001", "frequency": 1, "label": "" },
    "002": {"frames": [41], "next": "002", "frequency": 1, "label": "" },
    "003": {"frames": [42], "next": "003", "frequency": 1, "label": "" },
    "004": {"frames": [43], "next": "004", "frequency": 1, "label": "" },
    "005": {"frames": [44], "next": "005", "frequency": 1, "label": "" },
    "006": {"frames": [45], "next": "006", "frequency": 1, "label": "" },
    "101": {"frames": [35], "next": "101", "frequency": 1, "label": "" },
  }
}
ASSETS.spritesheet["char003"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 10, "rows": 5 },
  "animations" : {
    "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29],  "next": "101", "frequency": 2, "label": "" },
    "001": {"frames": [40], "next": "001", "frequency": 1, "label": "" },
    "002": {"frames": [41], "next": "002", "frequency": 1, "label": "" },
    "003": {"frames": [42], "next": "003", "frequency": 1, "label": "" },
    "004": {"frames": [43], "next": "004", "frequency": 1, "label": "" },
    "005": {"frames": [44], "next": "005", "frequency": 1, "label": "" },
    "006": {"frames": [45], "next": "006", "frequency": 1, "label": "" },
    "101": {"frames": [29], "next": "101", "frequency": 1, "label": "" },
  }
}
ASSETS.spritesheet["char004"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 10, "rows": 5 },
  "animations" : {
    "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35],  "next": "101", "frequency": 2, "label": "" },
    "001": {"frames": [40], "next": "001", "frequency": 1, "label": "" },
    "002": {"frames": [41], "next": "002", "frequency": 1, "label": "" },
    "003": {"frames": [42], "next": "003", "frequency": 1, "label": "" },
    "004": {"frames": [43], "next": "004", "frequency": 1, "label": "" },
    "005": {"frames": [44], "next": "005", "frequency": 1, "label": "" },
    "006": {"frames": [45], "next": "006", "frequency": 1, "label": "" },
    "101": {"frames": [35], "next": "101", "frequency": 1, "label": "" },
  }
}

// asset定義（そろったスプライト）
const COMPLETE = { x: 320, y: 864, size_x: 320, size_y: 192 };
ASSETS.image["complete"] = "./images/complete.png" + datestr;
ASSETS.spritesheet["complete"] = 
{
  "frame": { "width": 320, "height": 192, "cols": 7, "rows": 1 },
  "animations" : {
    "000": {"frames": [0],  "next": "000", "frequency": 1 },
    "001": {"frames": [1, 2, 3, 4, 5],  "next": "002", "frequency": 5 },
    "002": {"frames": [6],  "next": "002", "frequency": 5 }
  }
}

// そろったメッセージ定義（キャラクタごと）
const COMPLETE_MESSAGE = {
  "000": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  },
  "001": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  },
  "002": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  },
  "003": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  },
  "004": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  },
  "005": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  },
  "006": {
    message: { 0: "5にんの花嫁の", 1: "衣装がそろった！" },
    offset_y: { 0: 320, 1: 500 },
    speed: { 0: 500, 1: 2500 }
  }
};

// 難易度
const DIFFICULITY_NUMBER = document.getElementById("DIFFICULITY_NUMBER").innerText;

// title定義
const TITLE = { x: 60, y:45, char_size: 80, label_offset_x: 260, label_offset_y: 0,
  mode: { "3": "かんたん", "4": "ふつう", "5": "むずかしい",  "6": "かなりむずかしい" },
  odds: { "3": "250", "4": "1000", "5": "3000",  "6": "8000" },
};
const TITLE_LABEL1 = TITLE.mode[DIFFICULITY_NUMBER] + " モード";
const TITLE_LABEL2 = "1回でそろう確率は、約1/" + TITLE.odds[DIFFICULITY_NUMBER];

// 難易度ごとのアニメーションパターン
const ANIMATION_PATTERN = [ "000", "001", "002", "003", "004", "005", "006" ];
console.log("ANIMATION_PATTERN", ANIMATION_PATTERN);
let delete_roop = Object.keys(ANIMATION_PATTERN).length - DIFFICULITY_NUMBER;
for (let i = 0; i < delete_roop; i++){
  let current_len = Object.keys(ANIMATION_PATTERN).length;
  ANIMATION_PATTERN.splice(rand(0, current_len - 1), 1);
};
console.log("ANIMATION_PATTERN", ANIMATION_PATTERN);
