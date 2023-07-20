//
//  ContentView.swift
//  segmentedPickerSwitch
//
//  Created by yoshiyuki oshige on 2021/09/09.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = 0
    let colorViews:[Color] = [.red, .green, .blue]
    let colorNames = ["Red", "Green", "Blue"]

    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.segmented)
            .frame(width: 250, height: 30)
            .padding()
            
            let color = colorViews[selectedColor]
            switch color {
            case .red:
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                
            case .green:
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                
            case .blue:
                Circle()
                    .stroke(lineWidth: 8)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                    
            default:
                Text("default")
            }
            Text(colorNames[selectedColor])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
