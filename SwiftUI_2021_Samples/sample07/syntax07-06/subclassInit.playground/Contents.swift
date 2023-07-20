import UIKit

class MyFriend {
    // プロパティ
    var name: String
    var age: Int
    
    // イニシャライザ
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    
    // メソッド
    func hello() -> String {
        let message = "ハロー！ \(name)です。\(age)歳です。"
        return message
    }
}

// MyFriend クラスを継承したGoodFriend クラス
class GoodFriend: MyFriend {
    let fortune = ["大吉", "吉", "小吉", "凶"]
    var nickname:String
    
    // イニシャライザ
    init(name: String, age: Int, nickname: String) {
        self.nickname = nickname
        // スーパークラスのイニシャライザに渡す
        super.init(name: name, age: age)
    }
    
    // 占いができる
    func uranai() -> String {
        let index = Int.random(in: 0 ..< fortune.count)
        let result = "今日の運勢は" + fortune[index] + "です！ "
        return result
    }
    // スーパークラスのプロパティを使う
    func who() -> String {
        return name + "です。よろしく！ "
    }
}

// GoodFriend のインスタンスを作る
let friend4 = GoodFriend(name: "片貝鯛造", age: 56, nickname: "イタサン")
print("\(friend4.name) \(friend4.age)歳")
print("ニックネームは\(friend4.nickname)です。")
