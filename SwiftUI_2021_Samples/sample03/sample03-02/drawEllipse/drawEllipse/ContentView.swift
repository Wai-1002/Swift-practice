//
//  ContentView.swift
//  drawEllipse
//
//  Created by yoshiyuki oshige on 2021/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Ellipse()
            .foregroundColor(.blue)
            .frame(width: 200.0, height: 400.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
