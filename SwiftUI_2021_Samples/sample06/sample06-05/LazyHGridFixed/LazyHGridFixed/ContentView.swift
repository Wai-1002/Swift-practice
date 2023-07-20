//
//  ContentView.swift
//  LazyHGridFixed
//
//  Created by yoshiyuki oshige on 2021/09/23.
//

import SwiftUI

struct ContentView: View {
    let grids = [
        GridItem(.fixed(150), spacing: 20, alignment: .leading),
        GridItem(.fixed(20), spacing: 5, alignment: .leading),
        GridItem(.fixed(20), alignment: .leading),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: grids, spacing: 20) {
                ForEach(photoArray) { item in
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                    Text(item.imageName).bold()
                    Text(item.title).font(.caption)
                }
            }.padding()
        }
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
