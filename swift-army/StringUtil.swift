//
//  StringUtil.swift
//  swift-army
//
//  Created by @apradanas on 5/1/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension String {
    
    func equals(to: String) -> Bool {
        return self == to
    }
    
    func equalsIgnoreCase(to: String) -> Bool {
        return self.caseInsensitiveCompare(to) == NSComparisonResult.OrderedSame
    }
    
    func length() -> Int {
        return count(self)
    }
    
    func split(splitter: String) -> [String] {
        let regEx = NSRegularExpression(pattern: splitter, options: NSRegularExpressionOptions(), error: nil)
        let stop = "<Error>"
        let modifiedString = regEx!.stringByReplacingMatchesInString (self, options: NSMatchingOptions(),
            range: NSMakeRange(0, count(self)),
            withTemplate: stop)
        return modifiedString.componentsSeparatedByString(stop)
    }
    
}