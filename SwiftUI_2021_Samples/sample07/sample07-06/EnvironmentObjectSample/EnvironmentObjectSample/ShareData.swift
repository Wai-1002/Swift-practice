//
//  ShareData.swift
//  EnvironmentObjectSample
//
//  Created by yoshiyuki oshige on 2021/09/29.
//

import Foundation

// 共有するデータ
class ShareData: ObservableObject {
    @Published var isOn = false
    @Published var num = 1
}
