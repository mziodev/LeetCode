import Foundation

class Solution {
    static func sortArrayByParity(_ nums: [Int]) -> [Int] {
        nums.filter{ $0.isMultiple(of: 2) } + nums.filter{ !$0.isMultiple(of: 2) }
    }
}

let nums1 = [3,2,1,4]
let solution1 = Solution.sortArrayByParity(nums1)

let nums2 = [1,2,3,5,7,6,8]
let solution2 = Solution.sortArrayByParity(nums2)

let nums3: [Int] = []
let solution3 = Solution.sortArrayByParity(nums3)

let nums4 = [0,0]
let solution4 = Solution.sortArrayByParity(nums4)


