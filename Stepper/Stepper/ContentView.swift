//
//  ContentView.swift
//  Stepper
//
//  Created by 若生優希 on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    let tanka = 240
    let tax = 0.1
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("1個　\(tanka)円")
        Stepper(value: $kosu, in: 0...10, step: 2) {
            Text("個数: \(kosu)")
        }
        .frame(width: 200)
            
            let price = tanka * kosu
            let rersult = Int(Double(price) * (1+tax))
            Text("料金:\(rersult)円")
                .font(.headline)
            + Text("(税込み)")
                .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
