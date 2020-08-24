import XCTest
@testable import CovidTracking

final class CovidTrackingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CovidTracking().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
