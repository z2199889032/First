// xxx.ets
@Builder
function buildDataPanel(config: DataPanelConfiguration) {
  Column() {
    Column() {
      ForEach(config.values, (item: number, index: number) => {
        ChildItem({ item: item, index: index, max:config.maxValue})
      }, (item: string) => item)
    }.padding(10)
    Row() {

    }
  }
}

class DataPanelBuilder implements ContentModifier<DataPanelConfiguration> {
  constructor() {
  }
  applyContent () : WrappedBuilder<[DataPanelConfiguration]> {
    return wrapBuilder(buildDataPanel)
  }
}

@Entry
@Component
 export  struct Index {
  build() {
    Column() {
      Row() {
        DataPanel({ values: [12.3, 21.1, 40], max: 140, type: DataPanelType.Circle })
          .width(400).height(100)
          .constraintSize({maxWidth: "100%"})
          .padding({ top: 10 })
          .contentModifier(new DataPanelBuilder())
      }.margin(15)
    }
  }
}

@Component
struct ChildItem {
  @Prop item: number;
  @Prop index: number;
  @Prop max: number;
  public color1: string = "#61e10e"
  public color2: string = "#cee10e"
  public color3: string = "#ff790a"
  public color4: string = "#ff2c0a"
  public color5: string = "#65000dff"
  public color6: string = "#650099ff"
  public colorArray: Array<string> = [this.color1, this.color2, this.color3, this.color4, this.color5, this.color6]

  build() {
    RelativeContainer() {
      Row() {
        Rect().height(25).width(this.item * 600 / this.max).foregroundColor(this.colorArray[this.index]).radius(5)
          .align(Alignment.Start)
        Text(" "+this.item)
          .fontSize(17)
      }
    }.height(28)
  }
}