//
//  ContentView.swift
//  TextInspector4
//
//  Created by yoshiyuki oshige on 2021/08/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Bicycle for the Mind")
            .font(.title)
            .frame(width: 200.0, height: 200.0)
            .border(Color.green, width: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
