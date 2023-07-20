//
//  ContentView.swift
//  EnvironmentObjectSample
//
//  Created by yoshiyuki oshige on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    // 共有オブジェクトを指定する
    @EnvironmentObject var setData: ShareData
    // シートが開いている状態
    @State var isShow: Bool = false
    
    var body: some View {
        VStack{
            // 現在の設定
            GroupBox(label: Label("設定", systemImage: "gearshape")){
                Text("\(setData.isOn ? "ON" : "OFF")")
                if setData.isOn {
                    Text(String(repeating: "★", count: setData.num))
                }
            }.frame(width:300)
            // シートを表示するボタン
            Button (action:{
                isShow = true
            }){
                Label("設定を変える", systemImage: "ellipsis.circle")
            }
            .padding()
            .sheet(isPresented: $isShow){
                // シートを作る
                SettingView(isPresented: $isShow)
            }
        }
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            // 共有データを作る（プレビュー用）
            .environmentObject(
                ShareData())
    }
}
