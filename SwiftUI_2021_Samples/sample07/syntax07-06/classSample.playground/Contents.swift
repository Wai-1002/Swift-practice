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

// MyFriendクラスのインスタンスを作る
let friend1 = MyFriend(name: "植木", age: 31)
let friend2 = MyFriend(name: "さくら", age: 26)

// プロパティの値を調べる
let str1 = friend1.name + "と" + friend2.name + "は、ともだちです。"
let str2 = friend1.name + "は" + String(friend1.age) + "歳です。"

// プロパティの値を更新する
friend2.age += 1
let str3 = friend2.name + "は、誕生日で" + String(friend2.age) + "歳になりました。"
// 結果を出力して確認
print(str1)
print(str2)
print(str3)

// メソッドを実行する
let str4 = friend1.hello()
let str5 = friend2.hello()
// 結果を出力して確認
print(str4)
print(str5)

