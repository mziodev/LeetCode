import Foundation

class Solution {
    static func replaceElements(_ arr: [Int]) -> [Int] {
        var resultArr = arr
        var index = 0
        
        while index < resultArr.count {
            resultArr[index] = resultArr.suffix(from: index + 1).max() ?? -1
            
            index += 1
        }
        
        
        return resultArr
    }
}

Solution.replaceElements([17,18,5,4,6,1])
Solution.replaceElements([400])
