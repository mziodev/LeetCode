import Foundation

class Solution {
    static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let numsCount = nums.count
        var index = 0
        var valCount = 0
        
        while index < numsCount - valCount {
            if nums[index] == val {
                nums.remove(at: index)
                nums.append(0)
                
                valCount += 1
            } else {
                index += 1
            }
            
        }
        
        return numsCount - valCount
    }
}

var nums1 = [3,2,2,3]

Solution.removeElement(&nums1, 3)
print(nums1)
