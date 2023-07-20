//
//  ContentView.swift
//  LinkURLSample2
//
//  Created by yoshiyuki oshige on 2021/08/30.
//

import SwiftUI

// Webデータの構造体
struct WebData: Identifiable{
    let id = UUID()
    let name:String
    let url:String
    let favicon:String
}

// Webデータのリストを作る
let webList = [
    WebData(name: "アップル",
             url: "https://www.apple.com/jp/", favicon: "apple"),
    WebData(name: "東京国立博物館",
             url: "www.tnm.jp", favicon: "tnm"),
    WebData(name: "東京都現代美術館",
             url: "https://www.mot-art-museum.jp", favicon: "mo"),
    WebData(name: "川崎水族館",
             url: "kawa-sui.com", favicon: "kawa-sui")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(webList) { item in
                HStack {
                    // ファビコン
                    Image(item.favicon)
                        .resizable().frame(width:40, height:40)
                    // URLチェック
                    if let url = URL(string: item.url), UIApplication.shared.canOpenURL(url) {
                    // Webリンク
                    Link(item.name, destination: url)
                    } else {
                        Text(item.name).foregroundColor(.gray)
                            + Text(" URLエラー").foregroundColor(.red).italic()
                    }
                }
            }.navigationTitle(Text("Webリスト"))
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
