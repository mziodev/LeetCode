import Foundation

class Solution {
    static func checkIfExist(_ arr: [Int]) -> Bool {
        var checkedNumbers = Set<Int>()
        
        for number in arr {
            if checkedNumbers.contains(number * 2) ||
                (number.isMultiple(of: 2) && checkedNumbers.contains(number / 2)) {
                return true
            } else {
                checkedNumbers.insert(number)
            }
        }
        
        return false
    }
}

Solution.checkIfExist([10,2,5,3])
Solution.checkIfExist([3,1,7,11])
Solution.checkIfExist([-2,0,10,-19,4,6,-8])
