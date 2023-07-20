//
//  ContentView.swift
//  SimpleList
//
//  Created by yoshiyuki oshige on 2021/08/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 ..< 5) { item in
            HStack {
                Text(String(item))
                Text("Hello, world!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
