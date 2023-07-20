//
//  ContentView.swift
//  addImage
//
//  Created by yoshiyuki oshige on 2021/08/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("seaSky")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
