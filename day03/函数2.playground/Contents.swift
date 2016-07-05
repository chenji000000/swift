//: Playground - noun: a place where people can play

import UIKit

//参数的默认值,一个幽默任职的参数入股哦没有传入对应参数就使用默认值，如果传入对应的参数，就不在使用默认值，而是使用传入的参数
func printArray(a : [Int], ch : String = "*", flag : Bool = true) {
    if flag {
        print("[")
    }
    for var i = 0; i < a.count - 1; i++ {
        print("\(a[i])\(ch)")
    }
    print("\(a[a.count - 1])")
    if flag {
        print("]")
    }
}
var a = [1, 2, 3, 4, 5]
printArray(a)
printArray(a, ch: "@", flag: false)

//可变长参数
func arithmeticMean(numbers : Double...) ->Double {
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1.1,2.2,3.3,4.4,5.5,6.6)