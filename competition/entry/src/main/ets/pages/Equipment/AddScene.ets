import sendableColorSpaceManager from '@ohos.graphics.sendableColorSpaceManager'
import { router } from '@kit.ArkUI';

@Entry
@Component
export  struct AddScene {
  // @State message: string = 'Hello World';

  build() {
      Column({space:30}){
        Image($rawfile('icon/返回.png')).width('40').height('40').margin({left:-270,top:50})
          .onClick(() => {
            router.back({url:''});
          })
        Text("选择添加场景").fontSize(25).fontWeight(500).height(100).margin({
          top:20,
        })
        Row(){
          Text("智慧大棚一")
          Text("")
          Text("")
          Image($rawfile('icon/进入箭头 - 副本.png')).width(30)
        }.width('80%').height("8%").backgroundColor(Color.White).borderRadius(15).justifyContent(FlexAlign.SpaceAround)
        Row(){
          Text("果园一")
          Text("")
          Text("")
          Image($rawfile('icon/进入箭头 - 副本.png')).width(30)
        }.width('80%').height("8%").backgroundColor(Color.White).borderRadius(15).justifyContent(FlexAlign.SpaceAround)
        Row(){
          Text("···").fontSize(40)
        }.width('80%').height("8%").backgroundColor(Color.White).borderRadius(15).justifyContent(FlexAlign.Center)
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