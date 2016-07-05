//: Playground - noun: a place where people can play

import UIKit

/*
Swift 属性 有两种分类方式
第一种分类方式:
存储属性 (Stored Properties)
用变量或常量保存属性的值

计算属性 (Calculate Properties)
不用变量或保存  属性的值是计算得到的

出生日期 : xxxx-xx-xx  (存储属性)
年龄:  当前日期 -  出生日期 计算得到的 (计算属性)

第二种分类方式
实例属性 和 类型属性

属性的附加: 属性监视器
用于探知属性的值是否发生了变化
*/

struct FixedLengthRange {
    //存储属性
    var firstValue : Int
    let length : Int
}
//常量也可以通过 逐一初始化器 初始化
var three = FixedLengthRange(firstValue: 0, length: 3)
three.firstValue = 2
//three.length = 10 常量不可修改



//延迟属性
class DataImporter {
    var fileName = "data.text"
    //创建对象  会有读取数据的耗时操作
}
class DataManager {
    //声明并创建 导入数据类的对象, 希望在用的时候创建这个对象
    //延迟属性  在用的时候才去创建
    lazy var importer = DataImporter()
    var datas = [String]()
}
/*
创建对象的过程
1.开辟内存空间 (没有继承的情况,一个对象的大小是由 实例属性决定)
2.初始化属性 (如果属性是别的类型的对象, 创建它)
*/
var manager = DataManager()
manager.importer //延迟属性再使用时才会创建,类似OC中的懒加载

/*
计算属性
类和结构体可以定义存储属性,类和结构体及枚举可以定义计算属性
计算属性可以有set get
计算属性也可以只有get 只读计算属性
只读计算属性 get 是可以省略的
*/
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var w = 0.0, h = 0.0
}
struct Rect {
    var origin = Point(x: 100, y: 100)
    var size = Size(w: 500, h: 500)
    //计算属性
    var center : Point {
        get{
            let centerX = origin.x + size.w * 0.5
            let centerY = origin.y + size.h * 0.5
            return Point(x: centerX, y: centerY)
        }
        set /*(newCenter) 默认提供接受的值 newValue */ {
            let originX = newValue.x - size.w * 0.5
            let originY = newValue.y - size.h * 0.5
            origin = Point(x: originX, y: originY)
        }
    }
}
var rect = Rect()
rect.origin = Point(x: 200, y: 200)
rect.center.x
rect.center.y

rect.center = Point(x: 350, y: 350)
rect.origin.x
rect.origin.y
rect.center.x
rect.center.y


class MyClass {
    //可读写的计算属性
    var calculate : Int {
        get {
            return 10 * 5
        }
        set {
            print("\(newValue)")
        }
    }
    //只读计算属性
    var calculate2 : Int {
        /*get {*/ //只读计算数,get是可以省略
        return 10 * 5
        /*}*/
    }
}
var mc = MyClass()
mc.calculate = 100
mc.calculate
//mc.calculate2 = 100 //只读属性
mc.calculate2
