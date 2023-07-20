//
//  ContentView.swift
//  drawCircle
//
//  Created by yoshiyuki oshige on 2021/08/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .foregroundColor(.blue)
            .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
