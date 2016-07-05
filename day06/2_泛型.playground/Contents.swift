//: Playground - noun: a place where people can play

import UIKit

//T 是类型参数的 参数名  <T>是由参数推断出来的
//函数使用 泛型的情况 : 函数中所有的逻辑处理全部都是一样的,只是处理的数据类型不一样,这种情况就考虑使用泛型
//函数的泛型 用的最多的就是在算法上
func swapTwoValue<T>(inout a : T, inout b : T) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
swapTwoValue(&x, b: &y)
x
y
var s = "abc"
var s2 = "bcd"
swapTwoValue(&s, b: &s2)
s
s2
var d = 3.14
var d1 = 5.13
swapTwoValue(&d, b: &d1)
d
d1

struct Stack<T>{
    var items = [T]()
    mutating func push(item : T) {
        items.append(item)
    }
    mutating func pop() ->T {
        return items.removeLast()
    }
}

var array = Array<Int>()
//泛型 其实就是 类型参数化技术
//类如果有泛型 一般都是 数据结构中的一些类
var stack = Stack<Int>()
stack.push(100)
stack.push(200)
stack.push(300)
stack.pop()
var stack_string = Stack<String>()
stack_string.push("aaa")
stack_string.push("bbbb")
stack_string.push("cccc")
stack_string.pop()
