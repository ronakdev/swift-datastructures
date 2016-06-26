//
//  LinkedList.swift
//  LinkedLists
//
//  Created by Ronak Shah on 7/1/15.
//  Copyright (c) 2015 Shah Industries. All rights reserved.

//  Version 1.2
//

import Foundation

class LinkedList<T>: SequenceType, CustomStringConvertible {
    
    var head: ListNode<T>?
    
    var first: T? {
        return head?.value
    }
    var count: Int {
        var num = 0
        var temp = head
        while temp != nil {
            temp = temp!.nextNode()
            num++
        }
        return num
    }
    
    var description: String {
        var toReturn = ""
        
        var temp = head
        while temp != nil {
            if let val = temp?.getValue() {
                toReturn += "\(val)\n"
            }
            else {
                toReturn += "nil value\n"
            }
            temp = temp!.nextNode()
        }
        return toReturn
    }
    
    init(){
        head = nil
    }
    
    
    func addArray(values: [T]){
        for value in values {
            add(value)
        }
    }
    
    ///adds value T to last index
    func add(value: T) {
        addLast(value)
    }
    
    func removeFirst() -> T? {
        if let cleanHead = head {
            let val = cleanHead.value
            head = head?.next
            return val
        }
        return nil
    }
    
    
    func generate() -> LinkedListIterator<T> {
        return LinkedListIterator(node: head)
    }
    
    
    
    //private methods
    func addLast(value: T){
        
        let node: ListNode<T>? = ListNode(nodeValue: value)
        
        if head != nil {
            
            var temp : ListNode? = head
            var back : ListNode<T>?
            back = nil
            while temp != nil {
                back = temp
                temp = temp!.next
            }
            temp = back!
            //when temp.next is null
            temp!.setNext(node)
            
        }
            
        else{
            head = ListNode(nodeValue: value)
        }
    }
    
    func addFirst(value: T) {
        if head != nil {
            head = ListNode(nextNode: head!, nodeValue: value)
        }
        else {
            head = ListNode(nodeValue: value)
        }
    }
    
    
    
}