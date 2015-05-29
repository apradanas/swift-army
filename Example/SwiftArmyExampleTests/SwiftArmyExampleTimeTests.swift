//
//  SwiftArmyExampleTimeTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana Sugiarto on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import SwiftArmy
import Quick
import Nimble

class SwiftArmyExampleTimeTests: QuickSpec {
    
    let dateFormatter = NSDateFormatter()
    var startDate: NSDate?

    override func setUp() {
        super.setUp()
        
        self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.startDate = self.dateFormatter.dateFromString("2005-05-05 10:20:30")
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    override func spec() {
        
        beforeSuite() {
            self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        }
        
        beforeEach() {
            self.startDate = self.dateFormatter.dateFromString("2015-01-01 00:00:00")
        }
        
        describe("properties") {
            
            it("components") {
                expect(self.startDate!.seconds) == 0
                expect(self.startDate!.minutes) == 0
                expect(self.startDate!.hours) == 0
                expect(self.startDate!.days) == 1
                expect(self.startDate!.weekDay) == 5
                expect(self.startDate!.weekMonth) == 1
                expect(self.startDate!.month) == 1
                expect(self.startDate!.year) == 2015
            }
        }
        
        describe("instanceMethods") {
            
            it("addSeconds") {
                var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:30")
                expect(self.startDate?.add(seconds: 30)) == expectedDate
                expect(self.startDate?.addSeconds(30)) == expectedDate
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:30")
                expect(self.startDate?.add(seconds: -30)) == expectedDate
                expect(self.startDate?.addSeconds(-30)) == expectedDate
            }
            
            it("addMinutes") {
                var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:30:00")
                expect(self.startDate?.add(minutes: 30)) == expectedDate
                expect(self.startDate?.addMinutes(30)) == expectedDate
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:30:00")
                expect(self.startDate?.add(minutes: -30)) == expectedDate
                expect(self.startDate?.addMinutes(-30)) == expectedDate
            }
            
            it("addHours") {
                var expectedDate = self.dateFormatter.dateFromString("2015-01-01 10:00:00")
                expect(self.startDate?.add(hours: 10)) == expectedDate
                expect(self.startDate?.addHours(10)) == expectedDate
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 14:00:00")
                expect(self.startDate?.add(hours: -10)) == expectedDate
                expect(self.startDate?.addHours(-10)) == expectedDate
            }
            
            it("addDays") {
                var expectedDate = self.dateFormatter.dateFromString("2015-01-11 00:00:00")
                expect(self.startDate?.add(days: 10)) == expectedDate
                expect(self.startDate?.addDays(10)) == expectedDate
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-22 00:00:00")
                expect(self.startDate?.add(days: -10)) == expectedDate
                expect(self.startDate?.addDays(-10)) == expectedDate
            }
            
            it("addMonths") {
                var expectedDate = self.dateFormatter.dateFromString("2015-11-01 00:00:00")
                expect(self.startDate?.add(months: 10)) == expectedDate
                expect(self.startDate?.addMonths(10)) == expectedDate
                
                expectedDate = self.dateFormatter.dateFromString("2014-03-01 00:00:00")
                expect(self.startDate?.add(months: -10)) == expectedDate
                expect(self.startDate?.addMonths(-10)) == expectedDate
            }
            
            it("addYears") {
                var expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
                expect(self.startDate?.add(years: 10)) == expectedDate
                expect(self.startDate?.addYears(10)) == expectedDate
                
                expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
                expect(self.startDate?.add(years: -10)) == expectedDate
                expect(self.startDate?.addYears(-10)) == expectedDate
            }
            
            it("secondsFrom") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:30")
                expect(self.startDate?.secondsFrom(expectedDate!)) == 30
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:30")
                expect(self.startDate?.secondsFrom(expectedDate!)) == -30
            }
            
            it("minutesFrom") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:30:00")
                expect(self.startDate?.minutesFrom(expectedDate!)) == 30
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:30:00")
                expect(self.startDate?.minutesFrom(expectedDate!)) == -30
            }
            
            it("hoursFrom") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-31 14:00:00")
                expect(self.startDate?.hoursFrom(expectedDate!)) == 10
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 10:00:00")
                expect(self.startDate?.hoursFrom(expectedDate!)) == -10
            }
            
            it("daysFrom") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-22 00:00:00")
                expect(self.startDate?.daysFrom(expectedDate!)) == 10
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-11 00:00:00")
                expect(self.startDate?.daysFrom(expectedDate!)) == -10
            }
            
            it("monthsFrom") {
                var expectedDate = self.dateFormatter.dateFromString("2014-03-01 00:00:00")
                expect(self.startDate?.monthsFrom(expectedDate!)) == 10
                
                expectedDate = self.dateFormatter.dateFromString("2015-11-01 00:00:00")
                expect(self.startDate?.monthsFrom(expectedDate!)) == -10
            }
            
            it("yearsFrom") {
                var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
                expect(self.startDate?.yearsFrom(expectedDate!)) == 10
                
                expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
                expect(self.startDate?.yearsFrom(expectedDate!)) == -10
            }
            
            it("secondsTo") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:30")
                expect(self.startDate?.secondsTo(expectedDate!)) == -30
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:30")
                expect(self.startDate?.secondsTo(expectedDate!)) == 30
            }
            
            it("minutesTo") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:30:00")
                expect(self.startDate?.minutesTo(expectedDate!)) == -30
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:30:00")
                expect(self.startDate?.minutesTo(expectedDate!)) == 30
            }
            
            it("hoursTo") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-31 14:00:00")
                expect(self.startDate?.hoursTo(expectedDate!)) == -10
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 10:00:00")
                expect(self.startDate?.hoursTo(expectedDate!)) == 10
            }
            
            it("daysTo") {
                var expectedDate = self.dateFormatter.dateFromString("2014-12-22 00:00:00")
                expect(self.startDate?.daysTo(expectedDate!)) == -10
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-11 00:00:00")
                expect(self.startDate?.daysTo(expectedDate!)) == 10
            }
            
            it("monthsTo") {
                var expectedDate = self.dateFormatter.dateFromString("2014-03-01 00:00:00")
                expect(self.startDate?.monthsTo(expectedDate!)) == -10
                
                expectedDate = self.dateFormatter.dateFromString("2015-11-01 00:00:00")
                expect(self.startDate?.monthsTo(expectedDate!)) == 10
            }
            
            it("yearsTo") {
                var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
                expect(self.startDate?.yearsTo(expectedDate!)) == -10
                
                expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
                expect(self.startDate?.yearsTo(expectedDate!)) == 10
            }
        }
        
        describe("validation") {
            
            it("isAfter") {
                var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
                expect(self.startDate!.isAfter(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:01")
                expect(self.startDate!.isAfter(expectedDate!)).to(beFalse())
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
                expect(self.startDate!.isAfter(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
                expect(self.startDate!.isAfter(expectedDate!)).to(beFalse())
            }
            
            it("isBefore") {
                var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
                expect(self.startDate!.isBefore(expectedDate!)).to(beFalse())
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:01")
                expect(self.startDate!.isBefore(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
                expect(self.startDate!.isBefore(expectedDate!)).to(beFalse())
                
                expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
                expect(self.startDate!.isBefore(expectedDate!)).to(beTrue())
            }
            
            it("isSameDay") {
                var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:00")
                expect(self.startDate!.isSameDayAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 23:59:59")
                expect(self.startDate!.isSameDayAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
                expect(self.startDate!.isSameDayAs(expectedDate!)).to(beFalse())
                
                expectedDate = self.dateFormatter.dateFromString("2015-10-10 12:00:00")
                expect(self.startDate!.isSameDayAs(expectedDate!)).to(beFalse())
            }
            
            it("isSameWeek") {
                var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:00")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-01 23:59:59")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-28 00:00:00")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-03 23:59:59")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beTrue())
                
                expectedDate = self.dateFormatter.dateFromString("2014-12-27 23:59:59")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beFalse())
                
                expectedDate = self.dateFormatter.dateFromString("2015-01-04 23:59:59")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beFalse())
                
                expectedDate = self.dateFormatter.dateFromString("2015-10-10 12:00:00")
                expect(self.startDate!.isSameWeekAs(expectedDate!)).to(beFalse())
            }
        }
        
        describe("conversion") {
            
            it("toString") {
                expect(self.startDate?.toString()) == "2015-01-01 00:00:00"
            }
        }
    }
}
