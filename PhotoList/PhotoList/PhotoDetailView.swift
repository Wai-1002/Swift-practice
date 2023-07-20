//
//  PhotoDetailView.swift
//  PhotoList
//
//  Created by 若生優希 on 2022/06/17.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    var body: some View {
        VStack{
        Image(photo.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
        Text(photo.title)
        Spacer()
            
    }
        .padding()
    }
    
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo:photoArray[0])
    }
}
