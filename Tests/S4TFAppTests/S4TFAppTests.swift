import XCTest
@testable import S4TFApp

final class S4TFAppTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(S4TFApp().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
