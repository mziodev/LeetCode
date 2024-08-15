import Foundation

class Solution {
    static func numberOfSteps(_ num: Int) -> Int {
        var numberToReduce = num
        var steps: Int = 0
                
        while numberToReduce > 0 {
            if numberToReduce.isMultiple(of: 2) {
                numberToReduce /= 2
            } else {
                numberToReduce -= 1
            }
            
            steps += 1
        }
        
        return steps
    }
}

let num1 = 14
let num2 = 8
let num3 = 123

Solution.numberOfSteps(num1)
Solution.numberOfSteps(num2)
Solution.numberOfSteps(num3)
