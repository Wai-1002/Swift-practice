//
//  ContentView.swift
//  StepperCalc
//
//  Created by yoshiyuki oshige on 2021/09/06.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    let tanka = 240
    let tax = 0.1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("１個 \(tanka)円")
                
            Stepper(value: $kosu, in: 0...10, step: 2) {
                Text("個数： \(kosu)")
            }.frame(width:200)
            
            Text("料金：\(calc(kosu)) 円").font(.headline)
            + Text("(税込み)").font(.footnote)
        }
    }
        
    // 料金の計算
    func calc(_ num:Int) -> Int {
        var price = tanka * num
        price = Int(Double(price) * (1+tax))
        return price
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
