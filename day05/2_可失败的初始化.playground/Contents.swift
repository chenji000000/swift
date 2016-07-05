//: Playground - noun: a place where people can play

import UIKit

//可失败的初始化
struct Animal {
    let name : String
    //可失败的初始化器, 有可能返回nil
    init?(name : String) {
        if name.isEmpty {
            //            创建动物对象失败
            return nil
        }
        self.name = name
    }
}
var animal = Animal(name: "旺财")
var animal2 : Animal? = Animal(name: "")

enum TempleratureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol : Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "F":
            self = .Fahrenheit
        case "C":
            self = .Celsius
        default:
            return nil
        }
    }
}
let tempUnit = TempleratureUnit(symbol: "C")
let tempUnit2 = TempleratureUnit(symbol: "F")
let tempUnit3 = TempleratureUnit(symbol: "K")
let tempUiit4 : TempleratureUnit? = TempleratureUnit(symbol: "M")

class MyClass {
    var a : Int = 100
    //返回可选值,如果失败返回nil
    init?(c : Int) {
        if c < 50 {
            return nil
        }
        self.a = c
    }
    //如果成功把可选值解包返回出去,如果失败返回nil
    init!(b : Int) {
        if b > 20 {
            return nil
        }
        self.a = b
    }
}
let m = MyClass(c: 20)
//m!.a  //解包调用属性
m?.a  //可选链
var z = 10
let m2 = MyClass(b: 10)
//m2 对象在返回时 已经解包
m2.a


class Parent {
    var x : Int
    //子类必须重写该初始化器
    required init(a : Int) {
        print("parent a : Int")
        x = a
    }
}
class Child : Parent {
    var y : Int
    //子类必须重写父类的对应初始化器
    required init(a: Int) {
        //子类的初始化器中先初始化子类对象
        self.y = a
        //调用父类的初始话器
        super.init(a: a)
        //修改父类中的属性
        self.x = 200
    }
}
var child = Child(a : 100)
child.x

