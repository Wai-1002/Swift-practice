//
//  ContentView.swift
//  TextFieldSample
//
//  Created by yoshiyuki oshige on 2021/09/12.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            TextField("お名前は？", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            // 名前が空でないとき表示する
            if (!name.isEmpty) {
                Text("\(name)さん、こんにちは！")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
