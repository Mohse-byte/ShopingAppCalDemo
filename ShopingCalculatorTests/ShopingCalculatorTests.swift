//
//  ShopingCalculatorTests.swift
//  ShopingCalculatorTests
//
//  Created by Monish Chopra on 07/08/20.
//  Copyright © 2020 Monish Chopra. All rights reserved.
//

import XCTest

class ShopingCalculatorTests: XCTestCase {

    //Mark:- Unit TEST
     func testGetHours()  {
        
        XCTAssert(wage.gethours(forwage: 25, andPrice: 100) == 4)
        XCTAssert(wage.gethours(forwage: 15.50, andPrice: 250.53) == 17)
        
    }
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
