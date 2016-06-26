//
//  ListNode.swift
//  LinkedLists
//
//  Created by Student on 7/1/15.
//  Copyright (c) 2015 Shah Industries. All rights reserved.
//

import Foundation

class ListNode<T> {
    var next : ListNode?
    var value : T?
    
    
    init() {
        self.value = nil
        self.next = nil
    }
    init(nodeValue: T){
        self.value = nodeValue
        self.next = nil
    }
    
    init(nextNode: ListNode, nodeValue: T?){
        self.next = nextNode
        self.value = nodeValue
    }
    
    func nextNode() ->ListNode?{
        if next != nil {
            return self.next
        }
            
        else {
            return nil
            
        }
        
    }
    
    func setNext(node: ListNode?){
        next = node
    }
    
    func getValue() ->T?{
        return value
    }
    
    func setValue(newValue : T){
        value = newValue
    }
}