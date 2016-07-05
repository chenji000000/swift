//: Playground - noun: a place where people can play

import UIKit

//func 方法名 参数列表 返回值（）
func sayHello(name : String) -> String {
return "Hello " + name
}
var str = sayHello("张三")
str

// ->Void 表示没有返回值，没有返回值->Void是可以省略的
func sayHello2(name : String) /*-> Void */{
    print("Hello " + name)
}

func sayHello(name : String, otherName : String) -> String {
    return "Hello " + name + " " + otherName
}
sayHello("张三", otherName: "李四")

var a = 10


/******函数可以有多个返回值***********/

let string = "我爱你, 我恨你, 我喜欢你, 我想你"
//通过元组 返回 多个返回值
func myCount(string : String) ->(me : Int, you : Int, others : Int) {
    var me = 0, you = 0, others = 0
    for ch in string.characters {
        switch ch {
        case "我":
            me++
            case "你":
            you++
        default:
            others++
        }
    }
    return (me, you, others)
}

let result = myCount(string)
result.me
result.you
result.others

/****函数的形参*****/
//localName参数的内部名，内部名在函数中使用
func fa(localName : Int) {
print("a = \(localName + 10)")
}

//externalName 是参数外部名，在调用函数的时候使用
func fb(externalName localName : Int) {
    //函数中使用，参数的内部名
    print("a = \(localName + 10)")
}
//有一个参数的函数默认没有外部名
fa(100)
//带外部名的参数，调用函数时使用外部名
fb(externalName : 200)

//函数的 第二个及以后的参数名称即时内部名也是外部名
func show(name n : String, age : Int) {
print("\(n)的年龄是\(age)")
}
show(name : "张三",age : 30)

func show2(name n : String,age a : Int) {
    print("\(n)的年龄是\(a)")
}
show2(name: "张三", age: 30)

func show3(n : String,_ a : Int) {
    print("\(n)的年龄是\(a)")
}
show3("张三", 30)

//方法重载
//两个及多个方法，方法名相同，但是参数列表不同或返回值不同及参数的外部名不同，这些方法就形成重载的关系
func function() {}
func function()->Int { return 10 }
func function(a : Int) {}
func function(a : Int, d : Double) {}
func function(d : Double, a : Int) {}
func function(d : Double,age a : Int) {}
func function(double d : Double,age a : Int) {}
//方法名相同，但参数列表不同的多个函数就形成了重载的关系