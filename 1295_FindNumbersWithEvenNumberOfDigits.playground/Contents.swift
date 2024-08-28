import Foundation

class Solution {
    static func findNumbers(_ nums: [Int]) -> Int {
        var digits = [Int]()
        
        nums.forEach {
            digits.append(String($0).count)
        }
        
        return digits.reduce(0, { $0 + ($1.isMultiple(of: 2) ? 1 : 0) })
    }
}

Solution.findNumbers([12,345,2,6,7896])
