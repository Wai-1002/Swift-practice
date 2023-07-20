//
//  ContentView.swift
//  drawRectangle
//
//  Created by yoshiyuki oshige on 2021/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 200, height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
