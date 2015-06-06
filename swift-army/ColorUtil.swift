//
//  ColorUtil.swift
//  swift-army
//
//  Created by @apradanas on 4/29/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension UIColor {
    
    /**
        Initialize with String color code.
    */
    convenience init(rgbaString rgba: String) {
        var hex:   String = rgba
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        if rgba.hasPrefix("#") {
            let index = advance(rgba.startIndex, 1)
            hex = rgba.substringFromIndex(index)
        }
        
        let scanner = NSScanner(string: hex)
        var hexValue: CUnsignedLongLong = 0
        if scanner.scanHexLongLong(&hexValue) {
            switch (hex.length) {
            case 3:
                red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                blue  = CGFloat(hexValue & 0x00F)              / 15.0
            case 4:
                red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                alpha = CGFloat(hexValue & 0x000F)             / 15.0
            case 6:
                red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
            case 8:
                red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
            default:
                print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
            }
        } else {
            println("Scan hex error")
        }
        
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    /**
        Initialize with UInt color code.
    */
    convenience init(rgbaUInt rgba: UInt) {
        var colorStr = String(format: "%0X", rgba)
        if rgba <= 0xFFF {
            colorStr = String(format: "%03X", rgba)
        } else if rgba <= 0xFFFF {
            colorStr = String(format: "%04X", rgba)
        } else if rgba <= 0xFFFFFF {
            colorStr = String(format: "%06X", rgba)
        } else if rgba <= 0xFFFFFFFF {
            colorStr = String(format: "%08X", rgba)
        }
        
        self.init(rgbaString: colorStr)
    }
}