phina.define("SpriteHole", {
  superClass: "SpriteBase",

  // コンストラクタ
  init: function(key, animation) {
    //console.log("SpriteHoleクラスinit");
    // キー情報
    this.key = key;
    // アニメーション状態
    this.animation = animation;
    // スプライト描画
    this.superInit("hole" + this.key, animation, CHARACTER[this.key].x, CHARACTER[this.key].y, CHARACTER[this.key].hole_size, CHARACTER[this.key].hole_size);
  },
  // スプライト変更
  change: function(moji) {
    //console.log("before this.animation", this.animation);
    if (this.animation == "000") {
      this.animation = zeroPadding(rand(1, 5), 3);
    } else {
      this.animation = "000";
    }
    // スプライト変更
    //console.log("after this.animation", this.animation);
    this.sprite.anim.gotoAndPlay(this.animation);
  },
  // 更新
  update: function(app) {
  }
});