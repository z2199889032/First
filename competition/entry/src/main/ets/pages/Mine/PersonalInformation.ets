import { text } from '@kit.ArkGraphics2D'
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
@Entry
@Component
export  struct PersonalInformation {
  @State username:string ="小鸟游六花"
  @State UID:string = "114514"
  @State TimeOfRegistration:string ="2024-10-24"
  controller: TextInputController = new TextInputController()
  build() {
      Column(){
      this.TopAreaComponent()
        this.MiddleComponent()
         this.BottomComponent()
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.SpaceBetween)
 }
 // 顶部安全区等
 @Builder
 TopAreaComponent(){
      Column(){
        Column()
          .width("100%")
          .height("100%")
          .backgroundColor("#f4fee5")
          .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
          .linearGradient({
            angle:180,
            colors:[
              ['#dbfba7',0.25],
              ['#edfdd3',0.5],
              ['#ffffff',1.0],
            ]
          })
        Image($rawfile('icon/返回箭头.png')).width('50').height('50')
          .onClick(() => {
            router.back({url:''});
          })
          .margin({
            left:-300
          })
        Text('个人信息').width("100%").fontSize(25).fontWeight('550').textAlign(TextAlign.Center)
          .margin({
            top:-30
          })
      }.width("100%").height("5%")
 }
//中部信息
  @Builder
  MiddleComponent(){
    Column({space:20}){
  // 头像部分
  Column(){
    Row(){
      Text('头像').fontSize(22).fontWeight('550').margin({
        left:20,
      })
      Image($rawfile("image1/小鸟游六花.gif")).width('55').height('55')
        .borderRadius(100)
        .margin({
          right:20,
          bottom:20,
        })
    }
    .width('100%')
    .height('8%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
      Line().width("90%").height(0.5)
        .backgroundColor(Color.Gray).opacity(0.6)
  // 名字部分
  Column(){
    Row(){
      Text('名字').fontSize(22).fontWeight('550').margin({
        left:20
      })
      Text(this.username)
        // .backgroundColor(Color.White)
        .fontSize(18).fontWeight('450').textAlign(TextAlign.End)
        .margin({
        right:-180,
        bottom:15,
      })
      Image($rawfile('icon/进入箭头 - 副本.png')).width('40').height('40').margin({
        right:20
      })
    }
    .width('100%')
    .height('5%')
    .justifyContent(FlexAlign.SpaceBetween)

  }
      Line().width("90%").height(0.5)
        .backgroundColor(Color.Gray).opacity(0.6)

  // UID部分
  Column(){
    Row(){
      Text('UID').fontSize(22).fontWeight('550').margin({
        left:20
      })
      Text(this.UID).fontSize(18).fontWeight('450')
        .margin({
          right:-210,
          bottom:15,
        })
      Image($rawfile('icon/进入箭头 - 副本.png')).width('40').height('40').margin({
        right:20,
      })
    }
    .width('100%')
    .height('5%')
    .justifyContent(FlexAlign.SpaceBetween)

  }
      Line().width("90%").height(0.5)
        .backgroundColor(Color.Gray).opacity(0.6)
  // 注册时间部分
  Column(){
    Row(){
      Text('注册时间').fontSize(22).fontWeight('550')
        .margin({
        left:20
      })
      Text(this.TimeOfRegistration).fontSize(18).fontWeight('450')
        .margin({
          right:-120,
          bottom:15,
        })
      Image($rawfile('icon/进入箭头 - 副本.png')).width('40').height('40').margin({
        right:20,
      })
    }
    .width('100%')
    .height('5%')
    .justifyContent(FlexAlign.SpaceBetween)

  }
  Line().width("90%").height(0.5)
        .backgroundColor(Color.Gray).opacity(0.6)

  // 更多信息部分
  Column(){
    Row(){
      Text('更多信息').fontSize(22).fontWeight('550').margin({
        left:20
      })
      Image($rawfile('icon/进入箭头 - 副本.png')).width('40').height('40').margin({
        right:20,
      })
    }
    .width('100%')
    .height('5%')
    .justifyContent(FlexAlign.SpaceBetween)

  }
  Line().width("90%").height(0.5)
        .backgroundColor(Color.Gray).opacity(0.6)

}.margin({
      top:100,
      bottom:250
    })
  }
  //底部
  @Builder
  BottomComponent(){
      Column()
        .width("100%").height("10%")
        .backgroundColor("#cffa8d")
        .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
        .linearGradient({
          angle:360,
          colors:[
            ['#cffa8d',0.0],
            ['#f2fde0',1.0],
          ]
        })
  }

}
