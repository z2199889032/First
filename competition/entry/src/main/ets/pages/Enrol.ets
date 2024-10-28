@Entry
@Component
struct Enrol {
  build() {
    Stack() {
      Image($rawfile('image1/背景图片1.jpg')).width("100%").height("100%")
        .backgroundImageSize(ImageSize.Cover).grayscale(0.4)
      Column(){
        this.TopAreaComponent()
          this.MiddleComponent()
            this.BottomComponent()
      }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
    }.width("100%").height("100%")
  }
  //顶部部分
  @Builder
  TopAreaComponent(){
    Column({space:30}){
      Image($rawfile('icon/S-nongye.png')).width(80).opacity(0.8)
        .borderRadius(10)
      Text('欢迎登录xxx').fontSize(19)
    }.width("100%").height('30%')
  }
  //中部部分
  @Builder
  MiddleComponent(){

  }
  //底部登录
  @Builder
  BottomComponent(){

  }
}