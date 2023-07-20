//
//  PhotoDetailView.swift
//  PhotoDetailView
//
//  Created by yoshiyuki oshige on 2021/08/28.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    
    var body: some View {
      VStack {
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
        PhotoDetailView(photo: photoArray[0])
    }
}
