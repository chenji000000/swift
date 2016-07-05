//: Playground - noun: a place where people can play

import UIKit
//声明字符串 并 初始化
var str = "abc"
print(str)
//声明字符串 没有初始化
var str2 : String
//print(str2) //没有初始化的变量不可以使用
str2 = ""
print(str2)

//声明字符串变量 并创建出来（默认初始值是空字符串）
var str3 = String()
print(str3)
if str3.isEmpty {
    print("这个字符串是空的")
}

let constString = "常量"
//constString = "修改"
var variable = "变量"
variable = "修改"

//值类型 和 引用类型
//swift中的字符串是值类型（所有基本数据类型都是值类型
//swift中所有基本类型数据类型全部是结构体
//<swift中所有的结构体类型都是值类型（struct）,所有的类都是引用类型（class）>）
var string1 = "Hello"
var string2 = string1
string1 = "OK"
string2
//结构体是值类型
struct MyStruct {
    var a = 10
    var view = UIView()
    func test() {
      print("test")
    }
}
var ms = MyStruct()
var ms2 = ms //赋值内容
ms2.a
ms.a = 20
ms2.a

//类 是引用类型
class MyClass {
    var a = 10
    var view = UIView()
    func test() {
        print("test")
    }
}
var mc = MyClass()
var mc2 = mc //赋值内容
mc2.a
mc.a = 20
mc2.a

//OC中的字符串是引用类型(OC中的所有的类都是引用类型)
var nsString1 : NSMutableString = "Hello"
var nsString2 = nsString1
//通过引用改变 内容
nsString1.appendString("abc")
nsString2
//改变 nsString1 的引用的地址
nsString1 = "aaaaaaa"
nsString2


////C中参数值传递 和参数地址传递
//void add(int a) {//值传递
//a += 20
//    //a = 120
//}
//
//void add1(int *a) {//地址传递
//*a += 20
//}
//int x = 100
//
//add(x) //值传递
//x = 100
//add1(&x)  //地址传递
//x = 120

//字符
var char : Character = "A"
char = "中"
char = "😀"
var s = "ad😀fgfhfj\(100)hhfhftygyh"


var 中国 = "china"
var 🐶 = "dog"
var s2 = "日本" + 🐶


var str10 = "Hello"
var str20 = "there"
let rest = str10 + str20
var ch : Character = "!"
let newStr = rest + String(ch)
let newStr2 = rest + "\(ch)"


//OC中数组 字典 集合中放入的元素只能是NSObject类型的元素
//UIView *view = [[UIView alloc] init];//1
//NSMutableArray *array = [NSMutableArray array];
//[array addObject:view]  //view + 1       2
//[view release]  //-1

//c 中 字符是字符数组，swift中一样
var catCharacters : [Character] = ["C", "a", "t", "!"]
catCharacters[0] = "A"
//通过字符数组创建字符串
var catString : String = String(catCharacters)
//遍历 字符串
for char in catString.characters {
    print(char)
}

if catString.hasPrefix("A") {
    print("字符串是以A开头的")
}
if catString.hasSuffix("!") {
    print("字符串是以！结尾的")
}

let wiseWords = "\"想象力比知识更重要\" ----爱因斯坦"
print(wiseWords)

//String 和 NSString 的转换
var nsString_1 : NSString = "NSString"
//NSString 转换为 String 需要 as
var string_1 : String = nsString_1 as String
 as String
//String 转换为 NSString 直接自动转
var nsString_2 : NSString = string_1


/************** 复习原来的知识 *******************/
//创建一个空数组
var objects : [NSObject] = []
var nsNum = NSNumber(int: 100)
var nsString = NSMutableString(string: "abc")
nsString.substringToIndex(1)
objects.insert(nsNum, atIndex: 0)
objects.insert(nsString, atIndex: 1)
objects.count
var obj : NSObject = objects[1]
//将 NSObject 类型 转换为 NSMutableString类型
var strObj = obj as! NSMutableString
strObj.substringToIndex(1)




