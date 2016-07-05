//: Playground - noun: a place where people can play

import UIKit

let x = 99

/**
*  switch
1.完备性，不管有多少种可能一定要有分支进入
2.没有隐式贯串，不用加break，也不会继续执行下面的case
3.如果需要继续向下贯串，只能使用fallthrough 来向下贯串
*/

switch x {
case 1:
    print("x == 1")
case 2, 3, 4, 5:
    if x == 5 {
        break
    }
    print("x 是 2 -- 5")
    fallthrough //显示贯串
case 6...100:
    print("x是6---100")
default:
    print("x = 不在范围内")

}

let vegetable = "青辣椒"
switch vegetable {
    case "芹菜":
       print("这个菜 是芹菜")
    case "黄瓜", "豆芽菜":
       print("这个菜 是黄瓜 或 豆芽菜")
    //用x把vegetable接收过来，并且判断是否是以辣椒结尾的，如果是进入case
case let x where x.hasSuffix("辣椒"):
    print("这个菜 是那种狠辣狠辣的 \(x)")
default:
    print("这个是草")

}
