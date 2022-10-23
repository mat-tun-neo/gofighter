const DEBUG_MODE = 0;              // 0: OFF, 1: ON
const FADEIN_TIME = 1000;          // キャラクターのフェードイン時間
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
const COMPLETE_FILL = "black";     // そろった！のFILL色
const COMPLETE_STROKE = "yellow";  // そろった！のSTROKE色
const COMPLETE_STROKE_WIDTH = 10;  // そろった！のSTROKE幅
const COMPLETE_SPEED = 1200;       // そろった！のスピード
const SHAPE_FILL = "black";        // そろった背景！のFILL色
const SHAPE_STROKE = "black";      // そろった！のSTROKE色

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
    ['to', {x:x1, y:y1}, t1, 'easeOutElastic'],
    ['to', {x:x2, y:y2}, t2, 'easeOutElastic']
    ]
});

// asset定義（背景）
ASSETS.image["mainwindow"] = "./images/power_rangers.jpg" + datestr;

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
ASSETS.image["hole000"] = "./images/hole2.png" + datestr;
ASSETS.image["hole001"] = "./images/hole2.png" + datestr;
ASSETS.image["hole002"] = "./images/hole2.png" + datestr;
ASSETS.image["hole003"] = "./images/hole2.png" + datestr;
ASSETS.image["hole004"] = "./images/hole2.png" + datestr;
ASSETS.spritesheet["hole000"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 6, "rows": 2 },
  "animations" : {
    "000": {"frames": [1],  "next": "000", "frequency": 1 },
    "001": {"frames": [7],   "next": "006", "frequency": 30 },
    "002": {"frames": [8],   "next": "006", "frequency": 30 },
    "003": {"frames": [9],   "next": "006", "frequency": 30 },
    "004": {"frames": [10],  "next": "006", "frequency": 30 },
    "005": {"frames": [11],  "next": "006", "frequency": 30 },
    "006": {"frames": [6],   "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole001"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 6, "rows": 2 },
  "animations" : {
    "000": {"frames": [2],  "next": "000", "frequency": 1 },
    "001": {"frames": [7],   "next": "006", "frequency": 30 },
    "002": {"frames": [8],   "next": "006", "frequency": 30 },
    "003": {"frames": [9],   "next": "006", "frequency": 30 },
    "004": {"frames": [10],  "next": "006", "frequency": 30 },
    "005": {"frames": [11],  "next": "006", "frequency": 30 },
    "006": {"frames": [6],   "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole002"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 6, "rows": 2 },
  "animations" : {
    "000": {"frames": [3],   "next": "000", "frequency": 1 },
    "001": {"frames": [7],   "next": "006", "frequency": 30 },
    "002": {"frames": [8],   "next": "006", "frequency": 30 },
    "003": {"frames": [9],   "next": "006", "frequency": 30 },
    "004": {"frames": [10],  "next": "006", "frequency": 30 },
    "005": {"frames": [11],  "next": "006", "frequency": 30 },
    "006": {"frames": [6],   "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole003"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 6, "rows": 2 },
  "animations" : {
    "000": {"frames": [4],  "next": "000", "frequency": 1 },
    "001": {"frames": [7],   "next": "006", "frequency": 30 },
    "002": {"frames": [8],   "next": "006", "frequency": 30 },
    "003": {"frames": [9],   "next": "006", "frequency": 30 },
    "004": {"frames": [10],  "next": "006", "frequency": 30 },
    "005": {"frames": [11],  "next": "006", "frequency": 30 },
    "006": {"frames": [6],   "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole004"] = 
{
  "frame": { "width": 320, "height": 320, "cols": 6, "rows": 2 },
  "animations" : {
    "000": {"frames": [5],  "next": "000", "frequency": 1 },
    "001": {"frames": [7],   "next": "006", "frequency": 30 },
    "002": {"frames": [8],   "next": "006", "frequency": 30 },
    "003": {"frames": [9],   "next": "006", "frequency": 30 },
    "004": {"frames": [10],  "next": "006", "frequency": 30 },
    "005": {"frames": [11],  "next": "006", "frequency": 30 },
    "006": {"frames": [6],   "next": "006", "frequency": 1 }
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

ASSETS.image["char000"] = "./images/character2.png" + datestr;
ASSETS.image["char001"] = "./images/character2.png" + datestr;
ASSETS.image["char002"] = "./images/character2.png" + datestr;
ASSETS.image["char003"] = "./images/character2.png" + datestr;
ASSETS.image["char004"] = "./images/character2.png" + datestr;
ASSETS.spritesheet["char000"] = 
{
  "frame": { "width": 420, "height": 420, "cols": 12, "rows": 5 },
  "animations" : {
    "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "100", "frequency": 2, "label": "あかカンフーの\nかまえ！" },
    "001": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "101", "frequency": 2, "label": "あかカンフーの\nパンチ！" },
    "002": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "102", "frequency": 2, "label": "あかカンフーの\nパンチ！" },
    "003": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "103", "frequency": 2, "label": "あかカンフーの\nパンチ！" },
    "004": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "104", "frequency": 2, "label": "あかカンフーの\nキック！" },
    "005": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "105", "frequency": 2, "label": "あかカンフーの\nキック！" },
    "006": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "106", "frequency": 2, "label": "あかカンフーの\nキック！" },
    "007": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "107", "frequency": 2, "label": "あかカンフーの\nトォォ～～～！" },
    "008": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "108", "frequency": 2, "label": "あかカンフーの\nピンチ！" },
    "009": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "109", "frequency": 2, "label": "あかカンフーの\nキック！" },
    "010": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "110", "frequency": 2, "label": "あかカンフーの\nパンチ！" },
    "011": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "111", "frequency": 2, "label": "あかカンフーの\nキック！" },
    "100": {"frames": [0],  "next": "100", "frequency": 1, "label": "" },
    "101": {"frames": [1],  "next": "101", "frequency": 1, "label": "" },
    "102": {"frames": [2],  "next": "102", "frequency": 1, "label": "" },
    "103": {"frames": [3],  "next": "103", "frequency": 1, "label": "" },
    "104": {"frames": [4],  "next": "104", "frequency": 1, "label": "" },
    "105": {"frames": [5],  "next": "105", "frequency": 1, "label": "" },
    "106": {"frames": [6],  "next": "106", "frequency": 1, "label": "" },
    "107": {"frames": [7],  "next": "107", "frequency": 1, "label": "" },
    "108": {"frames": [8],  "next": "108", "frequency": 1, "label": "" },
    "109": {"frames": [9],  "next": "109", "frequency": 1, "label": "" },
    "110": {"frames": [10], "next": "110", "frequency": 1, "label": "" },
    "111": {"frames": [11], "next": "111", "frequency": 1, "label": "" }
  }
}
ASSETS.spritesheet["char001"] = 
{
  "frame": { "width": 420, "height": 420, "cols": 12, "rows": 5 },
  "animations" : {
    "000": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "100", "frequency": 2, "label": "みどりカンフーの\nかまえ！" },
    "001": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "101", "frequency": 2, "label": "みどりカンフーの\nパンチ！" },
    "002": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "102", "frequency": 2, "label": "みどりカンフーの\nパンチ！" },
    "003": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "103", "frequency": 2, "label": "みどりカンフーの\nパンチ！" },
    "004": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "104", "frequency": 2, "label": "みどりカンフーの\nキック！" },
    "005": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "105", "frequency": 2, "label": "みどりカンフーの\nキック！" },
    "006": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "106", "frequency": 2, "label": "みどりカンフーの\nキック！" },
    "007": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "107", "frequency": 2, "label": "みどりカンフーの\nトォォ～～～！" },
    "008": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "108", "frequency": 2, "label": "みどりカンフーの\nピンチ！" },
    "009": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "109", "frequency": 2, "label": "みどりカンフーの\nキック！" },
    "010": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "110", "frequency": 2, "label": "みどりカンフーの\nパンチ！" },
    "011": {"frames": [12,13,14,15,16,17,18,19,20,21,22,23],  "next": "111", "frequency": 2, "label": "みどりカンフーの\nキック！" },
    "100": {"frames": [12], "next": "100", "frequency": 1, "label": "" },
    "101": {"frames": [13], "next": "101", "frequency": 1, "label": "" },
    "102": {"frames": [14], "next": "102", "frequency": 1, "label": "" },
    "103": {"frames": [15], "next": "103", "frequency": 1, "label": "" },
    "104": {"frames": [16], "next": "104", "frequency": 1, "label": "" },
    "105": {"frames": [17], "next": "105", "frequency": 1, "label": "" },
    "106": {"frames": [18], "next": "106", "frequency": 1, "label": "" },
    "107": {"frames": [19], "next": "107", "frequency": 1, "label": "" },
    "108": {"frames": [20], "next": "108", "frequency": 1, "label": "" },
    "109": {"frames": [21], "next": "109", "frequency": 1, "label": "" },
    "110": {"frames": [22], "next": "110", "frequency": 1, "label": "" },
    "111": {"frames": [23], "next": "111", "frequency": 1, "label": "" }
  }
}
ASSETS.spritesheet["char002"] = 
{
  "frame": { "width": 420, "height": 420, "cols": 12, "rows": 5 },
  "animations" : {
    "000": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "100", "frequency": 2, "label": "あおカンフーの\nかまえ！" },
    "001": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "101", "frequency": 2, "label": "あおカンフーの\nパンチ！" },
    "002": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "102", "frequency": 2, "label": "あおカンフーの\nパンチ！" },
    "003": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "103", "frequency": 2, "label": "あおカンフーの\nパンチ！" },
    "004": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "104", "frequency": 2, "label": "あおカンフーの\nキック！" },
    "005": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "105", "frequency": 2, "label": "あおカンフーの\nキック！" },
    "006": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "106", "frequency": 2, "label": "あおカンフーの\nキック！" },
    "007": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "107", "frequency": 2, "label": "あおカンフーの\nトォォ～～～！" },
    "008": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "108", "frequency": 2, "label": "あおカンフーの\nピンチ！" },
    "009": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "109", "frequency": 2, "label": "あおカンフーの\nキック！" },
    "010": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "110", "frequency": 2, "label": "あおカンフーの\nパンチ！" },
    "011": {"frames": [24,25,26,27,28,29,30,31,32,33,34,35],  "next": "111", "frequency": 2, "label": "あおカンフーの\nキック！" },
    "100": {"frames": [24], "next": "100", "frequency": 1, "label": "" },
    "101": {"frames": [25], "next": "101", "frequency": 1, "label": "" },
    "102": {"frames": [26], "next": "102", "frequency": 1, "label": "" },
    "103": {"frames": [27], "next": "103", "frequency": 1, "label": "" },
    "104": {"frames": [28], "next": "104", "frequency": 1, "label": "" },
    "105": {"frames": [29], "next": "105", "frequency": 1, "label": "" },
    "106": {"frames": [30], "next": "106", "frequency": 1, "label": "" },
    "107": {"frames": [31], "next": "107", "frequency": 1, "label": "" },
    "108": {"frames": [32], "next": "108", "frequency": 1, "label": "" },
    "109": {"frames": [33], "next": "109", "frequency": 1, "label": "" },
    "110": {"frames": [34], "next": "110", "frequency": 1, "label": "" },
    "111": {"frames": [35], "next": "111", "frequency": 1, "label": "" }
  }
}
ASSETS.spritesheet["char003"] = 
{
  "frame": { "width": 420, "height": 420, "cols": 12, "rows": 5 },
  "animations" : {
    "000": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "100", "frequency": 2, "label": "ももカンフーの\nかまえ！" },
    "001": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "101", "frequency": 2, "label": "ももカンフーの\nパンチ！" },
    "002": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "102", "frequency": 2, "label": "ももカンフーの\nパンチ！" },
    "003": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "103", "frequency": 2, "label": "ももカンフーの\nパンチ！" },
    "004": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "104", "frequency": 2, "label": "ももカンフーの\nキック！" },
    "005": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "105", "frequency": 2, "label": "ももカンフーの\nキック！" },
    "006": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "106", "frequency": 2, "label": "ももカンフーの\nキック！" },
    "007": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "107", "frequency": 2, "label": "ももカンフーの\nトォォ～～～！" },
    "008": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "108", "frequency": 2, "label": "ももカンフーの\nピンチ！" },
    "009": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "109", "frequency": 2, "label": "ももカンフーの\nキック！" },
    "010": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "110", "frequency": 2, "label": "ももカンフーの\nパンチ！" },
    "011": {"frames": [36,37,38,39,40,41,42,43,44,45,46,47],  "next": "111", "frequency": 2, "label": "ももカンフーの\nキック！" },
    "100": {"frames": [36], "next": "100", "frequency": 1, "label": "" },
    "101": {"frames": [37], "next": "101", "frequency": 1, "label": "" },
    "102": {"frames": [38], "next": "102", "frequency": 1, "label": "" },
    "103": {"frames": [39], "next": "103", "frequency": 1, "label": "" },
    "104": {"frames": [40], "next": "104", "frequency": 1, "label": "" },
    "105": {"frames": [41], "next": "105", "frequency": 1, "label": "" },
    "106": {"frames": [42], "next": "106", "frequency": 1, "label": "" },
    "107": {"frames": [43], "next": "107", "frequency": 1, "label": "" },
    "108": {"frames": [44], "next": "108", "frequency": 1, "label": "" },
    "109": {"frames": [45], "next": "109", "frequency": 1, "label": "" },
    "110": {"frames": [46], "next": "110", "frequency": 1, "label": "" },
    "111": {"frames": [47], "next": "111", "frequency": 1, "label": "" }
  }
}
ASSETS.spritesheet["char004"] = 
{
  "frame": { "width": 420, "height": 420, "cols": 12, "rows": 5 },
  "animations" : {
    "000": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "100", "frequency": 2, "label": "きいろカンフーの\nかまえ！" },
    "001": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "101", "frequency": 2, "label": "きいろカンフーの\nパンチ！" },
    "002": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "102", "frequency": 2, "label": "きいろカンフーの\nパンチ！" },
    "003": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "103", "frequency": 2, "label": "きいろカンフーの\nパンチ！" },
    "004": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "104", "frequency": 2, "label": "きいろカンフーの\nキック！" },
    "005": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "105", "frequency": 2, "label": "きいろカンフーの\nキック！" },
    "006": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "106", "frequency": 2, "label": "きいろカンフーの\nキック！" },
    "007": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "107", "frequency": 2, "label": "きいろカンフーの\nトォォ～～～！" },
    "008": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "108", "frequency": 2, "label": "きいろカンフーの\nピンチ！" },
    "009": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "109", "frequency": 2, "label": "きいろカンフーの\nキック！" },
    "010": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "110", "frequency": 2, "label": "きいろカンフーの\nパンチ！" },
    "011": {"frames": [48,49,50,51,52,53,54,55,56,57,58,59],  "next": "111", "frequency": 2, "label": "きいろカンフーの\nキック！" },
    "100": {"frames": [48], "next": "100", "frequency": 1, "label": "" },
    "101": {"frames": [49], "next": "101", "frequency": 1, "label": "" },
    "102": {"frames": [50], "next": "102", "frequency": 1, "label": "" },
    "103": {"frames": [51], "next": "103", "frequency": 1, "label": "" },
    "104": {"frames": [52], "next": "104", "frequency": 1, "label": "" },
    "105": {"frames": [53], "next": "105", "frequency": 1, "label": "" },
    "106": {"frames": [54], "next": "106", "frequency": 1, "label": "" },
    "107": {"frames": [55], "next": "107", "frequency": 1, "label": "" },
    "108": {"frames": [56], "next": "108", "frequency": 1, "label": "" },
    "109": {"frames": [57], "next": "109", "frequency": 1, "label": "" },
    "110": {"frames": [58], "next": "110", "frequency": 1, "label": "" },
    "111": {"frames": [59], "next": "111", "frequency": 1, "label": "" }
  }
}
Object.keys(ASSETS.spritesheet["char000"]["animations"]).forEach(k=> {
  shuffleArray(ASSETS.spritesheet["char000"]["animations"][k]["frames"]);
});
Object.keys(ASSETS.spritesheet["char001"]["animations"]).forEach(k=> {
  shuffleArray(ASSETS.spritesheet["char001"]["animations"][k]["frames"]);
});
Object.keys(ASSETS.spritesheet["char002"]["animations"]).forEach(k=> {
  shuffleArray(ASSETS.spritesheet["char002"]["animations"][k]["frames"]);
});
Object.keys(ASSETS.spritesheet["char003"]["animations"]).forEach(k=> {
  shuffleArray(ASSETS.spritesheet["char003"]["animations"][k]["frames"]);
});
Object.keys(ASSETS.spritesheet["char004"]["animations"]).forEach(k=> {
  shuffleArray(ASSETS.spritesheet["char004"]["animations"][k]["frames"]);
});

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
    message: { 0: "5にんのカンフーの", 1: "ワザが出なかった！", 2: "防　御　！！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 }
  },
  "001": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "足首ねらいパンチ！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 }
  },
  "002": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "正拳突きパンチ！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 }
  },
  "003": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "顔面狙いパンチ！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 }
  },
  "004": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "足払いキック！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 }
  },
  "005": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "まわし蹴りキック！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
  },
  "006": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "ななめ上段蹴りキック！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
  },
  "007": {
    message: { 0: "5にんのカンフーの", 1: "ワザが出なかった！", 2: "ジャーーンプ！！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
  },
  "008": {
    message: { 0: "5にんのカンフーの", 1: "ワザが出なかった！", 2: "しかもやられてしまった！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
  },
  "009": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "蹴り上げキック！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
  },
  "010": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "開脚突きパンチ！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
  },
  "011": {
    message: { 0: "5にんのカンフーの", 1: "ワザがそろった！", 2: "ねわざ蹴りキック！" },
    offset_y: { 0: 320, 1: 400, 2: 560 },
    speed: { 0: 500, 1: 2500, 2: 4500 },
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
const ANIMATION_PATTERN = [ "000", "001", "002", "003", "004", "005", "006", "007", "008", "009", "010", "011" ];
console.log("ANIMATION_PATTERN", ANIMATION_PATTERN);
let delete_roop = Object.keys(ANIMATION_PATTERN).length - DIFFICULITY_NUMBER;
for (let i = 0; i < delete_roop; i++){
  let current_len = Object.keys(ANIMATION_PATTERN).length;
  ANIMATION_PATTERN.splice(rand(0, current_len - 1), 1);
};
console.log("ANIMATION_PATTERN", ANIMATION_PATTERN);
