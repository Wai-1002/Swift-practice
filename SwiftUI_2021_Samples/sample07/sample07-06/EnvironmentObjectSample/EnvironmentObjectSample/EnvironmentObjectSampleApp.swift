//
//  EnvironmentObjectSampleApp.swift
//  EnvironmentObjectSample
//
//  Created by yoshiyuki oshige on 2021/09/29.
//

import SwiftUI

@main
struct EnvironmentObjectSampleApp: App {
    var body: some Scene {
        WindowGroup {
            // 共有オブジェクトを作る
            ContentView().environmentObject(ShareData())
        }
    }
}
