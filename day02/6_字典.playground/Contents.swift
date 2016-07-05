//: Playground - noun: a place where people can play

import UIKit

//标准写法
var dictionary : Dictionary<String, Int> = Dictionary<String, Int>()
var dictionary2 = [String : Int]()

var airports : [String : String] = ["PEK" : "北京首都机场", "CAN" : "广州白云机场", "SEA" : "上海虹桥机场"]
airports.count
airports.isEmpty


/********增*********/
//如果key不存在，是增加，如果key存在是修改
airports["TRA"] = "大达内机场"
airports.count
//如果key不存在，是增加，如果key存在是修改
airports.updateValue("深圳保安机场", forKey: "SZX")

airports.count

/******** 删***********/
airports["TRA"] = nil
airports.count

var value : String? = airports.removeValueForKey("SZX")
print(value!)
airports.count

//可选绑定
if let oldValue = airports.removeValueForKey("SZX") {
    print("删除成功 删除的机场是\(oldValue)")
} else {
    print("没有找到对应的机场")
}

/********改*********/
airports["PEK"] = "高级首都机场"
print(airports)
//可选绑定
if let oldValue = airports.updateValue("首都机场", forKey: "PEK") {
 print("机场修改成功，修改前\(oldValue)")

} else {
print("没有找到对应的机场,添加新的机场")
}
print(airports)

/*******查********/
var value2 : String? = airports["PEK"]

/********遍历***************/
for (airportCode, airportName) in airports {
print("\(airportCode)对应的机场是\(airportName)")
}
for airportCode in airports.keys {
print("机场的编号是\(airportCode)")

}
for airportName in airports.values {
print("机场是\(airportName)")
}

//通过 字典的 所有的key 和所有的values 分别创建数组
var airportCodes = [String](airports.keys)
print(airportCodes)
var airportNames = [String](airports.values)
print(airportNames)

//swift 中的字典是 值类型
//OC 中的字典是引用类型

