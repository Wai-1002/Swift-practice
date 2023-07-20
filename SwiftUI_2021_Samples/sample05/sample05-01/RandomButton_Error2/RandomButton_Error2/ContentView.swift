//
//  ContentView.swift
//  RandomButton_Error2
//
//  Created by yoshiyuki oshige on 2021/09/01.
//

import SwiftUI

struct ContentView: View {
    var num = 0
    
    var body: some View {
        VStack{
            Button(action: {
                num = Int.random(in: 0...100)
            }) {
                Text("Random Button")
            }
            Text("\(num)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
