//
//  ContentView.swift
//  SliderSample
//
//  Created by yoshiyuki oshige on 2021/09/07.
//

import SwiftUI

struct ContentView: View {
    @State var volume: Double = 0.0
    
    var body: some View {
        HStack {
          Text("\(volume)").frame(width: 100)
            HStack {
                Image(systemName: "speaker.slash").imageScale(.large)
                Slider(value: $volume)
                Image(systemName: "speaker.3").imageScale(.large)
            }
            .frame(width: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
