//
//  ContentView.swift
//  DatePicker
//
//  Created by 若生優希 on 2022/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let max = Calendar.current.date(byAdding: .month, value: 1 to: Date())!
    }
    var body: some View {
        DatePicker(selection: $theDate,  in: dateClosedRange ,label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .environment(\.calendar, Calendar(identifier: .japanese))
            .padding(50)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
