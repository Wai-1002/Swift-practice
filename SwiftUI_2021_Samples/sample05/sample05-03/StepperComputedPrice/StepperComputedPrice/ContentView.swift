//
//  ContentView.swift
//  StepperComputedPrice
//
//  Created by yoshiyuki oshige on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    let tanka = 240
    let tax = 0.1
    // 料金
    var price:Int {
        var value = tanka * kosu
        value = Int(Double(value) * (1+tax))
        return value
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("１個 \(tanka)円")
                
            Stepper(value: $kosu, in: 0...10, step: 2) {
                Text("個数： \(kosu)")
            }.frame(width:200)
            
            Text("料金：\(price) 円").font(.headline)
            + Text("(税込み)").font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
