//
//  ContentView.swift
//  TextEditorDataSave2
//
//  Created by yoshiyuki oshige on 2021/09/12.
//

import SwiftUI

// テキストデータを保存する
func saveText(_ textData:String, _ fileName:String) {
}

// テキストデータを読み込む
func loadText(_ fileName:String) -> String? {
    return nil
}

struct ContentView: View {
    @FocusState var isInputActive: Bool
    @State var theText: String = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $theText)
                .lineSpacing(10)
                .border(Color.gray)
                .padding([.leading, .bottom, .trailing])
                .navigationTitle("メモ")
                .focused($isInputActive) // テキストエディタのフォーカス
                .toolbar {
                    // 読み込みボタン
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("読み込む"){
                            if let data = loadText("sample.txt"){
                                theText = data
                            }
                        }
                    }
                    // 保存ボタン
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("保存"){
                            isInputActive = false // キーボードを下げる
                            saveText(theText, "sample.txt") // 保存する
                        }
                    }
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
