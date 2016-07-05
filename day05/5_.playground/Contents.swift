//: Playground - noun: a place where people can play

import UIKit

class MediaItem {
    var name : String
    init(name : String) {
        self.name = name
    }
}

class Movie : MediaItem {
    var director : String
    init(name : String, director : String) {
        self.director = director
        super.init(name: name)
    }
}
class Song : MediaItem {
    var singer : String
    init(name : String, singer : String) {
        self.singer = singer
        super.init(name: name)
    }
}
let library : [MediaItem] = [
    Movie(name: "夏洛特烦恼", director: "沈腾"),
    Song(name: "曾经的你", singer: "许巍"),
    Movie(name: "恶棍天使", director: "邓超"),
    Song(name: "南山南", singer: "马頔"),
    Song(name: "老男孩", singer: "筷子兄弟")
]
var movieCount = 0
var songCount = 0


//is
//OC isKindOf  [类型 Class] (类对象)
//  [实例 isKinOf:[类名 class]]
//  类的对象  是否是 这个类对象 创建出来的
for item in library {
    if item is Movie {
        movieCount++
    }else if item is Song {
        songCount++
    }
}
movieCount
songCount

for item in library {
    if item is Movie {
        movieCount++
        //as 父类引用转子类引用,转换是有检查,如果合理就直接转换,如果不合理,转换结果为nil
        let movie = item as? Movie
        print("导演是:" + movie!.director)
    }else if item is Song {
        songCount++
        let song = item as? Song
        print("歌手是:" + song!.singer)
    }
}

for item in library {
    //可选绑定
    if let _item = item as? Movie {
        print("这是一个电影,导演是\(_item.director)")
    }else {
        print("这个不是电影")
    }
    //可选绑定
    if let _item = item as? Song {
        print("这是一个歌曲,歌手是\(_item.singer)")
    }else {
        print("这个不是歌曲")
    }
}

