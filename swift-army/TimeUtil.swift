//
//  TimeUtil.swift
//  swift-army
//
//  Created by @apradanas on 5/1/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import Foundation

public extension NSDate {
    
    func add(seconds: Int = 0, minutes: Int = 0, hours: Int = 0, days: Int = 0, weeks: Int = 0, months: Int = 0, years: Int = 0) -> NSDate {
        var calendar = NSCalendar.currentCalendar()
        
        let version = floor(NSFoundationVersionNumber)
        
        if version <= NSFoundationVersionNumber10_9_2 {
            var component = NSDateComponents()
            component.setValue(seconds, forComponent: .CalendarUnitSecond)
            
            var date : NSDate! = calendar.dateByAddingComponents(component, toDate: self, options: nil)!
            component = NSDateComponents()
            component.setValue(minutes, forComponent: .CalendarUnitMinute)
            date = calendar.dateByAddingComponents(component, toDate: date, options: nil)!
            
            component = NSDateComponents()
            component.setValue(hours, forComponent: .CalendarUnitHour)
            date = calendar.dateByAddingComponents(component, toDate: date, options: nil)!
            
            component = NSDateComponents()
            component.setValue(days, forComponent: .CalendarUnitDay)
            date = calendar.dateByAddingComponents(component, toDate: date, options: nil)!
            
            component = NSDateComponents()
            component.setValue(weeks, forComponent: .CalendarUnitWeekOfMonth)
            date = calendar.dateByAddingComponents(component, toDate: date, options: nil)!
            
            component = NSDateComponents()
            component.setValue(months, forComponent: .CalendarUnitMonth)
            date = calendar.dateByAddingComponents(component, toDate: date, options: nil)!
            
            component = NSDateComponents()
            component.setValue(years, forComponent: .CalendarUnitYear)
            date = calendar.dateByAddingComponents(component, toDate: date, options: nil)!
            return date
        }
        
        var date : NSDate! = calendar.dateByAddingUnit(.CalendarUnitSecond, value: seconds, toDate: self, options: nil)
        date = calendar.dateByAddingUnit(.CalendarUnitMinute, value: minutes, toDate: date, options: nil)
        date = calendar.dateByAddingUnit(.CalendarUnitDay, value: days, toDate: date, options: nil)
        date = calendar.dateByAddingUnit(.CalendarUnitHour, value: hours, toDate: date, options: nil)
        date = calendar.dateByAddingUnit(.CalendarUnitWeekOfMonth, value: weeks, toDate: date, options: nil)
        date = calendar.dateByAddingUnit(.CalendarUnitMonth, value: months, toDate: date, options: nil)
        date = calendar.dateByAddingUnit(.CalendarUnitYear, value: years, toDate: date, options: nil)
        return date
    }
    
    func addSeconds (seconds: Int) -> NSDate {
        return add(seconds: seconds)
    }
    
    func addMinutes (minutes: Int) -> NSDate {
        return add(minutes: minutes)
    }
    
    func addHours(hours: Int) -> NSDate {
        return add(hours: hours)
    }
    
    func addDays(days: Int) -> NSDate {
        return add(days: days)
    }
    
    func addWeeks(weeks: Int) -> NSDate {
        return add(weeks: weeks)
    }
    
    func addMonths(months: Int) -> NSDate {
        return add(months: months)
    }
    
    func addYears(years: Int) -> NSDate {
        return add(years: years)
    }
    
    func isAfter(date: NSDate) -> Bool{
        return (self.compare(date) == NSComparisonResult.OrderedDescending)
    }
    
    func isBefore(date: NSDate) -> Bool{
        return (self.compare(date) == NSComparisonResult.OrderedAscending)
    }
    
    func toLocalTime() -> NSDate {
        let seconds = NSTimeZone.localTimeZone().secondsFromGMTForDate(self)
        return self.addSeconds(seconds)
    }
    
    func toGlobalTime() -> NSDate {
        let seconds = -NSTimeZone.localTimeZone().secondsFromGMTForDate(self)
        return self.addSeconds(seconds)
    }
    
    func getDateString(format: String, date: String) -> String {
        let dFormat = NSDateFormatter()
        dFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dFormat.dateFromString(date)!.getDateString(format)
    }
    
    func getDateString(format: String, date: String, locale: String) -> String {
        let dFormat = NSDateFormatter()
        dFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
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