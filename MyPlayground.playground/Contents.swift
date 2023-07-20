import Cocoa

var greeting = "Hello, playground"
1 + 5

var a = 1
var b = 20
var c = 3
var ans = a + b + c
c = 100
ans
ans = a + b + c

var km = 10
km += 5
km += 5
km += 5


let title:String
var dollar:Double
var rate:Double
//値を代入する
title = "為替計算"
dollar = 250
rate = 108.5

let yen = dollar * rate

let hello = "ハロー"

let massage = """
iosアプリはSwiftで作ります。
空を素早く飛び回る"アマツバメ”です。
"""

let tanka = 240
let kosu = 3
let kingaku = String(tanka * kosu) + "円です"

let time = 9.95
let result = "タイムは\(time)秒でした。"

var user = (name:"鈴木",point:30)
user.point += 5
print(user.name)
print(user.point)

var value = (100, 200, 300)
print(value.1)

let numList = [4, 8, 15, 16, 23, 42]
var sum = 0
for num in numList{
    sum += num
}
print("合計\(sum)")

var stars = ""
for _ in 1...5{
    stars += "★"
    print(stars)
}

var num: Int{
    let result = 2 * 5
    return result
}

print(num)

for _ in 1...5 {
    let num = Bool.random()
    print(num)
}
