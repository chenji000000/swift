//: Playground - noun: a place where people can play

import UIKit

//Extension 像OC中的分类

extension Double {
    //不能在扩展中定义 新的 存储属性
    //可以扩展计算属性
    var km : Double {
        return self * 1_000
    }
    var cm : Double{
        return self / 100.0
    }
}
3.5.km    //3500米
30.cm     //0.3米

extension Int {
    //扩展方法
    func repeatitions(task : ()->()) {
        for _ in 0..<self {
            task()
        }
    }
}
var a = 10
5.repeatitions { () -> () in
    a /= 2
}
a

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var w = 0.0, h = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}
var rect = Rect()

extension Rect {
    //扩展初始化器
    init(x : Double, y : Double, w : Double, h : Double) {
        origin = Point(x: x, y: y)
        size = Size(w: w, h: h)
    }
}
var rect2 = Rect(x : 100, y : 100, w : 200, h : 200)



extension Int {
    //扩展附属脚本
    subscript(var digitIndex : Int) ->Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10 //10
            --digitIndex
        }
        return (self / decimalBase) % 10
    }
}
123[1]

extension UIView {
    func show() {print("show")}
}
var view = UIView()
view.show()
