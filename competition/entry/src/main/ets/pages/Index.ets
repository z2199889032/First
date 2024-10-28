import  {Profile}from './Mine/Profile'
import {TabsPage}from './TabsPage'
import { router } from '@kit.ArkUI'

@Entry
@Component
export  struct Index {
  @State message: string = 'Hello World';

  build() {
    Column(){
      TabsPage()
    }
  }
}

