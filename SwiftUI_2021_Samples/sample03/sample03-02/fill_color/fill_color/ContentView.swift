//
//  ContentView.swift
//  fill_color
//
//  Created by yoshiyuki oshige on 2021/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(Color.pink)
            .padding(50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
