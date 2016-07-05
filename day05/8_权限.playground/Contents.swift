//: Playground - noun: a place where people can play

import UIKit

//此类可以在任何地方访问,包括项目外都可以访问
public class AClass{}
//此类只能在本项目内部,或框架内部访问
internal class BClass{}
//此类只能在本类内部访问
private class CClass{}
//默认是 internal
class DClass{}

public class EClass {
    //类中的属性 权限 不能 高于类的权限
    //默认是 internal
    var a : Int = 0
    public var b : Int = 0
    internal var c : Int = 0
    private var e : Int = 0
}


//嵌套类型
class A {
    struct B {
        private class C  {
            class D {
                struct E {
                    struct F {
                        
                    }
                }
            }
        }
        private var c = C()
    }
    //C 是 B的内部类  权限是private 只能在B中使用
    //    private var c2 = C()
}


class MyClassC {
    private var name : String = "张三"
    func setName(name : String) {
        self.name = name
    }
    func getName() ->String {
        return name
    }
}
var mc = MyClassC()
mc.name //playground 中是可以的, 在项目中 私有属性只能在本类中访问


/*
class 计算类 {
func 得到结果( 运算符 ) {
switch 运算符 {
case "+"
相加()
case "-"
相减()
case "*"
相乘()
case "/"
相除()
}
}
private func 相加() {}
private func 相减() {}
private func 相乘() {}
private func 相除() {}
}
var 实例 = 计算类()
实例.得到结果("+")  //把具体的实现封装起来

*/

