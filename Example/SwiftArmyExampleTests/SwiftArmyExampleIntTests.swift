//
//  SwiftArmyExampleIntTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana Sugiarto on 5/28/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import SwiftArmy
import Quick
import Nimble

class SwiftArmyExampleIntTests: QuickSpec {
    
    let errConversion = "Integer conversion error"
    
    override func spec() {
        
        describe("properties") {
            
            it("seconds") {
                expect(0.seconds) == 0
                expect(1.seconds) == 1
                expect(15.seconds) == 15
                
                expect(-1.seconds) == -1
                expect(-15.seconds) == -15
                
                expect(0.seconds) == 0.second
                expect(1.seconds) == 1.second
                expect(15.seconds) == 15.second
                
                expect(-1.seconds) == -1.second
                expect(-15.seconds) == -15.second
            }
            
            it("minutes") {
                expect(0.minutes) == 0
                expect(1.minutes) == 60
                expect(15.minutes) == 15 * 60
                
                expect(-1.minutes) == -60
                expect(-15.minutes) == -15 * 60
                
                expect(0.minutes) == 0.minute
                expect(1.minutes) == 1.minute
                expect(15.minutes) == 15.minute
                
                expect(-1.minutes) == -1.minute
                expect(-15.minutes) == -15.minute
            }
            
            it("hours") {
                expect(0.hours) == 0
                expect(1.hours) == 3600
                expect(15.hours) == 15 * 3600
                
                expect(-1.hours) == -3600
                expect(-15.hours) == -15 * 3600
                
                expect(0.hours) == 0.hour
                expect(1.hours) == 1.hour
                expect(15.hours) == 15.hour
                
                expect(-1.hours) == -1.hour
                expect(-15.hours) == -15.hour
            }
            
            it("days") {
                expect(0.days) == 0
                expect(1.days) == 86400
                expect(15.days) == 15 * 86400
                
                expect(-1.days) == -86400
                expect(-15.days) == -15 * 86400
                
                expect(0.days) == 0.day
                expect(1.days) == 1.day
                expect(15.days) == 15.day
                
                expect(-1.days) == -1.day
                expect(-15.days) == -15.day
            }
            
            it("years") {
                expect(0.years) == 0
                expect(1.years) == 31536000
                expect(15.years) == 15 * 31536000
                
                expect(-1.years) == -31536000
                expect(-15.years) == -15 * 31536000
                
                expect(0.years) == 0.year
                expect(1.years) == 1.year
                expect(15.years) == 15.year
                
                expect(-1.years) == -1.year
                expect(-15.years) == -15.year
            }
        }
        
        describe("validation") {
            
            it("isEven") {
                expect(2.isEven()).to(beTrue())
                expect(111.isEven()).to(beFalse())
                
                expect((-2).isEven()).to(beTrue())
                expect((-111).isEven()).to(beFalse())
            }
            
            it("isOdd") {
                expect(2.isOdd()).to(beFalse())
                expect(11.isOdd()).to(beTrue())
                
                expect((-2).isOdd()).to(beFalse())
                expect((-11).isOdd()).to(beTrue())
            }
            
            it("isPositive") {
                expect(2.isPositive()).to(beTrue())
                expect((-2).isPositive()).to(beFalse())
                
                expect(111.isPositive()).to(beTrue())
                expect((-111).isPositive()).to(beFalse())
            }
            
            it("isNegative") {
                expect(2.isNegative()).to(beFalse())
                expect((-2).isNegative()).to(beTrue())
                
                expect(111.isNegative()).to(beFalse())
                expect((-111).isNegative()).to(beTrue())
            }
            
            it("isZero") {
                expect(0.isZero()).to(beTrue())
                expect(33.isZero()).to(beFalse())
                expect((-2).isZero()).to(beFalse())
            }
        }
        
        describe("instance methods") {
            
            it("split") {
                expect(0.split()) == [0]
                expect(1234.split()) == [1, 2, 3, 4]
            }
            
            it("abs") {
                expect(2.abs()) == 2
                expect((-111).abs()) == 111
            }
        }
    }

}
