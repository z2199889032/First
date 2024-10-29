import  {Profile}from './Mine/Profile'
import {TabsPage}from './TabsPage'
import { router } from '@kit.ArkUI'

@Entry
@Component
export  struct Index {
  build() {
        Stack(){
          Image($rawfile('image1/背景图片三.jpg')).width("100%").height("100%")
          .backgroundImageSize(ImageSize.Cover).grayscale(0.4)
          Column(){
            Column(){
              Text('随便看看')
                .fontSize(18).fontColor(Color.White).fontWeight('500')
                .onClick(() =>{
                router.pushUrl({url:"pages/Second"})
                })
                .margin({
                top:60,
                right:15
              })
            }.width("100%").height("10%").alignItems(HorizontalAlign.End)
            Column({space:20}){
              Text("田园智守").fontSize(30).fontColor(Color.White).fontWeight('700')
              Text("守护绿意，智慧农业的守护者").fontSize(20).fontColor(Color.White).fontWeight('650')
            }.width("100%").height("10%")
            .alignItems(HorizontalAlign.Start)
            .margin({
              top:70,
              left:50
            })
            Column(){
              Button("立即登录").fontSize(18)
                .width("80%").backgroundColor('#0da016').opacity(0.8).type(ButtonType.Capsule)
                .onClick(()=>{
                router.pushUrl({url:"pages/Enrol"})
              })
            }.width("100%").height("10%").margin({
              top:350
            })
            Column(){
              Text("其他登录方式").fontColor(Color.White).fontSize(18)
                .margin({
                  top:40
                })
                .onClick(() =>{

                })
          }.width("100%").height("10%")
          }.width("100%").height("100%")
          }.width("100%").height("100%")
    }
}

