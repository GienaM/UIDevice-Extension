import XCTest
@testable import UIDevice_Extension

final class UIDevice_ExtensionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(UIDevice_Extension().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
