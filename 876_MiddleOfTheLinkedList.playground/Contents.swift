import Foundation

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

class Solution {
    /* 
     This is the Array solution.
     - Time complexity: O(n)
     - Time complextity: O(n)
     */
    static func middleNodeArray(_ head: ListNode?) -> ListNode? {
        var nodeList: [ListNode] = []
        var currentHead = head
        
        while currentHead != nil {
            if let head = currentHead {
                nodeList.append(head)
            }
            
            currentHead = currentHead?.next
        }
        
        return nodeList[nodeList.count / 2]
    }
    
    /*
     This is the Two Pointers solution.
     - Time complextity: O(n)
     - Space complexity: O(1)
     */
    static func middleNodeTwoPointers(_ head: ListNode?) -> ListNode? {
        var middleHead = head
        var lastHead = head
        
        while(lastHead != nil && lastHead?.next != nil) {
            middleHead = middleHead?.next
            lastHead = lastHead?.next?.next
        }
        
        return middleHead
    }
}

let head1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
let head2 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6))))))

Solution.middleNodeArray(head1)
Solution.middleNodeArray(head2)

Solution.middleNodeTwoPointers(head1)
Solution.middleNodeTwoPointers(head2)
