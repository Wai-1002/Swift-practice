//
//  ContentView.swift
//  ArrayForEach
//
//  Created by yoshiyuki oshige on 2021/08/26.
//

import SwiftUI

// Colorビューの配列
let colors:[Color] = [.red, .blue, .green, .orange, .yellow]

struct ContentView: View {
    var body: some View {
        VStack {
            // 配列の先頭から順に取り出す
            ForEach(colors.indices, id: \.self){index in
                // 四角形を描く
                Rectangle()
                    .frame(width: 150, height: 30)
                    .foregroundColor(colors[index])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
