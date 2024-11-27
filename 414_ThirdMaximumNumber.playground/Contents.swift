import Foundation

class Solution {
    static func thirdMax(_ nums: [Int]) -> Int {
        if let max = nums.max() {
            if let secondMax = nums.filter({ $0 != max }).max() {
                if let thirdMax = nums.filter({ $0 != max && $0 != secondMax }).max() {
                    return thirdMax
                }
                
                return max
            }
            
            return max
        }
        
        return 0
    }
}

Solution.thirdMax([3,2,1])
Solution.thirdMax([1,2])
Solution.thirdMax([2,2,3,1])
