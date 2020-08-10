import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UIDevice_ExtensionTests.allTests),
    ]
}
#endif
