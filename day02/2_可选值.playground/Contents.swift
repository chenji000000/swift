//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var view = UIView()


var x : Int
//print(x)//非可选值必须初始化才能使用

//声明可选值，可选值默认用nil初始化，只有可选值可以为nil
var y : Int?
print(y)

//可选类型的标准写法
var o : Optional<Int> //等同于var o : Int?
var s : Optional<String> //等同于var s : String?

var possibleNumber = "123"
Int(possibleNumber)
//只有可选值 才能等于nil
let convertedNumber : Int? = Int(possibleNumber)

if convertedNumber != nil {
    print("转换成功的值是\(convertedNumber)")
    //可选值不能直接是用，使用前需要解包，在可选值后面加！进行解包
    print("转换成功的值是\(convertedNumber!)")
}

var y2 : Int? = 100
y2!++ //使用时 需要解包
y2
possibleNumber = "abc"
//可选绑定  如果一个可选值不为nil,那么把这个可选值解包并赋值给前面的常量，然后直接进入代码块
//如果可选值是nil,直接进入else代码块
if let actualNumber = Int(possibleNumber) {
   print("转换成功的值是\(actualNumber)")
} else {
   print("转换失败")
}

//隐式解包的可选值
var z : Int! = 100
z + 20
z = nil

//对象 在使用时 有可能是 nil 的时候
var view1 : UIView? = UIView()
//对象 在使用时，不可能是nil 的时候
var view2 : UIView! = UIView()
view1 = nil
view2 = nil
view1?.addSubview(UIView())

//view2.addSubview(UIView())

