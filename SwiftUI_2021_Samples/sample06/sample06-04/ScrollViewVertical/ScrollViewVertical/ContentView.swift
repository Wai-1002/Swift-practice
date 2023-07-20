//
//  ContentView.swift
//  ScrollViewVertical
//
//  Created by yoshiyuki oshige on 2021/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { num in
                    Page(str: String(num))
                        .frame(width: 200, height: 150)
                        .cornerRadius(8)
                }
            }
        }
        .frame(width: 250, height: 500)
        .background(Color.gray.opacity(0.2))
    }
}

struct Page: View {
    let colors:[Color] = [.green, .blue, .pink, .orange, .purple]
    let str:String
    
    var body: some View {
        ZStack {
            colors.randomElement()
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
