//
//  xcodecludTestTests.swift
//  xcodecludTestTests
//
//  Created by ksmartech on 1/9/24.
//

import XCTest
@testable import xcodecludTest

final class xcodecludTestTests: XCTestCase {
    
    func testExample_5() throws {
        //given
        let cal = Calculator()
        
        //when
        let result = cal.add(a: "5", b: "0")
        
        //then
        XCTAssertEqual(result, "5")
    }
    
    func testExample_10() throws {
        //given
        let cal = Calculator()
        
        //when
        let result = cal.add(a: "3", b: "7")
        
        //then
        XCTAssertEqual(result, "10")
    }
    
    func testExample_15() throws {
        //given
        let cal = Calculator()
        
        //when
        let result = cal.add(a: "5", b: "10")
        
        //then
        XCTAssertEqual(result, "15")
    }

}
