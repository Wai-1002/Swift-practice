//
//  ContentView.swift
//  ContentList
//
//  Created by yoshiyuki oshige on 2021/08/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Content 1")
            Text("Content 2")
            Text("Content 3")
            Text("Content 4")
            Text("Content 5")
            Text("Content 6")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
