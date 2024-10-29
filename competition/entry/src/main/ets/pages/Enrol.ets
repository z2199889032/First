import { router } from "@kit.ArkUI"

@Entry
@Component
export  struct Enrol {
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
    Column({space:35}){
      Image($rawfile('icon/返回.png')).width('40').height('40')
        // .backgroundColor(Color.Black)
        .onClick(() => {
          router.back({url:''});
        }).margin({
        top:-100,
        left:-320
      })

      Image($rawfile('icon/S-nongye.png')).width(80).opacity(0.8)
        .borderRadius(10)
      Text('欢迎登录田园智守').fontSize(19)
    }.width("100%").height('20%')
  }
  //中部部分
  @Builder
  MiddleComponent(){
    Column({ space: 30 }) {
      TextInput({ placeholder: '手机号/邮箱/用户名：' })
        .placeholderColor('#666666')
        .placeholderFont({ size: 14, weight: FontWeight.Normal })
        .width('94%')
        .height(40)
        .backgroundColor(Color.White)
        .borderRadius(10)

      // Divider().width('85%').color('#666666')
      TextInput({ placeholder: '密码：' })
        .type(InputType.Password)
        .placeholderColor('#666666')
        .placeholderFont({ size: 14, weight: FontWeight.Normal })
        .width('94%')
        .height(40)
        .backgroundColor(Color.White)
        .borderRadius(10)
      // Divider().width('85%').color('#666666')
      Row() {
        Text('忘记密码').fontSize(14).fontColor(Color.White)
        Text('快速注册').fontSize(14).fontColor(Color.White)
      }
      .width('85%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 5 })

      Button('登          录', { type: ButtonType.Normal, stateEffect: true })
        .borderRadius(20)// 边角的圆润程度
        .backgroundColor(0x317aff)
        .width('50%').backgroundColor('#0da016').opacity(0.8)
        .onClick(() => {
          console.log('ButtonType.Normal')
        })
    }
    .margin({ bottom: 150 })
  }
  //底部登录
  @Builder
  BottomComponent(){
Column(){
  Row() {
    Line().width("30%").height(0.5)
      .backgroundColor(Color.White)
    Text("其他登录方式").fontSize(14).fontColor(Color.White)
      .margin({
        left: 10,
        right: 10
      })
    Line().width("30%").height(0.5)
      .backgroundColor(Color.White)
  }

  Row({ space: 50 }) {
    Button() {
      Image($rawfile('icon/微信.png')).width(40).height(40)
    }.backgroundColor(Color.Transparent)

    Button() {
      Image($rawfile('icon/QQ.png')).width(40).height(40)
    }.backgroundColor(Color.Transparent)

    Button() {
      Image($rawfile('icon/微博.png')).width(40).height(40)
    }.backgroundColor(Color.Transparent)
  }.width("100%")
  .margin({
    top:20,
    bottom: 10
  })
  .justifyContent(FlexAlign.Center)
}.width("100%").margin({
  bottom:-100
})
  }
}