import XCTest
@testable import UIDevice_Extension

private final class UIDevice_ExtensionTests: XCTestCase {
    func testHas9To16Ratio() {
        let screenSize = UIDevice.current.screenSize
        if [.iPhones_5_5s_5c_SE1,
            .iPhones_6_6s_7_8_SE2,
            .iPhones_6Plus_6sPlus_7Plus_8Plus].contains(screenSize) {
            XCTAssertTrue(screenSize.has9To16Ratio)
        } else {
            XCTAssertFalse(screenSize.has9To16Ratio)
        }
    }

    func testIsSmallDevice() {
        let screenSize = UIDevice.current.screenSize
        if [.iPhones_4_4S, .iPhones_5_5s_5c_SE1].contains(screenSize) {
            XCTAssertTrue(UIDevice.current.isSmallDevice)
        } else {
            XCTAssertFalse(UIDevice.current.isSmallDevice)
        }
    }

    func testScreenSizeComparable() {
        XCTAssertTrue(ScreenSize.iPhone_12Mini == .iPhone_12Mini)
        XCTAssertTrue(ScreenSize.iPhone_12_12Pro != .iPhone_XSMax_11ProMax)
        XCTAssertTrue(ScreenSize.iPhone_12_12Pro > .iPhones_6_6s_7_8_SE2)
        XCTAssertTrue(ScreenSize.iPhones_5_5s_5c_SE1 < .iPhones_6_6s_7_8_SE2)
    }
}
