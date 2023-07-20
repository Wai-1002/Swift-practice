//
//  ContentView.swift
//  Text
//
//  Created by 若生優希 on 2022/07/19.
//

import SwiftUI

struct ContentView: View {
    @State var kosu: String = ""
    let tanka:Double = 250
    let tax:Double = 1.1
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                TextField("0", text: $kosu)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: 100)
            }
            .font(.title)
            .frame(width:200)
            
            Group{
                if kosuCheck(min:1, max:10) {
                    Text("\(price())円です。")
                        .font(.title)
                } else {
                    Text("個数は1〜10個を入れてください。")
                        .foregroundColor(.red)
                        .font(.headline)
                }
            }.frame(width: 300, height: 30)
        }
    }
        func kosuCheck(min:Int, max:Int) -> Bool {
            guard let num = Int(kosu) else {
                return false
            }
            return (num>=min && num<=max)
        }
        
        func price() -> Int {
            if let num = Double(kosu){
                let result = Int(tanka * num * tax)
                return result
            } else {
                return -1
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

