//
//  Queue.swift
//  Downloading Web Content
//
//  Created by Ronak Shah on 6/24/16.
//  Copyright © 2016 Shah Industries. All rights reserved.
//

import Foundation

class Queue<T>: CustomStringConvertible, SequenceType {
    
    var list: LinkedList<T>
    var count: Int {
        return list.count
    }
    
    var description: String {
        return list.description
    }
    init () {
        list = LinkedList<T>()
    }
    
    func isEmpty() -> Bool {
        return (count == 0 ? true : false)
    }
    
    func enqueue(item: T) {
        add(item)
    }
    
    func dequeue() -> T? {
        return remove()
    }
    
    func add(item: T) -> Bool{

        list.addFirst(item)
        return true
    }
    
    func offer(item: T) -> Bool{
        list.addFirst(item)
        return true
    }
    
    func generate() -> QueueIterator<T> {
        return QueueIterator(node: list.head)
    }
    
    ///returns nothing if list is empty or item is nil
    ///unlike java, no exceptions :)
    func remove() -> T? {
        return list.removeFirst()
    }
    
    func poll() -> T? {
        return remove()
    }
    
    func element() -> T? {
        return list.first
    }
    
    func peek() -> T? {
        return list.first
    }
    
    
}