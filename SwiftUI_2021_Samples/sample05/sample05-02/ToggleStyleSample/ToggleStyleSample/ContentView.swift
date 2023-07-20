//
//  ContentView.swift
//  ToggleStyleSample
//
//  Created by yoshiyuki oshige on 2021/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isShow) {
                Label(isShow ? "消す" : "表示する",
                      systemImage: isShow ? "eye.slash" : "eye")
                    .frame(width: 150)
            }
            .toggleStyle(.button)
            .tint(isShow ? .red : .indigo)
            .clipShape(Capsule())
            .animation(.easeInOut(duration: 0.2), value:isShow)
            
            // 写真
            Image("eigakan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .opacity(isShow ? 1.0 : 0.0)
                .animation(.easeInOut(duration: 1.0), value:isShow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
