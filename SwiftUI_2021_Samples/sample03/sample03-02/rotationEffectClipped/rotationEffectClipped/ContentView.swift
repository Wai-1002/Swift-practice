//
//  ContentView.swift
//  rotationEffectClipped
//
//  Created by yoshiyuki oshige on 2021/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Ellipse()
            .foregroundColor(.orange)
            .frame(width: 200, height: 400)
            .rotationEffect(.degrees(45))
            .clipped()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
