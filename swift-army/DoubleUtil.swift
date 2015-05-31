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
        Absolute value.
    
        :returns: absolute value of self
    */
    func abs() -> Double {
        return Foundation.fabs(self)
    }
    
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

    /**
        Squared root.
    
        :returns: squared root of self
    */
    func sqrt() -> Double {
        return Foundation.sqrt(self)
    }
}