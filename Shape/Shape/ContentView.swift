//
//  ContentView.swift
//  Shape
//
//  Created by 若生優希 on 2022/06/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.pink)
                .frame(width: 100, height: 300)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.purple)
                .frame(width: 100, height: 300)
                .rotationEffect(.degrees(30), anchor: .bottom)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.green)
                .frame(width: 100, height: 300)
                .rotationEffect(.degrees(-30), anchor: .bottom)
                .position(x: 239, y: 113)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
