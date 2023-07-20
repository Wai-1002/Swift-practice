//
//  ContentView.swift
//  fill_color_assets
//
//  Created by yoshiyuki oshige on 2021/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .frame(width: 300, height: 300)
            .foregroundColor(Color("Wakakusa"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
