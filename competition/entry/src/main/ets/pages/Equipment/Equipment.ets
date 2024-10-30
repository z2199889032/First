import { router } from "@kit.ArkUI"

@Entry
@Component
 export struct Equipment {
  // @State message: string = 'Hello World';

  build() {
   Column(){
    this.TopAreaComponent()
      this.MiddleComponent()
       this.BottomComponent()
   }.width("100%").height("100%")
   .backgroundColor("#cffa8d") .linearGradient({
    angle:0,
    colors:[
     ['#cffa8d',0.0],
     ['#f2fde0',0.8],
     ['#ffffff',1.0]
    ]
   })
  }
  //顶部头像
@Builder
TopAreaComponent(){
   Column(){
    Row(){
     Image($rawfile('image1/小鸟游六花.gif')).width(45).height(45)
      .borderRadius(100)
      .margin({
       left:20
      })
     Image($rawfile('icon/通知1.png')).width(40).height(40)
      .margin({
       right:20
      })
    }.width("100%").height("10%")
    .justifyContent(FlexAlign.SpaceBetween)
   }.width('100%').height('20%')
   .margin({
    top:60
   })
 }
 //中部信息已有设备
 @Builder
 MiddleComponent(){
  Column(){
   Text("已有设备").width('80%').fontSize(22).fontWeight('600')
   Row({space:20}){
    Row(){
    Text("温度传感器").fontSize(18).fontWeight(500)
    }.width("37%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
    Row(){
    Text("湿度传感器").fontSize(18).fontWeight(500)
    }.width("37%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
   }.width("100%").height("55%").justifyContent(FlexAlign.Center).margin({
    top:-15
   })
   Column(){
    Text("二氧化碳浓度传感器").fontSize(18).fontWeight(500)
   }.width("80%").height("40%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
  }.width("100%").height("25%").margin({
   top:-70
  })
 }
 //底部创建设备
 @Builder
 BottomComponent(){
  Column(){
   Text("创建设备").width('80%').fontSize(22).fontWeight('600')
   Column(){
    Image($rawfile("icon/加 (2).png")).width(70).height(70)
   }.width("80%").height("50%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
   .onClick(() => {
    router.pushUrl({
     url: 'pages/Equipment/EquipmentAdd'
     // 目标url
    })
   })
   .margin({
    top:5
   })
  }.width("100%").height("30%").margin({
   top:100
  })
 }
}