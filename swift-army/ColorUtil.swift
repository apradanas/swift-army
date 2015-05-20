//
//  ColorUtil.swift
//  swift-army
//
//  Created by @apradanas on 4/29/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension UIColor {
    
    func colorFromHex(rgbValue: UInt32, alpha: Double = 1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8) / 256.0
        let blue = CGFloat(rgbValue & 0xFF) / 256.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: CGFloat(alpha))
    }
}