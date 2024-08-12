import Foundation

// Definition for a binary tree node.
class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

let root = TreeNode(10, TreeNode(4), TreeNode(6))
let root2 = TreeNode(5, TreeNode(3), TreeNode(4))

class Solution {
    static func checkTree(_ root: TreeNode?) -> Bool {
        if let root = root {
            if let left = root.left, let right = root.right {
                left.val + right.val == root.val
            } else {
                false
            }
        } else {
            false
        }
    }
}

Solution.checkTree(root)
Solution.checkTree(root2)
