import UIKit

var names = ["睦美", "麻美子", "真理子", "幸恵", "里美", "由美"]
names.shuffle()
print(names)

let word = "SwiftUI"
let anagram = word.shuffled()
print("word: \(word)")
print("anagram: \(anagram)")

var aRange = 1...10
let shuffledRange = aRange.shuffled()
print(shuffledRange)

