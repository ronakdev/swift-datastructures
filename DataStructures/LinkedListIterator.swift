//
//  LinkedListIterator.swift
//  LinkedLists
//
//  Created by Student on 7/2/15.
//  Copyright (c) 2015 Shah Industries. All rights reserved.
//

import Foundation

class LinkedListIterator<T>: GeneratorType {
    // Hold the collection to be iterated through
    private var head: ListNode<T>?
    
    // Initialize the generator, passing a reference
    // to the linkedlist
    init(node: ListNode<T>?) {
        self.head = node
    }

    func next() -> T? {
            
        if head != nil{
            var temp = head
            head = head!.nextNode()
            return temp!.getValue()
        }
       
        return nil
    }
    
}
