//: Playground - noun: a place where people can play

import UIKit

/*
类和结构体
相同点
1.都是定义一种类型
2.都可在内部定义 属性 和 方法
3.都可以定义下标运算
struct MyStr {}
var ms = MyStr()
ms[1]
4.都可以定义初始化方法(初始化器, 构造器)用于初始化属性
5.都可以扩展现有功能(类似于 OC 的分类 Category)
extension UIView {
func show() {print("show")}
}
var view = UIView()
view.show()
6.都可以遵守协议

不同点
1.结构是值类型, 类是引用类型
2.结构不可以继承, 类可以继承
3.结构没有多态, 类有多态
3.结构体的变量都在栈中(不准确)分配,栈中的变量不需要我们管理,出了作用域自动释放
类的内存支持自动引用计数器
*/

struct MyStruct {
    
}
class MyClass {
    var a : Int = 20
    var b : Int = 30
    var ms = MyStruct() //堆里
    func show() {}
    deinit{
        print("对象销毁")
    }
}
func function() {
    var ms = MyStruct()
    var my = MyClass()
}

//结构
struct Resolution {
    var width = 0
    var height : Int = 0
}
class VideoMode{
    var resolution = Resolution()
    var a = 100
    //类中的属性必须初始化,如果不初始化可以是可选值
    var name : String?
}
//结构的使用
var resolution = Resolution(width: 100, height: 100)
resolution.width
//类的使用
var videoMode = VideoMode()
videoMode.name
videoMode.resolution.width

var videoMode2 = videoMode
//比较地址 ===   !==
if videoMode !== videoMode2 {
    print("他们的地址不一样")
}


//结构的逐一初始化器
struct Point {
    var x : Float
    var y : Float
}
struct Size {
    var w : Float = 200
    var h : Float = 300
}
struct Rect {
    //我是类型属性
    static var a : Int = 10
    var origin : Point
    var size : Size
    mutating func show() {
        print("o(\(origin.x),\(origin.y), s(\(size.w), \(size.h)))")
    }
    static func classType() {
        print("我是一个类方法")
    }
}
var rect = Rect(origin: Point(x: 50, y: 50), size: Size())
rect.origin.x
rect.size.w
rect.show()
Rect.classType()
Rect.a







