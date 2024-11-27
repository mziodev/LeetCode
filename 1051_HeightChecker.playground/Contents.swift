import Foundation

class Solution {
    static func heightChecker(_ heights: [Int]) -> Int {
        let expected = heights.sorted()
        var notMatchingIndices = 0
        
        for index in 0..<heights.count {
            if heights[index] != expected[index] {
                notMatchingIndices += 1
            }
        }
        
        return notMatchingIndices
    }
}

Solution.heightChecker([1,1,4,2,1,3])
Solution.heightChecker([5,1,2,3,4])
Solution.heightChecker([1,2,3,4,5])
