//
//  RowView.swift
//  PhotoList
//
//  Created by 若生優希 on 2022/06/14.
//

import SwiftUI

struct RowView: View{
    var photo:PhotoData
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray))
            Text(photo.title)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(photo: photoArray[0])
            .previewLayout(.sizeThatFits)
    }
}

