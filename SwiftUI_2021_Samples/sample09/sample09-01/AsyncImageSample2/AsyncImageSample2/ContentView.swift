//
//  ContentView.swift
//  AsyncImageSample2
//
//  Created by yoshiyuki oshige on 2021/10/12.
//

import SwiftUI

struct ContentView: View {
    private var myPhotoSource = PhotoSource()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                    ForEach(myPhotoSource.photos) { photo in
                        AsyncImage(url:  photo.url) { image in
                            NavigationLink(destination: image.resizable().aspectRatio(contentMode: .fit))
                            {
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        } placeholder: {
                            Color.orange
                                .overlay(Image(systemName: "photo").scaleEffect(2.0))
                        }
                        .mask(RoundedRectangle(cornerRadius: 16))
                        .frame(height: 200)
                    }
                }
            }
            .padding(.horizontal)
            .navigationTitle("お気に入り")
        }
        .navigationViewStyle(.stack)
    }
}


// 写真データの型
struct Photo: Identifiable {
    var id: URL{url}
    var url: URL
}

// 写真データの配列を作るPhotoSourceクラス
class PhotoSource {
    var photos: [Photo] = []
    init (){
        photos = makePhotos()
    }
}

// URLの配列を作るメソッドを拡張
extension PhotoSource {
    func makePhotos() -> [Photo] {
        let path = "https://oshige.xsrv.jp/samples/photos/"
        let photoNames: [String] = [
            "IMG_1159.jpg", "IMG_1326.jpg", "IMG_1384.jpg","IMG_1475.jpg",
            "IMG_1476.jpg", "IMG_1478.jpg", "IMG_1635.jpg", "IMG_1643.jpg", "IMG_1739.jpg", "IMG_1840.jpg", "IMG_1889.jpg", "IMG_2233.jpg", "IMG_2325.jpg", "IMG_2406.jpg", "IMG_2408.jpg", "IMG_4008.jpg"
        ]
        // URLの配列を作る
        var photos: [Photo] = []
        for name in photoNames {
            photos.append(Photo(url: URL(string:path + name)!))
        }
        return photos
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
