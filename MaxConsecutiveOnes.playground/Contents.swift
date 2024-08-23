import Foundation

class Solution {
    static func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var consecutiveOneGroups = [Int]()
        var consecutiveOnes = 0
        
        nums.forEach {
            if $0 == 1 {
                consecutiveOnes += 1
            } else {
                consecutiveOneGroups.append(consecutiveOnes)
                consecutiveOnes = 0
            }
        }
        
        if consecutiveOnes > 0 { consecutiveOneGroups.append(consecutiveOnes) }
        
        return consecutiveOneGroups.max() ?? 0
    }
}

Solution.findMaxConsecutiveOnes([1,1,0,1,1,1])
Solution.findMaxConsecutiveOnes([1,1,0,1,1,1,0])
Solution.findMaxConsecutiveOnes([1,1,0,1,1,1,0,1,1,1,1])
