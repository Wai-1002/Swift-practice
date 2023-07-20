//
//  ContentView.swift
//  SheetOnDismissSample
//
//  Created by yoshiyuki oshige on 2021/09/17.
//

import SwiftUI

struct ContentView: View {
    @State var isModal: Bool = false
    @State var counter:Int = 0
    
    
    var body: some View {
        VStack {
            Button(action: {
                isModal = true
            }) {
                Text("Sheetテスト")
            }
            .sheet(isPresented: $isModal, onDismiss: {countUp()}){
                SomeView()
            }
            .disabled(counter >= 3) // 3回表示したらボタンを無効にする
            
            Text("回数：\(counter)")
                .font(.title)
                .padding()
        }
    }
    // ハーフモーダルビューが閉じたタイミングで実行される
    func countUp(){
        counter += 1
    }
}

// SomeViewビューを作る
struct SomeView: View {
    var body: some View {
        ZStack {
            Color.mint.opacity(0.4).ignoresSafeArea()
            VStack {
                Text("プレゼンテーション")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.green).opacity(0.8)
                            .frame(width: 90, height: 80)
                            .rotationEffect(.degrees(45))
                    )
                Image(systemName: "leaf")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SomeView()
    }
}
