//
//  SwiftArmyExampleStringTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana Sugiarto on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import UIKit
import XCTest
import SwiftArmy

class SwiftArmyExampleStringTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testStringLength() {
        var str = "abcdef"
        var strLen = 6
        XCTAssertEqual(str.length, strLen, "Incorrect string length")
        
        str = "This is long sentence."
        strLen = 22
        XCTAssertEqual(str.length, strLen, "Incorrect string length")
        
        str = "😱"
        strLen = 1
        XCTAssertEqual(str.length, strLen, "Incorrect string length")
    }
    
    func testStringEquals() {
        var str = "abcdef"
        XCTAssert(str.equals("abcdef"), "String should be equals")
        XCTAssertFalse(str.equals("ABCDEF"), "String should not be equals")
        XCTAssertFalse(str.equals("fedcba"), "String should not be equals")
        
        str = "😱"
        XCTAssert(str.equals("😱"), "String should be equals")
        XCTAssertFalse(str.equals("😗"), "String should not be equals")
    }
    
    func testStringEqualsIgnoreCase() {
        var str = "abcdef"
        XCTAssert(str.equalsIgnoreCase("abcdef"), "String should be equals")
        XCTAssert(str.equalsIgnoreCase("ABCDEF"), "String should be equals")
        XCTAssert(str.equalsIgnoreCase("abcDEF"), "String should be equals")
        XCTAssert(str.equalsIgnoreCase("ABCdef"), "String should be equals")
        XCTAssertFalse(str.equalsIgnoreCase("fedcba"), "String should not be equals")
    }
    
    func testStringSplit() {
        var str = "A B C"
        XCTAssertEqual(str.split(" "), ["A", "B", "C"], "Incorrect string split")
        XCTAssertEqual(str.split(">"), ["A B C"], "Incorrect string split")
        
        str = "A>B C"
        XCTAssertEqual(str.split(">"), ["A", "B C"], "Incorrect string split")
        
        str = "A B😱C"
        XCTAssertEqual(str.split("😱"), ["A B", "C"], "Incorrect string split")
    }
    
    func testStringTrim() {
        var str = "A B C"
        XCTAssertEqual(str.trim(), "A B C", "Incorrect string trim")
        
        str = " A B C"
        XCTAssertEqual(str.trim(), "A B C", "Incorrect string trim")
        
        str = "A B C "
        XCTAssertEqual(str.trim(), "A B C", "Incorrect string trim")
        
        str = "  A B C  "
        XCTAssertEqual(str.trim(), "A B C", "Incorrect string trim")
        
        str = "\n A B C  "
        XCTAssertEqual(str.trim(), "A B C", "Incorrect string trim")
        
        str = "  A B C \n"
        XCTAssertEqual(str.trim(), "A B C", "Incorrect string trim")
        
        str = "  \n\t\n"
        XCTAssertEqual(str.trim(), "", "Incorrect string trim")
        
        str = ""
        XCTAssertEqual(str.trim(), "", "Incorrect string trim")
    }
    
    func testStringTrimLeft() {
        var str = "A B C"
        XCTAssertEqual(str.trimLeft(), "A B C", "Incorrect string trim")
        
        str = " A B C"
        XCTAssertEqual(str.trimLeft(), "A B C", "Incorrect string trim")
        
        str = "A B C "
        XCTAssertEqual(str.trimLeft(), "A B C ", "Incorrect string trim")
        
        str = "  A B C  "
        XCTAssertEqual(str.trimLeft(), "A B C  ", "Incorrect string trim")
        
        str = "\n A B C  "
        XCTAssertEqual(str.trimLeft(), "A B C  ", "Incorrect string trim")
        
        str = "  A B C \n"
        XCTAssertEqual(str.trimLeft(), "A B C \n", "Incorrect string trim")
        
        str = "  \n\t\n"
        XCTAssertEqual(str.trimLeft(), "", "Incorrect string trim")
        
        str = ""
        XCTAssertEqual(str.trimLeft(), "", "Incorrect string trim")
    }
    
    func testStringTrimLeftWithCharacterSet() {
        var str = "AB C"
        XCTAssertEqual(str.trimLeft(characterSet: .alphanumericCharacterSet()), " C", "Incorrect string trim")
        
        str = " A B C"
        XCTAssertEqual(str.trimLeft(characterSet: .alphanumericCharacterSet()), " A B C", "Incorrect string trim")
        
        str = "ABC "
        XCTAssertEqual(str.trimLeft(characterSet: .alphanumericCharacterSet()), " ", "Incorrect string trim")
        
        str = "ABC"
        XCTAssertEqual(str.trimLeft(characterSet: .alphanumericCharacterSet()), "", "Incorrect string trim")
    }
    
    func testStringTrimRight() {
        var str = "A B C"
        XCTAssertEqual(str.trimRight(), "A B C", "Incorrect string trim")
        
        str = " A B C"
        XCTAssertEqual(str.trimRight(), " A B C", "Incorrect string trim")
        
        str = "A B C "
        XCTAssertEqual(str.trimRight(), "A B C", "Incorrect string trim")
        
        str = "  A B C  "
        XCTAssertEqual(str.trimRight(), "  A B C", "Incorrect string trim")
        
        str = "\n A B C  "
        XCTAssertEqual(str.trimRight(), "\n A B C", "Incorrect string trim")
        
        str = "  A B C \n"
        XCTAssertEqual(str.trimRight(), "  A B C", "Incorrect string trim")
        
        str = "  \n\t\n"
        XCTAssertEqual(str.trimRight(), "", "Incorrect string trim")
        
        str = ""
        XCTAssertEqual(str.trimRight(), "", "Incorrect string trim")
    }
    
    func testStringTrimRighttWithCharacterSet() {
        var str = "AB C"
        XCTAssertEqual(str.trimRight(characterSet: .alphanumericCharacterSet()), "AB ", "Incorrect string trim")
        
        str = "A B C "
        XCTAssertEqual(str.trimRight(characterSet: .alphanumericCharacterSet()), "A B C ", "Incorrect string trim")
        
        str = "ABC "
        XCTAssertEqual(str.trimRight(characterSet: .alphanumericCharacterSet()), "ABC ", "Incorrect string trim")
        
        str = "ABC"
        XCTAssertEqual(str.trimRight(characterSet: .alphanumericCharacterSet()), "", "Incorrect string trim")
    }
    
    func testStringToDouble() {
        var str = "82"
        XCTAssertNotNil(str.toDouble(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toDouble()!, 82, 0.0001, "String conversion error")
        
        str = "8.2"
        XCTAssertNotNil(str.toDouble(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toDouble()!, 8.2, 0.0001, "String conversion error")
        
        str = "-8.876543"
        XCTAssertNotNil(str.toDouble(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toDouble()!, -8.876543, 0.0001, "String conversion error")
        
        str = "   8.2"
        XCTAssertNotNil(str.toDouble(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toDouble()!, 8.2, 0.0001, "String conversion error")
        
        str = "a8.876543"
        XCTAssertNil(str.toDouble(), "String conversion error")
    }
    
    func testStringToFloat() {
        var str = "82"
        XCTAssertNotNil(str.toFloat(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toFloat()!, 82, 0.0001, "String conversion error")
        
        str = "8.2"
        XCTAssertNotNil(str.toFloat(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toFloat()!, 8.2, 0.0001, "String conversion error")
        
        str = "-8.876543"
        XCTAssertNotNil(str.toFloat(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toFloat()!, -8.876543, 0.0001, "String conversion error")
        
        str = "   8.2"
        XCTAssertNotNil(str.toFloat(), "String conversion error")
        XCTAssertEqualWithAccuracy(str.toFloat()!, 8.2, 0.0001, "String conversion error")
        
        str = "a8.876543"
        XCTAssertNil(str.toFloat(), "String conversion error")
    }
    
    func testStringToUInt() {
        var str = "82"
        XCTAssertNotNil(str.toFloat(), "String conversion error")
        XCTAssertEqual(str.toUInt()!, 82, "String conversion error")
        
        str = "   82"
        XCTAssertNotNil(str.toFloat(), "String conversion error")
        XCTAssertEqual(str.toUInt()!, 82, "String conversion error")
        
        str = "8.2"
        XCTAssertNil(str.toUInt(), "String conversion error")
        
        str = "-8.876543"
        XCTAssertNil(str.toUInt(), "String conversion error")
        
        str = "a8.876543"
        XCTAssertNil(str.toUInt(), "String conversion error")
    }
    
    func testStringToBool() {
        var str = "YES"
        XCTAssertNotNil(str.toBool(), "String conversion error")
        XCTAssertTrue(str.toBool()!, "String conversion error")
        
        str = "nO"
        XCTAssertNotNil(str.toBool(), "String conversion error")
        XCTAssertFalse(str.toBool()!, "String conversion error")
        
        str = "trUE"
        XCTAssertNotNil(str.toBool(), "String conversion error")
        XCTAssertTrue(str.toBool()!, "String conversion error")
        
        str = "FALse"
        XCTAssertNotNil(str.toBool(), "String conversion error")
        XCTAssertFalse(str.toBool()!, "String conversion error")
        
        str = "Alan"
        XCTAssertNil(str.toBool(), "String conversion error")
        
        str = "7"
        XCTAssertNil(str.toBool(), "String conversion error")
        
        str = "😗"
        XCTAssertNil(str.toBool(), "String conversion error")
        
        str = ""
        XCTAssertNil(str.toBool(), "String conversion error")
    }
    
    func testStringToDate() {
        var strDate = " 2015-05-05\n"
        var date = strDate.toDate()!
        XCTAssertNotNil(date, "String conversion error")
        
        var comps = NSDateComponents()
        comps.year = 2015
        comps.month = 5
        comps.day = 5
        
        var calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        XCTAssertEqual(calendar.dateFromComponents(comps)!, date, "String conversion error")
        
        var str = ""
        XCTAssertNil(str.toDate(), "String conversion error")
        
        str = "😗"
        XCTAssertNil(str.toDate(), "String conversion error")
        
        str = "cc55.76"
        XCTAssertNil(str.toDate(), "String conversion error")
        
        str = "Sunday"
        XCTAssertNil(str.toDate(), "String conversion error")
        
        str = "2015-05-05 00:00:00"
        XCTAssertNil(str.toDate(), "String conversion error")
    }
    
    func testStringToDateTime() {
        var strDate = " 2015-05-05 10:20:30\n"
        var date = strDate.toDateTime()!
        XCTAssertNotNil(date, "String conversion error")
        
        var comps = NSDateComponents()
        comps.year = 2015
        comps.month = 5
        comps.day = 5
        comps.hour = 10
        comps.minute = 20
        comps.second = 30
        
        var calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        XCTAssertEqual(calendar.dateFromComponents(comps)!, date, "String conversion error")
        
        var str = ""
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "😗"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "cc55.76"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "Sunday"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "2015-05-05"
        XCTAssertNil(str.toDateTime(), "String conversion error")
    }
    
    func testStringChangeDateFormat() {
        var str = " 2015-05-05 10:20:30\n"
        XCTAssertNotNil(str.changeDateFormat()!, "String conversion error")
        XCTAssertEqual(str.changeDateFormat()!, "2015-05-05", "String conversion error")
        
        str = ""
        XCTAssertNil(str.changeDateFormat(), "String conversion error")
        
        str = "😗"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "cc55.76"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "Sunday"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "2015-05-05"
        XCTAssertNil(str.toDateTime(), "String conversion error")
    }
    
    func testStringChangeDateFormatWithLocale() {
        var str = " 2015-05-05 10:20:30\n"
        XCTAssertNotNil(str.changeDateFormat(locale: "ja_JP")!, "String conversion error")
        XCTAssertEqual(str.changeDateFormat(locale: "ja_JP")!, "2015/05/05", "String conversion error")
        XCTAssertEqual(str.changeDateFormat(to: "dd MMMM", locale: "ja_JP")!, "5月05日", "String conversion error")
        
        str = ""
        XCTAssertNil(str.changeDateFormat(), "String conversion error")
        
        str = "😗"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "cc55.76"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "Sunday"
        XCTAssertNil(str.toDateTime(), "String conversion error")
        
        str = "2015-05-05"
        XCTAssertNil(str.toDateTime(), "String conversion error")
    }


    func testPerformanceExample() {
        self.measureBlock() {
        }
    }

}
