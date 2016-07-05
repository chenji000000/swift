//: Playground - noun: a place where people can play

import UIKit

for var i = 0; i < 10; i++ {
    if i == 5 {
    break
    }
    print(i)
}

for var i = 0; i < 10; i++ {

    if i == 5 {
    continue
    }
    print(i)
}


print("----------------")
var a = 0
//带标的语句
loop : while a < 10 {
    a++;
    switch a {
    case 5:
        break loop
    case let b where a > 1 && a < 4:
        continue
    default:
        print(a)
    }
}




print("-----------------")
loop : for var i = 0; i < 3; i++ {
    print("=============")
    for var j = 0; j < 3; j++ {
        if j == 1 {
        continue loop
        }
         print(j)
    }
   
}
