//: Playground - noun: a place where people can play

import UIKit

var letters = Set<Character>()
letters.insert("a")
letters.insert("c")
letters.insert("y")
letters


var favoriteGentres : Set<String> = ["Rock", "Classical", "Jazz", "Hip hop"]
favoriteGentres.count
favoriteGentres.insert("Jazz")
favoriteGentres.count

favoriteGentres.remove("Jazz")

//查找一个元素是否存在
favoriteGentres.contains("Classical")

for genre in favoriteGentres {
print(genre)
}
print("---------------")

//排序 并遍历
for genre in favoriteGentres.sort() {
    print(genre)
}

var setInt : Set<Int> = Set()
setInt.insert(100)
setInt.insert(80)
setInt.insert(30)
setInt.insert(70)
setInt.insert(20)
for setint in setInt.sort() {
print(setint)
}

let oddDigits : Set = [1, 3, 5, 7, 9]
let evenDigits : Set = [0, 2, 4, 6, 8]
//并集
print(oddDigits.union(evenDigits).sort())
//交集
print(oddDigits.intersect(evenDigits).sort())


