//: Playground - noun: a place where people can play

import UIKit

struct Fraction {
    var numerator : Int
    var denominator : Int
    init(numerator : Int, denominator : Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
}
//运算符重载
func +(f1 : Fraction, f2 : Fraction) ->Fraction {
    let n = f1.numerator * f2.denominator + f1.denominator * f2.numerator
    let d = f1.denominator * f2.denominator
    return Fraction(numerator: n, denominator: d)
}
func -(f1 : Fraction, f2 : Fraction) ->Fraction {
    let n = f1.numerator * f2.denominator - f1.denominator * f2.numerator
    let d = f1.denominator * f2.denominator
    return Fraction(numerator: n, denominator: d)
}
var f1 = Fraction(numerator: 2, denominator: 3)
var f2 = Fraction(numerator: 3, denominator: 4)
var f3 = f1 + f2
f3.numerator
f3.denominator
var f4 = f3 - f1
f4.numerator
f4.denominator

var a = 10
var b = 20
var c = a + b
var d1 : Double = 3.14
var d2 : Double = 2.56
var d3 = d1 + d2

class MyClass {
    var num : Int
    var d : Double
    init(num : Int, d : Double) {
        self.num = num
        self.d = d
    }
}
func -(mc : MyClass, mc2 : MyClass) ->MyClass {
    let num = mc.num - mc2.num
    let d = mc.d - mc2.d
    return MyClass(num: num, d: d)
}
func +(mc : MyClass, mc2 : MyClass) ->MyClass {
    let num = mc.num + mc2.num
    let d = mc.d + mc2.d
    return MyClass(num: num, d: d)
}
func *(mc : MyClass, mc2 : MyClass) ->MyClass {
    let num = mc.num * mc2.num
    let d = mc.d * mc2.d
    return MyClass(num: num, d: d)
}
var mc = MyClass(num: 100, d: 1.1)
var mc2 = MyClass(num: 200, d: 2.2)
var mc3 = mc - mc2
var mc4 = mc * mc2
mc4.num
mc4.d



