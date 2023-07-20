//
//  ContentView.swift
//  cornerRadius_border
//
//  Created by yoshiyuki oshige on 2021/08/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.body)
            .frame(width: 150, height: 150)
            .border(Color.pink, width: 10)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
