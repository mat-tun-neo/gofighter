/*
 * メインシーン
 */
phina.define("SceneMain", {
  // 継承
  superClass: "DisplayScene",
  // コンストラクタ
  init: function(param) {
    console.log("SceneMainクラスinit");
    // 親クラス初期化
    this.superInit();
    // 背景スプライト
    this.mainwindow = Sprite("mainwindow").addChildTo(this);
    this.mainwindow.setPosition(this.gridX.center(), this.gridY.center());
    // スプライトグループ
    this.background = DisplayElement().addChildTo(this);
    this.holeGroup = DisplayElement().addChildTo(this);
    this.characterGroup = DisplayElement().addChildTo(this);
    this.buttonGroup = DisplayElement().addChildTo(this);
    this.messageGroup = DisplayElement().addChildTo(this);
    // Xボタン描画
    this.drawXButton();
    // タイトル描画
    this.title;
    this.drawTitle();
    // 問題の作成
    this.createQuestion();
    this.response;
    // 画面タッチの回数
    this.touch_count = 0;
  },
  // 画面更新
  update: function(app) {
  },
  // Xボタン描画
  drawXButton: function() {
    //console.log("SceneMainクラスdrawXButton");
    let xbutton = SpriteButtonX(
      "000", SCREEN_WIDTH - BUTTON_SIZE / 2, BUTTON_SIZE / 2
    ).addChildTo(this.buttonGroup);
    //console.log(this.xbutton.x + "/" + this.xbutton.y);
    // Xボタン押下時の処理
    xbutton.sprite.setInteractive(true);
    xbutton.sprite.onpointstart = function() {
      console.log("xbutton.onpointstart");
      this.exit("Exit");
    }.bind(this);
  },
  // タイトル画像をアセットへ読込
  drawTitle: function() {
    //console.log("SceneMainクラスdrawTitle");
    this.title = SpriteTitle().addChildTo(this.buttonGroup);
    if (DEBUG_MODE == 1) {
      this.title.sprite.setInteractive(true);
      this.title.sprite.on('pointmove', function(e) {
        this.title.sprite.x += e.pointer.dx;
        this.title.sprite.y += e.pointer.dy;
        console.log("title_x:", Math.round(this.title.sprite.x), "title_y:", Math.round(this.title.sprite.y));
      }.bind(this));
    }
  },
  // 問題の作成
  createQuestion: function() {
    //console.log("SceneMainクラスcreateQuestion");
    //console.log("CHARACTER", CHARACTER);

    for (let i = 0; i < Object.keys(CHARACTER).length; i++){
      let key = zeroPadding(i, 3);

      // タッチ位置に壁穴の画像
      let animation = "000";
      if (DEBUG_MODE == 1) animation = "001";

      let hole = SpriteHole( key, animation ).addChildTo(this.holeGroup);
      hole.sprite.setInteractive(true);
      if (DEBUG_MODE == 1) {
        hole.sprite.on('pointmove', function(e) {
          hole.sprite.x += e.pointer.dx;
          hole.sprite.y += e.pointer.dy;
          console.log(key + "_x:", Math.round(hole.sprite.x), key + "_y:", Math.round(hole.sprite.y));
        }.bind(this));
      } else {
        hole.sprite.onpointstart = function() {
          // 壁穴の画像を変更
          hole.change();
          if (hole.animation != "000") {
            // キャラクター描画
            this.drawCharacter(key);
          } else {
            // キャラクター消去
            this.eraseCharacter(key);
          }
        }.bind(this);
      }
    }
  },
  // キャラクター描画
  drawCharacter: function(key) {
    // 画面タッチ回数
    this.touch_count++;
    //console.log(this.touch_count);

    // キャラクター描画
    //console.log("ANIMATION_PATTERN", ANIMATION_PATTERN);
    let animation = ANIMATION_PATTERN[rand(0, Object.keys(ANIMATION_PATTERN).length - 1)];
    //console.log("animation", animation);
    CHARACTER[key].current_anim = animation;

    this.characterGroup.children.forEach(char=> {
      if (key == char.key) {
        char.removeSprite();
      }
    });
    let char = SpriteCharacter(key, animation).addChildTo(this.characterGroup);
    char.fadein();
    
    // ポーズがそろったかチェック
    let complete_check = new Set();
    Object.keys(CHARACTER).forEach(k=> {
      complete_check.add(CHARACTER[k].current_anim);
    });

    // そろった描画
    if (complete_check.size == 1) {
      // タッチ判定を停止
      this.holeGroup.children.forEach(hole=> {
        hole.sprite.setInteractive(false);
      });
      // そろったスプライト
      let comp = SpriteComplete(this.touch_count).addChildTo(this.buttonGroup);
      comp.sprite.setInteractive(true);
      comp.sprite.onpointstart = function() {
        // そろったイベント
        comp.clickPikaPika();
        this.completeEvent(CHARACTER[key].current_anim);
      }.bind(this);
    }

  },
  // プレイヤーオブジェクト消去
  eraseCharacter: function(key) {
    CHARACTER[key].current_anim = "";
    this.characterGroup.children.forEach(char=> {
      if (key == char.key) {
        //console.log(char.key);
        char.stopAnimation();
        char.fadeout();
      }
    });
  },
  // そろったイベント
  completeEvent: function(key) {
    this.messageGroup.children.length = 0
    //console.log("key", key);
    //console.log("COMPLETE_MESSAGE[key].message", COMPLETE_MESSAGE[key].message);
    for (let i = 0; i < Object.keys(COMPLETE_MESSAGE[key].message).length; i++){
      let shape = RectangleShape().addChildTo(this.messageGroup);
      let label = Label().addChildTo(this.messageGroup);

      label.x = SCREEN_WIDTH/2;
      label.y = -COMPLETE_FONTSIZE*4;
      label.text = COMPLETE_MESSAGE[key].message[i];
      label.fontSize = COMPLETE_FONTSIZE;
      label.fill = COMPLETE_FILL;
      label.stroke = COMPLETE_STROKE;
      label.strokeWidth = COMPLETE_STROKE_WIDTH;

      shape.width = label.calcCanvasWidth() + COMPLETE_FONTSIZE; 
      shape.height = label.calcCanvasHeight();
      shape.x = SCREEN_WIDTH/2;
      shape.y = -COMPLETE_FONTSIZE*4;
      shape.cornerRadius = 25;
      shape.fill = SHAPE_FILL;
      shape.stroke = SHAPE_STROKE;

      label.tweener.fromJSON(
        LABEL_MOVE(
          SCREEN_WIDTH/2, -COMPLETE_FONTSIZE*4,
          SCREEN_WIDTH/2, COMPLETE_MESSAGE[key].offset_y[i],
          COMPLETE_MESSAGE[key].speed[i], COMPLETE_SPEED
        )
      );
      shape.tweener.fromJSON(
        LABEL_MOVE(
          SCREEN_WIDTH/2, -COMPLETE_FONTSIZE*4,
          SCREEN_WIDTH/2, COMPLETE_MESSAGE[key].offset_y[i],
          COMPLETE_MESSAGE[key].speed[i], COMPLETE_SPEED
        )
      );
    };
  }
});
