//
//  File.swift
//  
//
//  Created by Andrew Thom on 8/24/20.
//

import XCTest
@testable import CovidTracking

final class CTStatusTests: XCTestCase {
    func statusTest() {
        CTStatus().getStatus { (response, error) in
            XCTAssertNil(error)
            XCTAssertNotNil(response)
            XCTAssertTrue((response?.buildTime.count ?? 0) > 0)
        }
    }
    
    static var allTests = [
        ("statusTest", statusTest)
    ]
}
