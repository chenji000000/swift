//: Playground - noun: a place where people can play

import UIKit

//用关键字 var 声明字符串变量 str 类型是通过右值推断出来的（类型推断）
var str = "Hello, playground"
//声明一个变量 view 类型推断为 UIView类型
var view = UIView()

view.addSubview(UIView())

for var i = 0; i<10; i++ {

}

var a = 10
var b = 20
var c = a + b

//输出
print(c)

//变量 用var声明
var variable = 10
variable = 20
//常量 用let声明
let const = 10 //const 是常量 10 是字面值
//const = 20 //常量不可修改

//字面值
//整数的字面值
var x = 10
x = 0000000015//整数的字面值会忽略前面任意多个0
x = -15
x = 1_000_000_000//这里的下划线没有实际意义，只是增加代码的可读性
//八进制
x = 0o15
//十六进制
x = 0xff
//二进制
x = 0b110010

//浮点数
var y = 3.14
y = 1.25E-2//科学计数法  1.25*10^-2

