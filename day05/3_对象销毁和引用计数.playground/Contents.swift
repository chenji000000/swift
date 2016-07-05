//: Playground - noun: a place where people can play

import UIKit

class Example {
    init?() {
    print("init")
    }
    deinit {
    print("deinit")
    }
}
var ex = Example()
ex = nil



//自动引用计数器
/*******
自动引用计数的工作机制
当你每次创建一个类的新的实例的时候，ARC会在堆中分配一块内存用来存储实例的信息（类的实例变量）
当实例不在使用时，ARC释放实例所占用的内存，并让释放的内存挪作他用，这确保了不在被使用的实例，不会一直占用内存空间
为了确保使用中的实例不会被销毁，ARC会跟踪和计算每一个实例的正在被多少属性，常量和变量所引用着，哪怕实例的引用数为1，ARC都不会销毁这个实例
为了上述成为可能,无论你将实例赋值给属性，常量或变量，他们都会创建此实例的强引用，之所以称之为“强”引用，是因为他会将实例牢牢的保持住，只要强引用还在，实例是不允许被销毁的

********/
class Person {
    let name : String
    init?(name : String){
        self.name = name
        print("对象创建了 \(name)")
    }
    deinit{
        print("对象销毁了 \(name)")
    }
}
var reference1 = Person(name: "张三") //+1
var reference2 = reference1
var reference3 = Person(name: "李四")
//reference2 = reference3
//reference1 = nil
//reference3 = nil
//reference2 = nil

var reference5 : Person?
func test() {
    print("2----------")
    let reference4 = Person(name: "王五")  //+1
    reference5 = reference4
    print("3----------")
}
print("1----------")
test()
print("4-----------")
reference5 = nil

class Person2 {
    var name : String
    var apartment : Apartment2?
    init?(name : String) {
        self.name = name
        print("人被创建")
    }
    deinit{
        print("Person \(name) 被释放")
    }
}
class Apartment2{
    /*unowned*/ weak var person : Person2?
    var name : String
    init?(name : String) {
        self.name = name
        print("公寓被创建")
    }
    deinit{
        print("公寓被销毁")
    }
}
//循环强引用
var person2 = Person2(name: "赵六")
var apartment = Apartment2(name: "建业苑")
apartment?.person = person2 //公寓里来人了
person2?.apartment = apartment //我住进了公寓
apartment?.person?.name
person2?.apartment?.name
person2 = nil
apartment = nil
