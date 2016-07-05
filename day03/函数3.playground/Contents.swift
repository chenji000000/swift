//: Playground - noun: a place where people can play

import UIKit

//参数默认都是常量不可修改，如果要在函数中修改参数的话，必须声明成变量
func fa(var x : Int) {
    x += 100
    print(x)
}
fa(100)

//输入输出函数
func mySwap(inout a: Int,inout _ b: Int) {
    //    let t = a
    //    a = b
    //    b = t
    //两值交换不用第三个变量
    //    a = a + b
    //    b = a - b
    //    a = a - b
    a = a ^ b
    //            0 0 1 1
    //            0 1 0 1
    //    a = ---------------
    //            0 1 1 0
    b = a ^ b
    //            0 1 1 0
    //            0 1 0 1
    //    b = ---------------  3
    //            0 0 1 1
    a = a ^ b
    //            0 1 1 0
    //            0 0 1 1
    //     a = --------------- 5
    //            0 1 0 1
    print("a = \(a) , b = \(b)")
}
var x = 3
var y = 5
mySwap(&x, &y)
print("x = \(x) , y = \(y)")

//如果一个方法有可能返回nil,那么返回值一定是可选值类型
func minMax(array : [Int]) ->(max : Int, min : Int)? {
    if array.isEmpty {
        return nil
    }
    let currentMin = array[0]
    let currentMax = array[0]
    return (currentMin, currentMax)
}

