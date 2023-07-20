//
//  ContentView.swift
//  ObservedObjectValueMaker
//
//  Created by yoshiyuki oshige on 2021/09/28.
//

import SwiftUI

struct ContentView: View {
    // ValueMakerのインスタンスを作り観測する
    @ObservedObject var maker = ValueMaker()
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text("\(maker.value)")
                .font(.largeTitle)
                .foregroundColor((maker.value > 0.8) ? .white : .gray)
                .background((maker.value > 0.8) ? Color.red : Color.white)
            // 棒グラフ
            ZStack {
                Rectangle().stroke(.gray)
                Rectangle()
                    .foregroundColor(.green)
                    .scaleEffect(x:maker.value, y:1.0, anchor: .leading)
            }
        }
        .frame(width: 200, height: 80)
        .onAppear(perform: {
            maker.start() // スタート
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
