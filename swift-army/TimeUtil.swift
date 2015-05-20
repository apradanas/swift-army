//
//  TimeUtil.swift
//  swift-army
//
//  Created by @apradanas on 5/1/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension NSDate {
    
    func addDay(day: NSTimeInterval) -> NSDate {
        return self.dateByAddingTimeInterval(24 * 60 * 60 * day)
    }
    
    func getDateString(format: String, date: String) -> String {
        let dFormat = NSDateFormatter()
        dFormat.dateFormat = "yyyy-MM-dd H:mm:ss"
        return dFormat.dateFromString(date)!.getDateString(format)
    }
    
    func getDateString(format: String, date: String, locale: String) -> String {
        let dFormat = NSDateFormatter()
        dFormat.dateFormat = "yyyy-MM-dd H:mm:ss"
        return dFormat.dateFromString(date)!.getDateString(format, locale: locale)
    }
    
    func getDateString(format: String) -> String {
        let dFormat = NSDateFormatter()
        dFormat.dateFormat = format
        return dFormat.stringFromDate(self)
    }
    
    func getDateString(format: String, locale: String) -> String {
        let idDateFormat = NSDateFormatter.dateFormatFromTemplate(format,
            options: 0,
            locale: NSLocale(localeIdentifier: locale)
        )
        
        let dFormat = NSDateFormatter()
        dFormat.dateFormat = idDateFormat
        dFormat.locale = NSLocale(localeIdentifier: locale)
        return dFormat.stringFromDate(self)
    }
}