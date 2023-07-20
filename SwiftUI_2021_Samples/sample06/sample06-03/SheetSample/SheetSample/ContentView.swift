//
//  ContentView.swift
//  SheetSample
//
//  Created by yoshiyuki oshige on 2021/09/17.
//

import SwiftUI

struct ContentView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        Button(action: {
            isModal = true
        }) {
            Text("Sheetテスト")
        }.sheet(isPresented: $isModal) {
            SomeView()
        }
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
