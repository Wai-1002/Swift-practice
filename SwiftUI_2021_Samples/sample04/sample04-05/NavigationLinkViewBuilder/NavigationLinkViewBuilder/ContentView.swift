//
//  ContentView.swift
//  NavigationLinkViewBuilder
//
//  Created by yoshiyuki oshige on 2021/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink (destination: detailView()){
                HStack(alignment: .bottom, spacing: 10) {
                    Image("IMG_6460")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    Text("鷹取山")
                }
            }.navigationTitle("人気スポット")
        }.navigationViewStyle(.stack)
    }
}

@ViewBuilder
func detailView() -> some View {
    VStack {
        Text("鷹取山ハイキングコース").font(.title2)
        Image("IMG_6460")
            .resizable()
            .aspectRatio(contentMode: .fit)
        Text("横須賀 鷹取山の磨崖仏")
    }.padding()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        detailView()
    }
}
