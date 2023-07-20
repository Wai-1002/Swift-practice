//
//  ContentView.swift
//  AlertOKCancelButton
//
//  Created by yoshiyuki oshige on 2021/09/13.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            // エラーが発生したらtrueにする
            isError = true
        }) {
         Text("Alertテスト")
       }.alert(isPresented: $isError) {
        Alert(title: Text("タイトル"), message: Text("メッセージ文"),
              primaryButton: .default(Text("OK"), action: {
                okAction()
              }),
              secondaryButton: .cancel(Text("キャンセル"), action:{})
        )}
    }
}

func okAction(){
    print("OKボタンが選ばれた")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
