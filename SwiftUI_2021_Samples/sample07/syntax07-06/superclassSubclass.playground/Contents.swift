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
let friend3 = GoodFriend(name: "のん", age: 12)
let unsei = friend3.uranai() // サブクラスのメソッドを実行する
let iam = friend3.who()
let msg = friend3.hello() // スーパークラスのメソッドを実行する

// 結果
print(unsei)
print(iam)
print(msg)
