//
//  QueueIterator.swift
//  Downloading Web Content
//
//  Created by Ronak Shah on 6/26/16.
//  Copyright © 2016 Shah Industries. All rights reserved.
//


import Foundation

class QueueIterator<T>: GeneratorType {
    // Hold the collection to be iterated through
    private var head: ListNode<T>?
    
    // Initialize the generator, passing a reference
    // to the linkedlist
    init(node: ListNode<T>?) {
        self.head = node
    }
    
    func next() -> T? {
        
        if head != nil{
            let temp = head
            head = head!.nextNode()
            return temp!.getValue()
        }
        
        return nil
    }
    
}
