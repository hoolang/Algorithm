//
//  141.环形链表.swift
//  Algorithm
//
//  Created by 麒麟02 on 2021/6/22.
//

import Foundation
class Solution_141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil && head?.next != nil else {
            return false
        }
        var slow:ListNode? = head
        var fast:ListNode? = head?.next
        while fast != nil && fast?.next != nil {
            
            slow = slow?.next
            fast = fast?.next?.next
            if fast?.val == slow?.val { // 暂时只通过val来判断是否相等
                return true
            }
        }
        
        return false
    }
}
