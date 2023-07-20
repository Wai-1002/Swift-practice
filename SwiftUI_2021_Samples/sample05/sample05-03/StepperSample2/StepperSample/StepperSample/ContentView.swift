//
//  ContentView.swift
//  StepperSample
//
//  Created by yoshiyuki oshige on 2020/08/12.
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
            
            let price = tanka * kosu
            let result = Int(Double(price) * (1+tax))
            Text("料金：\(result) 円").font(.headline)
            + Text("(税込み)").font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
