import Foundation

class Solution {
    static func duplicateZeros(_ arr: inout [Int]) {
        var index = 0
        
        while index < arr.count {
            if arr[index] == 0 {
                arr.insert(0, at: index)
                arr.removeLast()
                index += 2
            } else {
                index += 1
            }
        }
    }
}

var array = [1,0,2,3,0,4,5,0]

Solution.duplicateZeros(&array)
