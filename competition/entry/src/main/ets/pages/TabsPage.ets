import {Profile} from "./Mine/Profile"
import {Index} from "./Index"
import {Information} from "./Information/Information"
import { promptAction, router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
@Entry
@Component
export  struct TabsPage {
  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()

  build() {
    Column(){
      Tabs({barPosition: BarPosition.End, controller: this.tabsController}){
        TabContent(){

          Text('监控')
        }.tabBar(this.TabBuilder('监控',$rawfile('icon/industry06.png'),$rawfile('icon/首页绿.png'),0))

        TabContent(){
          Text('设备')
        }.tabBar(this.TabBuilder('设备',$rawfile('icon/changjingguanli.png'),$rawfile('icon/设备绿.png'),1))

        TabContent(){
          // Text('监控')
          Information()
        }.tabBar(this.TabBuilder('资讯',$rawfile('icon/nongyezhineng.png'),$rawfile('icon/监控绿.png'),2))

        TabContent(){
          Profile()
        }.tabBar(this.TabBuilder('我的',$rawfile('icon/个人中心-置灰.png'),$rawfile('icon/个人中心绿.png'),3))
      }.width("100%").height('100%').barHeight(50).backgroundColor('#ffffff')
      .onChange((index: number)=>{
        this.currentIndex = index
      })
    }.width('100%').height('100%')
  }
  //底部导航栏配置
  @Builder
  TabBuilder(title: string,image: Resource,selectImage:Resource,tag: number){
    Column(){
      Image(this.currentIndex == tag ? selectImage : image)
        .size({width:24,height:24})
        .margin({
          top:5
        })
        .objectFit(ImageFit.Contain).interpolation(ImageInterpolation.High)
      Text(title).fontSize(14).margin({
        top:5,
      })
        .fontColor(this.currentIndex == tag ? '#ff000000' : '#ff515050')
    }.width('100%').height(50)
    .backgroundColor('#ffffffff')
    .justifyContent(FlexAlign.Center)
    .border({
      width:{top:1},
      color: 'f000000'
    })
    .onClick(() => {
      this.currentIndex = tag
      this.tabsController.changeIndex(this.currentIndex)
    })
  }

}