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
        Absolute value.
        
        :returns: absolute value of self
    */
    func abs() -> Float {
        return fabsf(self)
    }
    
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

    /**
        Squared root.
    
        :returns: squared root of self
    */
    func sqrt() -> Float {
        return sqrtf(self)
    }
}