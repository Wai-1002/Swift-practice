//
//  ContentView.swift
//  addTextHStack
//
//  Created by yoshiyuki oshige on 2021/07/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Hello, world!")
                .padding()
            Text("Placeholder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
