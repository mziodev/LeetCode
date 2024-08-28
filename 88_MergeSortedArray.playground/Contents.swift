import Foundation

class Solution {
    static func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Index = m
        var nums2Index = 0
        
        while nums1Index < nums1.count {
            nums1[nums1Index] = nums2[nums2Index]
            
            nums1Index += 1
            nums2Index += 1
        }
        
        nums1.sort()
    }
}

var nums1 = [1,2,3,0,0,0]
let nums1Length = 3
let nums2 = [2,5,6]
let nums2Length = 3

Solution.merge(&nums1, nums1Length, nums2, nums2Length)

var nums3 = [1,2,3,4,5,0,0]
let nums3Length = 5
let nums4 = [7,9]
let nums4Length = 2

Solution.merge(&nums3, nums3Length, nums4, nums4Length)
