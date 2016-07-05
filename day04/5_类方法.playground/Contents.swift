//: Playground - noun: a place where people can play

import UIKit

class SomeClass {
    var prop : Int = 0
    //实例方法和类型方法 和 OC中理解是一样
    //实例方法属于 实例  由实例调用
    func instanceMethod() {
        //实例方法中可以访问实例属性 self表示类的对象(实例)
        self.prop = 200
        //实例方法中 可以访问实例方法
        self.show()
        print("我是一个实例方法")
        //实例方法中调用类方法
        SomeClass.typeShow()
    }
    //类型方法属于 类型  有类型名来调用
    class func typeMethod() {
        //实例变量不能在类型方法访问 因为类型方法中的 self不在表示当前实例, 而是表示当前类
        //        self.prop = 200
        //实例方法中 不能访问实例方法
        //        self.show()
        //类型方法中 可以访问其他类型方法, 因为self在类型方法中不再表示当前对象,而是表示当前类的
        print("\(self)")
        self.typeShow()
        print("我是一个类型方法")
    }
    func show() {}
    class func typeShow() {}
}
var someClass = SomeClass()
someClass.instanceMethod()
SomeClass.typeMethod()



//枚举中的类型方法
//枚举类型中方法
enum StaticSwitch {
    case Study, Dining, Review, Sleep
    func show() {}
    mutating func nextAction() {
        self = .Dining
    }
    //类型方法
    static func create() ->StaticSwitch {
        return self.Study
    }
}
var staticSwitch = StaticSwitch.Study
staticSwitch.show()
//枚举类型名 调用 枚举中的类型方法
var staticSwitch2 = StaticSwitch.create()
staticSwitch2.show()
