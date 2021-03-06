//
//  StringUtil.swift
//  swift-army
//
//  Created by @apradanas on 5/1/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension String {
    
    // MARK: - Properties
    
    /**
        Return length of the string.

        :returns: length of the string
    */
    var length: Int { return count(self) }
    
    // MARK: - Instance Methods
    
    /**
        Check if self is equal to another string (case sensitive)

        :param: target string
        :returns: self is equal or not
    */
    func equals(to: String) -> Bool {
        return self == to
    }
    
    /**
        Check if self is equal to another string (not case sensitive)

        :param: target string
        :returns: self is equal or not
    */
    func equalsIgnoreCase(to: String) -> Bool {
        return self.caseInsensitiveCompare(to) == NSComparisonResult.OrderedSame
    }
    
    /**
        Returns an array of strings, each of which is a substring of self formed by splitting it on separator.

        :param: separator Character used to split the string
        :returns: array of substrings
    */
    func split(splitter: String) -> [String] {
        let regEx = NSRegularExpression(pattern: splitter, options: NSRegularExpressionOptions(), error: nil)
        let stop = "<Error>"
        let modifiedString = regEx!.stringByReplacingMatchesInString (self, options: NSMatchingOptions(),
            range: NSMakeRange(0, count(self)),
            withTemplate: stop)
        return modifiedString.componentsSeparatedByString(stop)
    }
    
    /**
        Strips the specified characters from the beginning of self.

        :returns: stripped string
    */
    func trimLeft(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        if let range = rangeOfCharacterFromSet(set.invertedSet) {
            return self[range.startIndex..<endIndex]
        }
        return ""
    }
    
    /**
        Strips the specified characters from the end of self.

        :returns: stripped string
    */
    func trimRight(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        if let range = rangeOfCharacterFromSet(set.invertedSet, options: NSStringCompareOptions.BackwardsSearch) {
            return self[startIndex..<range.endIndex]
        }
        return ""
    }
    
    /**
        Strips whitespaces from both the beginning and the end of self.

        :returns: stripped string
    */
    func trim() -> String {
        return trimLeft().trimRight()
    }
    
    // MARK: - Validation
    
    /**
        Check if string is a valid email address format

        :returns: self is a valid email or not
    */
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        var emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(self)
    }
    
    // MARK: - Conversion
    
    /**
        Parses a string containing a double numerical value into an optional double if the string is a well formed number.

        :returns: a double parsed from the string or nil if it cannot be parsed.
    */
    func toDouble() -> Double? {
        let scanner = NSScanner(string: self)
        var double: Double = 0
        
        if scanner.scanDouble(&double) {
            return double
        }
        return nil
    }
    
    /**
        Parses a string containing a float numerical value into an optional float if the string is a well formed number.

        :returns: a float parsed from the string or nil if it cannot be parsed.
    */
    func toFloat() -> Float? {
        let scanner = NSScanner(string: self)
        var float: Float = 0
        
        if scanner.scanFloat(&float) {
            return float
        }
        return nil
    }
    
    /**
        Parses a string containing a UInt numerical value into an optional UInt if the string is a well formed number.

        :returns: a UInt parsed from the string or nil if it cannot be parsed.
    */
    func toUInt() -> UInt? {
        if let val = self.trim().toInt() {
            if val < 0 {
                return nil
            }
            return UInt(val)
        }
        return nil
    }

    /**
        Parses a string containing a boolean value into an optional boolean if the string is a well formed number.

        :returns: a boolean parsed from the string or nil if it cannot be parsed.
    */
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