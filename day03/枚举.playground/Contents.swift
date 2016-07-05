//: Playground - noun: a place where people can play

import UIKit

enum CompassPoint {
    case North
    case South
    case East
    case West
}
var point : CompassPoint
point = CompassPoint.North
point = .South
//和C中不一样，不能用枚举给int赋值
//var a : Int = CompassPoint.South

enum Planet {
    case Mercury, Venus, Earth
}
Planet.Mercury

point = .East
switch point {
case .North:
    print("北边")
case .South:
    print("南边")
case .East:
    print("东边")
case CompassPoint.West:
    print("西边")
}

//原始值  (裸值 Raw Value)
enum Week : Int{
    case Sun = 0, Mon, Tur, Wen, Thu, Fri, Sat
}
let week : Week = Week.Mon
//把枚举的 原始值 取出  给 Int 赋值
let weekNum : Int = week.rawValue
//通过原始值 创建  枚举值
let week2 : Week? = Week(rawValue: 1)


//枚举的关联值
enum Barcode {
    case UPCA(Int,Int,Int)
    case QRCode(String)
}
var barcode = Barcode.UPCA(692, 530372169, 5)
barcode = Barcode.QRCode("sadlf;jlsdkjflksdj32434")
switch barcode {
case Barcode.UPCA(let(num, id, check)):
    print("这是一个条形码 数值是 \(num) \(id) \(check)")
case Barcode.QRCode(let pCode):
    print("这是一个二维码 \(pCode)")
}














