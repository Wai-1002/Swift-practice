//
//  ContentView.swift
//  ToggleTintColor
//
//  Created by yoshiyuki oshige on 2021/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var isYaruki = true
    @State var isAuto = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Toggle("やる気モード", isOn: $isYaruki)
            .tint(.yellow)
            Toggle("自動設定", isOn: $isAuto)
            .tint(.red)
        }
        .frame(width: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
