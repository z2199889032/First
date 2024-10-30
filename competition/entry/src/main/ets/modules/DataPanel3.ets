@Entry
@Component
struct DataPanel3 {
  @State message: string = 'Hello World';
  public valueArr: number[] = [10, 10, 10, 10, 10, 10, 10, 10, 10]
  build() {
    Column(){
      DataPanel({ values: this.valueArr, max: 100, type: DataPanelType.Line }).width(300).height(20)
    }
  }
}