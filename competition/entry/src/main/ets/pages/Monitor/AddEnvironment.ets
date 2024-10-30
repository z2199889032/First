import { router } from '@kit.ArkUI';

@Entry
@Component
struct AddEnvironment {
  // @State message: string = 'Hello World';

  build() {
    Column(){
      Column({space:30}){
        Image($rawfile('icon/返回.png')).width('40').height('40').margin({left:-270,top:50})
          .onClick(() => {
            router.back({url:''});
          })
        Text("添加环境").fontSize(25).fontWeight(500).height(100).margin({
          top:20,
        })
        Row({space:30}){
          Text('名称：').fontSize(20).fontWeight(500)
          Line().width("40%").height(0.5)
            .backgroundColor(Color.Black)
            .margin({
              top:10
            })
        }
        Row({space:30}){
          Text('类型：').fontSize(20).fontWeight(500)
          Line().width("40%").height(0.5)
            .backgroundColor(Color.Black)
            .margin({
              top:10
            })
        }
        Row({space:30}){
          Text('地址：').fontSize(20).fontWeight(500)
          Line().width("40%").height(0.5)
            .backgroundColor(Color.Black)
            .margin({
              top:10
            })
        }
        Column(){
          Text('描述').fontSize(20).fontWeight(500)
          Column().width("80%").height('20%').backgroundColor(Color.White).borderRadius(20)
        }
        Row({space:150}){
          Text("取消").fontSize(22).fontWeight(500)
          Text("确定").fontSize(22).fontWeight(500)
        }
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