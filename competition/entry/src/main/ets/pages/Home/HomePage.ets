import sendableColorSpaceManager from "@ohos.graphics.sendableColorSpaceManager"
import { Data } from "../../database/Data"
import  {swiperType, } from "../../database/DataType"

@Entry
@Component
export  struct HomePage {


  build() {
    Column(){
      this.FirstHalfComponent()
        this.SecondHalfComponent()
    }
    .height('100%')
    .width('100%')
  }
  //上半部分
  @Builder
  FirstHalfComponent(){
    Column(){
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
    Column(){
      Swiper(){
        ForEach(Data.swiperData,(item:string,index:number)=>{
          Image($rawfile(item))
            .width('100%')
            .height('100%')
            .borderRadius(15)
        })
      }.autoPlay(true).loop(true).width("100%").height("100%")
    }.width("100%").height('50%')
      .margin({
        top:-20
      })
      Text('农业科普').width("100%").fontSize(22).fontWeight(600)
        .margin({
          top:50,
        left:50
      })
    }.width("100%").height("50%")
    .backgroundColor("#cffa8d") .linearGradient({
      angle:90,
      colors:[
        ['#cffa8d',0.0],
        ['#f2fde0',0.4],
        ['#cffa8d',1.0],
      ]
    })

  }
  @Builder
  SecondHalfComponent(){
    Column({space:45}){
      Column(){
        Column(){
          Text('智能决策:').fontSize(20).fontWeight(500)
          Text('利用收集到的数据，结合专家系统和机器学习算法，智能农业系统能够提供种植、施肥、灌溉、病虫害防治等方面的决策支持。')
        }
      }.width('100%').height("12%")
      Column(){
        Column(){
          Text('精准作业：').fontSize(20).fontWeight(500)
          Text('智能农业技术能够实现精准农业作业，如无人机精准施药、智能灌溉系统精确控制水分供给，从而提高资源利用效率，减少浪费。')
        }
      }.width('100%').height("12%")
      Column(){
        Column(){
          Text('信息感知:').fontSize(20).fontWeight(500)
          Text('智能农业通过各种传感器收集农作物生长信息（如土壤湿度、温度、光照等），以及环境信息（如气候、气象数据），为智能决策提供数据支持。')
        }
      }.width('100%').height("12%")
      Column(){
        Column(){
          Text('农业物联网:').fontSize(20).fontWeight(500)
          Text('通过部署在农业生产现场的各种传感节点和无线通信网络，实现农业生产环境的智能感知、预警、决策和分析。')
        }
      }.width('100%').height("10%")

    }.width('100%').height('50%').margin({
      top:30
    })
  }
}
