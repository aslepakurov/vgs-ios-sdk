import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(vgs_ios_sdkTests.allTests),
    ]
}
#endif