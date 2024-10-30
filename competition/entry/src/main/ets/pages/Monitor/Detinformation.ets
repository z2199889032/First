import {DataPanel2} from "../../modules//DataPanel2"

@Entry
@Component
struct Detinformation {
  // 控制信息块的位置信息
  @State horizontalAxis1: number = -100;
  @State horizontalAxis2: number = 460;
  uiContext: UIContext | undefined = undefined;

  aboutToAppear() {
    this.uiContext = this.getUIContext?.();}
  onDidBuild(){
    if (!this.uiContext) {
      console.info("no uiContext, keyframe failed");
      return;
    }
    this.horizontalAxis1 = 0;
    this.horizontalAxis2 = 360;
    // 设置关键帧动画整体播放3次
    this.uiContext.keyframeAnimateTo({ iterations: 1 }, [
      // {
      //   // 第一段关键帧动画时长为800ms，scale属性做从1到1.5的动画
      //   duration: 500,
      //   event: () => {
      //     this.horizontalAxis1 = 50;
      //     this.horizontalAxis2 = 260;
      //   }
      // },
      {
        // 第二段关键帧动画时长为500ms，scale属性做从1.5到1的动画
        duration: 500,
        event: () => {
          this.horizontalAxis1 = 30;
          this.horizontalAxis2 = 190;
        }
      }
    ]);
  }
  build() {
  //

    Column(){
      Column(){
        Text("智慧大棚").fontSize(24)
      }.width("100%").margin({left :12}).alignItems(HorizontalAlign.Start)
      DataPanel2().position({x:81,y:70})
      Column({space:20}){
      //   卡片详细信息
        Row(){
        // 三行，每行两块
          Row(){
            Text("二氧化碳浓度")
          }.width("150").height("55").borderRadius(15).
          backgroundColor(Color.White).position({x:this.horizontalAxis1,y:0}).margin({left:-10})
          Row(){
            Text("二氧化碳浓度")
          }.width("130").height("55").borderRadius(15).position({x:this.horizontalAxis2,y:0}).margin({left:10}).
          backgroundColor(Color.White)
        }.width("100%").justifyContent(FlexAlign.SpaceBetween)
        Row(){
          // 三行，每行两块
          Row(){
            Text("温度")
          }.width("150").height("55").borderRadius(15).position({x:this.horizontalAxis1,y:45}).margin({left:-10}).
          backgroundColor(Color.White)
          Row(){
            Text("二氧化碳浓度")
          }.width("130").height("55").borderRadius(15).position({x:this.horizontalAxis2,y:45}).margin({left:10}).
          backgroundColor(Color.White)
        }.width("100%").justifyContent(FlexAlign.SpaceBetween)
        Row(){
          // 三行，每行两块
          Row(){
            Text("温度")
          }.width("150").height("55").borderRadius(15).position({x:this.horizontalAxis1,y:85}).margin({left:-10}).
          backgroundColor(Color.White)
          Row(){
            Text("二氧化碳浓度")
          }.width("130").height("55").borderRadius(15).position({x:this.horizontalAxis2,y:85}).margin({left:10}).
          backgroundColor(Color.White)
        }.width("100%").justifyContent(FlexAlign.SpaceBetween)
        Column(){
          Text("已为您指定提升方案，点击启动")
        }.width(340).height("60").margin({top:20}).position({x:10,y:200}).
        backgroundColor(Color.White).borderRadius(10)
        .justifyContent(FlexAlign.Center)
      }.width("100%").position({y:300})
    }.width("100%").height("100%").backgroundColor("#cffa8d") .linearGradient({
      angle:0,
      colors:[
        ['#cffa8d',0.0],
        ['#f2fde0',0.8],
        ['#ffffff',1.0]
      ]
    })
  }
}