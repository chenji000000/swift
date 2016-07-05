//: Playground - noun: a place where people can play

import UIKit

var a, b, c, d, e, f : Int
a = 10
b = 20

//swift中不可以这样使用，因为swift中的赋值运算符函数没有返回值
//a = b = c = d = e = f = 50

1 + 2
5 - 3
2 * 3
10 / 3
10.0 / 3
10.3 / 1.2

9 % 4
-9 % 4
9 % -4
-9 / -4
//swift中可以对浮点数取余
10.3 % 1.2

a = 10
//单目
a++
++a
a = 10
b = a++ + ++a + ++a + a++
a--
--a

//比较运算符
a == b
a != b
a > b
a < b

//三目运算符
a > b ? a : b


//? 声明可选值 swift中只有可选值可以为nil 可选值默认使用nil初始化
var x : Int?
x = nil
let r = x != nil ? x : 0
r
//空合运算符
let r2 = x ?? 0 //如果x不是nil 返回x 否则返回 0， 和上面的三目 意义一样
r2

//区间运算符
a = 5
b = 10
//全开
a...b

5...10

for index in 1...5 {
  print(index)
}
for index in a..<b {
  print(index)
}

//如果不需要 index 可以用 _ 把位置占上
for _ in 1...5 {
   print("重复打印这句话")
}

//逻辑运算符
a = 10
b = 20
c = 30
a < b && b < c
a > b || b > c
!(a < b)

//if
//如果一行中有多个语句，使用；分割
a = 30; b = 50
if a > b {
   print("a 大")
} else if a < b {
   print("b 大")
} else {
   print("一样大")
}


