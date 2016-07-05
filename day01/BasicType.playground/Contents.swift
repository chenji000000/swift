//: Playground - noun: a place where people can play

import UIKit

//var str = UIImage()

//int a
//var a : Int

//声明变量标准写法
var welcomeMessage2 : String = "welcomeMessage"
//类型标注  声明字符串变量
let welcomeMessage : String
//初始化
welcomeMessage = "Welcome to swift"
//welcomeMessage = 10 //类型不配备
//welcomeMessage = "wts" //常量不可以修改

/********类型推断  *****/
var x = 10 //推断为整型
var msg = "OK" //推断为一个字符串
var a = 0.0, b = 2.2, c = 2, d = "abc"
//a b 推断为浮点类型 c 推断为整型 d 推断为字符串类型

var i1 = 5
var d1 : Double
//这里的类型检查非常严格，int和double之间都不能自动转换，如果要转换必须强制转换
d1 = Double(i1)
//i1 = i1 + 3.14
d1 = d1 + 3.14

//字符串拼接
var label = "This is"
var label2 = "label"
var text = label + label2

var width = 94
text = text + " width is " + String(width)
print(text)


let apples = 3
let oranges = 5
let appleSummary = "我有\(apples)个苹果和\(oranges)个橘子"
let show : String = "\(apples)"
print(appleSummary)


//swift 中的数据类型
var i : Int
Int.max
Int.min
var ui: UInt
UInt.max
UInt.min
var i8 : Int8
Int8.max
Int8.min
var ui8 : UInt8
UInt8.max
UInt8.min
var i16 : UInt16
var i32 : UInt32
var i64 : UInt64
UInt64.max

//浮点
var f1 : Float
var f2 : Double
var f3 : Float32
var f4 : Float64

//Float32 是 Float的别名
//typealias Float32 = Float

//c中起别名的方式
//typedef Float32 MyFloat

//swift 中起别名的方式
typealias MyFloat = Float32
var f : MyFloat = 3.24

//布尔
var isBool : Bool //取值 只有true和false
isBool = true
isBool = false
var x2 = 100
isBool = (x2 == 100)


