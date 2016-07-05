//: Playground - noun: a place where people can play

import UIKit

func test() {
    var x = 2
    //满足条件继续向下执行，不满足条件直接断掉
    assert(x != 0, "x 的值不能为0")
    for var i = 0; i < 10; i++ {
        x += i
    }
}
test()

func addSubView(view : UIView?) {
   assert(view != nil, "subView 的值不能为nil")
   print("将view添加到当前的对象中")

}
addSubView(UIView())
addSubView(nil)