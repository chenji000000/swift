//: Playground - noun: a place where people can play

import UIKit

//冒泡排序 稳定性高 时间复杂度高 O(n(2)), 交换次数太多，一次交换等于三次赋值  最简单
var count = 0
func sortInts (inout data : [Int], function : (Int, Int)->Bool) {
    for var i = 0; i < data.count - 1; i++ {
        var flag = true
        for var j = 0; j < data.count - 1 - i; j++ {
            if function(data[j], data[j + 1]) {
            swap(&data[j], &data[j + 1])
                flag = false
            }
        }
        count++
        print(count)
        if flag {
        return
        }
    }

}
var a = [1, 3, 2, 4, 8, 5, 6, 9, 7]
func rule(a : Int, b : Int) ->Bool {
    return a > b
}
func rule2(a : Int, b : Int) ->Bool {
    return a < b
}

sortInts(&a,function: rule2)
a
count


/*
闭包函数的语法
{
(parameters 参数列表) -> returnType (返回值) in
方法体
return
}
*/

//闭包函数  对应OC就是Block
sortInts(&a,function:
    {
        (a, b) ->Bool in
        return a < b
    }
)
a

//闭包函数 标准写法
sortInts(&a,function:{
    (a : Int, b : Int) ->Bool in
    return a < b
})
//闭包函数  缩写
//省略返回值
sortInts(&a,function:{
    (a : Int, b : Int) in
    return a < b
})
//参数类型可以省略
sortInts(&a,function:{
    (a, b) in
    return a < b
})
//如果只有一行语句 return可以省略
sortInts(&a,function:{
    (a, b) in a < b
})
//参数可以省略
sortInts(&a,function:{
    $0 < $1
})
//甚至可以直接省略参数
sortInts(&a,function: > )
a



//数组本身排序功能
var names = ["aaa", "ccc", "bbb", "ddd"]
names.sort()
var newNames = names.sort({ (s1, s2) -> Bool in
    return s1 > s2
})
newNames = names.sort(>)
newNames
//拖尾闭包  如果参数列表的最后一个参数是函数类型可以使用拖尾闭包
names.sort { (s1, s2) -> Bool in
    return s1 > s2
}
func test(a : Int, function : (Int)->Int){
    let b = function(a)
    print("b = \(b)")
}
test(20, function: { (i) -> Int in
    i + 10 * 50
})
//拖尾闭包
test(20) { (i) -> Int in
    i + 10 * 50
}


let numbers = [1 ,2 ,3 ,4 ,5]
//map 从数组逐个取出元素 进行操作 并 把所有元素的操作结果 放到一个新的数组 返回出来
let nums = numbers.map { (a) in
    return a * 10
}
let nums2 = numbers.map({ (a) in
    return a * 10
})
numbers
nums

