//Swift入門講座
//変数
//データを一時的に保存できる
//データを一時的に箱に入れる

var name = "wako"
var number = 10

name = "Takashi"

print(name)

//定数
//上書きができない

let age = 22
let tax = 1.1

//データ型
//すべてのデータには型がある

//String型（文字列）
var str: String = "これは文字列です"

//int型（整数）
var int: Int = 1

//Float/Double型　少数
var float: Float = 1.23547908
var double: Double = 1.237490112

//bool型（真偽値）true of false
var bool: Bool = false

//Swiftには型推論がある
//兵数や定数などの宣言時にデータを参照して自動的に型を推論してくれる

//演算
print(1 + 1)
print(10 - 6)
print(2 * 5)
print(10 / 2)
print(10 % 3)

print(1 + 1)
print("1" + "1")

//if文

//Swift で変数、関数名前をつけるときには「キャメルケース」という命令規則を用いましょう
var myAge: Int = 22

if 20 <= myAge {
    print("お酒飲める")
} else {
    print("お酒飲めへん")
}

var today: Int = 12
let birthday: Int = 1130

if today == birthday {
    print("風船ピューン")
} else {
    print("今日は\(today)だから、誕生日ちゃう")
}

//func callMyName(_ name: String) {
    print("\(name)")
}

callMyName(name: "ひろき")
callMyName(name: "たかし")
callMyName("ひろき")

func callMyName(name: String) -> String {
    return name + "!"

}

print(callMyName(name　"ひろき"))
var array = ["ひろき",""]

class Twitter {
    var userId: String!
    var date: Int!
    var content: String!
    
    func tweet() {
        print("UserID:\(userID)")
        print("日付\(date!)")
        print("")
    }
