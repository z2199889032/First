import {Index} from "../../modules/datainfo"
import { router, Router } from "@kit.ArkUI"

@Entry
@Component
export  struct DeviceInfor {
  //点击随便看看或者登录成功之后进行跳转
  /*
   * 设备信息首页
   * */
  //顶部头像
  @Builder
  TopAreaComponent(){
    Column(){
      Row(){
        Image($rawfile('image1/呆唯挠头.gif')).width(45).height(45)
          .borderRadius(100)
          .margin({
            left:20
          })
        Image($rawfile('icon/加 (2).png')).width(40).height(40)
          .margin({
            right:20
          }).onClick(()=> {
          router.pushUrl({
            url: 'pages/Monitor/AddEnvironment'
            //     点击跳转场景页面
          })
        })
      }.width("100%").height("10%")
      .justifyContent(FlexAlign.SpaceBetween)
    }.width('100%').height('20%')
    .margin({
      top:60
    })
  }
  build() {
    Column(){
      Row(){
      //   头部
        this.TopAreaComponent()
      }.width("100%")
      Column(){
        Row({}){
          Text("郑州市").margin({left:20})
          Text("10月29日").margin({right:20})
        }.width("100%").justifyContent(FlexAlign.SpaceBetween).margin({top:10})
        Row(){
          Column(){
          //   天气
            Image($rawfile("icon/晴天.png")).width(27)
            Text("晴")
          }.margin({left:0,right:20})
          Column(){
          //风
            Image($rawfile("icon/windmill.png")).width(27)
            Text("微风")
          }.margin({left:20,right:20})
          Column(){
          //空气质量
            Image($rawfile("icon/空气质量.png")).width(27)
            Text("空气优")
          }.margin({left:20,right:20})
          Column(){
          //湿度
            Image($rawfile("icon/湿度.png")).width(27)
            Text("29%")
          }.margin({left:20,right:0})
        }.margin({top:10})

      }.width("95%").height("14%").backgroundColor(Color.White).borderRadius(15).margin({top:-80,bottom:20})
      // 实时数据
      Text("实时数据").fontSize("24").margin({left :-210,top:-5,bottom:5})
      Column(){
        Row(){
          Column(){
            Text("智慧大棚").fontSize("20").margin({top:-22,left:20})
            Row(){
              Image($rawfile("icon/温度.png")).width(20).margin({left:-38})
              Text("温度").margin({left:10})
            }.margin({left:10,top:15})
            Row(){
              Image($rawfile("icon/二氧化碳.png")).width(20).margin({left:-5})
              Text("二氧化碳").margin({left:10})
            }.margin({left:10,top:12})
            Row(){
              Image($rawfile("icon/光照.png")).width(20).margin({left:-40})
              Text("光照").margin({left:10})
            }.margin({left:10,top:12})
          }.margin({left :15,top:10})
          Index().margin({top:5})
        }
      }.width("95%").height("22%").backgroundColor(Color.White).borderRadius(15).margin({bottom:30})
      Column(){
        Row(){
          Column(){
            Text("智慧果园").fontSize("20").margin({top:-22,left:20})
            Row(){
              Image($rawfile("icon/温度.png")).width(20).margin({left:-38})
              Text("温度").margin({left:10})
            }.margin({left:10,top:15})
            Row(){
              Image($rawfile("icon/二氧化碳.png")).width(20).margin({left:-5})
              Text("二氧化碳").margin({left:10})
            }.margin({left:10,top:12})
            Row(){
              Image($rawfile("icon/光照.png")).width(20).margin({left:-40})
              Text("光照").margin({left:10})
            }.margin({left:10,top:12})
          }.margin({left :15,top:10})
          Index().margin({top:5})
        }
      }.width("95%").height("22%").backgroundColor(Color.White).borderRadius(15)
    }.height("100%").backgroundColor("#cffa8d") .linearGradient({
      angle:0,
      colors:[
        ['#cffa8d',0.0],
        ['#f2fde0',0.8],
        ['#ffffff',1.0]
      ]
    })
  }
}