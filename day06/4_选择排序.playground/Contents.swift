//: Playground - noun: a place where people can play

import UIKit

//选择排序
//每次选个最小的值放到前面
func select(inout array : [Int]) {
    for var i = 0; i < array.count - 1; i++ {
        var k = i //记录最小下标
        for var j = i + 1; j < array.count; j++ {
            if array[j] < array[k] {
                k = j
            }
        }
        if k != i {
            //把最小的数 交换到 前面
            swap(&array[k],&array[i])
        }
    }
}

//插入排序
func insert(inout array : [Int]){
    for var i = 1; i < array.count; i++ {
        let t = array[i] //保存要插入的值
        var j = 0
        for j = i; j > 0 && array[j-1] > t; j-- {
            //前面的元素 向后挪
            a[j] = a[j - 1]
        }
        //j 记录是要插入的位置
        array[j] = t
    }
}




var a = [3, 5, 2, 6, 4, 1, 0, 9, 8, 7]
//select(&a)
insert(&a)
a


