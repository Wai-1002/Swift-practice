//
//  ContentView.swift
//  MetroListCount2
//
//  Created by yoshiyuki oshige on 2021/08/25.
//

import SwiftUI

let metro = ["銀座線", "丸ノ内線", "日比谷線", "東西線", "千代田線", "半蔵門線", "南北線", "副都心線"]

struct ContentView: View {
    var body: some View {
        List(metro.indices, id:\.self) { item in
            HStack {
                Text(String(item))
                Text(metro[item])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
