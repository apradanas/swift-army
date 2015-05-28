//
//  SwiftArmyExampleIntTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana Sugiarto on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import UIKit
import XCTest
import SwiftArmy

class SwiftArmyExampleIntTests: XCTestCase {
    
    let errConversion = "Integer conversion error"

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIntYears() {
        XCTAssertEqual(0.years, 0, errConversion)
        XCTAssertEqual(1.years, 31536000, errConversion)
        XCTAssertEqual(15.years, 15 * 31536000, errConversion)
        
        XCTAssertEqual(-1.years, -31536000, errConversion)
        XCTAssertEqual(-15.years, -15 * 31536000, errConversion)
        
        XCTAssertEqual(0.years, 0.year, errConversion)
        XCTAssertEqual(1.years, 1.year, errConversion)
        XCTAssertEqual(15.years, 15.year, errConversion)
        
        XCTAssertEqual(-1.years, -1.year, errConversion)
        XCTAssertEqual(-15.years, -15.year, errConversion)
    }
    
    func testIntDays() {
        XCTAssertEqual(0.days, 0, errConversion)
        XCTAssertEqual(1.days, 86400, errConversion)
        XCTAssertEqual(15.days, 15 * 86400, errConversion)
        
        XCTAssertEqual(-1.days, -86400, errConversion)
        XCTAssertEqual(-15.days, -15 * 86400, errConversion)
        
        XCTAssertEqual(0.days, 0.day, errConversion)
        XCTAssertEqual(1.days, 1.day, errConversion)
        XCTAssertEqual(15.days, 15.day, errConversion)
        
        XCTAssertEqual(-1.days, -1.day, errConversion)
        XCTAssertEqual(-15.days, -15.day, errConversion)
    }
    
    func testIntHours() {
        XCTAssertEqual(0.hours, 0, errConversion)
        XCTAssertEqual(1.hours, 3600, errConversion)
        XCTAssertEqual(15.hours, 15 * 3600, errConversion)
        
        XCTAssertEqual(-1.hours, -3600, errConversion)
        XCTAssertEqual(-15.hours, -15 * 3600, errConversion)
        
        XCTAssertEqual(0.hours, 0.hour, errConversion)
        XCTAssertEqual(1.hours, 1.hour, errConversion)
        XCTAssertEqual(15.hours, 15.hour, errConversion)
        
        XCTAssertEqual(-1.hours, -1.hour, errConversion)
        XCTAssertEqual(-15.hours, -15.hour, errConversion)
    }
    
    func testIntMinutes() {
        XCTAssertEqual(0.minutes, 0, errConversion)
        XCTAssertEqual(1.minutes, 60, errConversion)
        XCTAssertEqual(15.minutes, 15 * 60, errConversion)
        
        XCTAssertEqual(-1.minutes, -60, errConversion)
        XCTAssertEqual(-15.minutes, -15 * 60, errConversion)
        
        XCTAssertEqual(0.minutes, 0.minute, errConversion)
        XCTAssertEqual(1.minutes, 1.minute, errConversion)
        XCTAssertEqual(15.minutes, 15.minute, errConversion)
        
        XCTAssertEqual(-1.minutes, -1.minute, errConversion)
        XCTAssertEqual(-15.minutes, -15.minute, errConversion)
    }
    
    func testIntSeconds() {
        XCTAssertEqual(0.seconds, 0, errConversion)
        XCTAssertEqual(1.seconds, 1, errConversion)
        XCTAssertEqual(15.seconds, 15, errConversion)
        
        XCTAssertEqual(-1.seconds, -1, errConversion)
        XCTAssertEqual(-15.seconds, -15, errConversion)
        
        XCTAssertEqual(0.seconds, 0.second, errConversion)
        XCTAssertEqual(1.seconds, 1.second, errConversion)
        XCTAssertEqual(15.seconds, 15.second, errConversion)
        
        XCTAssertEqual(-1.seconds, -1.second, errConversion)
        XCTAssertEqual(-15.seconds, -15.second, errConversion)
    }


    func testPerformanceExample() {
        self.measureBlock() {
        }
    }

}
