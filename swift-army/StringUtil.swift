//
//  StringUtil.swift
//  swift-army
//
//  Created by @apradanas on 5/1/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension String {
    
    var length: Int { return count(self) }
    
    func equals(to: String) -> Bool {
        return self == to
    }
    
    func equalsIgnoreCase(to: String) -> Bool {
        return self.caseInsensitiveCompare(to) == NSComparisonResult.OrderedSame
    }
    
    func split(splitter: String) -> [String] {
        let regEx = NSRegularExpression(pattern: splitter, options: NSRegularExpressionOptions(), error: nil)
        let stop = "<Error>"
        let modifiedString = regEx!.stringByReplacingMatchesInString (self, options: NSMatchingOptions(),
            range: NSMakeRange(0, count(self)),
            withTemplate: stop)
        return modifiedString.componentsSeparatedByString(stop)
    }
    
    func trimLeft(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        if let range = rangeOfCharacterFromSet(set.invertedSet) {
            return self[range.startIndex..<endIndex]
        }
        return ""
    }
    
    func trimRight(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        if let range = rangeOfCharacterFromSet(set.invertedSet, options: NSStringCompareOptions.BackwardsSearch) {
            return self[startIndex..<range.endIndex]
        }
        return ""
    }
    
    func trim() -> String {
        return trimLeft().trimRight()
    }
    
    // MARK: - Validation
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        var emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(self)
    }
    
    // MARK: - Conversion
    
    func toDouble() -> Double? {
        let scanner = NSScanner(string: self)
        var double: Double = 0
        
        if scanner.scanDouble(&double) {
            return double
        }
        return nil
    }
    
    func toFloat() -> Float? {
        let scanner = NSScanner(string: self)
        var float: Float = 0
        
        if scanner.scanFloat(&float) {
            return float
        }
        return nil
    }
    
    func toUInt() -> UInt? {
        if let val = self.trim().toInt() {
            if val < 0 {
                return nil
            }
            return UInt(val)
        }
        return nil
    }

    func toBool() -> Bool? {
        let text = self.trim()
        if text.equalsIgnoreCase("true") || text.equalsIgnoreCase("false") || text.equalsIgnoreCase("yes") || text.equalsIgnoreCase("no") {
            return (text as NSString).boolValue
        }
        return nil
    }
    
    func toDate(format: String? = "yyyy-MM-dd") -> NSDate? {
        let text = self.trim().lowercaseString
        var dateFormat = NSDateFormatter()
        dateFormat.timeZone = NSTimeZone.defaultTimeZone()
        if let fmt = format {
            dateFormat.dateFormat = fmt
        }
        return dateFormat.dateFromString(text)
    }

    func toDateTime(format: String? = "yyyy-MM-dd HH:mm:ss") -> NSDate? {
        return toDate(format: format)
    }
    
    func changeDateFormat(from: String = "yyyy-MM-dd HH:mm:ss", to: String = "yyyy-MM-dd") -> String? {
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = from
        if let date = dateFormat.dateFromString(self.trim()) {
            return date.toString(format: to)
        }
        return nil
    }
    
    func changeDateFormat(from: String = "yyyy-MM-dd HH:mm:ss", to: String = "yyyy-MM-dd", locale: String) -> String? {
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = from
        if let date = dateFormat.dateFromString(self.trim()) {
            return date.toStringWithLocale(format: to, locale: locale)
        }
        return nil
    }
}