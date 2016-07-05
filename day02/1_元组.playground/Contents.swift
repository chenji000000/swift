//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//元组 （和C中的结构非常像） 是一个将多个类型相同或不同 的数据结合成一个数据的形式
//一个元组中可以有两个及以上的数据，类型可以不同
("姓名", "张翔")
("age", 36)


let http404Error = (404, "NotFound")

let http404Error2 : (Int, String) = (404, "NotFound")

var onePerson : (Int, String, Int) = (001, "张翔", 5000)
onePerson.1 = "张三"

//把http404Error元组中的第一个值赋值给status 第二个值赋值给description
var (status, description) = http404Error
status
description


//访问元组中的元素 可读性差
http404Error.0
http404Error.1



let http505Error = (code : 500, description : "Unknown")
//增加可读性（程序设计的越好，可读性越差）
http505Error.code
http505Error.description

/******C中的多个返回值*******/
//int test(int *a, int *b) {
//    *a = 20
//    *b = 30
//    return 10
//}
//
//int x = 0
//int y = 0
//int z = test(&x, &y)
//z = 10
//x = 20
//y = 30


var onePoint = (1, 0)
switch onePoint {
case (0, 0):
    print("这个点在原点上")
case (let x, 0):
    print("这个点在x轴上 x=\(x)")
case (0, let y):
    print("这个点在y轴上 y=\(y)")
case (-2...3, -2...3):
    print("这个点在矩形内")
default:
    print("不在预计范围内")
}


onePoint = (1, 1)
switch onePoint {
case let(x, y) where x == y:
    //x == y
    print("这个点在1斜线上")
case let(x, y) where x == -y:
    //x == -y
    print("这个点在2斜线上")
default:
    print("点没有在任何斜线上")


}






