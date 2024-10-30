import { router } from "@kit.ArkUI";

@Entry
@Component
export  struct EquipmentAdd {
  // @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Image($rawfile('icon/返回.png')).width('40').height('40').margin({left:-270,top:50})
          .onClick(() => {
            router.back({url:''});
          })
        Text("选择添加设备类型").fontSize(22).fontWeight(500).height(100).margin({
          top:50,
        })
        Column(){
          Row({space:20}){
            Row(){
              Text("温度传感器").fontSize(18).fontWeight(500)
            }.width("37%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
            Row(){
              Text("湿度传感器").fontSize(18).fontWeight(500)
            }.width("37%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
          }.width("80%").height("10%").justifyContent(FlexAlign.Start)
          Row({space:5}){
            Row(){
              Text("光照传感器").fontSize(18).fontWeight(500)
            }.width("45%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
            Row(){
              Text("土壤湿度传感器").fontSize(18).fontWeight(500)
            }.width("50%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
          }.width("80%").height("10%").justifyContent(FlexAlign.Start)
          Row({space:10}){
            Row(){
              Text("CO₂传感器").fontSize(18).fontWeight(500)
            }.width("40%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
            Row(){
              Text("雨量计").fontSize(18).fontWeight(500)
            }.width("40%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
          }.width("80%").height("10%").justifyContent(FlexAlign.Start)
          Row({space:15}){
            Row(){
              Text("风向风速传感器").fontSize(18).fontWeight(500)
            }.width("50%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
            Row(){
              Text("自动灌溉设备").fontSize(18).fontWeight(500)
            }.width("50%").height("65%").backgroundColor(Color.White).borderRadius(12).justifyContent(FlexAlign.Center)
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/Equipment/AddScene'
                //     点击跳转场景页面
              })
            })
          }.width("80%").height("10%").justifyContent(FlexAlign.Start)
        }.width("100%").height("100%")
        .margin({
          top:50
        })
      }
    }.width("100%").height("100%")
    .backgroundColor("#cffa8d") .linearGradient({
      angle:320,
      colors:[
        ['#ffffff',0.0],
        ['#cffa8d',0.5],
        ['#ffffff',1.0]
      ]
    })
  }
}