import {TabsPage}from './TabsPage'

@Entry
@Component
struct Second {
  @State message: string = 'Hello World';

  build() {
   Column(){
     TabsPage()
}
  }
}