//: Playground - noun: a place where people can play

import UIKit

class Point {
    var x = 0.0
    var y = 0.0
    var z = 0.0
    func set(/*self  : Point 编译器隐式完成的,*/x : Double, y : Double) {
        self.x = x
        self.y = y
        self.z = 20
    }
    //自己给两个参数 起 外部名
    func set(_x x : Double,_y y : Double) {
        self.x = x
        self.y = y
        self.z = 20
    }
    //两个参数都不要外部名
    func set(x : Double,_ y : Double) {
        self.x = x
        self.y = y
        self.z = 20
    }
    //外部名可以和内部明一样
    func set(x x : Double, y : Double) {
        self.x = x
        self.y = y
        self.z = 20
    }
}
var point = Point()
point.set(/*point, 编译隐式传入当前对象*/ 100, y: 200)
point.set(_x: 100, _y: 100)
point.set(100, 200)
point.set(x: 100, y: 200)


/*
方法
类,结构体,枚举中都可以定义方法
实例方法  类方法
*/
class Counter {
    var count = 0
    //方法也有重载
    func increment() {
        count++
    }
    func increment(amount : Int) {
        count += amount
    }
    func increment(amount : Int, numberOfTimes : Int) {
        count += amount * numberOfTimes
    }
}
var counter = Counter()
counter.increment()
counter.increment(100)
//第二个参数及以后的参数  参数名既是内部明也是外部名
counter.increment(100, numberOfTimes: 3)
