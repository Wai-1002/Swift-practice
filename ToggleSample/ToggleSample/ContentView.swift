//
//  ContentView.swift
//  ToggleSample
//
//  Created by 若生優希 on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = true
    var body: some View {
        VStack {
            Toggle(isOn: $isShow){
                Label(isShow ? "消す" : "表示する",
                      systemImage: isShow ? "eye.slash" :"eye")
                    .frame(width: 150)
            }
            .toggleStyle(.button)
            .tint(isShow ? .red : .indigo)
            .clipShape(Capsule())
            .animation(.easeInOut(duration: 0.2), value: isShow)
            Image("IMG_0996")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .opacity(isShow ? 1.0 : 0.0)
                .animation(.easeInOut(duration: 1.0), value: isShow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
