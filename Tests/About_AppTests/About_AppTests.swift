import XCTest
@testable import About_App

final class About_AppTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(About_App().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
