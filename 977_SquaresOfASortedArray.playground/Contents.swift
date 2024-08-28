import Foundation

class Solution {
    static func sortedSquares(_ nums: [Int]) -> [Int] {
        nums.map { $0 * $0 }.sorted()
    }
}


Solution.sortedSquares([-4,-1,0,3,10])
