//
//  ContentView.swift
//  LazyVGridFixed
//
//  Created by yoshiyuki oshige on 2021/09/21.
//

import SwiftUI

struct ContentView: View {
    let grids = Array(repeating: GridItem(.fixed(80)), count:4)
    
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: grids) {
                ForEach((1...100), id: \.self) { num in
                    Page(str: String(num))
                        .cornerRadius(8)
                        .frame(height: 60)
                }
            }
        }
    }
}

struct Page: View {
    let colors:[Color] = [.green, .blue, .pink, .orange, .purple]
    let str:String
    
    var body: some View {
        ZStack {
            colors.randomElement()
            Text(str)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

