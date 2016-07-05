//: Playground - noun: a place where people can play

import UIKit

let n = 3
assert(n % 2 != 0, "行列只能是奇数")
//列的数组使用的是匿名对象
var nine = [[Int]](count: 3, repeatedValue: [Int](count: 3, repeatedValue: 0))

var array = [Int](count: 3, repeatedValue: 0)
var nine2 = [[Int]](count: 3, repeatedValue: array)

//var button = 10
//button = 20
//button = 30

var row = 0
var col = n / 2
for var i = 1; i <= n * n; i++ {
    nine[row][col] = i
    row--
    col++
    //------   -1  2
    if row < 0 && col >= n {
        row += 2
        col--
    } else if row < 0 {
    row = n - 1  //  2  2
    } else if col >= n {
    col = 0  // 1  0
    } else if nine[row][col] != 0 {
        row += 2
        col--
    }
}
print(nine)



