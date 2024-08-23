import Foundation

class Solution {
    static func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineCopy = magazine
        
        for char in ransomNote {
            if let index = magazineCopy.firstIndex(of: char) {
                magazineCopy.remove(at: index)
            } else {
                return false
            }
        }
        
        return true
    }
}

Solution.canConstruct("a", "b")
Solution.canConstruct("aa", "ab")
Solution.canConstruct("aa", "aab")
Solution.canConstruct("aab", "baa")
Solution.canConstruct("bg", "efjbdfbdgfjhhaiigfhbaejahgfbbgbjagbddfgdiaigdadhcfcj")
