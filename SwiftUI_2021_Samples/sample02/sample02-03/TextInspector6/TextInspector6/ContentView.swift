//
//  ContentView.swift
//  TextInspector6
//
//  Created by yoshiyuki oshige on 2021/08/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("The quick brown fox \n jumps over \n the lazy dog.")
            .frame(width: 250.0, height: 200.0, alignment: .bottomTrailing)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
