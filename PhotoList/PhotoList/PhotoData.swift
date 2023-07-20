//
//  PhotoData.swift
//  PhotoList
//
//  Created by 若生優希 on 2022/06/14.
//

import Foundation

struct PhotoData: Identifiable{
    var id = UUID()
    var imageName:String
    var title:String
}

var photoArray = [
    PhotoData(imageName: "IMG_0996", title: "湘南平展望レストランFlat"),
    PhotoData(imageName: "IMG_1035", title: "アウトリガーカヌー"),
    PhotoData(imageName: "IMG_1504", title: "えぼし号"),
    PhotoData(imageName: "IMG_1531", title: "富士山"),
    PhotoData(imageName: "IMG_2139", title: "DENTAL CLINIC"),
    PhotoData(imageName: "IMG_2250", title: "白桃台"),
    PhotoData(imageName: "IMG_2269", title: "サザンビーチ海の家"),
    PhotoData(imageName: "IMG_2470", title: "天使の翼"),
    PhotoData(imageName: "IMG_2883", title: "スイミングスクールバス"),
    PhotoData(imageName: "IMG_4199", title: "小田急江ノ島線"),
    PhotoData(imageName: "IMG_6460", title: "鷹取山"),
    PhotoData(imageName: "IMG_7122", title: "スワンボート")
]
