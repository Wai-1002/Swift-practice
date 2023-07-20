//
//  ContentView.swift
//  ListSwipeActions1
//
//  Created by yoshiyuki oshige on 2021/11/01.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var books = Books()
    
    var body: some View {
        List(books.booksData) { item in
            BookView(item)
                .swipeActions(edge: .leading){
                    Button {
                        books.toggleIsRead(item)
                    } label: {
                        if item.isRead {
                            Label("未読にする", systemImage: "book.closed")
                        } else {
                            Label("既読にする", systemImage: "book.fill")
                        }
                    }.tint(.blue)
                }
        }.listStyle(.plain)
    }
}

// リストの行に表示するビュー
@ViewBuilder
func BookView(_ item:Book) -> some View {
    VStack(alignment: .leading){
        Text(item.title).bold() // 書名
        Text(item.author) // 著者
    }
    .foregroundColor(item.isRead ? .gray : .black) // 既読のときグレイ
    .frame(height:80)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
