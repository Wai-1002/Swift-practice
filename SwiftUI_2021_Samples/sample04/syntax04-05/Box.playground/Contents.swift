import UIKit

// 構造体を定義する
struct Box{
    let width:Int
    let height:Int
    let size:String
    
    // イニシャライザ
    init(width:Int, height:Int){
        self.width = width
        self.height = height
        if(width+height)<120 {
            size = "M"
        } else {
            size = "L"
        }
    }
}

let box1 = Box(width: 50, height: 50)
let box2 = Box(width: 40, height: 100)
print(box1)
print(box2)
