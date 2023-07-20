//
//  ContentView.swift
//  TextEditorDataSave4
//
//  Created by yoshiyuki oshige on 2021/09/12.
//

import SwiftUI

// 保存ファイルへのURLを作る
func docURL(_ fileName:String) -> URL? {
    let fileManager = FileManager.default
    do {
        // Docmentsフォルダ
        let docsUrl = try fileManager.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        // URLを作る
        let url = docsUrl.appendingPathComponent(fileName)
        return url
    } catch {
        return nil
    }
}

// テキストデータを保存する
func saveText(_ textData:String, _ fileName:String) {
    // URLを得られたらアンラップしてurlに代入
    guard let url = docURL(fileName) else {
        return
    }
    // ファイルパスへの保存
    do {
        let path = url.path
        try textData.write(toFile: path, atomically: true, encoding: .utf8)
    } catch let error as NSError {
        print(error)
    }
}

// テキストデータの読み込んで戻す
func loadText(_ fileName:String) -> String? {
    // URLを得られたらアンラップしてurlに代入
    guard let url = docURL(fileName) else {
        return nil
    }
    // urlからの読み込み
    do {
        let textData = try String(contentsOf: url, encoding: .utf8)
        return textData
    } catch {
        return nil
    }
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
