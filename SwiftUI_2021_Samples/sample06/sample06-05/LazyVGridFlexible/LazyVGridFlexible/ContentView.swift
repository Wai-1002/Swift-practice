//
//  ContentView.swift
//  LazyVGridFlexible
//
//  Created by yoshiyuki oshige on 2021/09/21.
//

import SwiftUI

struct ContentView: View {
    let grids = [GridItem(.fixed(70), spacing: 10),
                 GridItem(.flexible(), spacing: 10, alignment: .leading)]

    var body: some View {
        LazyVGrid(columns: grids, alignment: .leading, spacing: 20) {
                ForEach(photoArray) { item in
                    Text(item.imageName).font(.caption)
                    Text(item.title)
                }
        }.padding()
    }
}

struct PhotoData: Identifiable{
    var id = UUID()
    var imageName:String
    var title:String
}

var photoArray = [
    PhotoData(imageName: "IMG_0463", title: "台風で流された旧鵠沼橋の親柱"),
    PhotoData(imageName: "IMG_0495", title: "横須賀ヴェルニー記念公園軍港閲見門"),
    PhotoData(imageName: "IMG_1478", title: "恋人たちの湘南平テレビ塔"),
    PhotoData(imageName: "IMG_1739", title: "赤い漁具倉庫１"),
    PhotoData(imageName: "IMG_1742", title: "赤い漁具倉庫２"),
    PhotoData(imageName: "IMG_2233", title: "江ノ電501系"),
    PhotoData(imageName: "IMG_2406", title: "茅ヶ崎漁港引き上げモーター小屋"),
    PhotoData(imageName: "IMG_2407", title: "茅ヶ崎漁港第２えぼし丸"),
    PhotoData(imageName: "IMG_2864", title: "相模川河口調整水門"),
    PhotoData(imageName: "IMG_2909", title: "つくばエキスポセンター H2ロケット")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
