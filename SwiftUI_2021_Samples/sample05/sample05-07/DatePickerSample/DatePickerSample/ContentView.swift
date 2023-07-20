//
//  ContentView.swift
//  DatePickerSample
//
//  Created by yoshiyuki oshige on 2021/09/10.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    var body: some View {
        DatePicker(selection: $theDate, label: { Text("日時")})
            .padding(50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
