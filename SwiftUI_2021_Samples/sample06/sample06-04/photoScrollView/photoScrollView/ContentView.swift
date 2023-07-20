//
//  ContentView.swift
//  photoScrollView
//
//  Created by yoshiyuki oshige on 2021/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center, spacing: 20) {
                ForEach(photoArray) {photoData in
                    PhotoView(photo:photoData)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
