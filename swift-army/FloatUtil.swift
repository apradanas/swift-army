//
//  FloatUtil.swift
//  Pods
//
//  Created by Aditya Pradana S. on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension Float {
    
    func ceil() -> Float {
        return ceilf(self)
    }
    
    func floor() -> Float {
        return floorf(self)
    }
}