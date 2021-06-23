//
//  ListNode.swift
//  Algorithm
//
//  Created by 麒麟02 on 2021/6/22.
//

import Foundation

class Solution {
    // 递归
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil else {
            return head
        }
        let newHead:ListNode = reverseList(head?.next)!
        head?.next?.next = head
        head?.next = nil
        return newHead
    }
    
    // 迭代
    func reverseList2(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil else {
            return head
        }
        
        var newHead:ListNode?
        var _head = head
        while _head != nil  {
            let tmpNode:ListNode? = _head?.next
            _head?.next = newHead
            newHead = _head
            _head = tmpNode
        }
        
        return newHead
    }
    
//    // 迭代
//    func reverseList3(_ head: ListNode?) -> ListNode? {
//        guard head != nil && head?.next != nil else {
//            return head
//        }
//
//        var newHead:ListNode?
//        var _head = head
//        while _head != nil {
//            let tmpNode = _head?.next
//            _head?.next = newHead
//            newHead = _head
//            _head = tmpNode
//        }
//
//        return newHead
//    }
    
    func test() {
        var list = [ListNode]()
        var temp:ListNode = ListNode()
        for i in 1...5 {
            let node:ListNode = ListNode(i + 1)
            if i != 5 {
                temp.next = node
            }
            temp.val = i
            list.append(temp)
            temp = node
        }

        var head = list.first ?? nil

        while(head != nil) {
            print("val: " ,  head?.val ?? -1)
            head = head?.next
        }

        let solution:Solution = Solution()

        var newHead = solution.reverseList2(list.first)

        print("======newHead======")
        while(newHead != nil) {
            print("val: " ,  newHead?.val ?? -1)
            newHead = newHead?.next
        }
        
//        newHead
    }
}



