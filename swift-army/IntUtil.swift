//
//  IntUtil.swift
//  swift-army
//
//  Created by @apradanas on 5/27/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension Int {
    
    // MARK: - Properties
    
    var years: NSTimeInterval {
        return 365 * self.days
    }
    
    var year: NSTimeInterval {
        return self.years
    }
    
    var days: NSTimeInterval {
        return 24 * self.hours
    }
    
    var day: NSTimeInterval {
        return self.days
    }
    
    var hours: NSTimeInterval {
        return 60 * self.minutes
    }
    
    var hour: NSTimeInterval {
        return self.hours
    }
    
    var minutes: NSTimeInterval {
        return 60 * self.seconds
    }
    
    var minute: NSTimeInterval {
        return self.minutes
    }
    
    var seconds: NSTimeInterval {
        return NSTimeInterval(self)
    }
    
    var second: NSTimeInterval {
        return self.seconds
    }
    
    // MARK: - Validation
    
    func isEven() -> Bool {
        return (self % 2) == 0
    }
    
    func isOdd() -> Bool {
        return !isEven()
    }
    
    func isPositive() -> Bool {
        return self > 0
    }
    
    func isNegative() -> Bool {
        return !isPositive()
    }
    
    // MARK: - Instance Methods
    
    func split() -> [Int] {
        var result = [Int]()
        
        for char in String(self) {
            let str = String(char)
            if let int = str.toInt() {
                result.append(int)
            }
        }
        return result
    }
    
    func abs() -> Int {
        return Swift.abs(self)
    }
}