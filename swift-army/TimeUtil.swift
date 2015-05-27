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
    
    func secondsFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitSecond, fromDate: date, toDate: self, options: nil).second
    }
    
    func minutesFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitMinute, fromDate: date, toDate: self, options: nil).minute
    }
    
    func hoursFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitHour, fromDate: date, toDate: self, options: nil).hour
    }
    
    func daysFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitDay, fromDate: date, toDate: self, options: nil).day
    }
    
    func weeksFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitWeekOfYear, fromDate: date, toDate: self, options: nil).weekOfYear
    }
    
    func monthsFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitMonth, fromDate: date, toDate: self, options: nil).month
    }
    
    func yearsFrom(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitYear, fromDate: date, toDate: self, options: nil).year
    }
    
    func secondsTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitSecond, fromDate: self, toDate: date, options: nil).second
    }
    
    func minutesTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitMinute, fromDate: self, toDate: date, options: nil).minute
    }
    
    func hoursTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitHour, fromDate: self, toDate: date, options: nil).hour
    }

    func daysTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitDay, fromDate: self, toDate: date, options: nil).day
    }

    func weeksTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitWeekOfYear, fromDate: self, toDate: date, options: nil).weekOfYear
    }
    
    func monthsTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitMonth, fromDate: self, toDate: date, options: nil).month
    }
    
    func yearsTo(date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.CalendarUnitYear, fromDate: self, toDate: date, options: nil).year
    }
    
    func isAfter(date: NSDate) -> Bool {
        return (self.compare(date) == NSComparisonResult.OrderedDescending)
    }
    
    func isSameDayAs(date: NSDate) -> Bool {
        let calendar = NSCalendar.currentCalendar()
        let unitFlags = NSCalendarUnit.CalendarUnitEra | NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitDay
        let lhs = calendar.components(unitFlags, fromDate: self)
        let rhs = calendar.components(unitFlags, fromDate: date)
        
        return lhs.day == rhs.day && lhs.month == rhs.month && lhs.year == rhs.year
    }
    
    func isSameWeekAs(date: NSDate) -> Bool {
        let calendar = NSCalendar.currentCalendar()
        let unitFlags = NSCalendarUnit.CalendarUnitEra | NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitWeekOfYear
        let lhs = calendar.components(unitFlags, fromDate: self)
        let rhs = calendar.components(unitFlags, fromDate: date)
        
        return lhs.weekOfYear == rhs.weekOfYear && lhs.month == rhs.month && lhs.year == rhs.year
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