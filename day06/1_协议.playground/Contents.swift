//: Playground - noun: a place where people can play

import UIKit


class Parent {}
protocol FullyNamed {
    var fullName : String { get }
}
//有继承 又需要遵守协议  那么 : 后面写父类 , 后面写协议
class Person : Parent, FullyNamed {
    //把协议中的计算属性 实现出来, 并实现为一个存储属性
    var fullName : String
    init(fullName : String) {
        self.fullName = fullName
    }
}

class Starship : FullyNamed {
    var prefix : String?
    var name : String
    init(name : String, prefix : String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName : String {
        return ((prefix != nil) ? prefix! + " " : "") + name
    }
}
var starship = Starship(name: "Appleseed", prefix: "John")
starship.fullName

protocol MyProtocol {
    //协议中 只能有计算属性 不可以有存储属性
    var prop : Int { get set }
    var onlyRead : Int{ get }
    //实例方法
    func instanceMethod() ->Int
    //类方法
    static func typeMethod()
}
struct SomeStruct : MyProtocol {
    var a : Int
    var prop : Int
    var onlyRead : Int
    func instanceMethod() -> Int { return 10 }
    static func typeMethod() {}
}
//OC id<MyProtocol> r = ....

var r : MyProtocol = SomeStruct(a : 20, prop: 100, onlyRead: 200)
//r.a  不能访问协议中不存在的东西
r.prop = 200
//r.onlyRead = 200 只读计算属性
r.instanceMethod()
SomeStruct.typeMethod()

var s : SomeStruct = SomeStruct(a : 20, prop: 100, onlyRead: 200)
s.a
s.prop = 200
//协议中的只读属性,被实现后回修改为可读写属性
s.onlyRead = 300
s.instanceMethod()
SomeStruct.typeMethod()


protocol SomeProtocol {
    init(someParameter : Int)
}
class SomeClass : SomeProtocol {
    //实现协议中的初始化器必须 添加 required
    required init(someParameter: Int) {
        //实现协议中的初始化器
    }
}

protocol SomeProtocol2{
    init()
}
class SomeSuperClass {
    init() {}
}
class SomeSubClass : SomeSuperClass , SomeProtocol2 {
    //重写父类 override  实现协议 required
    override required init () {
        super.init()
    }
}


//协议的扩展
class Dice{}
protocol TextRepresentable{
    func asText()->String
}
extension Dice : TextRepresentable {
    func asText() -> String {
        return "A -sided dice"
    }
}
var dice = Dice()
dice.asText()

extension UIImageView : TextRepresentable {
    func asText() -> String {
        return "UIImageView"
    }
}
var uiimageView = UIImageView()
uiimageView.asText()

func show(tr : TextRepresentable) {
    tr.asText()
}
show(uiimageView)
extension UIButton : TextRepresentable {
    func asText() -> String {
        return "UIButton"
    }
}
show(UIButton())



struct Hamster{
    func asText()->String {
        return "Hamster"
    }
}
//如果遵守协议前 类中已经有了协议中要实现的方法, 那么在扩展协议时 不用在实现协议中的方法
extension Hamster : TextRepresentable{}
var tx : TextRepresentable = Hamster()

//全栈  Java服务器  Web前端  iOS  Android


//类的专属协议  只有类能遵循后
protocol SomeClassOnlyProtocol : class {}
//struct Struct1 : SomeClassOnlyProtocol{}
class Class1 : SomeClassOnlyProtocol{}


protocol Named {
    var name : String {get}
}
protocol Aged {
    var age : Int {get}
}
class Person2 : Named, Aged {
    var name : String = "张三"
    var age : Int = 30
}
func showName(celebrator : protocol<Named, Aged>) {
    print("\(celebrator.name) \(celebrator.age)")
}
showName(Person2())


//兼容OC语言中的协议
@objc protocol ObjcProtocol {
    func requiredMethod()
    optional func optionalMethod()
}
class ObjcClass : ObjcProtocol{
    @objc func requiredMethod(){}
    //可选择是否 实现的方法
    @objc func optionalMethod() {}
}
