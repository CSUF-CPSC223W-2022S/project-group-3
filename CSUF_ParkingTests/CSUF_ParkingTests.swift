//
//  CSUF_ParkingTests.swift
//  CSUF_ParkingTests
//
//  Created by csuftitan on 2/22/22.
//

import XCTest
@testable import CSUF_Parking

class CSUF_ParkingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testWeather() {
        var test_weather = weather(83.33)
        
        
        XCTAssertEqual(test_weather.temp, 83.33)
        XCTAssertEqual(test_weather.humidity, 12.33)
    }
    
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}