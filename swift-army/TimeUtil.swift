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
    
    func addSeconds(seconds: Int) -> NSDate {
        return add(seconds: seconds)
    }
    
    func addMinutes(minutes: Int) -> NSDate {
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
    
    func yearsFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitYear, fromDate: date, toDate: self, options: nil).year
    }
    
    func monthsFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitMonth, fromDate: date, toDate: self, options: nil).month
    }
    
    func weeksFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitWeekOfYear, fromDate: date, toDate: self, options: nil).weekOfYear
    }
    
    func daysFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitDay, fromDate: date, toDate: self, options: nil).day
    }
    
    func hoursFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitHour, fromDate: date, toDate: self, options: nil).hour
    }
    
    func minutesFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitMinute, fromDate: date, toDate: self, options: nil).minute
    }
    
    func secondsFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitSecond, fromDate: date, toDate: self, options: nil).second
    }
    
    func yearsTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitYear, fromDate: self, toDate: date, options: nil).year
    }
    
    func monthsTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitMonth, fromDate: self, toDate: date, options: nil).month
    }
    
    func weeksTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitWeekOfYear, fromDate: self, toDate: date, options: nil).weekOfYear
    }
    
    func daysTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitDay, fromDate: self, toDate: date, options: nil).day
    }
    
    func hoursTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitHour, fromDate: self, toDate: date, options: nil).hour
    }
    
    func minutesTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitMinute, fromDate: self, toDate: date, options: nil).minute
    }
    
    func secondsTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitSecond, fromDate: self, toDate: date, options: nil).second
    }
    
    func isAfter(date: NSDate) -> Bool {
        return (self.compare(date) == NSComparisonResult.OrderedDescending)
    }
    
    func isBefore(date: NSDate) -> Bool {
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
    
    func getDateString(format: String) -> String {
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = format
        return dateFormat.stringFromDate(self)
    }
    
    func getDateString(format: String, locale: String) -> String {
        let templateDateFormat = NSDateFormatter.dateFormatFromTemplate(format,
            options: 0,
            locale: NSLocale(localeIdentifier: locale)
        )
        
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = templateDateFormat
        dateFormat.locale = NSLocale(localeIdentifier: locale)
        return dateFormat.stringFromDate(self)
    }
}