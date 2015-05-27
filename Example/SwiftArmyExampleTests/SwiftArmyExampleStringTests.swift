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

    func testPerformanceExample() {
        self.measureBlock() {
        }
    }

}
