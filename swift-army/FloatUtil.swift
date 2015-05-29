//
//  FloatUtil.swift
//  Pods
//
//  Created by Aditya Pradana S. on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension Float {
    
	/**
        Rounds self to the smallest integer >= self.
    
        :returns: smallest integer >= self
    */
    func ceil() -> Float {
        return ceilf(self)
    }
    
    /**
        Rounds self to the largest integer <= self.
    
        :returns: largest integer <= self
    */
    func floor() -> Float {
        return floorf(self)
    }
}