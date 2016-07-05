//: Playground - noun: a place where people can play

import UIKit

func show() {  // ()->() 类型
    print("show")
}
var function2 : ()->Void = show
function2()

//函数类型
func addTwoInts(a : Int, b : Int) ->Int {
return a + b
}

var function1 : (Int,Int)->Int = addTwoInts
function1(100, 200)
func mulTwoInts(a : Int, b : Int)->Int {
    return a * b
}

//输出两个相加的结果
func printMathResult(a : Int, b : Int, f : (Int,Int)->Int) {
    print("result = \(f(a , b))")
}
//直接给函数类型的参数 传入一个 函数名称
printMathResult(100, b: 200, f: addTwoInts)
printMathResult(100, b: 200, f: mulTwoInts)
//直接给函数类型的参数 传入一个 闭包函数(BLOCK 就是闭包函数)
printMathResult(100, b: 200, f: { (a, b) -> Int in
    return a * b * a
    }
)

//函数类型的数组
var fs : [(Int,Int)->Int] = [addTwoInts, mulTwoInts]
fs[0](1, 2)
fs[1](1, 2)

//函数作为返回值使用
func stepForward(input : Int) ->Int{
    return input + 1
}
func stepBackward(input : Int) ->Int {
    return input - 1
}
func chooseSetp(back : Bool) ->(Int)->Int {
    return back ? stepBackward : stepForward
}

var currentValue = -3
var _function : (Int)->Int = chooseSetp(currentValue > 0)
_function(currentValue)


//函数的嵌套
func chooseStepFunction(back : Bool) ->(Int)->Int {
    func stepForward2(input : Int) ->Int { return input + 1}
    func stepBackward2(input : Int) ->Int { return input - 1}
    return back ? stepBackward2 : stepForward2
}





