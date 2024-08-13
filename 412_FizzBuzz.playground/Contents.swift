import Foundation

class Solution {
    static func fizzBuzz(_ n: Int) -> [String] {
        (1...n).map {
            switch ($0.isMultiple(of: 3), $0.isMultiple(of: 5)) {
            case (true, true): "FizzBuzz"
            case (true, false): "Fizz"
            case (false, true): "Buzz"
            default: "\($0)"
            }
        }
    }
}

let input1 = 3
let input2 = 5
let input3 = 15

Solution.fizzBuzz(input1)
Solution.fizzBuzz(input2)
Solution.fizzBuzz(input3)
