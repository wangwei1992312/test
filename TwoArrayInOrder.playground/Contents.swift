import Foundation


let arrayA: [Int] = [2,3,5,11,13,17,19]
let arrayB: [Int] = [1,3,5,7,9,15,17,19]

func getTogether(arrayA: [Int], arrayB: [Int]) -> [Int] {
    var arrayBNum: Int = 0
    var finalArray: [Int] = []
    for a in 0..<arrayA.count {
        for b in arrayBNum..<arrayB.count{
            if arrayA[a] > arrayB[b] {
                finalArray.append(arrayB[b])
                arrayBNum += 1
            } else if arrayA[a] < arrayB[b] {
                finalArray.append(arrayA[a])
                break
            } else {
                finalArray.append(arrayA[a])
                arrayBNum += 1
                break
            }
        }
    }
    return finalArray
}
let arrayFinal = getTogether(arrayA: arrayA, arrayB: arrayB)
print("\(arrayFinal)")
