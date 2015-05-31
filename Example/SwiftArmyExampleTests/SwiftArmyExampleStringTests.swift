//
//  SwiftArmyExampleStringTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana Sugiarto on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import SwiftArmy
import Quick
import Nimble

class SwiftArmyExampleStringTests: QuickSpec {
    
    override func spec() {
        
        describe("properties") {
            
            it("length") {
                expect("abcdef".length) == 6
                expect("This is long sentence.".length) == 22
                expect("😱".length) == 1
            }
        }
        
        describe("instance methods") {
            
            it("equals") {
                expect("abcdef".equals("abcdef")).to(beTrue())
                expect("abcdef".equals("ABCDEF")).to(beFalse())
                expect("abcdef".equals("fedcba")).to(beFalse())
                
                expect("😱".equals("😱")).to(beTrue())
                expect("😱".equals("😗")).to(beFalse())
            }
            
            it("equalsIgnoreCase") {
                expect("abcdef".equalsIgnoreCase("abcdef")).to(beTrue())
                expect("abcdef".equalsIgnoreCase("ABCDEF")).to(beTrue())
                expect("abcdef".equalsIgnoreCase("ABCdef")).to(beTrue())
                expect("abcdef".equalsIgnoreCase("abcDEF")).to(beTrue())
                expect("abcdef".equalsIgnoreCase("fedcba")).to(beFalse())
            }
            
            it("split") {
                expect("A B C".split(" ")) == ["A", "B", "C"]
                expect("A B C".split(">")) == ["A B C"]
                expect("A>B C".split(">")) == ["A", "B C"]
                expect("A B😱C".split("😱")) == ["A B", "C"]
            }
            
            it("trim") {
                expect("A B C".trim()) == "A B C"
                expect("  A B C".trim()) == "A B C"
                expect("A B C  ".trim()) == "A B C"
                expect("  A B C  ".trim()) == "A B C"
                expect("\n A B C".trim()) == "A B C"
                expect("A B C \n".trim()) == "A B C"
                expect("  \n\t\n".trim()) == ""
                expect("".trim()) == ""
            }
            
            it("trimLeft") {
                expect("A B C".trimLeft()) == "A B C"
                expect("  A B C".trimLeft()) == "A B C"
                expect("A B C  ".trimLeft()) == "A B C  "
                expect("  A B C  ".trimLeft()) == "A B C  "
                expect("\n A B C".trimLeft()) == "A B C"
                expect("A B C \n".trimLeft()) == "A B C \n"
                expect("  \n\t\n".trimLeft()) == ""
                expect("".trimLeft()) == ""
            }
            
            it("trimLeftWithCharacterSet") {
                expect("AB C".trimLeft(characterSet: .alphanumericCharacterSet())) == " C"
                expect("  A B C".trimLeft(characterSet: .alphanumericCharacterSet())) == "  A B C"
                expect("ABC  ".trimLeft(characterSet: .alphanumericCharacterSet())) == "  "
                expect("ABC".trimLeft(characterSet: .alphanumericCharacterSet())) == ""
            }
            
            it("trimRight") {
                expect("A B C".trimRight()) == "A B C"
                expect("  A B C".trimRight()) == "  A B C"
                expect("A B C  ".trimRight()) == "A B C"
                expect("  A B C  ".trimRight()) == "  A B C"
                expect("\n A B C".trimRight()) == "\n A B C"
                expect("A B C \n".trimRight()) == "A B C"
                expect("  \n\t\n".trimRight()) == ""
                expect("".trimRight()) == ""
            }
            
            it("trimRightWithCharacterSet") {
                expect("AB C".trimRight(characterSet: .alphanumericCharacterSet())) == "AB "
                expect("  A B C".trimRight(characterSet: .alphanumericCharacterSet())) == "  A B "
                expect("ABC  ".trimRight(characterSet: .alphanumericCharacterSet())) == "ABC  "
                expect("ABC".trimRight(characterSet: .alphanumericCharacterSet())) == ""
            }
        }
        
        describe("validation") {
            
            it("isValidEmail") {
                expect("john.doe@mail.com".isValidEmail()).to(beTrue())
                expect("john.doe@mail.co".isValidEmail()).to(beTrue())
                expect("john.doe@mail".isValidEmail()).to(beFalse())
                expect("john doe@mail.co".isValidEmail()).to(beFalse())
                expect("  john.doe@mail.com".isValidEmail()).to(beFalse())
                expect("john.doe@mail.com   ".isValidEmail()).to(beFalse())
            }
        }
        
        describe("conversion") {
            
            it("toDouble") {
                expect("82".toDouble()).notTo(beNil())
                expect("82".toDouble()).to(beCloseTo(82, within: 0.0001))
                
                expect("8.2".toDouble()).notTo(beNil())
                expect("8.2".toDouble()).to(beCloseTo(8.2, within: 0.0001))
                
                expect("-3.141592".toDouble()).notTo(beNil())
                expect("-3.141592".toDouble()).to(beCloseTo(-3.141592, within: 0.0001))
                
                expect("  -3.141592  ".toDouble()).notTo(beNil())
                expect("  -3.141592  ".toDouble()).to(beCloseTo(-3.141592, within: 0.0001))
                
                expect("a 3.141592".toDouble()).to(beNil())
            }
            
            it("toFloat") {
                expect("82".toFloat()).notTo(beNil())
                expect("82".toFloat()).to(beCloseTo(82, within: 0.0001))
                
                expect("8.2".toFloat()).notTo(beNil())
                expect("8.2".toFloat()).to(beCloseTo(8.2, within: 0.0001))
                
                expect("-3.141592".toFloat()).notTo(beNil())
                expect("-3.141592".toFloat()).to(beCloseTo(-3.141592, within: 0.0001))
                
                expect("  -3.141592  ".toFloat()).notTo(beNil())
                expect("  -3.141592  ".toFloat()).to(beCloseTo(-3.141592, within: 0.0001))
                
                expect("a 3.141592".toFloat()).to(beNil())
            }
            
            it("toUInt") {
                expect("82".toUInt()).notTo(beNil())
                expect("82".toUInt()).to(beCloseTo(82, within: 0.0001))
                
                expect("  82".toUInt()).notTo(beNil())
                expect("  82".toUInt()).to(beCloseTo(82, within: 0.0001))
                
                expect("8.2".toUInt()).to(beNil())
                expect("-3.141592".toUInt()).to(beNil())
                expect("  -3.141592  ".toUInt()).to(beNil())
                expect("a 3.141592".toUInt()).to(beNil())
            }
            
            it("toBool") {
                expect("YES".toBool()).notTo(beNil())
                expect("YES".toBool()).to(beTrue())
                
                expect("nO".toBool()).notTo(beNil())
                expect("nO".toBool()).to(beFalse())
                
                expect("trUE".toBool()).notTo(beNil())
                expect("trUE".toBool()).to(beTrue())
                
                expect("FALse".toBool()).notTo(beNil())
                expect("FALse".toBool()).to(beFalse())
                
                expect("Alan".toBool()).to(beNil())
                expect("7".toBool()).to(beNil())
                expect("😗".toBool()).to(beNil())
                expect("".toBool()).to(beNil())
            }
            
            it("toDateTime") {
                var comps = NSDateComponents()
                comps.year = 2005
                comps.month = 5
                comps.day = 5
                comps.hour = 10
                comps.minute = 20
                comps.second = 30
                
                var calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
                expect(" 2005-05-05 10:20:30\n".toDateTime()).notTo(beNil())
                expect(" 2005-05-05 10:20:30\n".toDateTime()) == calendar.dateFromComponents(comps)
                
                expect("2005-05-05".toDateTime()).to(beNil())
                expect("Sunday".toDateTime()).to(beNil())
                expect("7".toDateTime()).to(beNil())
                expect("😗".toDateTime()).to(beNil())
                expect("".toDateTime()).to(beNil())
            }
            
            it("changeDateFormat") {
                expect(" 2005-05-05 10:20:30\n".changeDateFormat()).notTo(beNil())
                expect(" 2005-05-05 10:20:30\n".changeDateFormat()) == "2005-05-05"
                
                expect("2005-05-05".changeDateFormat()).to(beNil())
                expect("Sunday".changeDateFormat()).to(beNil())
                expect("7".changeDateFormat()).to(beNil())
                expect("😗".changeDateFormat()).to(beNil())
                expect("".changeDateFormat()).to(beNil())
            }
            
            it("changeDateFormatWithLocale") {
                expect(" 2005-05-05 10:20:30\n".changeDateFormat(locale: "ja_JP")).notTo(beNil())
                expect(" 2005-05-05 10:20:30\n".changeDateFormat(locale: "ja_JP")) == "2005/05/05"
                expect(" 2005-05-05 10:20:30\n".changeDateFormat(to: "dd MMMM", locale: "ja_JP")) == "5月05日"
                
                expect("2005-05-05".changeDateFormat(locale: "ja_JP")).to(beNil())
                expect("Sunday".changeDateFormat(locale: "ja_JP")).to(beNil())
                expect("7".changeDateFormat(locale: "ja_JP")).to(beNil())
                expect("😗".changeDateFormat(locale: "ja_JP")).to(beNil())
                expect("".changeDateFormat(locale: "ja_JP")).to(beNil())
            }

        }
    }

}
