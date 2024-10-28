import { router } from '@kit.ArkUI'
// import { promptAction, router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
@Entry
@Component
export  struct Profile {
  @State username:string ="小鸟游六花"
  build() {
    Column(){
      this.TopAreaComponent()
        this.MiddleComponent()
    }.width('100%').height("100%")
    // .justifyContent(FlexAlign.Start)
  }
  //顶部部分
  @Builder
  TopAreaComponent(){
    Column(){
      Row(){
        Image($rawfile("image1/小鸟游六花.gif")).width('60').height('60').margin({
          left:20
        })
          .borderRadius(100)
        Text(this.username).fontSize(22).fontWeight('500')
          .margin({
            bottom:28,
            right:80
          })
        Image($rawfile('icon/进入箭头 - 副本.png')).width('40').height('40')
          .margin({
          right:20
        })
      }.width("100%").height("20%")
      .margin({
        top:90
      })
      .justifyContent(FlexAlign.SpaceEvenly)
    }.width("100%").height("25%")
    .onClick(() => {
      router.pushUrl({
        url: 'pages/Mine/PersonalInformation'
        // 目标url
      })
    })
    .backgroundColor("#cffa8d")
    .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
    .linearGradient({
      angle:180,
      colors:[
        ['#cffa8d',0.5],
        ['#f2fde0',0.9],
        ["#ffffff",1.0]
      ]
    })
  }
  //中部部分
  @Builder
  MiddleComponent(){
    Column({space:50}){
      //帮助
      Column(){
        Row(){
          Row({space:5}){
            Image($rawfile('icon/帮助.png')).width(30).height(40).margin({
              top:20
            })
            Text('帮助')
          }.width('40%')
          Column(){
            Image($rawfile('icon/进入箭头 - 副本.png')).width(30).height(30).margin({
              right:-85
            })
          }.width('40%')
        }.width("100%").height("5%")
        .justifyContent(FlexAlign.SpaceAround)
      }.width("100%").height("5%")
      //意见反馈
      Column(){
        Row(){
          Row({space:5}){
            Image($rawfile('icon/我的反馈.png')).width(30).height(28).margin({
              top:20
            })
            Text('意见反馈')
          }.width('40%')
          Column(){
            Image($rawfile('icon/进入箭头 - 副本.png')).width(30).height(30).margin({
              right:-85
            })
          }.width('40%')
        }.width("100%").height("5%")
        .justifyContent(FlexAlign.SpaceAround)
      }.width("100%").height("5%")
      //使用协议
      Column(){
        Row(){
          Row({space:5}){
            Image($rawfile('icon/使用协议.png')).width(30).height(30).margin({
              top:20
            })
            Text('使用协议')
          }.width('40%')
          Column(){
            Image($rawfile('icon/进入箭头 - 副本.png')).width(30).height(30).margin({
              right:-85
            })
          }.width('40%')
        }.width("100%").height("5%")
        .justifyContent(FlexAlign.SpaceAround)
      }.width("100%").height("5%")
      //关于我们
      Column(){
        Row(){
          Row({space:5}){
            Image($rawfile('icon/-_关于我们.png')).width(30).height(30).margin({
              top:20
            })
            Text('关于我们')
          }.width('40%')
          Column(){
            Image($rawfile('icon/进入箭头 - 副本.png')).width(30).height(30).margin({
              right:-85
            })
          }.width('40%')
        }.width("100%").height("5%")
        .justifyContent(FlexAlign.SpaceAround)
      }.width("100%").height("5%")
    }.width("100%").height("40%").margin({
      top:80
    })
  }
}

