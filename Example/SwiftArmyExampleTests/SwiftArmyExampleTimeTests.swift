//
//  SwiftArmyExampleTimeTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana Sugiarto on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import UIKit
import XCTest
import SwiftArmy

class SwiftArmyExampleTimeTests: XCTestCase {
    
    let dateFormatter = NSDateFormatter()
    var startDate: NSDate?

    override func setUp() {
        super.setUp()
        
        self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.startDate = self.dateFormatter.dateFromString("2015-01-01 00:00:00")
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTimeAddSeconds() {
        var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:30")
        XCTAssertEqual(self.startDate!.add(seconds: 30), expectedDate!, "Add seconds error")
        XCTAssertEqual(self.startDate!.addSeconds(30), expectedDate!, "Add seconds error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:30")
        XCTAssertEqual(self.startDate!.add(seconds: -30), expectedDate!, "Add seconds error")
        XCTAssertEqual(self.startDate!.addSeconds(-30), expectedDate!, "Add seconds error")
    }
    
    func testTimeAddMinutes() {
        var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:30:00")
        XCTAssertEqual(self.startDate!.add(minutes: 30), expectedDate!, "Add minutes error")
        XCTAssertEqual(self.startDate!.addMinutes(30), expectedDate!, "Add minutes error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:30:00")
        XCTAssertEqual(self.startDate!.add(minutes: -30), expectedDate!, "Add minutes error")
        XCTAssertEqual(self.startDate!.addMinutes(-30), expectedDate!, "Add minutes error")
    }
    
    func testTimeAddHours() {
        var expectedDate = self.dateFormatter.dateFromString("2015-01-01 10:00:00")
        XCTAssertEqual(self.startDate!.add(hours: 10), expectedDate!, "Add hours error")
        XCTAssertEqual(self.startDate!.addHours(10), expectedDate!, "Add hours error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 14:00:00")
        XCTAssertEqual(self.startDate!.add(hours: -10), expectedDate!, "Add hours error")
        XCTAssertEqual(self.startDate!.addHours(-10), expectedDate!, "Add hours error")
    }
    
    func testTimeAddDays() {
        var expectedDate = self.dateFormatter.dateFromString("2015-01-11 00:00:00")
        XCTAssertEqual(self.startDate!.add(days: 10), expectedDate!, "Add days error")
        XCTAssertEqual(self.startDate!.addDays(10), expectedDate!, "Add days error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-22 00:00:00")
        XCTAssertEqual(self.startDate!.add(days: -10), expectedDate!, "Add days error")
        XCTAssertEqual(self.startDate!.addDays(-10), expectedDate!, "Add days error")
    }
    
    func testTimeAddMonths() {
        var expectedDate = self.dateFormatter.dateFromString("2015-11-01 00:00:00")
        XCTAssertEqual(self.startDate!.add(months: 10), expectedDate!, "Add months error")
        XCTAssertEqual(self.startDate!.addMonths(10), expectedDate!, "Add months error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-03-01 00:00:00")
        XCTAssertEqual(self.startDate!.add(months: -10), expectedDate!, "Add months error")
        XCTAssertEqual(self.startDate!.addMonths(-10), expectedDate!, "Add months error")
    }
    
    func testTimeAddYears() {
        var expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
        XCTAssertEqual(self.startDate!.add(years: 10), expectedDate!, "Add years error")
        XCTAssertEqual(self.startDate!.addYears(10), expectedDate!, "Add years error")
        
        expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
        XCTAssertEqual(self.startDate!.add(years: -10), expectedDate!, "Add years error")
        XCTAssertEqual(self.startDate!.addYears(-10), expectedDate!, "Add years error")
    }
    
    func testTimeSecondsFrom() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:30")
        XCTAssertEqual(self.startDate!.secondsFrom(expectedDate!), 30, "Seconds from error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:30")
        XCTAssertEqual(self.startDate!.secondsFrom(expectedDate!), -30, "Seconds from error")
    }
    
    func testTimeMinutesFrom() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:30:00")
        XCTAssertEqual(self.startDate!.minutesFrom(expectedDate!), 30, "Minutes from error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:30:00")
        XCTAssertEqual(self.startDate!.minutesFrom(expectedDate!), -30, "Minutes from error")
    }
    
    func testTimeHoursFrom() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-31 14:00:00")
        XCTAssertEqual(self.startDate!.hoursFrom(expectedDate!), 10, "Hours from error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 10:00:00")
        XCTAssertEqual(self.startDate!.hoursFrom(expectedDate!), -10, "Minutes from error")
    }
    
    func testTimeDaysFrom() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-22 00:00:00")
        XCTAssertEqual(self.startDate!.daysFrom(expectedDate!), 10, "Days from error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-11 00:00:00")
        XCTAssertEqual(self.startDate!.daysFrom(expectedDate!), -10, "Days from error")
    }
    
    func testTimeMonthsFrom() {
        var expectedDate = self.dateFormatter.dateFromString("2014-03-01 00:00:00")
        XCTAssertEqual(self.startDate!.monthsFrom(expectedDate!), 10, "Months from error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-11-01 00:00:00")
        XCTAssertEqual(self.startDate!.monthsFrom(expectedDate!), -10, "Months from error")
    }
    
    func testTimeYearsFrom() {
        var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
        XCTAssertEqual(self.startDate!.yearsFrom(expectedDate!), 10, "Years from error")
        
        expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
        XCTAssertEqual(self.startDate!.yearsFrom(expectedDate!), -10, "Years from error")
    }
    
    func testTimeSecondsTo() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:30")
        XCTAssertEqual(self.startDate!.secondsTo(expectedDate!), -30, "Seconds to error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:30")
        XCTAssertEqual(self.startDate!.secondsTo(expectedDate!), 30, "Seconds to error")
    }
    
    func testTimeMinutesTo() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:30:00")
        XCTAssertEqual(self.startDate!.minutesTo(expectedDate!), -30, "Minutes to error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:30:00")
        XCTAssertEqual(self.startDate!.minutesTo(expectedDate!), 30, "Minutes to error")
    }
    
    func testTimeHoursTo() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-31 14:00:00")
        XCTAssertEqual(self.startDate!.hoursTo(expectedDate!), -10, "Hours to error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 10:00:00")
        XCTAssertEqual(self.startDate!.hoursTo(expectedDate!), 10, "Minutes to error")
    }
    
    func testTimeDaysTo() {
        var expectedDate = self.dateFormatter.dateFromString("2014-12-22 00:00:00")
        XCTAssertEqual(self.startDate!.daysTo(expectedDate!), -10, "Days to error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-11 00:00:00")
        XCTAssertEqual(self.startDate!.daysTo(expectedDate!), 10, "Days to error")
    }
    
    func testTimeMonthsTo() {
        var expectedDate = self.dateFormatter.dateFromString("2014-03-01 00:00:00")
        XCTAssertEqual(self.startDate!.monthsTo(expectedDate!), -10, "Months to error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-11-01 00:00:00")
        XCTAssertEqual(self.startDate!.monthsTo(expectedDate!), 10, "Months to error")
    }
    
    func testTimeYearsTo() {
        var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
        XCTAssertEqual(self.startDate!.yearsTo(expectedDate!), -10, "Years to error")
        
        expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
        XCTAssertEqual(self.startDate!.yearsTo(expectedDate!), 10, "Years to error")
    }
    
    func testTimeIsAfter() {
        var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
        XCTAssertTrue(self.startDate!.isAfter(expectedDate!), "Is after method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:01")
        XCTAssertFalse(self.startDate!.isAfter(expectedDate!), "Is after method error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
        XCTAssertTrue(self.startDate!.isAfter(expectedDate!), "Is after method error")
        
        expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
        XCTAssertFalse(self.startDate!.isAfter(expectedDate!), "Is after method error")
    }
    
    func testTimeIsBefore() {
        var expectedDate = self.dateFormatter.dateFromString("2005-01-01 00:00:00")
        XCTAssertFalse(self.startDate!.isBefore(expectedDate!), "Is before method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:01")
        XCTAssertTrue(self.startDate!.isBefore(expectedDate!), "Is before method error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
        XCTAssertFalse(self.startDate!.isBefore(expectedDate!), "Is before method error")
        
        expectedDate = self.dateFormatter.dateFromString("2025-01-01 00:00:00")
        XCTAssertTrue(self.startDate!.isBefore(expectedDate!), "Is before method error")
    }
    
    func testTimeIsSameDay() {
        var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:00")
        XCTAssertTrue(self.startDate!.isSameDayAs(expectedDate!), "Is same day method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 23:59:59")
        XCTAssertTrue(self.startDate!.isSameDayAs(expectedDate!), "Is same day method error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
        XCTAssertFalse(self.startDate!.isSameDayAs(expectedDate!), "Is same day method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-10-10 12:00:00")
        XCTAssertFalse(self.startDate!.isSameDayAs(expectedDate!), "Is same day method error")
    }
    
    /*func testTimeIsSameWeek() {
        var expectedDate = self.dateFormatter.dateFromString("2015-01-01 00:00:00")
        XCTAssertTrue(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-01 23:59:59")
        XCTAssertTrue(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-31 23:59:59")
        XCTAssertTrue(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-28 00:00:00")
        XCTAssertTrue(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-03 23:59:59")
        XCTAssertTrue(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2014-12-27 23:59:59")
        XCTAssertFalse(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-01-04 23:59:59")
        XCTAssertFalse(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
        
        expectedDate = self.dateFormatter.dateFromString("2015-10-10 12:00:00")
        XCTAssertFalse(self.startDate!.isSameWeekAs(expectedDate!), "Is same week method error")
    }*/

    func testPerformanceExample() {
        self.measureBlock() {
        }
    }

}
