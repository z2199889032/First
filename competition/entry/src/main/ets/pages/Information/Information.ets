import sendableColorSpaceManager from "@ohos.graphics.sendableColorSpaceManager"
import { Data } from "../../database/Data"
import  {swiperType, } from "../../database/DataType"

@Entry
@Component
export  struct Information{
  scroller: Scroller = new Scroller();
  private arr: number[] = [0, 1,];

  build() {
    Scroll(this.scroller){
      Column(){
        ForEach(this.arr, (item?:number|undefined) => {
          if(item){
            this.FirstHalfComponent()
            this.SecondHalfComponent()
                  this.BottomComponent()
          }
          }, (item:number) => item.toString())
          }
      .width('100%')
    }.backgroundColor(Color.Transparent)
    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    .scrollBar(BarState.Off) // 滚动条常驻显示
    // .scrollBarColor(Color.Transparent) // 滚动条颜色
    .scrollBarWidth(10) // 滚动条宽度
    .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
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
  //下半部分
  @Builder
  SecondHalfComponent(){
    Column({space:35}){
        Column({space:5}){
          Text('7项重点任务、3大行动大力发展智慧农业 农业农村部发文').fontSize(20).fontWeight(500)
          Text('来源：央视网')
      }.width('90%').height("15%").alignItems(HorizontalAlign.Start)

      Column({space:5}){
        Text('智慧农业行动计划出台').fontSize(20).fontWeight(500)
        Text('来源：央视网')

      }.width('90%').height("7%").alignItems(HorizontalAlign.Start)

      Column({space:5}){
        Text('人民日报-智慧农业前景广阔（人民观察）').fontSize(20).fontWeight(500)
        Text('来源：人民日报')
      }.width('90%').height("15%").alignItems(HorizontalAlign.Start)

      Column({space:5}){
        Text('智慧农业助力现代化').fontSize(20).fontWeight(500)
        Text('来源：中国网')
      }.width('90%').height("7%").alignItems(HorizontalAlign.Start)

    }.width('100%').height('40%').margin({
      top:30
    })
  }
  @Builder
  BottomComponent(){
    Column({space:35}){
      Column({space:5}){
        Text('农业农村部出台发展智慧农业指导意见和行动计划').fontSize(20).fontWeight(500)
        Text('来源：中国网')

      }.width('90%').height("12%").alignItems(HorizontalAlign.Start)
        Column({space:5}){
          Text('智慧农业新政策发布').fontSize(20).fontWeight(500)
          Text('来源：农业农村部官网')

      }.width('90%').height("7%").alignItems(HorizontalAlign.Start)

        Column({space:5}){
          Text('智慧农业技术突破').fontSize(20).fontWeight(500)
          Text('来源：人民日报')

      }.width('90%').height("7%").alignItems(HorizontalAlign.Start)
      Column({space:5}){
        Text('智慧农业建设取得显著成效').fontSize(20).fontWeight(500)
        Text('来源：澎湃新闻')

      }.width('90%').height("7%").alignItems(HorizontalAlign.Start)
    }.width('100%').height('50%').margin({
      top:-25
    })
  }
}
