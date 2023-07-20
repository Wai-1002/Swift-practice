import UIKit

// 引数を使った関数
func calc(adult:Int, child:Int) -> Int {
    let money = adult * 1200 + child * 500
    return money
}

let price = calc(adult: 3, child: 2)
print(price)

// 引数に初期値がある関数
func calc2(adult:Int = 0, child:Int = 0) -> Int {
    let money = adult * 1200 + child * 500
    return money
}

let adult1 = calc2(adult: 1)
let child2 = calc2(child: 2)
print("大人１人 \(adult1)")
print("子供２人 \(child2)")

var isPlay = false
// 値を返さない関数
func play() -> Void {
    isPlay = true
}

play()
print(isPlay)
