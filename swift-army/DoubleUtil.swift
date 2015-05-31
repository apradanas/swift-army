//
//  DoubleUtil.swift
//  swift-army
//
//  Created by Aditya Pradana S. on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension Double {
    
    /**
        Rounds self to the smallest integer >= self.
    
        :returns: smallest integer >= self
    */
    func ceil() -> Double {
        return Foundation.ceil(self)
    }
    
    /**
        Rounds self to the smallest integer >= self.
    
        :returns: smallest integer >= self
    */
    func floor() -> Double {
        return Foundation.floor(self)
    }
}