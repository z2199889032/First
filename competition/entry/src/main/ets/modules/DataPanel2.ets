@Entry
@Component
export  struct DataPanel2 {
  @State message: string = 'Hello World';

  build() {Column(){
    Stack() {
      DataPanel({ values: [50, 12, 8, 5], max: 100, type: DataPanelType.Circle }).width(198).height(168)
      Column() {
        Text('75').fontSize(35).fontColor('#182431')
        Text('综合评分:良好').fontSize(8.17).lineHeight(11.08).fontWeight(500).opacity(0.6)
      }

      Text('%')
        .fontSize(9.33)
        .lineHeight(12.83)
        .fontWeight(500)
        .opacity(0.6)
        .position({ x: 104.42, y: 78.17 })
    }
  }.margin({ bottom: 59 })}
  }
