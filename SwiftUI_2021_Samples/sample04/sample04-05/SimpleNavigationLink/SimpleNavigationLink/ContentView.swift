//
//  ContentView.swift
//  SimpleNavigationLink
//
//  Created by yoshiyuki oshige on 2021/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink (destination: SubView()){
                Label("Goサブビュー", systemImage: "message")
            }
            .navigationTitle("Home")
        }
        .navigationViewStyle(.stack)
    }
}

struct SubView: View {
    var body: some View {
        Text("SubView").font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
