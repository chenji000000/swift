//: Playground - noun: a place where people can play

import UIKit

//值类型 的初始化器委托 （构造器委托）
struct Point {
var x = 0.0, y = 0.0
}
struct Size {
var w = 0.0, h = 0.0
}
struct Rect {
var origin = Point()
    var size = Size()
    init() {}
    init(origin : Point, size : Size) {
    self.origin = origin
    self.size = size
    }
    //通过中心点和Size创建矩形
    init(center : Point, size : Size) {
        let originX = center.x - size.w * 0.5
        let originY = center.y - size.h * 0.5
        //委托初始化  委托本类其他初始化器类对属性赋值
        self.init(origin : Point(x: originX, y: originY), size : size)
    }
    init(x : Double, y : Double, w : Double, h : Double) {
        let origin = Point(x: x, y: y)
        let size = Size(w: w, h: h)
        //委托初始化器
        self.init(origin : origin, size : size)
    }
}
var rect = Rect()
rect.origin.x
rect.size.w
var rect2 = Rect(origin : Point(x: 100, y: 100), size : Size(w: 500, h: 500))
rect2.origin.x
rect2.size.w
var rect3 = Rect(center: Point(x: 200, y: 200), size: Size(w: 200, h: 200))
rect3.origin.x
rect3.origin.y
rect3.size.w
var rect4 = Rect(x: 100, y: 100, w: 300, h: 300)
rect4.origin.x
rect4.size.w