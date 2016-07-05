//: Playground - noun: a place where people can play

import UIKit

/*
错误处理
错误处理是响应错误以及从错误中返回的过程,swift提供在运行时抛出,捕获,传送和控制可回收错误

错误的表示
在swift中,错用用符合 ErrorType 协议的值表示, swift枚举特别适合把一系列相关的错误组合在一起,同时可以把一些相关的值和错误关联
*/

enum VendingMachineError : ErrorType {
    case InvalidDelection //没有物品
    case InsufficientFunds(required : Double) //钱不够
    case OutOfStock //数量不够
}
struct Item {
    var price : Double
    var count : Int
}
var inventory = [
    "口香糖":Item(price: 1.25, count: 10),
    "可乐":Item(price: 3.75, count: 5),
    "饼干":Item(price: 0.85, count: 20)
]
//我手里有1快钱
var amountDeposited : Double = 1
//如果方法中可能有错误抛出 在参数列表后需要加关键字
func vend(name : String) throws {
    var item = inventory[name]
    if  item == nil { //没有找到物品
        //抛出错误
        throw VendingMachineError.InvalidDelection
    }
    if item?.count <= 0 { //数量不够
        throw VendingMachineError.OutOfStock
    }
    if amountDeposited >= item?.price { //钱够
        amountDeposited -= item!.price
        item!.count--
        inventory[name] = item
    }else {
        throw VendingMachineError.InsufficientFunds(required: item!.price - amountDeposited)
    }
}

amountDeposited = 0.1
var a : Int = 10
do {
    try vend("饼干")
}catch VendingMachineError.InvalidDelection {
    print("没有找到要购买的物品")
}catch VendingMachineError.OutOfStock{
    print("物品已经出售完成")
}catch VendingMachineError.InsufficientFunds(let amountRequired) {
    print("钱不够 还差\(amountRequired)")
}catch {
    print("购买失败, 错误位置")
}

//do{
//    try //下载文件 //NSError
//}catch let error as NSError{
//    error.description
//    //print(文件下载失败)
//}


func show() throws {
    //把该方法的异常 抛出到上级方法去处理
    try vend("饼干")
}
do {
    try show()
}catch {
    print("出现问题")
}