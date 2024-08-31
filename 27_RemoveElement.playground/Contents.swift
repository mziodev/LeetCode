import Foundation

class Solution {
    static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        
        return nums.count
    }
}

var nums1 = [3,2,2,3]

Solution.removeElement(&nums1, 3)
