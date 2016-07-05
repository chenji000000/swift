//: Playground - noun: a place where people can play

import UIKit

/*
属性监视器
是一段代码,这段代码会在的值发生变化时自动调用
1.计算属性,延迟属性不能设置属性监视器
2.属性初始化时,不会调用属性监视器
3.属性监视器有两种
willSet / didSet
willSet 在属性变化前调用 didSet 在属性变化后调用
4.一个属性可以有一个监视器  也可以有 两个监视器
*/

class StepCounter {
    var a : Int = 10
    var totalSteps : Int = 0 {
        //属性将要发生改变
        willSet {
            print("属性将要变化为 \(newValue)")
            a += newValue
        }
        //属性已经改变
        didSet {
            print("属性已经改变, 改变前的值是\(oldValue)")
        }
    }
}
var stepCounter = StepCounter()
stepCounter.totalSteps = 10
stepCounter.a
stepCounter.totalSteps = 20
stepCounter.a


/*
类型属性
在结构体或枚举中用static修饰的属性,以及在类中用class修饰的属性叫类型属性
类型属性是属于类的,和对象无关
在结构体中定义的类型属性,可以是存储属性,也可以是计算属性
在类定义类型属性,只能是计算属性
*/
struct SomeStruct {
    //存储属性 类型属性
    static var storedProp = 0
    //只读的计算属性 类型属性
    static var calculateProp : Int{
        return 100
    }
}
var someStruct = SomeStruct()
//类型属性 只能使用 类型的名字访问
SomeStruct.storedProp
SomeStruct.calculateProp


class SomeClass {
    //类中不能定存储属性为类型属性  /*官方文档没有, 但是可以使用static, 在类定 存储属性为类型属性 可以使用 static  建议尽量别用*/
    static var storedProp = 0
    //只读的计算属性 类型属性
    class var calculateProp : Int{
        return 100
    }
    
    //实例方法
    func show() {} //对应OC -
    //类型方法 加 class 关键字
    class func show2() {}//对应OC +
}
SomeClass.storedProp
SomeClass.calculateProp
var someClass = SomeClass()
someClass.show()
SomeClass.show2()