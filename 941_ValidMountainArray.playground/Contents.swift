import Foundation

class Solution {
    static func validMountainArray(_ arr: [Int]) -> Bool {
        var isRising = false
        var hasPeak = false
        var index = 0
        
        if arr.count < 3 { return false }
            
        while index < arr.count {
            if index > 0 {
                if arr[index] == arr[index - 1] {
                    return false
                }
                
                if arr[index] > arr[index - 1] && !isRising {
                    isRising = true
                }
                
                if arr[index] > arr[index - 1] && hasPeak {
                    return false
                }
                
                if arr[index] < arr[index - 1] && !hasPeak && isRising {
                    hasPeak = true
                }
                
                if arr[index] < arr[index - 1] && !isRising {
                    return false
                }
            }
            
            index += 1
        }
        
        return hasPeak
    }
}

Solution.validMountainArray([2,1])
Solution.validMountainArray([3,5,5])
Solution.validMountainArray([0,3,2,1])
Solution.validMountainArray([0,1,2,3,4,5,6,7,8,9])
Solution.validMountainArray([9,8,7,6,5,4,3,2,1,0])
Solution.validMountainArray([2,1,2,3,5,7,9,10,12,14,15,16,18,14,13])
Solution.validMountainArray([0,1,2,1,2])
