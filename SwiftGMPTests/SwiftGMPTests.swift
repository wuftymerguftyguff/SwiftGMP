//
//  SwiftGMPTests.swift
//  SwiftGMPTests
//
//  Created by Teo on 21/05/15.
//  Copyright (c) 2015 Teo. All rights reserved.
//

//import Cocoa

import XCTest
import SwiftGMP

class SwiftGMPTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        let b = IntBig(246375425603637729)//.newIntBig(58)
        let c = IntBig(58)
print("b: \(SwiftGMP.string(b))")
        
        XCTAssert(SwiftGMP.cmp(b,c) != 0, "compare error")
        
        print("Bytes: \(SwiftGMP.bytes(b))")
        
        var d = SwiftGMP.mul(b, c)
        print("mul: \(SwiftGMP.string(d))")
        
        d = SwiftGMP.add(b, c)
        print("add: \(SwiftGMP.string(d))")
        var e = IntBig(69)
        e = IntBig(42)
        print("e = \(SwiftGMP.string(e))")
        let n = SwiftGMP.getInt64(e)
        print("n = \(n!)")
        XCTAssert(n == 42, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
