//
//  SwiftArmyExampleDoubleTests.swift
//  SwiftArmyExample
//
//  Created by Aditya Pradana S. on 5/29/15.
//  Copyright (c) 2015 @apradanas. All rights reserved.
//

import SwiftArmy
import Quick
import Nimble

class SwiftArmyExampleDoubleTests: QuickSpec {

    override func spec() {
        
        describe("instance methods") {
            
            it("ceil") {
                expect(Double(0).ceil()) == Double(0)
                
                expect(Double(99.999999).ceil()).to(beCloseTo(100, within: 0.0001))
                expect(Double(99.001).ceil()).to(beCloseTo(100, within: 0.0001))
                expect(Double(99.5).ceil()).to(beCloseTo(100, within: 0.0001))
                
                expect(Double(-99.999999).ceil()).to(beCloseTo(-99, within: 0.0001))
                expect(Double(-99.001).ceil()).to(beCloseTo(-99, within: 0.0001))
                expect(Double(-99.5).ceil()).to(beCloseTo(-99, within: 0.0001))
            }
            
            it("floor") {
                expect(Double(0).floor()) == Double(0)
                
                expect(Double(99.999999).floor()).to(beCloseTo(99, within: 0.0001))
                expect(Double(99.001).floor()).to(beCloseTo(99, within: 0.0001))
                expect(Double(99.5).floor()).to(beCloseTo(99, within: 0.0001))
                
                expect(Double(-99.999999).floor()).to(beCloseTo(-100, within: 0.0001))
                expect(Double(-99.001).floor()).to(beCloseTo(-100, within: 0.0001))
                expect(Double(-99.5).floor()).to(beCloseTo(-100, within: 0.0001))
            }
        }
    }

}
