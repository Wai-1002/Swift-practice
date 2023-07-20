//
//  ContentView.swift
//  StateObjectSample
//
//  Created by yoshiyuki oshige on 2021/10/04.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = true
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            // 子ビューの表示
            ValueView1()
            ValueView2()
            // 親ビューにあるテキストの表示／非表示の切り替え
            Toggle(isOn: $isShow) {
            }.frame(width: 50).padding(.top, 30)
            if isShow {
                Text("Hello, World!").font(.largeTitle)
            }
            Spacer()
        }
        .padding()
    }
}

struct ValueView1: View {
    // ValueMakerのインスタンスを作り観測する
    @ObservedObject var maker = ValueMaker()
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text("\(maker.value)")
                .font(.title)
                .foregroundColor((maker.value > 0.8) ? .white : .gray)
                .background((maker.value > 0.8) ? Color.red : Color.white)
            // カウンタを表示する
            HStack{
                Text("カウンタ：")
                Text("\(maker.counter)").font(.largeTitle)
            }
        }
        .background(Color.yellow.opacity(0.3))
        .frame(width: 200, height: 80)
    }
}

struct ValueView2: View {
    // ValueMakerのインスタンスを作り観測する
    @StateObject var maker = ValueMaker()
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text("\(maker.value)")
                .font(.title)
                .foregroundColor((maker.value > 0.8) ? .white : .gray)
                .background((maker.value > 0.8) ? Color.red : Color.white)
            // カウンタを表示する
            HStack{
                Text("カウンタ：")
                Text("\(maker.counter)").font(.largeTitle)
            }
        }
        .background(Color.blue.opacity(0.3))
        .frame(width: 200, height: 80)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ValueView1()
        ValueView2()
    }
}
