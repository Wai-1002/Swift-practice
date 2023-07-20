//
//  ContentView.swift
//  AsynchronousSequences
//
//  Created by yoshiyuki oshige on 2021/10/12.
//

import SwiftUI

struct ContentView: View {
    @State var message:String = ""
    @State var logTime:String = ""
    @ObservedObject var watch = StopWatch()
    
    var body: some View {
        VStack{
            Button(action: {
                // タスクの実行
                Task {
                    logTime = ""
                    watch.start()
                    // 逐次処理
                    message = "- - -"
                    message = await getWho()
                    logTime = watch.getElapsedTime()
                    message += "、"
                    message += await getMessage()
                    logTime += "\n" + watch.getElapsedTime()
                    message += "！"
                    watch.stop()
                }
            }) {
                Label("await TEST", systemImage: "testtube.2")
                    .background(
                        Capsule()
                            .stroke(lineWidth:1)
                            .frame(width: 180, height: 40))
            }.padding(30)
            Text("\(message)").font(.title2)
            Text("\(logTime)").padding()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
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

// 経過秒数を取得
extension StopWatch {
    func getElapsedTime() -> String {
        // 経過秒数
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        let seconds = formatter.string(from: NSNumber(floatLiteral: self.elapsedTime)) ?? "0:00"
        return seconds
    }
}
