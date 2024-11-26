import Foundation

class Solution {
    static func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        var zeroNumber = 0
        
        while index < nums.count - zeroNumber {
            if nums[index] == 0 {
                nums.remove(at: index)
                nums.append(0)
                zeroNumber += 1
            } else {
                index += 1
            }
        }
    }
}

var nums1 = [0,1,0,3,12]
var nums2 = [0]
var nums3 = [2,1,0,3,0,12,0,0,0]
var nums4 = [0,0,1]

Solution.moveZeroes(&nums1)
Solution.moveZeroes(&nums2)
Solution.moveZeroes(&nums3)
Solution.moveZeroes(&nums4)
