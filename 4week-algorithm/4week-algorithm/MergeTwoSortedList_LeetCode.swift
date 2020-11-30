//
//  MergeTowSortedList_LeetCode.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/29.
//

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
 
class MergeTwoStoredListManager {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2

        let head: ListNode = ListNode(0)
        var tmp = head
        while list1 != nil && list2 != nil {
            let v1 = list1!.val
            let v2 = list2!.val
            
            if v1 > v2 {
          //      print(list2!.val)
                tmp.next = list2!
                list2 = list2?.next
            } else {
          //      print(list1!.val)
                tmp.next = list1!
                list1 = list1?.next
            }
            tmp = tmp.next!
        }
       // print(list1?.val ?? list2?.val, list2?.next?.val)
        tmp.next = list1 ?? list2
        return head.next
    }
}
