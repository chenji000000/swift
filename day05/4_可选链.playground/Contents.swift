//: Playground - noun: a place where people can play

import UIKit

class Address{
    var name : String = "北京市朝阳区"
}
class Apartment {
    var name : String = "建业苑写字楼"
    var address : Address?
}
class Person {
    var name : String = "张三"
    var apartment : Apartment?
}
var address = Address()
var apartment = Apartment()
var person = Person()
person.apartment = apartment
apartment.address = address
//?. 可选链 前面都是可选值，如果前面的可选值空的，链子直接从这里断开，并返回空，但是程序不报错，继续执行下一行代码
person.apartment?.name = apartment.name
apartment.address?.name = address.name

person.apartment = nil
//可选链 可以保护程序 当某个对象是nil的时候, 保护程序不会报错
//person.apartment?.address?.name


//person.apartment!.address?.name
var a : Int = 10


class MyClass2{
    var a = 10
    init?() {
        self.a = 20
    }
}
var mc2 = MyClass2()
mc2 = nil
mc2?.a
if mc2 != nil {
    mc2!.a
}

