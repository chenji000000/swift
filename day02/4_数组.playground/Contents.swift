//: Playground - noun: a place where people can play

import UIKit

//数组的标准声明  <Int>泛型， 是类型参数化技术
var array : Array<Int> = Array<Int>()
array.append(0)
array.append(100)
array.append(200)
array.append(300)
array.append(400)
array.append(500)
array.append(600)
//array
//for var i = 0; i < array.count; i++ {
//     array.removeAtIndex(i)
//}
array
//数组遍历过程中不能删除数组元素，如果需要删除加i--
for var i = 0; i < array.count; i++ {
    if array[i] == 100 || array[i] == 200 {
    array.removeAtIndex(i)
        i--
    }
    
}
array
//i < array.count, 如果删除元素，数组的长度会发生改变
var count = array.count
for var i = 0; i < count; i++ {
array.removeAtIndex(0)
}
array




//简化
var array2 = Array<Int>()
var array3 : Array<Int> = Array()

//更简化
var strs = [String]() //等价于

var strs2 = Array<String>()
var strs3 : [String] = Array<String>()
var strs4 : [String] = [String]()
var strs5 : [String] = []
var strs6 = ["abc", "bcd", "cde"]
strs.append("aaa")
strs.append("bbb")
strs.append("ccc")
strs

var nsArray = NSMutableArray(capacity: 10)


var shoppingList = ["水", "面包", "牙膏"]
/******* 增 *******/
//想数组中添加一个元素
shoppingList.append("牙刷")
//向数组中添加了 另外一个数组
shoppingList += ["大米"]
shoppingList += ["洗发水", "毛巾"]
print(shoppingList)
/********删********/
shoppingList.removeAtIndex(0)
print(shoppingList)
//删除指定范围
var range = Range(start: 0, end: 2)
shoppingList.removeRange(range)
print(shoppingList)
//shoppingList.removeAll()
//print(shoppingList)

/*******改********/
shoppingList[0] = "高级大米"
print(shoppingList)
/*******查**********/
shoppingList[1]
shoppingList[0..<2]
var string : String = shoppingList[1]
//shoppingList[100] //下标越界

for shopping in shoppingList {
   print(shopping)
}

for var i = 0; i < shoppingList.count; i++ {
    print("\(i)的下标是\(shoppingList[i])")
}
for (index, value) in shoppingList.enumerate() {
print("\(index)的下标是\(value)")
}

//swift 中Array 是 值类型
var arr = [1, 2, 3, 4, 5]
var arr2 = arr
arr[0] = 100
arr2
//OC中的NSMutableArray 是引用类型
var nsArr = NSMutableArray(array: [1, 2, 3, 4, 5])
var nsArr2 = nsArr
nsArr[0] = 100
nsArr2


//创建数组 限定元素的个数 并给每个元素一个相同的初始值
var threeDoubles = [Double](count: 3, repeatedValue: 1.1)
threeDoubles
var threeDoubles2 = [Double](count: 3, repeatedValue: 2.1)
threeDoubles += threeDoubles2
var threeInt = [Int](count: 3, repeatedValue: 0)
//类型不同的数组不可以相加
//threeDoubles += threeInt








