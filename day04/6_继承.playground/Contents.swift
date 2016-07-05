//: Playground - noun: a place where people can play

import UIKit

//程序设计 高内聚 低耦合   开放封闭原则(对扩展开放, 对修改封闭)
/*
基类  派生类  (父类 子类)
基类是没有父类的类叫基类
*/
class Vehicle {
    var currentSpeed = 0.0
    var description : String {
        return "当前的速度是没小时\(currentSpeed)公里"
    }
    func makeNoise () {
        //发出声音的方法
    }
}

//swift中的继承 是单继承
class Bicycle : Vehicle {
    var hasBasKet = false //是否有车筐
}

var bicycle : Bicycle = Bicycle()
//访问父类继承下来
bicycle.currentSpeed
bicycle.description
bicycle.makeNoise()
//访问自己的 属性
bicycle.hasBasKet = true
//父类引用可以引用子类对象  (OC 父类指针可以指向子类对象)
var vehicl : Vehicle = Bicycle()
vehicl.currentSpeed
vehicl.description
vehicl.makeNoise()
//不可以访问 子类的属性
//vehicl.hasBasKet = true

class Tandem : Bicycle {
    var currentNumberOfPassengers = 0 //几个人
    override func makeNoise() {
        print("稀里哗啦")
    }
}
var tandem = Tandem()
tandem.currentSpeed
tandem.description
tandem.hasBasKet = true
tandem.currentSpeed = 4


//覆盖  重写  是子类重写父类的方法
class Train : Vehicle {
    //重写父类的方法
    override func makeNoise() {
        print("咣当咣当")
    }
}
var train = Train()
//train.makeNoise() //火车发生音
//tandem.makeNoise() //多人自行车发声明


//多态
var vehicle : Vehicle = Tandem()
//子类重写父类的方法,父类引用,引用子类对象时,调子类重写的方法, 不考虑当前引用的类型,只考虑引用,引用的对象是什么类型,去对应的类型中找对应的方法调用
vehicle.makeNoise()
vehicle = Train()
vehicle.makeNoise()


//重写属性
//重写父类计算属性
class Car : Vehicle {
    var gear = 1
    //重写父类的计算属性
    override var description : String {
        //super 指的父类
        return  super.description + " 在\(gear)挡上"
    }
}
var car : Car = Car()
car.gear = 3
car.currentSpeed = 40
print(car.description)

//给父类的存储属性添加监视器
class AutomaticCar : Car {
//子类无法重写父类的存储属性，但是可以给父类的存储属性添加监视器，而且override 关键字也需要加上
    override var currentSpeed : Double {
        didSet {
        gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
var automaticCar = AutomaticCar()
automaticCar.currentSpeed = 20
automaticCar.gear

/******** 对 super 的扩展  ************************/
class Parent{
    var a = 10
    func test() {
        print("必须调用 否则父类会出错")
        a = 20
    }
}
class Child : Parent{
    override func test() {
        super.test()
        print("执行子类重写的方法")
    }
    var b = 10
    func show() {
        super.test()
        b = 20
    }
}
var child = Child()
child.test()


//final 特性
class Base {
    //限制子类 不可以添加 属性监视器
    final var finalProp : String = "Final Prop"
    //限制子类 不可以重写该方法
    final func show() {print("父类中显示的方法")}
}
class _Child : Base {
    //    override var finalProp : String {
    //        didSet {}
    //    }
    //    override func show() {
    //        print("子类重写")
    //    }
}
var _child = _Child()
_child.finalProp
_child.show()

//限制 该类不可以 被继承
final class FinalClass {}
//class ChildClass : FinalClass {}

