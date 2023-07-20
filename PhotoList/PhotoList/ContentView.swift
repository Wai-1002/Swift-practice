//
//  ContentView.swift
//  PhotoList
//
//  Created by 若生優希 on 2022/06/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(photoArray) { item in
                NavigationLink(destination: PhotoDetailView(photo: item)){
                RowView(photo: item)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
