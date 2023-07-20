//
//  ContentView.swift
//  confirmationDialog2
//
//  Created by yoshiyuki oshige on 2021/09/15.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDialog = false
    
    var body: some View {
        Button(action: {
            isShowingDialog = true
        }) {
            Label("削除ボタン", systemImage: "trash")
        }.confirmationDialog("注意",
                             isPresented: $isShowingDialog,
                             titleVisibility: .visible
        ) {
            Button("選択A") {
                // 処理A
            }
            Button("選択B") {
                // 処理B
            }
            Button("削除する", role: .destructive) {
                destructiveAction()
            }
            Button("キャンセル", role: .cancel) {
                cancelAction()
            }
        } message: {
            Text("メッセージ。メッセージ。メッセージ。メッセージ。") +
            Text("メッセージ。メッセージ。メッセージ。メッセージ。")
        }
    }
    
    func destructiveAction() {
        print("削除が選ばれた")
    }
    
    func cancelAction() {
        print("キャンセルが選ばれた")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
