//: Playground - noun: a place where people can play

import UIKit

/*
类的初始化器
指定初始化器 和 便利初始化器
*/

class Vehicle {
    //类中的属性声明时就要初始化，或者在init中进行初始化
    var numberOfWheels : Int
    var description : String {
    return "有\(numberOfWheels)个轮胎"
    }
    init(a : Int) {
        numberOfWheels = 0
        print("Vehicle init")
    }
    init() {
    numberOfWheels = 0
    }
}
var vehicle = Vehicle()

class Bicyle : Vehicle {
    //重写父类的初始化器
    override init() {
        //这里会调用父类的初始化,如果我们不写,编译会默认调用父类无参数的初始化器, 或者自己指定调用父类的初始化器
        super.init()
    }
}
var bicyle = Bicyle()


class Food {
    var name : String
    //指定初始化器
    init(name : String) {
        self.name = name
    }
    //便利初始化器, 便利初始化器必须以最终调用指定初始化器结束
    convenience init() {
        self.init(name:"面包")
    }
}
var food = Food(name: "无名事物")
var food2 = Food()
food2.name


