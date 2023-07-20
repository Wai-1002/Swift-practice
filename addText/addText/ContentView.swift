//
//  ContentView.swift
//  addText
//
//  Created by 若生優希 on 2022/06/05.
//

import SwiftUI

let metoro = ["銀座線", "丸ノ内線", "日比谷線", "東西線", "千代田線", "半蔵門線", "南北線", "副都心線"]

let colors:[Color] = [.red, .blue, .green, .orange, .yellow]
let shikoku = ["徳島県", "香川県", "愛媛県", "高知県"]
let kyusyu = ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県"]
struct ContentView: View {
    var body: some View {
        Image("B2A16451-6B27-459A-8D72-3AE30178A307_1_105_c")
            .resizable()
            .aspectRatio(contentMode:.fill)
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .border(Color.pink, width: 10)
            .cornerRadius(10)
            .overlay(
                VStack{
                    
                    VStack(alignment: .trailing){
                        
                        Text("知性の自転車")
                            .font(.largeTitle)
                            .fontWeight(.black)
                        Text("Bicycle for the Mind.")
                            .italic()
                            .offset(x: -10, y: 0)
                        
                    }
                    .padding(.top, 80)
                    VStack(alignment: .trailing){
                        Text("新鮮な心")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                        Text("Pity is akin to love")
                            .italic()
                            .offset(x: -10, y: 0)
                    }
                    .padding(.top, 20)
                    .background(Color.yellow)
                    Spacer()
                }
            )
        
        Text("Hello, world!")
            .font(.largeTitle)
            .padding(15)
            .foregroundColor(.white)
            .background(ShapeView())
            .cornerRadius(50)
            .frame(width: 150, height: 150)
            .rotation3DEffect(.degrees(45), axis: (x: 0, y: 1, z: 0))
        
        NavigationView{
            List {
                Text("Content 1")
                Text("Content 2")
                Text("Content 3")
                Text("Content 4")
                Text("Content 5")
                Text("Content 6")
                    .navigationTitle("タイトル")
            }
        }
        
        List(metoro.indices, id: \.self) { item in
            HStack {
                Text(String(item))
                Text(metoro[item])
            }
        }
        VStack{
            ForEach(colors.indices, id: \.self){
                index in
                Rectangle()
                    .frame(width: 150, height: 30)
                    .foregroundColor(colors[index])
            }
        }
        
        List {
            Section(header: Text("四国").font(.largeTitle)
                .padding(.top), footer: Text("最高標高は石槌残の1,982m")) {
                    ForEach(shikoku, id:\.self) { item in
                        Text(item)
                    }
                }
            Section(header: Text("九州").font(.largeTitle).padding(.top), footer: Text("最高標高は宮之浦岳の19,34m")) {
                ForEach(kyusyu, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .listStyle(SidebarListStyle())
        
    }
    
}

struct ShapeView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .rotationEffect(.degrees(45))
            Rectangle()
                .rotationEffect(.degrees(-45))
        }
        .foregroundColor(.green)
        .frame(width: 50, height: 150)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
