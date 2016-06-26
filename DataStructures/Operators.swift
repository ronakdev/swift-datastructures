//
//  Essentials.swift
//  Shapes
//
//  Created by Ronak Shah on 4/9/16.
//  Copyright © 2016 Shah Industries. All rights reserved.
//

import Foundation

postfix operator ++ {}

postfix func ++ (inout x: Int) -> Int{
    x += 1
    return x
}

postfix func ++ (inout x: Double) -> Double{
    x += 1
    return x
}

postfix operator -- {}
postfix func -- (inout x: Int) -> Int{
    x -= 1
    return x
}

postfix func -- (inout x: Double) -> Double{
    x -= 1
    return x
}