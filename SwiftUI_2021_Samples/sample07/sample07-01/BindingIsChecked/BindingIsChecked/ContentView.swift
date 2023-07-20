//
//  ContentView.swift
//  BindingIsChecked
//
//  Created by yoshiyuki oshige on 2021/09/25.
//

import SwiftUI

struct ContentView: View {
    // チェック状態を保存（PersonCheckMarkビューのisCheckedとバインディングする）
    @State var isChecked_person1: Bool = false
    
    var body: some View {
        HStack {
            Text("担当者１のチェック")
            PersonCheckMark(isChecked: $isChecked_person1)
        }
    }
}

struct PersonCheckMark: View {
    // ContentViewビューの変数とバインディングする変数
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            // true/falseを反転する
            isChecked.toggle()
        }) {
            // isCheckedがtrueかfalsedかでイメージと色を選ぶ
            Image(systemName: isChecked ? "person.fill.checkmark" : "person")
                .foregroundColor(isChecked ? .blue : .gray)
                .scaleEffect(2.0)
                .frame(width: 40, height: 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
