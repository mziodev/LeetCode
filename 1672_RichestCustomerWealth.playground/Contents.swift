import Foundation

let accounts1 = [[1, 2, 3], [3, 2, 1]]
let accounts2 = [[1, 5], [7, 3], [3, 5]]
let accounts3 = [[2,8,7],[7,1,3],[1,9,5]]

class Solution {
    static func maximumWealth(_ accounts: [[Int]]) -> Int {
        accounts.map { $0.reduce(0, +) }.max() ?? 0
    }
}

Solution.maximumWealth(accounts1)
Solution.maximumWealth(accounts2)
Solution.maximumWealth(accounts3)
