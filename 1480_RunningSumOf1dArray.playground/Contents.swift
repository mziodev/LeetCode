import Foundation

let nums1 = [1,2,3,4]
let nums2 = [1,1,1,1,1]
let nums3 = [3,1,2,10,1]

nums1.first

class Solution {
    static func runningSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        var sums:[Int] = []
        
        nums.forEach {
            sum += $0
            sums.append(sum)
        }

        return sums
    }
}

Solution.runningSum(nums1)
Solution.runningSum(nums2)
Solution.runningSum(nums3)
