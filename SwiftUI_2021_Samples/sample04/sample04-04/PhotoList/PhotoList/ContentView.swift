//
//  ContentView.swift
//  PhotoList
//
//  Created by yoshiyuki oshige on 2021/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(photoArray) { item in
            RowView(photo: item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


