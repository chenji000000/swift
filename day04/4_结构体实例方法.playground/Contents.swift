//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x = 0.0, y = 0.0
    mutating func setX(x : Double, andY y : Double) {
        //值类型 实例属性在实例方法中默认是只读, 不可以修改,  如果要在实例方法中修改实例属性, 实例方法前一定要加关键字 mutating
        self.x = x
        self.y = y
    }
}
var point = Point()
point.setX(100, andY: 200)


//枚举类型中方法
enum StaticSwitch {
    case Study, Dining, Review, Sleep
    func show() {
        switch self  {
        case .Study:
            print("正在学习")
        case .Dining:
            print("正在吃饭")
        case .Review:
            print("正在复习")
        case .Sleep:
            print("正在睡觉")
        }
    }
    mutating func nextAction() {
        switch self {
        case .Study:
            self = .Dining
        case .Dining:
            self = .Review
        case .Review:
            self = .Sleep
        case .Sleep:
            self = .Study
        }
    }
}
var staticSwitch = StaticSwitch.Study
staticSwitch.show()
staticSwitch.nextAction()
staticSwitch.show()
staticSwitch.nextAction()
staticSwitch.show()
staticSwitch.nextAction()
staticSwitch.show()
staticSwitch.nextAction()
staticSwitch.show()
staticSwitch.nextAction()
staticSwitch.show()
staticSwitch.nextAction()
