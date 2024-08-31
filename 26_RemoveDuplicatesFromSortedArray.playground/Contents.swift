import Foundation

class Solution {
    static func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums).sorted())
        
        return nums.count
    }
}

var nums1 = [1,1,2]
var nums2 = [0,0,1,1,1,2,2,3,3,4]

Solution.removeDuplicates(&nums1)
Solution.removeDuplicates(&nums2)
