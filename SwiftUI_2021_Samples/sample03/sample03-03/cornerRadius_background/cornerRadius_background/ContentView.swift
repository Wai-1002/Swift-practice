//
//  ContentView.swift
//  cornerRadius_background
//
//  Created by yoshiyuki oshige on 2021/08/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .padding(15)
            .foregroundColor(.white)
            .background(ShapeView())
            .cornerRadius(50)
            .frame(width: 150, height: 150)
    }
}

// 背景にするビューを作る
struct ShapeView: View {
    var body: some View {
        ZStack {
            Rectangle().rotationEffect(.degrees(45))
            Rectangle().rotationEffect(.degrees(-45))
        }
        .foregroundColor(.green)
        .frame(width: 50, height: 150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
