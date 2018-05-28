import Foundation

let text: String = "aaaabbaccccdddcccaaab"

var mid: Character? = nil
var final = ""
var num: Int = 0

for i in text {
    if i == mid {
        num += 1
    } else {
        mid = i
        if mid != nil {
            if num > 1 {
                final.append(String(num))
            }
            final.append(i)
        }
        num = 1
    }
}
print("\(final)")


let b = text.prefix(1)
print("\(b)")
