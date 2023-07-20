//
//  ContentView.swift
//  AsynchronousConcurrent
//
//  Created by yoshiyuki oshige on 2021/10/12.
//

import SwiftUI

struct ContentView: View {
    @State var message:String = ""
    @ObservedObject var watch = StopWatch()
    
    var body: some View {
        VStack{
            Button(action: {
                // タスクの実行
                Task {
                    watch.start()
                    message = "- - -"
                    // 並行処理
                    async let who = getWho()
                    async let msg = getMessage()
                    // whoとmsgが揃うまで待つ
                    message = await who + "、" + msg + "！"
                    watch.stop()
                }
            }) {
                Label("async TEST", systemImage: "testtube.2")
                    .background(
                        Capsule()
                            .stroke(lineWidth:1)
                            .frame(width: 180, height: 40))
            }.padding(30)
            Text("\(message)").font(.title2)
            // 経過秒数
            let milliSeconds = Int((watch.elapsedTime) * 100)%100
            let seconds = Int(watch.elapsedTime)
            Text("\(seconds).\(milliSeconds)").padding()
            Spacer()
        }
    }
}

// 非同期で実行したい処理
func getWho() async -> String {
    await Task.sleep(5 * 1000 * 1000 * 1000) // 5秒待ち
    return "山本さん"
}

// 非同期で実行したい処理
func getMessage() async -> String {
    await Task.sleep(3 * 1000 * 1000 * 1000) // 3秒待ち
    return "ハロー"
}

class StopWatch: ObservableObject {
    // 経過秒数
    @Published var elapsedTime: Double = 0.0
    private var timer = Timer() // タイマーを作る
    
    // タイマースタート
    func start() {
        guard !timer.isValid else { return } // timer実行中はキャンセル
        self.elapsedTime = 0.0
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.elapsedTime += 0.01
        }
    }
    
    // タイマーストップ
    func stop() {
        timer.invalidate()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
