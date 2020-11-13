import XCTest
@testable import UIDevice_Extension

final class UIDevice_ExtensionTests: XCTestCase {
    func testHas9To16Ratio() {
        let screenSize = UIDevice.current.screenSize
        if [.iPhones_5_5s_5c_SE,
            .iPhones_6_6s_7_8,
            .iPhones_6Plus_6sPlus_7Plus_8Plus].contains(screenSize) {
            XCTAssertTrue(screenSize.has9To16Ratio)
        } else {
            XCTAssertFalse(screenSize.has9To16Ratio)
        }
    }
}
