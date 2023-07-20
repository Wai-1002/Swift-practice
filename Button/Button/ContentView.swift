//
//  ContentView.swift
//  Button
//
//  Created by 若生優希 on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    var body: some View {
        VStack{
            Button(action:{
                num = Int.random(in: 0...100)
                //                        print(num)
            }) {
                Text("Randoom Botton")
                    .font(.largeTitle)
                    .frame(width: 280, height: 60, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color.pink)
                    .cornerRadius(15, antialiased: true)
            }
            Text("\(num)")
                .font(.largeTitle)
                .padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
