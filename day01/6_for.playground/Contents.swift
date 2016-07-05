//: Playground - noun: a place where people can play

import UIKit

for index in 1...10 {
    print("index 的值是\(index)")
}
for index in 1..<10 {
   // index = 100 //默认是常量
    print("index 的值是\(index)")
}
for ch in "abcdef".characters {
  print("ch 的值是\(ch)")
}

for var i = 0; i < 10; i++ {
   print("i = \(i)")
}
var j : Int
for j = 0; j < 10; j++ {
  print("j = \(j)")
}

var a = 0
while a <= 10 {
    print(a)
    a++
}

a = 0
//相当于 原来的 do while
repeat {
    print(a)
    a++

}while a <= 10
