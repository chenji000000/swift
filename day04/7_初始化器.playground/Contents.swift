//: Playground - noun: a place where people can play

import UIKit

struct Fahrenhet {
    var temperature : Double = 32
    //如果我们没有自己写任何初始化,编译器会帮我们提供
    //如果属性在声明已经初始化了,编译会帮我们提供两个默认的初始化器
    //如果属性在声明没有初始化了,编译会帮我们提供一个逐一初始化器
    
    //如果我们自己写了初始化,编译器不再帮我们提供初始化器了
    //初始化器再创建对象会自动调用
    init() {
        print("调用 init()")
    } //无参数的初始化器
    init(temperature : Double) {
        print("调用 init(temperature : Double)")
        self.temperature = temperature
    }
}
//var fahrenhet = Fahrenhet()
var fahrenhet2 = Fahrenhet(temperature: 50)



struct Celsius {
    var temperatureInCelsius : Double
    //用一个 华氏度初始化一个摄氏度属性
    //初始化器的参数名称,默认都是 内部名也是外部名
    init(fahrenhet : Double) {
        temperatureInCelsius = (fahrenhet - 32) / 1.8
    }
    //自己起 外部名
    init(fromKelvin kelvin : Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    //不需要外部名
    init(_ celsius : Double) {
        temperatureInCelsius = celsius
    }
}
var celsius1 = Celsius(fahrenhet: 40)
var celsius2 = Celsius(fromKelvin: 300)
var celsius3 = Celsius(32)








//红绿蓝  黄品青
struct Color {
    let red, green, blue : Double
    init (red : Double, green : Double, blue : Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white : Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
    init() {
        self.red = 1
        self.green = 1
        self.blue = 1
    }
}
var color = Color(red: 1, green: 1, blue: 1)
var color2 = Color(white: 0.5)
var color3 = Color()


