//
//  ContentView.swift
//  ListSectionSample2
//
//  Created by yoshiyuki oshige on 2021/08/21.
//

import SwiftUI

struct ContentView: View {
    let shikoku = ["徳島県", "香川県", "愛媛県", "高知県"]
    let kyusyu = ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県"]
    
    var body: some View {
        
        List {
            Section(header: Text("四国"), footer: Text("最高標高は石鎚山の1,982m")) {
                ForEach(shikoku, id:\.self) { item in
                    Text(item)
                }
            }.headerProminence(.increased)
 
            Section(header: Text("九州"), footer: Text("最高標高は宮之浦岳の1,936m")) {
                ForEach(kyusyu, id:\.self) { item in
                    Text(item)
                }
            }.headerProminence(.increased)
        }
        .listStyle(.sidebar)
//        .listStyle(GroupedListStyle())


// ----
//        .listStyle(GroupedListStyle()) // .grouped
//        .listStyle(DefaultListStyle()) // 指定無し
//         .listStyle(InsetGroupedListStyle()) //DefaultListStyleと同じ .insetGrouped
        
//        .listStyle(InsetListStyle())
//        .listStyle(PlainListStyle()) // .plain
//        .listStyle(SidebarListStyle()) // 閉じることができる .sidebar
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
